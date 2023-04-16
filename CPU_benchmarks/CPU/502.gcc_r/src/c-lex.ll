; ModuleID = 'c-lex.bc'
source_filename = "c-lex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cpp_reader = type opaque
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void ()*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i8 (%union.tree_node*)*, void (i32, i8*, i32, i8)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)*, void (i32)*, void (%struct.rtx_def*)*, void ()*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void (i32)*, void (%union.tree_node*, %union.tree_node*)*, i32 }
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
%struct.function = type opaque
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
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8* (i8*, i64)* }
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
%struct.real_format = type { void (%struct.real_format*, i64*, %struct.real_value*)*, void (%struct.real_format*, %struct.real_value*, i64*)*, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.c_fileinfo = type { i32, i16, i16 }
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)*, void (%struct.cpp_reader*, i8*, i32, i8*)*, i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)*, %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)*, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.cpp_dir = type { %struct.cpp_dir*, i8*, i32, i8, i8, i8*, i8**, i8* (i8*, %struct.cpp_dir*)*, i64, i64 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { i8*, i32, i32 }
%union._cpp_hashnode_value = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.cpp_num = type { i64, i64, i8, i8 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [12 x i8] c"<top level>\00", align 1
@flag_detailed_statistics = external dso_local local_unnamed_addr global i32, align 4
@header_time = internal unnamed_addr global i32 0, align 4, !dbg !0
@body_time = internal unnamed_addr global i32 0, align 4, !dbg !1440
@parse_in = external dso_local local_unnamed_addr global %struct.cpp_reader*, align 8
@debug_info_level = external dso_local local_unnamed_addr global i32, align 4
@write_symbols = external dso_local local_unnamed_addr global i32, align 4
@file_info_tree = internal unnamed_addr global %struct.splay_tree_s* null, align 8, !dbg !1442
@input_location = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"\0A******\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"header files (total)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"main file (total)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ratio = %g : 1\0A\00", align 1
@debug_hooks = external dso_local local_unnamed_addr global %struct.gcc_debug_hooks*, align 8
@c_lex_with_flags.no_more_pch = internal unnamed_addr global i1 false, align 1, !dbg !1479
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"c-lex.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@c_language = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"stray %<@%> in program\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"stray %qs in program\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"stray %qc in program\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"stray %<\5C%o%> in program\00", align 1
@pending_lang_change = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !1475
@c_header_level = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !1477
@flag_no_ident = external dso_local local_unnamed_addr global i32, align 4
@asm_out_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"%s\22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\09.ident\09\00", align 1
@warn_unknown_pragmas = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"ignoring #pragma %s %s\00", align 1
@line_table = external dso_local local_unnamed_addr global %struct.line_maps*, align 8
@flag_isoc99 = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [50 x i8] c"this decimal constant is unsigned only in ISO C90\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"this decimal constant would be unsigned in ISO C90\00", align 1
@c_global_trees = external dso_local local_unnamed_addr global [55 x %union.tree_node*], align 16
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@cxx_dialect = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [57 x i8] c"integer constant is too large for %<unsigned long%> type\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"integer constant is too large for %<long%> type\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"unsuffixed float constant\00", align 1
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str.21 = private unnamed_addr constant [53 x i8] c"unsupported non-standard suffix on floating constant\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"non-standard suffix on floating constant\00", align 1
@flag_single_precision_constant = external dso_local local_unnamed_addr global i32, align 4
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@real_format_for_mode = external dso_local local_unnamed_addr global [7 x %struct.real_format*], align 16
@mode_inner = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str.23 = private unnamed_addr constant [39 x i8] c"floating constant exceeds range of %qT\00", align 1
@dconst0 = external dso_local global %struct.real_value, align 8
@.str.24 = private unnamed_addr constant [36 x i8] c"floating constant truncated to zero\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"unsupported non-standard concatenation of string literals\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"traditional C rejects string constant concatenation\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [4 x i8] zeroinitializer, align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1484 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1497, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1498, metadata !DIExpression()), !dbg !1499
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1500
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1501
  ret i32 %call, !dbg !1502
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1503 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1507
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1508
  ret i32 %call, !dbg !1509
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1510 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1565, metadata !DIExpression()), !dbg !1566
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1567
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1567
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1567
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1567
  %cmp = icmp uge i8* %0, %1, !dbg !1567
  %conv1 = zext i1 %cmp to i64, !dbg !1567
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1567
  %tobool = icmp eq i64 %expval, 0, !dbg !1567
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1567

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1567
  br label %cond.end, !dbg !1567

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1567
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1567
  %2 = load i8, i8* %0, align 1, !dbg !1567
  %conv3 = zext i8 %2 to i32, !dbg !1567
  br label %cond.end, !dbg !1567

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1567
  ret i32 %cond, !dbg !1568
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1569 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1571, metadata !DIExpression()), !dbg !1572
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1573
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1573
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1573
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1573
  %cmp = icmp uge i8* %0, %1, !dbg !1573
  %conv1 = zext i1 %cmp to i64, !dbg !1573
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1573
  %tobool = icmp eq i64 %expval, 0, !dbg !1573
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1573

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1573
  br label %cond.end, !dbg !1573

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1573
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1573
  %2 = load i8, i8* %0, align 1, !dbg !1573
  %conv3 = zext i8 %2 to i32, !dbg !1573
  br label %cond.end, !dbg !1573

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1573
  ret i32 %cond, !dbg !1574
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1575 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1576
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1576
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1576
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1576
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1576
  %cmp = icmp uge i8* %1, %2, !dbg !1576
  %conv1 = zext i1 %cmp to i64, !dbg !1576
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1576
  %tobool = icmp eq i64 %expval, 0, !dbg !1576
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1576

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1576
  br label %cond.end, !dbg !1576

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1576
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1576
  %3 = load i8, i8* %1, align 1, !dbg !1576
  %conv3 = zext i8 %3 to i32, !dbg !1576
  br label %cond.end, !dbg !1576

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1576
  ret i32 %cond, !dbg !1577
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1578 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1582, metadata !DIExpression()), !dbg !1583
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1584
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1585
  ret i32 %call, !dbg !1586
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1587 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1591, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1592, metadata !DIExpression()), !dbg !1593
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1594
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1594
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1594
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1594
  %cmp = icmp uge i8* %0, %1, !dbg !1594
  %conv1 = zext i1 %cmp to i64, !dbg !1594
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1594
  %tobool = icmp eq i64 %expval, 0, !dbg !1594
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1594

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1594
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1594
  br label %cond.end, !dbg !1594

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1594
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1594
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1594
  store i8 %conv2, i8* %0, align 1, !dbg !1594
  %conv6 = and i32 %__c, 255, !dbg !1594
  br label %cond.end, !dbg !1594

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1594
  ret i32 %cond, !dbg !1595
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1596 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1598, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1599, metadata !DIExpression()), !dbg !1600
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1601
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1601
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1601
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1601
  %cmp = icmp uge i8* %0, %1, !dbg !1601
  %conv1 = zext i1 %cmp to i64, !dbg !1601
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1601
  %tobool = icmp eq i64 %expval, 0, !dbg !1601
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1601

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1601
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1601
  br label %cond.end, !dbg !1601

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1601
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1601
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1601
  store i8 %conv2, i8* %0, align 1, !dbg !1601
  %conv6 = and i32 %__c, 255, !dbg !1601
  br label %cond.end, !dbg !1601

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1601
  ret i32 %cond, !dbg !1602
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1603 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1605, metadata !DIExpression()), !dbg !1606
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1607
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1607
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1607
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1607
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1607
  %cmp = icmp uge i8* %1, %2, !dbg !1607
  %conv1 = zext i1 %cmp to i64, !dbg !1607
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1607
  %tobool = icmp eq i64 %expval, 0, !dbg !1607
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1607

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1607
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1607
  br label %cond.end, !dbg !1607

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1607
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1607
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1607
  store i8 %conv4, i8* %1, align 1, !dbg !1607
  %conv6 = and i32 %__c, 255, !dbg !1607
  br label %cond.end, !dbg !1607

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1607
  ret i32 %cond, !dbg !1608
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1609 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1615, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1616, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1617, metadata !DIExpression()), !dbg !1618
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1619
  ret i64 %call, !dbg !1620
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1621 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1623, metadata !DIExpression()), !dbg !1624
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1625
  %0 = load i32, i32* %_flags, align 8, !dbg !1625
  %and = lshr i32 %0, 4, !dbg !1625
  %and.lobit = and i32 %and, 1, !dbg !1625
  ret i32 %and.lobit, !dbg !1626
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1627 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1629, metadata !DIExpression()), !dbg !1630
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1631
  %0 = load i32, i32* %_flags, align 8, !dbg !1631
  %and = lshr i32 %0, 5, !dbg !1631
  %and.lobit = and i32 %and, 1, !dbg !1631
  ret i32 %and.lobit, !dbg !1632
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1633 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1636, metadata !DIExpression()), !dbg !1637
  %__c.off = add i32 %__c, 128, !dbg !1638
  %0 = icmp ult i32 %__c.off, 384, !dbg !1638
  br i1 %0, label %cond.true, label %cond.end, !dbg !1638

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1639
  %1 = load i32*, i32** %call, align 8, !dbg !1640
  %idxprom = sext i32 %__c to i64, !dbg !1641
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1641
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1641
  br label %cond.end, !dbg !1642

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1642
  ret i32 %cond, !dbg !1643
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1644 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1646, metadata !DIExpression()), !dbg !1647
  %__c.off = add i32 %__c, 128, !dbg !1648
  %0 = icmp ult i32 %__c.off, 384, !dbg !1648
  br i1 %0, label %cond.true, label %cond.end, !dbg !1648

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1649
  %1 = load i32*, i32** %call, align 8, !dbg !1650
  %idxprom = sext i32 %__c to i64, !dbg !1651
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1651
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1651
  br label %cond.end, !dbg !1652

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1652
  ret i32 %cond, !dbg !1653
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1654 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1659, metadata !DIExpression()), !dbg !1660
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1661
  %conv = trunc i64 %call to i32, !dbg !1662
  ret i32 %conv, !dbg !1663
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1664 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1668, metadata !DIExpression()), !dbg !1669
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1670
  ret i64 %call, !dbg !1671
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1672 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1677, metadata !DIExpression()), !dbg !1678
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1679
  ret i64 %call, !dbg !1680
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1681 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1690, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1691, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1692, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1693, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1694, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 0, metadata !1695, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1696, metadata !DIExpression()), !dbg !1700
  br label %while.cond, !dbg !1701

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1702
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1700
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1696, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1695, metadata !DIExpression()), !dbg !1700
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1703
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1701

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1704
  %div = lshr i64 %add, 1, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %div, metadata !1697, metadata !DIExpression()), !dbg !1700
  %mul = mul i64 %div, %__size, !dbg !1707
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1708
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1698, metadata !DIExpression()), !dbg !1700
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1709
  call void @llvm.dbg.value(metadata i32 %call, metadata !1699, metadata !DIExpression()), !dbg !1700
  %cmp1 = icmp slt i32 %call, 0, !dbg !1710
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1712

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1713
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1715

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1695, metadata !DIExpression()), !dbg !1700
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1700
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1700
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1696, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1695, metadata !DIExpression()), !dbg !1700
  br label %while.cond, !dbg !1701, !llvm.loop !1717

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1700
  ret i8* %retval.0, !dbg !1719
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1720 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1725, metadata !DIExpression()), !dbg !1726
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1727
  ret double %call, !dbg !1728
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1729 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1738, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1739, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %base, metadata !1740, metadata !DIExpression()), !dbg !1741
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1742
  ret i64 %call, !dbg !1743
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1744 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1750, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1751, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i32 %base, metadata !1752, metadata !DIExpression()), !dbg !1753
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1754
  ret i64 %call, !dbg !1755
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1756 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1767, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1768, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i32 %base, metadata !1769, metadata !DIExpression()), !dbg !1770
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1771
  ret i64 %call, !dbg !1772
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1773 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1777, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1778, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i32 %base, metadata !1779, metadata !DIExpression()), !dbg !1780
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1781
  ret i64 %call, !dbg !1782
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1783 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1823, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1824, metadata !DIExpression()), !dbg !1825
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1826
  ret i32 %call, !dbg !1827
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1828 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1830, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1831, metadata !DIExpression()), !dbg !1832
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1833
  ret i32 %call, !dbg !1834
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1835 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1839, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1840, metadata !DIExpression()), !dbg !1841
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1842
  ret i32 %call, !dbg !1843
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1844 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1848, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1849, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1851, metadata !DIExpression()), !dbg !1852
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1853
  ret i32 %call, !dbg !1854
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1855 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1859, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1860, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1861, metadata !DIExpression()), !dbg !1862
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1861, metadata !DIExpression(DW_OP_deref)), !dbg !1862
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1863
  ret i32 %call, !dbg !1864
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1865 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1869, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1870, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1871, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1872, metadata !DIExpression()), !dbg !1873
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1872, metadata !DIExpression(DW_OP_deref)), !dbg !1873
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1874
  ret i32 %call, !dbg !1875
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1876 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1900, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1901, metadata !DIExpression()), !dbg !1902
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1903
  ret i32 %call, !dbg !1904
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1905 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1907, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1908, metadata !DIExpression()), !dbg !1909
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1910
  ret i32 %call, !dbg !1911
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1912 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1916, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1917, metadata !DIExpression()), !dbg !1918
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1919
  ret i32 %call, !dbg !1920
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1921 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1925, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1926, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1927, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1928, metadata !DIExpression()), !dbg !1929
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1930
  ret i32 %call, !dbg !1931
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @init_c_lex() local_unnamed_addr #5 !dbg !1932 {
entry:
  %call = tail call %struct.c_fileinfo* @get_fileinfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #7, !dbg !2049
  call void @llvm.dbg.value(metadata %struct.c_fileinfo* %call, metadata !2048, metadata !DIExpression()), !dbg !2050
  %0 = load i32, i32* @flag_detailed_statistics, align 4, !dbg !2051
  %tobool = icmp eq i32 %0, 0, !dbg !2051
  br i1 %tobool, label %if.end, label %if.then, !dbg !2053

if.then:                                          ; preds = %entry
  store i32 0, i32* @header_time, align 4, !dbg !2054
  %call1 = tail call i64 @get_run_time() #6, !dbg !2056
  %conv = trunc i64 %call1 to i32, !dbg !2056
  store i32 %conv, i32* @body_time, align 4, !dbg !2057
  %time = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %call, i64 0, i32 0, !dbg !2058
  store i32 %conv, i32* %time, align 4, !dbg !2059
  br label %if.end, !dbg !2060

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2061
  %call2 = tail call %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %1) #6, !dbg !2062
  call void @llvm.dbg.value(metadata %struct.cpp_callbacks* %call2, metadata !1936, metadata !DIExpression()), !dbg !2050
  %line_change = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call2, i64 0, i32 0, !dbg !2063
  store void (%struct.cpp_reader*, %struct.cpp_token*, i32)* @cb_line_change, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change, align 8, !dbg !2064
  %ident = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call2, i64 0, i32 6, !dbg !2065
  store void (%struct.cpp_reader*, i32, %struct.cpp_string*)* @cb_ident, void (%struct.cpp_reader*, i32, %struct.cpp_string*)** %ident, align 8, !dbg !2066
  %def_pragma = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call2, i64 0, i32 7, !dbg !2067
  store void (%struct.cpp_reader*, i32)* @cb_def_pragma, void (%struct.cpp_reader*, i32)** %def_pragma, align 8, !dbg !2068
  %valid_pch = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call2, i64 0, i32 8, !dbg !2069
  store i32 (%struct.cpp_reader*, i8*, i32)* @c_common_valid_pch, i32 (%struct.cpp_reader*, i8*, i32)** %valid_pch, align 8, !dbg !2070
  %read_pch = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call2, i64 0, i32 9, !dbg !2071
  store void (%struct.cpp_reader*, i8*, i32, i8*)* @c_common_read_pch, void (%struct.cpp_reader*, i8*, i32, i8*)** %read_pch, align 8, !dbg !2072
  %2 = load i32, i32* @debug_info_level, align 4, !dbg !2073
  %cmp = icmp eq i32 %2, 3, !dbg !2075
  br i1 %cmp, label %land.lhs.true, label %if.end9, !dbg !2076

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* @write_symbols, align 4, !dbg !2077
  %cmp4 = icmp eq i32 %3, 3, !dbg !2078
  %cmp6 = icmp eq i32 %3, 6, !dbg !2079
  %or.cond = or i1 %cmp4, %cmp6, !dbg !2080
  br i1 %or.cond, label %if.then8, label %if.end9, !dbg !2080

if.then8:                                         ; preds = %land.lhs.true
  %define = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call2, i64 0, i32 4, !dbg !2081
  store void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* @cb_define, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %define, align 8, !dbg !2083
  %undef = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call2, i64 0, i32 5, !dbg !2084
  store void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* @cb_undef, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %undef, align 8, !dbg !2085
  br label %if.end9, !dbg !2086

if.end9:                                          ; preds = %land.lhs.true, %if.then8, %if.end
  ret void, !dbg !2087
}

; Function Attrs: nounwind uwtable
define dso_local %struct.c_fileinfo* @get_fileinfo(i8* %name) local_unnamed_addr #5 !dbg !2088 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !2092, metadata !DIExpression()), !dbg !2095
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @file_info_tree, align 8, !dbg !2096
  %tobool = icmp eq %struct.splay_tree_s* %0, null, !dbg !2096
  br i1 %tobool, label %if.then, label %if.end, !dbg !2098

if.then:                                          ; preds = %entry
  %call = tail call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* bitcast (i32 (i8*, i8*)* @strcmp to i32 (i64, i64)*), void (i64)* null, void (i64)* bitcast (void (i8*)* @free to void (i64)*)) #6, !dbg !2099
  store %struct.splay_tree_s* %call, %struct.splay_tree_s** @file_info_tree, align 8, !dbg !2100
  br label %if.end, !dbg !2101

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.splay_tree_s* [ %0, %entry ], [ %call, %if.then ], !dbg !2102
  %2 = ptrtoint i8* %name to i64, !dbg !2103
  %call1 = tail call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %1, i64 %2) #6, !dbg !2104
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %call1, metadata !2093, metadata !DIExpression()), !dbg !2095
  %tobool2 = icmp eq %struct.splay_tree_node_s* %call1, null, !dbg !2105
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2107

if.then3:                                         ; preds = %if.end
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %call1, i64 0, i32 1, !dbg !2108
  %3 = bitcast i64* %value to %struct.c_fileinfo**, !dbg !2108
  %4 = load %struct.c_fileinfo*, %struct.c_fileinfo** %3, align 8, !dbg !2108
  br label %cleanup, !dbg !2109

if.end4:                                          ; preds = %if.end
  %call5 = tail call i8* @xmalloc(i64 8) #6, !dbg !2110
  %5 = bitcast i8* %call5 to %struct.c_fileinfo*, !dbg !2110
  call void @llvm.dbg.value(metadata %struct.c_fileinfo* %5, metadata !2094, metadata !DIExpression()), !dbg !2095
  %time = bitcast i8* %call5 to i32*, !dbg !2111
  store i32 0, i32* %time, align 4, !dbg !2112
  %interface_only = getelementptr inbounds i8, i8* %call5, i64 4, !dbg !2113
  %6 = bitcast i8* %interface_only to i16*, !dbg !2113
  store i16 0, i16* %6, align 4, !dbg !2114
  %interface_unknown = getelementptr inbounds i8, i8* %call5, i64 6, !dbg !2115
  %7 = bitcast i8* %interface_unknown to i16*, !dbg !2115
  store i16 1, i16* %7, align 2, !dbg !2116
  %8 = load %struct.splay_tree_s*, %struct.splay_tree_s** @file_info_tree, align 8, !dbg !2117
  %9 = ptrtoint i8* %call5 to i64, !dbg !2118
  %call6 = tail call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %8, i64 %2, i64 %9) #6, !dbg !2119
  br label %cleanup, !dbg !2120

cleanup:                                          ; preds = %if.end4, %if.then3
  %retval.0 = phi %struct.c_fileinfo* [ %4, %if.then3 ], [ %5, %if.end4 ], !dbg !2095
  ret %struct.c_fileinfo* %retval.0, !dbg !2121
}

declare dso_local i64 @get_run_time() local_unnamed_addr #2

declare dso_local %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cb_line_change(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32 %parsing_args) #5 !dbg !2122 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2124, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i32 %parsing_args, metadata !2126, metadata !DIExpression()), !dbg !2127
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !2128
  %bf.load = load i8, i8* %type, align 4, !dbg !2128
  %cmp = icmp eq i8 %bf.load, 22, !dbg !2130
  %tobool = icmp ne i32 %parsing_args, 0, !dbg !2131
  %or.cond = or i1 %cmp, %tobool, !dbg !2132
  br i1 %or.cond, label %if.end, label %if.then, !dbg !2132

if.then:                                          ; preds = %entry
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 0, !dbg !2133
  %0 = load i32, i32* %src_loc, align 8, !dbg !2133
  store i32 %0, i32* @input_location, align 4, !dbg !2134
  br label %if.end, !dbg !2135

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2136
}

; Function Attrs: nounwind uwtable
define internal void @cb_ident(%struct.cpp_reader* %pfile, i32 %line, %struct.cpp_string* %str) #5 !dbg !2137 {
entry:
  %cstr = alloca %struct.cpp_string, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2139, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %line, metadata !2140, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata %struct.cpp_string* %str, metadata !2141, metadata !DIExpression()), !dbg !2145
  %0 = load i32, i32* @flag_no_ident, align 4, !dbg !2146
  %tobool = icmp eq i32 %0, 0, !dbg !2146
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2147

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.cpp_string* %cstr to i8*, !dbg !2148
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2148
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %1, i8 0, i64 16, i1 false), !dbg !2149
  call void @llvm.dbg.value(metadata %struct.cpp_string* %cstr, metadata !2142, metadata !DIExpression(DW_OP_deref)), !dbg !2150
  %call = call zeroext i8 @cpp_interpret_string(%struct.cpp_reader* %pfile, %struct.cpp_string* %str, i64 1, %struct.cpp_string* nonnull %cstr, i32 61) #6, !dbg !2151
  %tobool1 = icmp eq i8 %call, 0, !dbg !2151
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2153

if.then2:                                         ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8, !dbg !2154
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %cstr, i64 0, i32 1, !dbg !2154
  %3 = load i8*, i8** %text, align 8, !dbg !2154
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %3) #6, !dbg !2154
  %4 = load i8*, i8** %text, align 8, !dbg !2156
  call void @free(i8* %4) #6, !dbg !2157
  br label %if.end, !dbg !2158

if.end:                                           ; preds = %if.then, %if.then2
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2159
  br label %if.end5, !dbg !2160

if.end5:                                          ; preds = %entry, %if.end
  ret void, !dbg !2161
}

; Function Attrs: nounwind uwtable
define internal void @cb_def_pragma(%struct.cpp_reader* %pfile, i32 %loc) #5 !dbg !2162 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2166, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2167, metadata !DIExpression()), !dbg !2174
  %0 = load i32, i32* @warn_unknown_pragmas, align 4, !dbg !2175
  %1 = load i32, i32* @input_location, align 4, !dbg !2176
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %1) #6, !dbg !2176
  %sysp = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 3, !dbg !2176
  %2 = load i8, i8* %sysp, align 8, !dbg !2176
  %cmp = icmp ne i8 %2, 0, !dbg !2176
  %conv1 = zext i1 %cmp to i32, !dbg !2176
  %cmp2 = icmp sgt i32 %0, %conv1, !dbg !2177
  br i1 %cmp2, label %if.then, label %if.end18, !dbg !2178

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2173, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), metadata !2168, metadata !DIExpression()), !dbg !2179
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #6, !dbg !2180
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !2172, metadata !DIExpression()), !dbg !2179
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !2181
  %bf.load = load i8, i8* %type, align 4, !dbg !2181
  %cmp4 = icmp eq i8 %bf.load, 22, !dbg !2183
  br i1 %cmp4, label %if.end16, label %if.then6, !dbg !2184

if.then6:                                         ; preds = %if.then
  %call7 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call) #6, !dbg !2185
  call void @llvm.dbg.value(metadata i8* %call7, metadata !2168, metadata !DIExpression()), !dbg !2179
  %call8 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #6, !dbg !2187
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call8, metadata !2172, metadata !DIExpression()), !dbg !2179
  %type9 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call8, i64 0, i32 1, !dbg !2188
  %bf.load10 = load i8, i8* %type9, align 4, !dbg !2188
  %cmp12 = icmp eq i8 %bf.load10, 53, !dbg !2190
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !2191

if.then14:                                        ; preds = %if.then6
  %call15 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call8) #6, !dbg !2192
  call void @llvm.dbg.value(metadata i8* %call15, metadata !2171, metadata !DIExpression()), !dbg !2179
  br label %if.end16, !dbg !2193

if.end16:                                         ; preds = %if.then, %if.then6, %if.then14
  %space.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %if.then ], [ %call7, %if.then14 ], [ %call7, %if.then6 ], !dbg !2179
  %name.1 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %if.then ], [ %call15, %if.then14 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %if.then6 ], !dbg !2179
  call void @llvm.dbg.value(metadata i8* %name.1, metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %space.0, metadata !2168, metadata !DIExpression()), !dbg !2179
  %call17 = call zeroext i8 (i32, i32, i8*, ...) @warning_at(i32 %loc, i32 212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %space.0, i8* %name.1) #6, !dbg !2194
  br label %if.end18, !dbg !2195

if.end18:                                         ; preds = %if.end16, %entry
  ret void, !dbg !2196
}

declare dso_local i32 @c_common_valid_pch(%struct.cpp_reader*, i8*, i32) #2

declare dso_local void @c_common_read_pch(%struct.cpp_reader*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cb_define(%struct.cpp_reader* %pfile, i32 %loc, %struct.cpp_hashnode* %node) #5 !dbg !2197 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2199, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2200, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !2201, metadata !DIExpression()), !dbg !2203
  %0 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !2204
  %call = tail call %struct.line_map* @linemap_lookup(%struct.line_maps* %0, i32 %loc) #6, !dbg !2205
  call void @llvm.dbg.value(metadata %struct.line_map* %call, metadata !2202, metadata !DIExpression()), !dbg !2203
  %1 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !2206
  %define = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %1, i64 0, i32 3, !dbg !2207
  %2 = load void (i32, i8*)*, void (i32, i8*)** %define, align 8, !dbg !2207
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 2, !dbg !2208
  %3 = load i32, i32* %start_location, align 4, !dbg !2208
  %sub = sub i32 %loc, %3, !dbg !2208
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 6, !dbg !2208
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !2208
  %bf.cast = zext i8 %bf.load to i32, !dbg !2208
  %shr = lshr i32 %sub, %bf.cast, !dbg !2208
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 1, !dbg !2208
  %4 = load i32, i32* %to_line, align 8, !dbg !2208
  %add = add i32 %shr, %4, !dbg !2208
  %call1 = tail call i8* @cpp_macro_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #6, !dbg !2209
  tail call void %2(i32 %add, i8* %call1) #6, !dbg !2210
  ret void, !dbg !2211
}

; Function Attrs: nounwind uwtable
define internal void @cb_undef(%struct.cpp_reader* %pfile, i32 %loc, %struct.cpp_hashnode* %node) #5 !dbg !2212 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2214, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2215, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !2216, metadata !DIExpression()), !dbg !2218
  %0 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !2219
  %call = tail call %struct.line_map* @linemap_lookup(%struct.line_maps* %0, i32 %loc) #6, !dbg !2220
  call void @llvm.dbg.value(metadata %struct.line_map* %call, metadata !2217, metadata !DIExpression()), !dbg !2218
  %1 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !2221
  %undef = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %1, i64 0, i32 4, !dbg !2222
  %2 = load void (i32, i8*)*, void (i32, i8*)** %undef, align 8, !dbg !2222
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 2, !dbg !2223
  %3 = load i32, i32* %start_location, align 4, !dbg !2223
  %sub = sub i32 %loc, %3, !dbg !2223
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 6, !dbg !2223
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !2223
  %bf.cast = zext i8 %bf.load to i32, !dbg !2223
  %shr = lshr i32 %sub, %bf.cast, !dbg !2223
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 1, !dbg !2223
  %4 = load i32, i32* %to_line, align 8, !dbg !2223
  %add = add i32 %shr, %4, !dbg !2223
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !2224
  %5 = load i8*, i8** %str, align 8, !dbg !2224
  tail call void %2(i32 %add, i8* %5) #6, !dbg !2225
  ret void, !dbg !2226
}

declare dso_local %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)*, void (i64)*, void (i64)*) local_unnamed_addr #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local void @free(i8*) #2

declare dso_local %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s*, i64) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) #2

declare dso_local %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dump_time_statistics() local_unnamed_addr #5 !dbg !2227 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  %0 = load i32, i32* @input_location, align 4, !dbg !2231
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %0) #6, !dbg !2231
  %file1 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 0, !dbg !2231
  %1 = load i8*, i8** %file1, align 8, !dbg !2231
  %call = call %struct.c_fileinfo* @get_fileinfo(i8* %1) #7, !dbg !2232
  call void @llvm.dbg.value(metadata %struct.c_fileinfo* %call, metadata !2229, metadata !DIExpression()), !dbg !2233
  %call2 = call i64 @get_run_time() #6, !dbg !2234
  %conv = trunc i64 %call2 to i32, !dbg !2234
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2230, metadata !DIExpression()), !dbg !2233
  %2 = load i32, i32* @body_time, align 4, !dbg !2235
  %sub = sub nsw i32 %conv, %2, !dbg !2236
  %time = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %call, i64 0, i32 0, !dbg !2237
  %3 = load i32, i32* %time, align 4, !dbg !2238
  %add = add nsw i32 %3, %sub, !dbg !2238
  store i32 %add, i32* %time, align 4, !dbg !2238
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2239
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2240
  %5 = load i32, i32* @header_time, align 4, !dbg !2241
  %conv4 = sext i32 %5 to i64, !dbg !2241
  call void @print_time(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %conv4) #6, !dbg !2242
  %6 = load i32, i32* @body_time, align 4, !dbg !2243
  %sub5 = sub nsw i32 %conv, %6, !dbg !2244
  %conv6 = sext i32 %sub5 to i64, !dbg !2245
  call void @print_time(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %conv6) #6, !dbg !2246
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2247
  %8 = load i32, i32* @header_time, align 4, !dbg !2248
  %conv7 = sitofp i32 %8 to double, !dbg !2249
  %9 = load i32, i32* @body_time, align 4, !dbg !2250
  %sub8 = sub nsw i32 %conv, %9, !dbg !2251
  %conv9 = sitofp i32 %sub8 to double, !dbg !2252
  %div = fdiv double %conv7, %conv9, !dbg !2253
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), double %div) #6, !dbg !2254
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2255
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2256
  %11 = load %struct.splay_tree_s*, %struct.splay_tree_s** @file_info_tree, align 8, !dbg !2257
  %call12 = call i32 @splay_tree_foreach(%struct.splay_tree_s* %11, i32 (%struct.splay_tree_node_s*, i8*)* nonnull @dump_one_header, i8* null) #6, !dbg !2258
  ret void, !dbg !2259
}

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_time(i8*, i64) local_unnamed_addr #2

declare dso_local i32 @splay_tree_foreach(%struct.splay_tree_s*, i32 (%struct.splay_tree_node_s*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @dump_one_header(%struct.splay_tree_node_s* %n, i8* %dummy) #5 !dbg !2260 {
entry:
  call void @llvm.dbg.value(metadata %struct.splay_tree_node_s* %n, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %dummy, metadata !2265, metadata !DIExpression()), !dbg !2266
  %0 = bitcast %struct.splay_tree_node_s* %n to i8**, !dbg !2267
  %1 = load i8*, i8** %0, align 8, !dbg !2267
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %n, i64 0, i32 1, !dbg !2268
  %2 = bitcast i64* %value to %struct.c_fileinfo**, !dbg !2268
  %3 = load %struct.c_fileinfo*, %struct.c_fileinfo** %2, align 8, !dbg !2268
  %time = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %3, i64 0, i32 0, !dbg !2269
  %4 = load i32, i32* %time, align 4, !dbg !2269
  %conv = sext i32 %4 to i64, !dbg !2270
  tail call void @print_time(i8* %1, i64 %conv) #6, !dbg !2271
  ret i32 0, !dbg !2272
}

; Function Attrs: nounwind uwtable
define dso_local void @fe_file_change(%struct.line_map* %new_map) local_unnamed_addr #5 !dbg !2273 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_map* %new_map, metadata !2277, metadata !DIExpression()), !dbg !2284
  %cmp = icmp eq %struct.line_map* %new_map, null, !dbg !2285
  br i1 %cmp, label %return, label %if.end, !dbg !2287

if.end:                                           ; preds = %entry
  %reason = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 4, !dbg !2288
  %bf.load = load i8, i8* %reason, align 4, !dbg !2288
  %cmp1 = icmp eq i8 %bf.load, 0, !dbg !2289
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !2290

if.then2:                                         ; preds = %if.end
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 3, !dbg !2291
  %0 = load i32, i32* %included_from, align 8, !dbg !2291
  %cmp3 = icmp slt i32 %0, 0, !dbg !2291
  br i1 %cmp3, label %if.end36, label %if.then4, !dbg !2292

if.then4:                                         ; preds = %if.then2
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 2, !dbg !2293
  %1 = load i32, i32* %start_location, align 4, !dbg !2293
  %start_location6 = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 -1, i32 2, !dbg !2293
  %2 = load i32, i32* %start_location6, align 4, !dbg !2293
  %3 = xor i32 %2, -1, !dbg !2293
  %sub7 = add i32 %1, %3, !dbg !2293
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 -1, i32 6, !dbg !2293
  %bf.load9 = load i8, i8* %column_bits, align 2, !dbg !2293
  %bf.cast10 = zext i8 %bf.load9 to i32, !dbg !2293
  %notmask = shl nsw i32 -1, %bf.cast10, !dbg !2293
  %and = and i32 %sub7, %notmask, !dbg !2293
  %add = add i32 %and, %2, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %add, metadata !2278, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32 0, metadata !2283, metadata !DIExpression()), !dbg !2294
  %cmp14 = icmp ugt i32 %add, 1, !dbg !2295
  br i1 %cmp14, label %if.then15, label %if.end25, !dbg !2297

if.then15:                                        ; preds = %if.then4
  %shr = lshr i32 %and, %bf.cast10, !dbg !2298
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 -1, i32 1, !dbg !2298
  %4 = load i32, i32* %to_line, align 8, !dbg !2298
  %add24 = add i32 %shr, %4, !dbg !2298
  call void @llvm.dbg.value(metadata i32 %add24, metadata !2283, metadata !DIExpression()), !dbg !2294
  br label %if.end25, !dbg !2299

if.end25:                                         ; preds = %if.then15, %if.then4
  %line.0 = phi i32 [ %add24, %if.then15 ], [ 0, %if.then4 ], !dbg !2294
  call void @llvm.dbg.value(metadata i32 %line.0, metadata !2283, metadata !DIExpression()), !dbg !2294
  store i32 %1, i32* @input_location, align 4, !dbg !2300
  %5 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !2301
  %start_source_file = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %5, i64 0, i32 5, !dbg !2302
  %6 = load void (i32, i8*)*, void (i32, i8*)** %start_source_file, align 8, !dbg !2302
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 0, !dbg !2303
  %7 = load i8*, i8** %to_file, align 8, !dbg !2303
  tail call void %6(i32 %line.0, i8* %7) #6, !dbg !2304
  br label %if.end36, !dbg !2305

if.else:                                          ; preds = %if.end
  %cmp31 = icmp eq i8 %bf.load, 1, !dbg !2306
  br i1 %cmp31, label %if.then32, label %if.end36, !dbg !2308

if.then32:                                        ; preds = %if.else
  %start_location33 = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 2, !dbg !2309
  %8 = load i32, i32* %start_location33, align 4, !dbg !2309
  store i32 %8, i32* @input_location, align 4, !dbg !2311
  %9 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !2312
  %end_source_file = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %9, i64 0, i32 6, !dbg !2313
  %10 = load void (i32)*, void (i32)** %end_source_file, align 8, !dbg !2313
  %to_line34 = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 1, !dbg !2314
  %11 = load i32, i32* %to_line34, align 8, !dbg !2314
  tail call void %10(i32 %11) #6, !dbg !2315
  br label %if.end36, !dbg !2316

if.end36:                                         ; preds = %if.else, %if.then32, %if.then2, %if.end25
  %to_file37 = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 0, !dbg !2317
  %12 = load i8*, i8** %to_file37, align 8, !dbg !2317
  tail call fastcc void @update_header_times(i8* %12) #7, !dbg !2318
  %start_location38 = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 2, !dbg !2319
  %13 = load i32, i32* %start_location38, align 4, !dbg !2319
  store i32 %13, i32* @input_location, align 4, !dbg !2320
  br label %return, !dbg !2321

return:                                           ; preds = %entry, %if.end36
  ret void, !dbg !2321
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_header_times(i8* %name) unnamed_addr #5 !dbg !2322 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !2326, metadata !DIExpression()), !dbg !2331
  %0 = load i32, i32* @flag_detailed_statistics, align 4, !dbg !2332
  %tobool = icmp eq i32 %0, 0, !dbg !2332
  br i1 %tobool, label %if.end, label %if.then, !dbg !2333

if.then:                                          ; preds = %entry
  %call = tail call i64 @get_run_time() #6, !dbg !2334
  %conv = trunc i64 %call to i32, !dbg !2334
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2327, metadata !DIExpression()), !dbg !2335
  %call1 = tail call %struct.c_fileinfo* @get_fileinfo(i8* %name) #7, !dbg !2336
  call void @llvm.dbg.value(metadata %struct.c_fileinfo* %call1, metadata !2330, metadata !DIExpression()), !dbg !2335
  %1 = load i32, i32* @body_time, align 4, !dbg !2337
  %sub = sub nsw i32 %conv, %1, !dbg !2338
  %2 = load i32, i32* @header_time, align 4, !dbg !2339
  %add = add nsw i32 %2, %sub, !dbg !2339
  store i32 %add, i32* @header_time, align 4, !dbg !2339
  %time = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %call1, i64 0, i32 0, !dbg !2340
  %3 = load i32, i32* %time, align 4, !dbg !2341
  %add3 = add nsw i32 %3, %sub, !dbg !2341
  store i32 %add3, i32* %time, align 4, !dbg !2341
  store i32 %conv, i32* @body_time, align 4, !dbg !2342
  br label %if.end, !dbg !2343

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2344
}

; Function Attrs: nounwind uwtable
define dso_local i32 @c_lex_with_flags(%union.tree_node** %value, i32* %loc, i8* %cpp_flags, i32 %lex_flags) local_unnamed_addr #5 !dbg !1364 {
entry:
  %newloc = alloca i32, align 4
  %name = alloca [8 x i8], align 1
  call void @llvm.dbg.value(metadata %union.tree_node** %value, metadata !1369, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32* %loc, metadata !1370, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %cpp_flags, metadata !1371, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %lex_flags, metadata !1372, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !1421, metadata !DIExpression()), !dbg !2345
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !2346
  %tobool = icmp eq i8 %0, 0, !dbg !2346
  br i1 %tobool, label %do.end, label %if.then, !dbg !2349

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 42) #6, !dbg !2346
  br label %do.end, !dbg !2346

do.end:                                           ; preds = %entry, %if.then
  %1 = bitcast i32* %newloc to i8*, !dbg !2350
  %2 = bitcast %union.tree_node** %value to i8**, !dbg !2351
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %name, i64 0, i64 0, !dbg !2353
  br label %retry, !dbg !2349

retry.loopexit:                                   ; preds = %retry_after_at
  br label %retry.backedge, !dbg !2354

retry:                                            ; preds = %retry.backedge, %do.end
  call void @llvm.dbg.label(metadata !1437), !dbg !2355
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2356
  %call = call %struct.cpp_token* @cpp_get_token_with_location(%struct.cpp_reader* %4, i32* %loc) #6, !dbg !2357
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1373, metadata !DIExpression()), !dbg !2345
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !2358
  %bf.load = load i8, i8* %type1, align 4, !dbg !2358
  %bf.cast = zext i8 %bf.load to i32, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !1420, metadata !DIExpression()), !dbg !2345
  br label %retry_after_at, !dbg !2354

retry_after_at:                                   ; preds = %cleanup, %retry
  %tok.0 = phi %struct.cpp_token* [ %call, %retry ], [ %call2366, %cleanup ], !dbg !2345
  %type.0 = phi i32 [ %bf.cast, %retry ], [ %type.2, %cleanup ], !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.label(metadata !1438), !dbg !2359
  switch i32 %type.0, label %sw.default91.loopexit [
    i32 72, label %retry.loopexit
    i32 53, label %sw.bb2
    i32 55, label %sw.bb4
    i32 52, label %sw.bb18
    i32 37, label %sw.bb43
    i32 38, label %sw.bb43
    i32 60, label %sw.bb46
    i32 56, label %sw.bb66
    i32 57, label %sw.bb66
    i32 58, label %sw.bb66
    i32 59, label %sw.bb66
    i32 61, label %sw.bb68
    i32 62, label %sw.bb68
    i32 63, label %sw.bb68
    i32 64, label %sw.bb68
    i32 65, label %sw.bb68
    i32 70, label %sw.bb86
    i32 67, label %sw.bb90
    i32 68, label %sw.bb90
    i32 69, label %sw.bb90
  ], !dbg !2360

sw.bb2:                                           ; preds = %retry_after_at
  %tok.0.lcssa80 = phi %struct.cpp_token* [ %tok.0, %retry_after_at ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa80, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa80, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa80, metadata !1373, metadata !DIExpression()), !dbg !2345
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok.0.lcssa80, i64 0, i32 3, !dbg !2361
  %5 = bitcast %union.cpp_token_u* %val to i8**, !dbg !2361
  %6 = load i8*, i8** %5, align 8, !dbg !2361
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 -24, !dbg !2361
  store i8* %add.ptr, i8** %2, align 8, !dbg !2362
  br label %sw.epilog92, !dbg !2363

sw.bb4:                                           ; preds = %retry_after_at
  %tok.0.lcssa81 = phi %struct.cpp_token* [ %tok.0, %retry_after_at ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa81, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa81, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa81, metadata !1373, metadata !DIExpression()), !dbg !2345
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2364
  %call5 = call i32 @cpp_classify_number(%struct.cpp_reader* %7, %struct.cpp_token* %tok.0.lcssa81) #6, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %call5, metadata !1422, metadata !DIExpression()), !dbg !2366
  %and = and i32 %call5, 15, !dbg !2367
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb6
    i32 1, label %sw.bb7
    i32 2, label %sw.bb16
  ], !dbg !2368

sw.bb6:                                           ; preds = %sw.bb4
  %8 = load i64, i64* bitcast ([131 x %union.tree_node*]* @global_trees to i64*), align 16, !dbg !2369
  %9 = bitcast %union.tree_node** %value to i64*, !dbg !2371
  store i64 %8, i64* %9, align 8, !dbg !2371
  %10 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2372
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %10, i64 0, i32 1, i64 4, !dbg !2372
  %11 = load i32, i32* %arrayidx, align 8, !dbg !2373
  %inc = add nsw i32 %11, 1, !dbg !2373
  store i32 %inc, i32* %arrayidx, align 8, !dbg !2373
  br label %sw.epilog92, !dbg !2374

sw.bb7:                                           ; preds = %sw.bb4
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok.0.lcssa81, i64 0, i32 3, i32 0, i32 0, !dbg !2375
  %12 = load i32, i32* %len, align 8, !dbg !2375
  %cmp = icmp eq i32 %12, 1, !dbg !2377
  br i1 %cmp, label %land.lhs.true, label %if.end14, !dbg !2378

land.lhs.true:                                    ; preds = %sw.bb7
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok.0.lcssa81, i64 0, i32 3, i32 0, i32 1, !dbg !2379
  %13 = load i8*, i8** %text, align 8, !dbg !2379
  %14 = load i8, i8* %13, align 1, !dbg !2380
  %cmp11 = icmp eq i8 %14, 48, !dbg !2381
  %spec.select = select i1 %cmp11, i8 -128, i8 0, !dbg !2382
  br label %if.end14, !dbg !2382

if.end14:                                         ; preds = %land.lhs.true, %sw.bb7
  %add_flags.0 = phi i8 [ 0, %sw.bb7 ], [ %spec.select, %land.lhs.true ], !dbg !2345
  %call15 = call fastcc %union.tree_node* @interpret_integer(%struct.cpp_token* %tok.0.lcssa81, i32 %call5) #7, !dbg !2383
  store %union.tree_node* %call15, %union.tree_node** %value, align 8, !dbg !2384
  br label %sw.epilog92, !dbg !2385

sw.bb16:                                          ; preds = %sw.bb4
  %call17 = call fastcc %union.tree_node* @interpret_float(%struct.cpp_token* %tok.0.lcssa81, i32 %call5) #7, !dbg !2386
  store %union.tree_node* %call17, %union.tree_node** %value, align 8, !dbg !2387
  br label %sw.epilog92, !dbg !2388

sw.default:                                       ; preds = %sw.bb4
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 344, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2389
  br label %sw.epilog92, !dbg !2390

sw.bb18:                                          ; preds = %retry_after_at
  %15 = load i32, i32* @c_language, align 4, !dbg !2391
  %and19 = and i32 %15, 1, !dbg !2391
  %cmp20 = icmp eq i32 %and19, 0, !dbg !2391
  br i1 %cmp20, label %sw.bb43, label %if.then22, !dbg !2392

if.then22:                                        ; preds = %sw.bb18
  %16 = load i32, i32* %loc, align 4, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %16, metadata !1425, metadata !DIExpression()), !dbg !2350
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2394
  br label %retry_at, !dbg !2394

retry_at:                                         ; preds = %retry_at, %if.then22
  call void @llvm.dbg.label(metadata !1439), !dbg !2395
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2396
  call void @llvm.dbg.value(metadata i32* %newloc, metadata !1428, metadata !DIExpression(DW_OP_deref)), !dbg !2350
  %call23 = call %struct.cpp_token* @cpp_get_token_with_location(%struct.cpp_reader* %17, i32* nonnull %newloc) #6, !dbg !2397
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call23, metadata !1373, metadata !DIExpression()), !dbg !2345
  %type24 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call23, i64 0, i32 1, !dbg !2398
  %bf.load25 = load i8, i8* %type24, align 4, !dbg !2398
  switch i8 %bf.load25, label %sw.default39.loopexit [
    i8 72, label %retry_at
    i8 61, label %sw.bb28
    i8 62, label %sw.bb28
    i8 63, label %sw.bb28
    i8 64, label %sw.bb28
    i8 65, label %sw.bb28
    i8 53, label %sw.bb30
  ], !dbg !2399

sw.bb28:                                          ; preds = %retry_at, %retry_at, %retry_at, %retry_at, %retry_at
  %call23.lcssa64 = phi %struct.cpp_token* [ %call23, %retry_at ], [ %call23, %retry_at ], [ %call23, %retry_at ], [ %call23, %retry_at ], [ %call23, %retry_at ], !dbg !2397
  %call29 = call fastcc i32 @lex_string(%struct.cpp_token* %call23.lcssa64, %union.tree_node** %value, i8 zeroext 1, i8 zeroext 1) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %call29, metadata !1420, metadata !DIExpression()), !dbg !2345
  br label %cleanup, !dbg !2401

sw.bb30:                                          ; preds = %retry_at
  %call23.lcssa65 = phi %struct.cpp_token* [ %call23, %retry_at ], !dbg !2397
  %bf.load25.lcssa62 = phi i8 [ %bf.load25, %retry_at ], !dbg !2398
  %val31 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call23.lcssa65, i64 0, i32 3, !dbg !2402
  %18 = bitcast %union.cpp_token_u* %val31 to i8**, !dbg !2402
  %19 = load i8*, i8** %18, align 8, !dbg !2402
  %add.ptr34 = getelementptr inbounds i8, i8* %19, i64 -24, !dbg !2402
  store i8* %add.ptr34, i8** %2, align 8, !dbg !2403
  %.cast = bitcast i8* %add.ptr34 to %union.tree_node*, !dbg !2404
  %call35 = call i32 @objc_is_reserved_word(%union.tree_node* nonnull %.cast) #6, !dbg !2406
  %tobool36 = icmp eq i32 %call35, 0, !dbg !2406
  br i1 %tobool36, label %sw.default39, label %cleanup, !dbg !2407

sw.default39.loopexit:                            ; preds = %retry_at
  %call23.lcssa = phi %struct.cpp_token* [ %call23, %retry_at ], !dbg !2397
  %bf.load25.lcssa = phi i8 [ %bf.load25, %retry_at ], !dbg !2398
  br label %sw.default39, !dbg !2408

sw.default39:                                     ; preds = %sw.default39.loopexit, %sw.bb30
  %call2367 = phi %struct.cpp_token* [ %call23.lcssa, %sw.default39.loopexit ], [ %call23.lcssa65, %sw.bb30 ]
  %bf.load2563 = phi i8 [ %bf.load25.lcssa, %sw.default39.loopexit ], [ %bf.load25.lcssa62, %sw.bb30 ]
  %bf.cast263 = zext i8 %bf.load2563 to i32, !dbg !2398
  call void (i32, i8*, ...) @error_at(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2408
  %20 = load i32, i32* %newloc, align 4, !dbg !2409
  call void @llvm.dbg.value(metadata i32 %20, metadata !1428, metadata !DIExpression()), !dbg !2350
  store i32 %20, i32* %loc, align 4, !dbg !2410
  br label %cleanup, !dbg !2411

cleanup:                                          ; preds = %sw.bb30, %sw.bb28, %sw.default39
  %call2366 = phi %struct.cpp_token* [ %call2367, %sw.default39 ], [ %call23.lcssa64, %sw.bb28 ], [ %call23.lcssa65, %sw.bb30 ]
  %type.2 = phi i32 [ %bf.cast263, %sw.default39 ], [ %call29, %sw.bb28 ], [ 54, %sw.bb30 ], !dbg !2350
  %cleanup.dest.slot.0 = phi i1 [ true, %sw.default39 ], [ false, %sw.bb28 ], [ false, %sw.bb30 ]
  call void @llvm.dbg.value(metadata i32 %type.2, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2412
  br i1 %cleanup.dest.slot.0, label %retry_after_at, label %sw.epilog92.loopexit

sw.bb43:                                          ; preds = %sw.bb18, %retry_after_at, %retry_after_at
  %tok.0.lcssa82 = phi %struct.cpp_token* [ %tok.0, %sw.bb18 ], [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa82, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa82, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa82, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa82, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa82, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa82, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa82, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa82, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa82, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2413
  call void @llvm.dbg.declare(metadata [8 x i8]* %name, metadata !1429, metadata !DIExpression()), !dbg !2414
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2415
  %call44 = call i8* @cpp_spell_token(%struct.cpp_reader* %21, %struct.cpp_token* %tok.0.lcssa82, i8* nonnull %3, i8 zeroext 1) #6, !dbg !2416
  store i8 0, i8* %call44, align 1, !dbg !2417
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %3) #6, !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2419
  br label %retry.backedge, !dbg !2420

retry.backedge:                                   ; preds = %sw.bb43, %if.end65, %retry.loopexit
  br label %retry, !dbg !2355

sw.bb46:                                          ; preds = %retry_after_at
  %tok.0.lcssa83 = phi %struct.cpp_token* [ %tok.0, %retry_after_at ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa83, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa83, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa83, metadata !1373, metadata !DIExpression()), !dbg !2345
  %text49 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok.0.lcssa83, i64 0, i32 3, i32 0, i32 1, !dbg !2421
  %22 = load i8*, i8** %text49, align 8, !dbg !2421
  %23 = load i8, i8* %22, align 1, !dbg !2422
  %conv51 = zext i8 %23 to i32, !dbg !2422
  call void @llvm.dbg.value(metadata i32 %conv51, metadata !1434, metadata !DIExpression()), !dbg !2423
  switch i8 %23, label %if.else [
    i8 34, label %if.then56
    i8 39, label %if.then56
  ], !dbg !2424

if.then56:                                        ; preds = %sw.bb46, %sw.bb46
  call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %conv51) #6, !dbg !2426
  br label %if.end65, !dbg !2426

if.else:                                          ; preds = %sw.bb46
  %idxprom = zext i8 %23 to i64, !dbg !2427
  %arrayidx58 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2427
  %24 = load i16, i16* %arrayidx58, align 2, !dbg !2427
  %25 = and i16 %24, 172, !dbg !2427
  %tobool61 = icmp eq i16 %25, 0, !dbg !2427
  br i1 %tobool61, label %if.else63, label %if.then62, !dbg !2429

if.then62:                                        ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %conv51) #6, !dbg !2430
  br label %if.end65, !dbg !2430

if.else63:                                        ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %conv51) #6, !dbg !2431
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.else63, %if.then56
  br label %retry.backedge, !dbg !2432

sw.bb66:                                          ; preds = %retry_after_at, %retry_after_at, %retry_after_at, %retry_after_at
  %tok.0.lcssa84 = phi %struct.cpp_token* [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], !dbg !2345
  %type.0.lcssa73 = phi i32 [ %type.0, %retry_after_at ], [ %type.0, %retry_after_at ], [ %type.0, %retry_after_at ], [ %type.0, %retry_after_at ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa84, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa73, metadata !1420, metadata !DIExpression()), !dbg !2345
  %call67 = call fastcc %union.tree_node* @lex_charconst(%struct.cpp_token* %tok.0.lcssa84) #7, !dbg !2433
  store %union.tree_node* %call67, %union.tree_node** %value, align 8, !dbg !2434
  br label %sw.epilog92, !dbg !2435

sw.bb68:                                          ; preds = %retry_after_at, %retry_after_at, %retry_after_at, %retry_after_at, %retry_after_at
  %tok.0.lcssa85 = phi %struct.cpp_token* [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], !dbg !2345
  %type.0.lcssa74 = phi i32 [ %type.0, %retry_after_at ], [ %type.0, %retry_after_at ], [ %type.0, %retry_after_at ], [ %type.0, %retry_after_at ], [ %type.0, %retry_after_at ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa85, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa74, metadata !1420, metadata !DIExpression()), !dbg !2345
  %and69 = and i32 %lex_flags, 2, !dbg !2436
  %cmp70 = icmp eq i32 %and69, 0, !dbg !2438
  br i1 %cmp70, label %if.then72, label %if.end78, !dbg !2439

if.then72:                                        ; preds = %sw.bb68
  %26 = trunc i32 %lex_flags to i8, !dbg !2440
  %27 = and i8 %26, 1, !dbg !2440
  %28 = xor i8 %27, 1, !dbg !2440
  %call77 = call fastcc i32 @lex_string(%struct.cpp_token* %tok.0.lcssa85, %union.tree_node** %value, i8 zeroext 0, i8 zeroext %28) #7, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %call77, metadata !1420, metadata !DIExpression()), !dbg !2345
  br label %sw.epilog92, !dbg !2443

if.end78:                                         ; preds = %sw.bb68
  %len81 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok.0.lcssa85, i64 0, i32 3, i32 0, i32 0, !dbg !2444
  %29 = load i32, i32* %len81, align 8, !dbg !2444
  %text84 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok.0.lcssa85, i64 0, i32 3, i32 0, i32 1, !dbg !2445
  %30 = load i8*, i8** %text84, align 8, !dbg !2445
  %call85 = call %union.tree_node* @build_string(i32 %29, i8* %30) #6, !dbg !2446
  store %union.tree_node* %call85, %union.tree_node** %value, align 8, !dbg !2447
  br label %sw.epilog92, !dbg !2448

sw.bb86:                                          ; preds = %retry_after_at
  %tok.0.lcssa86 = phi %struct.cpp_token* [ %tok.0, %retry_after_at ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa86, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa86, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa86, metadata !1373, metadata !DIExpression()), !dbg !2345
  %pragma = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok.0.lcssa86, i64 0, i32 3, i32 0, i32 0, !dbg !2449
  %31 = load i32, i32* %pragma, align 8, !dbg !2449
  %conv88 = zext i32 %31 to i64, !dbg !2450
  %call89 = call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv88) #6, !dbg !2451
  store %union.tree_node* %call89, %union.tree_node** %value, align 8, !dbg !2452
  br label %sw.epilog92, !dbg !2453

sw.bb90:                                          ; preds = %retry_after_at, %retry_after_at, %retry_after_at
  %tok.0.lcssa87 = phi %struct.cpp_token* [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], [ %tok.0, %retry_after_at ], !dbg !2345
  %type.0.lcssa76 = phi i32 [ %type.0, %retry_after_at ], [ %type.0, %retry_after_at ], [ %type.0, %retry_after_at ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa87, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa87, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa87, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa76, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa76, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa76, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa87, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa87, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa87, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa76, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa76, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa76, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa87, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa87, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa87, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa76, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa76, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa76, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 445, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2454
  br label %sw.default91, !dbg !2454

sw.default91.loopexit:                            ; preds = %retry_after_at
  %tok.0.lcssa = phi %struct.cpp_token* [ %tok.0, %retry_after_at ], !dbg !2345
  %type.0.lcssa = phi i32 [ %type.0, %retry_after_at ], !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.0.lcssa, metadata !1373, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.0.lcssa, metadata !1420, metadata !DIExpression()), !dbg !2345
  br label %sw.default91, !dbg !2455

sw.default91:                                     ; preds = %sw.default91.loopexit, %sw.bb90
  %tok.089 = phi %struct.cpp_token* [ %tok.0.lcssa, %sw.default91.loopexit ], [ %tok.0.lcssa87, %sw.bb90 ]
  %type.078 = phi i32 [ %type.0.lcssa, %sw.default91.loopexit ], [ %type.0.lcssa76, %sw.bb90 ]
  store %union.tree_node* null, %union.tree_node** %value, align 8, !dbg !2455
  br label %sw.epilog92, !dbg !2456

sw.epilog92.loopexit:                             ; preds = %cleanup
  %type.2.lcssa = phi i32 [ %type.2, %cleanup ], !dbg !2350
  %call2366.lcssa = phi %struct.cpp_token* [ %call2366, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %type.2.lcssa, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.2.lcssa, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %type.2.lcssa, metadata !1420, metadata !DIExpression()), !dbg !2345
  br label %sw.epilog92, !dbg !2457

sw.epilog92:                                      ; preds = %sw.epilog92.loopexit, %sw.bb6, %if.end14, %sw.bb16, %sw.default, %sw.default91, %sw.bb86, %if.end78, %if.then72, %sw.bb66, %sw.bb2
  %tok.1 = phi %struct.cpp_token* [ %tok.089, %sw.default91 ], [ %tok.0.lcssa86, %sw.bb86 ], [ %tok.0.lcssa85, %if.then72 ], [ %tok.0.lcssa85, %if.end78 ], [ %tok.0.lcssa84, %sw.bb66 ], [ %tok.0.lcssa80, %sw.bb2 ], [ %tok.0.lcssa81, %sw.default ], [ %tok.0.lcssa81, %sw.bb16 ], [ %tok.0.lcssa81, %if.end14 ], [ %tok.0.lcssa81, %sw.bb6 ], [ %call2366.lcssa, %sw.epilog92.loopexit ], !dbg !2345
  %type.3 = phi i32 [ %type.078, %sw.default91 ], [ 70, %sw.bb86 ], [ %call77, %if.then72 ], [ %type.0.lcssa74, %if.end78 ], [ %type.0.lcssa73, %sw.bb66 ], [ 53, %sw.bb2 ], [ 55, %sw.default ], [ 55, %sw.bb16 ], [ 55, %if.end14 ], [ 55, %sw.bb6 ], [ %type.2.lcssa, %sw.epilog92.loopexit ], !dbg !2345
  %add_flags.2 = phi i8 [ 0, %sw.default91 ], [ 0, %sw.bb86 ], [ 0, %if.then72 ], [ 0, %if.end78 ], [ 0, %sw.bb66 ], [ 0, %sw.bb2 ], [ 0, %sw.default ], [ 0, %sw.bb16 ], [ %add_flags.0, %if.end14 ], [ 0, %sw.bb6 ], [ 0, %sw.epilog92.loopexit ], !dbg !2459
  call void @llvm.dbg.value(metadata i32 %type.3, metadata !1420, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok.1, metadata !1373, metadata !DIExpression()), !dbg !2345
  %tobool93 = icmp eq i8* %cpp_flags, null, !dbg !2457
  br i1 %tobool93, label %if.end99, label %if.then94, !dbg !2460

if.then94:                                        ; preds = %sw.epilog92
  %flags95 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok.1, i64 0, i32 2, !dbg !2461
  %32 = load i16, i16* %flags95, align 2, !dbg !2461
  %conv96 = trunc i16 %32 to i8, !dbg !2462
  %or = or i8 %add_flags.2, %conv96, !dbg !2463
  store i8 %or, i8* %cpp_flags, align 1, !dbg !2464
  br label %if.end99, !dbg !2465

if.end99:                                         ; preds = %sw.epilog92, %if.then94
  %.b = load i1, i1* @c_lex_with_flags.no_more_pch, align 1, !dbg !2466
  br i1 %.b, label %do.body103, label %if.then101, !dbg !2468

if.then101:                                       ; preds = %if.end99
  store i1 true, i1* @c_lex_with_flags.no_more_pch, align 1, !dbg !2469
  call void @c_common_no_more_pch() #6, !dbg !2471
  br label %do.body103, !dbg !2472

do.body103:                                       ; preds = %if.end99, %if.then101
  %33 = load i8, i8* @timevar_enable, align 1, !dbg !2473
  %tobool104 = icmp eq i8 %33, 0, !dbg !2473
  br i1 %tobool104, label %do.end108, label %if.then105, !dbg !2476

if.then105:                                       ; preds = %do.body103
  call void @timevar_pop_1(i32 42) #6, !dbg !2473
  br label %do.end108, !dbg !2473

do.end108:                                        ; preds = %do.body103, %if.then105
  ret i32 %type.3, !dbg !2477
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local %struct.cpp_token* @cpp_get_token_with_location(%struct.cpp_reader*, i32*) local_unnamed_addr #2

declare dso_local i32 @cpp_classify_number(%struct.cpp_reader*, %struct.cpp_token*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @interpret_integer(%struct.cpp_token* %token, i32 %flags) unnamed_addr #5 !dbg !2478 {
entry:
  %integer = alloca %struct.cpp_num, align 8
  %tmp = alloca %struct.cpp_num, align 8
  %tmp1 = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2482, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2483, metadata !DIExpression()), !dbg !2565
  %0 = bitcast %struct.cpp_num* %integer to i8*, !dbg !2566
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2566
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2567
  %call = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %1) #6, !dbg !2568
  call void @llvm.dbg.value(metadata %struct.cpp_options* %call, metadata !2496, metadata !DIExpression()), !dbg !2565
  %2 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !2569
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2569
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2570
  call void @cpp_interpret_integer(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_reader* %3, %struct.cpp_token* %token, i32 %flags) #6, !dbg !2569
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !2569
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2569
  %4 = bitcast %struct.cpp_num* %tmp1 to i8*, !dbg !2571
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2571
  %precision = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call, i64 0, i32 44, !dbg !2572
  %5 = load i64, i64* %precision, align 8, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.cpp_num* %integer, metadata !2487, metadata !DIExpression(DW_OP_deref)), !dbg !2565
  call void @cpp_num_sign_extend(%struct.cpp_num* nonnull sret %tmp1, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %integer, i64 %5) #6, !dbg !2571
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !2571
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2571
  %and = and i32 %flags, 4096, !dbg !2573
  %tobool = icmp eq i32 %and, 0, !dbg !2573
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %integer, i64 0, i32 1, !dbg !2574
  %6 = load i64, i64* %low, align 8, !dbg !2574
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %integer, i64 0, i32 0, !dbg !2574
  %7 = load i64, i64* %high, align 8, !dbg !2574
  %call2 = call fastcc i32 @narrowest_unsigned_type(i64 %6, i64 %7, i32 %flags) #7, !dbg !2574
  br i1 %tobool, label %if.else, label %if.end26, !dbg !2575

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2561, metadata !DIExpression()), !dbg !2576
  %8 = load i64, i64* %low, align 8, !dbg !2577
  %9 = load i64, i64* %high, align 8, !dbg !2578
  %call8 = call fastcc i32 @narrowest_signed_type(i64 %8, i64 %9, i32 %flags) #7, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2564, metadata !DIExpression()), !dbg !2576
  %and9 = and i32 %flags, 3840, !dbg !2580
  %cmp = icmp eq i32 %and9, 256, !dbg !2582
  br i1 %cmp, label %if.else12, label %if.then10, !dbg !2583

if.then10:                                        ; preds = %if.else
  %cmp11 = icmp ult i32 %call2, %call8, !dbg !2584
  %call2.call8 = select i1 %cmp11, i32 %call2, i32 %call8, !dbg !2584
  call void @llvm.dbg.value(metadata i32 %call2.call8, metadata !2486, metadata !DIExpression()), !dbg !2565
  br label %if.end26, !dbg !2585

if.else12:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 %call8, metadata !2486, metadata !DIExpression()), !dbg !2565
  %cmp13 = icmp ugt i32 %call8, %call2, !dbg !2586
  %cmp14 = icmp ugt i32 %call8, 7, !dbg !2589
  %or.cond = and i1 %cmp13, %cmp14, !dbg !2590
  br i1 %or.cond, label %if.then15, label %if.end26, !dbg !2590

if.then15:                                        ; preds = %if.else12
  %10 = load i32, i32* @flag_isoc99, align 4, !dbg !2591
  %tobool16 = icmp eq i32 %10, 0, !dbg !2591
  br i1 %tobool16, label %if.then17, label %if.else21, !dbg !2594

if.then17:                                        ; preds = %if.then15
  %11 = icmp ugt i32 %call2, 8, !dbg !2595
  %spec.select = select i1 %11, i32 %call2, i32 8, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2561, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2486, metadata !DIExpression()), !dbg !2565
  %call20 = call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !2597
  br label %if.end26, !dbg !2598

if.else21:                                        ; preds = %if.then15
  %call22 = call zeroext i8 (i32, i8*, ...) @warning(i32 202, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2599
  br label %if.end26

if.end26:                                         ; preds = %entry, %if.then10, %if.then17, %if.else21, %if.else12
  %itk.3 = phi i32 [ %call2, %entry ], [ %call2.call8, %if.then10 ], [ %call8, %if.else12 ], [ %call8, %if.else21 ], [ %spec.select, %if.then17 ], !dbg !2574
  call void @llvm.dbg.value(metadata i32 %itk.3, metadata !2486, metadata !DIExpression()), !dbg !2565
  %cmp27 = icmp eq i32 %itk.3, 11, !dbg !2600
  br i1 %cmp27, label %if.then28, label %if.else35, !dbg !2602

if.then28:                                        ; preds = %if.end26
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 10), align 16, !dbg !2603
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 9), align 8, !dbg !2603
  %cond34 = select i1 %tobool, %union.tree_node* %13, %union.tree_node* %12, !dbg !2603
  br label %if.end56, !dbg !2603

if.else35:                                        ; preds = %if.end26
  %idxprom = zext i32 %itk.3 to i64, !dbg !2604
  %arrayidx = getelementptr inbounds [11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 %idxprom, !dbg !2604
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2604
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !2485, metadata !DIExpression()), !dbg !2565
  %cmp36 = icmp ugt i32 %itk.3, 8, !dbg !2606
  %and38 = and i32 %flags, 240, !dbg !2608
  %cmp39 = icmp ne i32 %and38, 64, !dbg !2609
  %or.cond1 = and i1 %cmp36, %cmp39, !dbg !2610
  br i1 %or.cond1, label %if.then40, label %if.end56, !dbg !2610

if.then40:                                        ; preds = %if.else35
  %15 = load i32, i32* @c_language, align 4, !dbg !2611
  %and41 = and i32 %15, 2, !dbg !2611
  %cmp42 = icmp eq i32 %and41, 0, !dbg !2611
  br i1 %cmp42, label %cond.false45, label %cond.true43, !dbg !2611

cond.true43:                                      ; preds = %if.then40
  br label %cond.end47, !dbg !2611

cond.false45:                                     ; preds = %if.then40
  br label %cond.end47, !dbg !2611

cond.end47:                                       ; preds = %cond.false45, %cond.true43
  %cond48.in.in.in = phi i32* [ @cxx_dialect, %cond.true43 ], [ @flag_isoc99, %cond.false45 ]
  %cond48.in.in = load i32, i32* %cond48.in.in.in, align 4, !dbg !2612
  %cond48.in = icmp eq i32 %cond48.in.in, 0, !dbg !2612
  %cond50 = select i1 %cond48.in, i32 10, i32 6, !dbg !2613
  %16 = load i32, i32* @input_location, align 4, !dbg !2614
  %cond53 = select i1 %tobool, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0), !dbg !2615
  %call54 = call zeroext i8 (i32, i32, i32, i8*, ...) @emit_diagnostic(i32 %cond50, i32 %16, i32 125, i8* %cond53) #6, !dbg !2616
  br label %if.end56, !dbg !2616

if.end56:                                         ; preds = %if.else35, %cond.end47, %if.then28
  %type.0 = phi %union.tree_node* [ %cond34, %if.then28 ], [ %14, %cond.end47 ], [ %14, %if.else35 ], !dbg !2617
  call void @llvm.dbg.value(metadata %union.tree_node* %type.0, metadata !2485, metadata !DIExpression()), !dbg !2565
  %17 = load i64, i64* %low, align 8, !dbg !2618
  %18 = load i64, i64* %high, align 8, !dbg !2619
  %call59 = call %union.tree_node* @build_int_cst_wide(%union.tree_node* %type.0, i64 %17, i64 %18) #6, !dbg !2620
  call void @llvm.dbg.value(metadata %union.tree_node* %call59, metadata !2484, metadata !DIExpression()), !dbg !2565
  %and60 = and i32 %flags, 8192, !dbg !2621
  %tobool61 = icmp eq i32 %and60, 0, !dbg !2621
  br i1 %tobool61, label %if.end65, label %if.then62, !dbg !2623

if.then62:                                        ; preds = %if.end56
  %call63 = call %union.tree_node* @build_int_cst(%union.tree_node* %type.0, i64 0) #6, !dbg !2624
  %call64 = call %union.tree_node* @build_complex(%union.tree_node* null, %union.tree_node* %call63, %union.tree_node* %call59) #6, !dbg !2625
  call void @llvm.dbg.value(metadata %union.tree_node* %call64, metadata !2484, metadata !DIExpression()), !dbg !2565
  br label %if.end65, !dbg !2626

if.end65:                                         ; preds = %if.end56, %if.then62
  %value.0 = phi %union.tree_node* [ %call64, %if.then62 ], [ %call59, %if.end56 ], !dbg !2565
  call void @llvm.dbg.value(metadata %union.tree_node* %value.0, metadata !2484, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2627
  ret %union.tree_node* %value.0, !dbg !2628
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @interpret_float(%struct.cpp_token* %token, i32 %flags) unnamed_addr #5 !dbg !2629 {
entry:
  %real = alloca %struct.real_value, align 8
  %real_trunc = alloca %struct.real_value, align 8
  %realvoidmode = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2631, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2632, metadata !DIExpression()), !dbg !2650
  %0 = bitcast %struct.real_value* %real to i8*, !dbg !2651
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2651
  %1 = bitcast %struct.real_value* %real_trunc to i8*, !dbg !2652
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2652
  %2 = trunc i32 %flags to i16, !dbg !2653
  %tobool = icmp slt i16 %2, 0, !dbg !2653
  br i1 %tobool, label %if.then, label %if.end10, !dbg !2655

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2632, metadata !DIExpression(DW_OP_constu, 32768, DW_OP_xor, DW_OP_stack_value)), !dbg !2650
  %3 = or i32 %flags, 32, !dbg !2656
  %or = xor i32 %3, 32768, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %or, metadata !2632, metadata !DIExpression()), !dbg !2650
  %4 = and i32 %flags, 8704, !dbg !2658
  %5 = icmp eq i32 %4, 0, !dbg !2658
  br i1 %5, label %if.then4, label %if.end10, !dbg !2658

if.then4:                                         ; preds = %if.then
  %call = tail call zeroext i8 (i32, i8*, ...) @warning(i32 217, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !2660
  %call5 = tail call zeroext i8 @float_const_decimal64_p() #6, !dbg !2662
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2662
  %or8 = or i32 %or, 16384, !dbg !2664
  %spec.select = select i1 %tobool6, i32 %or, i32 %or8, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2632, metadata !DIExpression()), !dbg !2650
  br label %if.end10, !dbg !2666

if.end10:                                         ; preds = %if.then, %if.then4, %entry
  %flags.addr.2 = phi i32 [ %flags, %entry ], [ %spec.select, %if.then4 ], [ %or, %if.then ]
  call void @llvm.dbg.value(metadata i32 %flags.addr.2, metadata !2632, metadata !DIExpression()), !dbg !2650
  %6 = and i32 %flags.addr.2, 3145728, !dbg !2667
  %7 = icmp eq i32 %6, 0, !dbg !2667
  br i1 %7, label %if.end17, label %if.then15, !dbg !2667

if.then15:                                        ; preds = %if.end10
  %call16 = tail call fastcc %union.tree_node* @interpret_fixed(%struct.cpp_token* %token, i32 %flags.addr.2) #7, !dbg !2669
  br label %cleanup517, !dbg !2670

if.end17:                                         ; preds = %if.end10
  %and18 = and i32 %flags.addr.2, 16384, !dbg !2671
  %tobool19 = icmp eq i32 %and18, 0, !dbg !2671
  br i1 %tobool19, label %if.else30, label %if.then20, !dbg !2672

if.then20:                                        ; preds = %if.end17
  %and21 = and i32 %flags.addr.2, 240, !dbg !2673
  %cmp22 = icmp eq i32 %and21, 64, !dbg !2675
  br i1 %cmp22, label %if.then23, label %if.else, !dbg !2676

if.then23:                                        ; preds = %if.then20
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 51), align 8, !dbg !2677
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !2633, metadata !DIExpression()), !dbg !2650
  br label %if.end62, !dbg !2678

if.else:                                          ; preds = %if.then20
  %cmp25 = icmp eq i32 %and21, 16, !dbg !2679
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 49), align 8, !dbg !2681
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 50), align 16, !dbg !2681
  %type.0 = select i1 %cmp25, %union.tree_node* %9, %union.tree_node* %10, !dbg !2681
  br label %if.end62, !dbg !2681

if.else30:                                        ; preds = %if.end17
  %and31 = and i32 %flags.addr.2, 983040, !dbg !2682
  %tobool32 = icmp eq i32 %and31, 0, !dbg !2682
  br i1 %tobool32, label %if.else48, label %if.then33, !dbg !2683

if.then33:                                        ; preds = %if.else30
  %cmp35 = icmp eq i32 %and31, 65536, !dbg !2684
  %. = select i1 %cmp35, i8 119, i8 113
  call void @llvm.dbg.value(metadata i8 %., metadata !2640, metadata !DIExpression()), !dbg !2686
  %11 = load i32 (i8)*, i32 (i8)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 104, i32 0), align 8, !dbg !2687
  %call39 = tail call i32 %11(i8 signext %.) #6, !dbg !2688
  call void @llvm.dbg.value(metadata i32 %call39, metadata !2644, metadata !DIExpression()), !dbg !2686
  %cmp40 = icmp eq i32 %call39, 0, !dbg !2689
  br i1 %cmp40, label %if.then41, label %if.else42, !dbg !2691

if.then41:                                        ; preds = %if.then33
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !2692
  %12 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2694
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %12, i64 0, i32 1, i64 4, !dbg !2694
  %13 = load i32, i32* %arrayidx, align 8, !dbg !2695
  %inc = add nsw i32 %13, 1, !dbg !2695
  store i32 %inc, i32* %arrayidx, align 8, !dbg !2695
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2696
  br label %cleanup, !dbg !2697

if.else42:                                        ; preds = %if.then33
  %15 = load i32, i32* @input_location, align 4, !dbg !2698
  %call43 = tail call zeroext i8 (i32, i32, i8*, ...) @pedwarn(i32 %15, i32 834, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2699
  %call45 = tail call %union.tree_node* @c_common_type_for_mode(i32 %call39, i32 0) #6, !dbg !2700
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !2633, metadata !DIExpression()), !dbg !2650
  %tobool46 = icmp eq %union.tree_node* %call45, null, !dbg !2701
  br i1 %tobool46, label %cond.true, label %cleanup, !dbg !2701

cond.true:                                        ; preds = %if.else42
  tail call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 674, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2701
  br label %cleanup, !dbg !2701

cleanup:                                          ; preds = %if.else42, %cond.true, %if.then41
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then41 ], [ true, %if.else42 ], [ true, %cond.true ]
  %type.2 = phi %union.tree_node* [ undef, %if.then41 ], [ %call45, %if.else42 ], [ null, %cond.true ]
  %retval.0 = phi %union.tree_node* [ %14, %if.then41 ], [ undef, %if.else42 ], [ undef, %cond.true ]
  call void @llvm.dbg.value(metadata %union.tree_node* %type.2, metadata !2633, metadata !DIExpression()), !dbg !2650
  br i1 %cleanup.dest.slot.0, label %if.end62, label %cleanup517

if.else48:                                        ; preds = %if.else30
  %and49 = and i32 %flags.addr.2, 240, !dbg !2702
  %cmp50 = icmp eq i32 %and49, 64, !dbg !2704
  br i1 %cmp50, label %if.then51, label %if.else52, !dbg !2705

if.then51:                                        ; preds = %if.else48
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 33), align 8, !dbg !2706
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !2633, metadata !DIExpression()), !dbg !2650
  br label %if.end62, !dbg !2707

if.else52:                                        ; preds = %if.else48
  %cmp54 = icmp eq i32 %and49, 16, !dbg !2708
  %17 = load i32, i32* @flag_single_precision_constant, align 4, !dbg !2710
  %tobool56 = icmp ne i32 %17, 0, !dbg !2710
  %or.cond3 = or i1 %cmp54, %tobool56, !dbg !2711
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31), align 8, !dbg !2711
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 32), align 16, !dbg !2711
  %type.3 = select i1 %or.cond3, %union.tree_node* %18, %union.tree_node* %19, !dbg !2711
  br label %if.end62, !dbg !2711

if.end62:                                         ; preds = %cleanup, %if.else52, %if.then51, %if.then23, %if.else
  %type.6 = phi %union.tree_node* [ %8, %if.then23 ], [ %type.0, %if.else ], [ %type.2, %cleanup ], [ %16, %if.then51 ], [ %type.3, %if.else52 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %type.6, metadata !2633, metadata !DIExpression()), !dbg !2650
  %call63 = tail call %union.tree_node* @excess_precision_type(%union.tree_node* %type.6) #6, !dbg !2712
  call void @llvm.dbg.value(metadata %union.tree_node* %call63, metadata !2634, metadata !DIExpression()), !dbg !2650
  %tobool64 = icmp eq %union.tree_node* %call63, null, !dbg !2713
  %spec.select4 = select i1 %tobool64, %union.tree_node* %type.6, %union.tree_node* %call63, !dbg !2715
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select4, metadata !2634, metadata !DIExpression()), !dbg !2650
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !2716
  %20 = load i32, i32* %len, align 8, !dbg !2716
  %conv = zext i32 %20 to i64, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2639, metadata !DIExpression()), !dbg !2650
  br i1 %tobool19, label %if.else70, label %if.then69, !dbg !2718

if.then69:                                        ; preds = %if.end62
  %sub = add nsw i64 %conv, -2, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2639, metadata !DIExpression()), !dbg !2650
  br label %if.end81, !dbg !2721

if.else70:                                        ; preds = %if.end62
  %and71 = and i32 %flags.addr.2, 240, !dbg !2722
  %cmp72 = icmp ne i32 %and71, 32, !dbg !2725
  %21 = zext i1 %cmp72 to i64, !dbg !2726
  %spec.select5 = sub nsw i64 %conv, %21, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %spec.select5, metadata !2639, metadata !DIExpression()), !dbg !2650
  %and76 = lshr i32 %flags.addr.2, 13, !dbg !2727
  %and76.lobit = and i32 %and76, 1, !dbg !2727
  %22 = zext i32 %and76.lobit to i64, !dbg !2727
  %copylen.1 = sub nsw i64 %spec.select5, %22, !dbg !2727
  br label %if.end81, !dbg !2727

if.end81:                                         ; preds = %if.else70, %if.then69
  %copylen.2 = phi i64 [ %sub, %if.then69 ], [ %copylen.1, %if.else70 ], !dbg !2728
  call void @llvm.dbg.value(metadata i64 %copylen.2, metadata !2639, metadata !DIExpression()), !dbg !2650
  %add = add nsw i64 %copylen.2, 1, !dbg !2729
  %23 = alloca i8, i64 %add, align 16, !dbg !2729
  call void @llvm.dbg.value(metadata i8* %23, metadata !2638, metadata !DIExpression()), !dbg !2650
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !2730
  %24 = load i8*, i8** %text, align 8, !dbg !2730
  %call84 = call i8* @memcpy(i8* nonnull %23, i8* %24, i64 %copylen.2) #6, !dbg !2731
  %arrayidx85 = getelementptr inbounds i8, i8* %23, i64 %copylen.2, !dbg !2732
  store i8 0, i8* %arrayidx85, align 1, !dbg !2733
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %spec.select4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2734
  %bf.load = load i64, i64* %25, align 8, !dbg !2734
  %bf.cast6 = and i64 %bf.load, 65535, !dbg !2734
  %cmp86 = icmp eq i64 %bf.cast6, 14, !dbg !2734
  br i1 %cmp86, label %cond.true88, label %cond.false90, !dbg !2734

cond.true88:                                      ; preds = %if.end81
  %call89 = call i32 @vector_type_mode(%union.tree_node* %spec.select4) #6, !dbg !2734
  br label %cond.end95, !dbg !2734

cond.false90:                                     ; preds = %if.end81
  %type91 = bitcast %union.tree_node* %spec.select4 to %struct.tree_type*, !dbg !2734
  %mode92 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type91, i64 0, i32 6, !dbg !2734
  %bf.load93 = load i32, i32* %mode92, align 4, !dbg !2734
  %bf.lshr = lshr i32 %bf.load93, 16, !dbg !2734
  %bf.clear94 = and i32 %bf.lshr, 255, !dbg !2734
  br label %cond.end95, !dbg !2734

cond.end95:                                       ; preds = %cond.false90, %cond.true88
  %cond96 = phi i32 [ %call89, %cond.true88 ], [ %bf.clear94, %cond.false90 ], !dbg !2734
  call void @llvm.dbg.value(metadata %struct.real_value* %real, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  call void @real_from_string3(%struct.real_value* nonnull %real, i8* nonnull %23, i32 %cond96) #6, !dbg !2735
  %cmp97 = icmp eq %union.tree_node* %spec.select4, %type.6, !dbg !2736
  br i1 %cmp97, label %if.end116, label %if.then99, !dbg !2738

if.then99:                                        ; preds = %cond.end95
  %26 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2739
  %bf.load101 = load i64, i64* %26, align 8, !dbg !2739
  %bf.cast10322 = and i64 %bf.load101, 65535, !dbg !2739
  %cmp104 = icmp eq i64 %bf.cast10322, 14, !dbg !2739
  br i1 %cmp104, label %cond.true106, label %cond.false108, !dbg !2739

cond.true106:                                     ; preds = %if.then99
  %call107 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2739
  br label %cond.end114, !dbg !2739

cond.false108:                                    ; preds = %if.then99
  %type109 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2739
  %mode110 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type109, i64 0, i32 6, !dbg !2739
  %bf.load111 = load i32, i32* %mode110, align 4, !dbg !2739
  %bf.lshr112 = lshr i32 %bf.load111, 16, !dbg !2739
  %bf.clear113 = and i32 %bf.lshr112, 255, !dbg !2739
  br label %cond.end114, !dbg !2739

cond.end114:                                      ; preds = %cond.false108, %cond.true106
  %cond115 = phi i32 [ %call107, %cond.true106 ], [ %bf.clear113, %cond.false108 ], !dbg !2739
  call void @llvm.dbg.value(metadata %struct.real_value* %real, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  call void @llvm.dbg.value(metadata %struct.real_value* %real_trunc, metadata !2637, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  call void @real_convert(%struct.real_value* nonnull %real_trunc, i32 %cond115, %struct.real_value* nonnull %real) #6, !dbg !2740
  br label %if.end116, !dbg !2740

if.end116:                                        ; preds = %cond.end95, %cond.end114
  call void @llvm.dbg.value(metadata %struct.real_value* %real, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  %call117 = call zeroext i8 @real_isinf(%struct.real_value* nonnull %real) #6, !dbg !2741
  %tobool119 = icmp eq i8 %call117, 0, !dbg !2741
  br i1 %tobool119, label %lor.lhs.false120, label %if.then127, !dbg !2742

lor.lhs.false120:                                 ; preds = %if.end116
  br i1 %cmp97, label %if.else482, label %land.lhs.true123, !dbg !2743

land.lhs.true123:                                 ; preds = %lor.lhs.false120
  call void @llvm.dbg.value(metadata %struct.real_value* %real_trunc, metadata !2637, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  %call124 = call zeroext i8 @real_isinf(%struct.real_value* nonnull %real_trunc) #6, !dbg !2744
  %tobool126 = icmp eq i8 %call124, 0, !dbg !2744
  br i1 %tobool126, label %if.else482, label %if.then127, !dbg !2745

if.then127:                                       ; preds = %land.lhs.true123, %if.end116
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2746
  %bf.load129 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast1317 = and i64 %bf.load129, 65535, !dbg !2746
  %cmp132 = icmp eq i64 %bf.cast1317, 14, !dbg !2746
  br i1 %cmp132, label %cond.true134, label %cond.false136, !dbg !2746

cond.true134:                                     ; preds = %if.then127
  %call135 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end142, !dbg !2746

cond.false136:                                    ; preds = %if.then127
  %type137 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode138 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type137, i64 0, i32 6, !dbg !2746
  %bf.load139 = load i32, i32* %mode138, align 4, !dbg !2746
  %bf.lshr140 = lshr i32 %bf.load139, 16, !dbg !2746
  %bf.clear141 = and i32 %bf.lshr140, 255, !dbg !2746
  br label %cond.end142, !dbg !2746

cond.end142:                                      ; preds = %cond.false136, %cond.true134
  %cond143 = phi i32 [ %call135, %cond.true134 ], [ %bf.clear141, %cond.false136 ], !dbg !2746
  %idxprom = zext i32 %cond143 to i64, !dbg !2746
  %arrayidx144 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2746
  %28 = load i8, i8* %arrayidx144, align 1, !dbg !2746
  %cmp146 = icmp eq i8 %28, 8, !dbg !2746
  br i1 %cmp146, label %land.lhs.true214, label %lor.lhs.false148, !dbg !2746

lor.lhs.false148:                                 ; preds = %cond.end142
  %bf.load150 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast1528 = and i64 %bf.load150, 65535, !dbg !2746
  %cmp153 = icmp eq i64 %bf.cast1528, 14, !dbg !2746
  br i1 %cmp153, label %cond.true155, label %cond.false157, !dbg !2746

cond.true155:                                     ; preds = %lor.lhs.false148
  %call156 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end163, !dbg !2746

cond.false157:                                    ; preds = %lor.lhs.false148
  %type158 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode159 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type158, i64 0, i32 6, !dbg !2746
  %bf.load160 = load i32, i32* %mode159, align 4, !dbg !2746
  %bf.lshr161 = lshr i32 %bf.load160, 16, !dbg !2746
  %bf.clear162 = and i32 %bf.lshr161, 255, !dbg !2746
  br label %cond.end163, !dbg !2746

cond.end163:                                      ; preds = %cond.false157, %cond.true155
  %cond164 = phi i32 [ %call156, %cond.true155 ], [ %bf.clear162, %cond.false157 ], !dbg !2746
  %idxprom165 = zext i32 %cond164 to i64, !dbg !2746
  %arrayidx166 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom165, !dbg !2746
  %29 = load i8, i8* %arrayidx166, align 1, !dbg !2746
  %cmp168 = icmp eq i8 %29, 9, !dbg !2746
  br i1 %cmp168, label %land.lhs.true214, label %lor.lhs.false170, !dbg !2746

lor.lhs.false170:                                 ; preds = %cond.end163
  %bf.load172 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast1749 = and i64 %bf.load172, 65535, !dbg !2746
  %cmp175 = icmp eq i64 %bf.cast1749, 14, !dbg !2746
  br i1 %cmp175, label %cond.true177, label %cond.false179, !dbg !2746

cond.true177:                                     ; preds = %lor.lhs.false170
  %call178 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end185, !dbg !2746

cond.false179:                                    ; preds = %lor.lhs.false170
  %type180 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode181 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type180, i64 0, i32 6, !dbg !2746
  %bf.load182 = load i32, i32* %mode181, align 4, !dbg !2746
  %bf.lshr183 = lshr i32 %bf.load182, 16, !dbg !2746
  %bf.clear184 = and i32 %bf.lshr183, 255, !dbg !2746
  br label %cond.end185, !dbg !2746

cond.end185:                                      ; preds = %cond.false179, %cond.true177
  %cond186 = phi i32 [ %call178, %cond.true177 ], [ %bf.clear184, %cond.false179 ], !dbg !2746
  %idxprom187 = zext i32 %cond186 to i64, !dbg !2746
  %arrayidx188 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom187, !dbg !2746
  %30 = load i8, i8* %arrayidx188, align 1, !dbg !2746
  %cmp190 = icmp eq i8 %30, 11, !dbg !2746
  br i1 %cmp190, label %land.lhs.true214, label %lor.lhs.false192, !dbg !2746

lor.lhs.false192:                                 ; preds = %cond.end185
  %bf.load194 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast19610 = and i64 %bf.load194, 65535, !dbg !2746
  %cmp197 = icmp eq i64 %bf.cast19610, 14, !dbg !2746
  br i1 %cmp197, label %cond.true199, label %cond.false201, !dbg !2746

cond.true199:                                     ; preds = %lor.lhs.false192
  %call200 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end207, !dbg !2746

cond.false201:                                    ; preds = %lor.lhs.false192
  %type202 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode203 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type202, i64 0, i32 6, !dbg !2746
  %bf.load204 = load i32, i32* %mode203, align 4, !dbg !2746
  %bf.lshr205 = lshr i32 %bf.load204, 16, !dbg !2746
  %bf.clear206 = and i32 %bf.lshr205, 255, !dbg !2746
  br label %cond.end207, !dbg !2746

cond.end207:                                      ; preds = %cond.false201, %cond.true199
  %cond208 = phi i32 [ %call200, %cond.true199 ], [ %bf.clear206, %cond.false201 ], !dbg !2746
  %idxprom209 = zext i32 %cond208 to i64, !dbg !2746
  %arrayidx210 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom209, !dbg !2746
  %31 = load i8, i8* %arrayidx210, align 1, !dbg !2746
  %cmp212 = icmp eq i8 %31, 17, !dbg !2746
  br i1 %cmp212, label %land.lhs.true214, label %if.then477, !dbg !2746

land.lhs.true214:                                 ; preds = %cond.end207, %cond.end185, %cond.end163, %cond.end142
  %bf.load216 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast21811 = and i64 %bf.load216, 65535, !dbg !2746
  %cmp219 = icmp eq i64 %bf.cast21811, 14, !dbg !2746
  br i1 %cmp219, label %cond.true221, label %cond.false223, !dbg !2746

cond.true221:                                     ; preds = %land.lhs.true214
  %call222 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end229, !dbg !2746

cond.false223:                                    ; preds = %land.lhs.true214
  %type224 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode225 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type224, i64 0, i32 6, !dbg !2746
  %bf.load226 = load i32, i32* %mode225, align 4, !dbg !2746
  %bf.lshr227 = lshr i32 %bf.load226, 16, !dbg !2746
  %bf.clear228 = and i32 %bf.lshr227, 255, !dbg !2746
  br label %cond.end229, !dbg !2746

cond.end229:                                      ; preds = %cond.false223, %cond.true221
  %cond230 = phi i32 [ %call222, %cond.true221 ], [ %bf.clear228, %cond.false223 ], !dbg !2746
  %idxprom231 = zext i32 %cond230 to i64, !dbg !2746
  %arrayidx232 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom231, !dbg !2746
  %32 = load i8, i8* %arrayidx232, align 1, !dbg !2746
  %cmp234 = icmp eq i8 %32, 8, !dbg !2746
  br i1 %cmp234, label %cond.true258, label %lor.lhs.false236, !dbg !2746

lor.lhs.false236:                                 ; preds = %cond.end229
  %bf.load238 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast24012 = and i64 %bf.load238, 65535, !dbg !2746
  %cmp241 = icmp eq i64 %bf.cast24012, 14, !dbg !2746
  br i1 %cmp241, label %cond.true243, label %cond.false245, !dbg !2746

cond.true243:                                     ; preds = %lor.lhs.false236
  %call244 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end251, !dbg !2746

cond.false245:                                    ; preds = %lor.lhs.false236
  %type246 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode247 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type246, i64 0, i32 6, !dbg !2746
  %bf.load248 = load i32, i32* %mode247, align 4, !dbg !2746
  %bf.lshr249 = lshr i32 %bf.load248, 16, !dbg !2746
  %bf.clear250 = and i32 %bf.lshr249, 255, !dbg !2746
  br label %cond.end251, !dbg !2746

cond.end251:                                      ; preds = %cond.false245, %cond.true243
  %cond252 = phi i32 [ %call244, %cond.true243 ], [ %bf.clear250, %cond.false245 ], !dbg !2746
  %idxprom253 = zext i32 %cond252 to i64, !dbg !2746
  %arrayidx254 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom253, !dbg !2746
  %33 = load i8, i8* %arrayidx254, align 1, !dbg !2746
  %cmp256 = icmp eq i8 %33, 9, !dbg !2746
  br i1 %cmp256, label %cond.true258, label %cond.false275, !dbg !2746

cond.true258:                                     ; preds = %cond.end251, %cond.end229
  %bf.load260 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast26221 = and i64 %bf.load260, 65535, !dbg !2746
  %cmp263 = icmp eq i64 %bf.cast26221, 14, !dbg !2746
  br i1 %cmp263, label %cond.true265, label %cond.false267, !dbg !2746

cond.true265:                                     ; preds = %cond.true258
  %call266 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end295, !dbg !2746

cond.false267:                                    ; preds = %cond.true258
  %type268 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode269 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type268, i64 0, i32 6, !dbg !2746
  %bf.load270 = load i32, i32* %mode269, align 4, !dbg !2746
  %bf.lshr271 = lshr i32 %bf.load270, 16, !dbg !2746
  %bf.clear272 = and i32 %bf.lshr271, 255, !dbg !2746
  br label %cond.end295, !dbg !2746

cond.false275:                                    ; preds = %cond.end251
  %bf.load277 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast27913 = and i64 %bf.load277, 65535, !dbg !2746
  %cmp280 = icmp eq i64 %bf.cast27913, 14, !dbg !2746
  br i1 %cmp280, label %cond.true282, label %cond.false284, !dbg !2746

cond.true282:                                     ; preds = %cond.false275
  %call283 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end290, !dbg !2746

cond.false284:                                    ; preds = %cond.false275
  %type285 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode286 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type285, i64 0, i32 6, !dbg !2746
  %bf.load287 = load i32, i32* %mode286, align 4, !dbg !2746
  %bf.lshr288 = lshr i32 %bf.load287, 16, !dbg !2746
  %bf.clear289 = and i32 %bf.lshr288, 255, !dbg !2746
  br label %cond.end290, !dbg !2746

cond.end290:                                      ; preds = %cond.false284, %cond.true282
  %cond291 = phi i32 [ %call283, %cond.true282 ], [ %bf.clear289, %cond.false284 ], !dbg !2746
  %idxprom292 = zext i32 %cond291 to i64, !dbg !2746
  %arrayidx293 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom292, !dbg !2746
  %34 = load i8, i8* %arrayidx293, align 1, !dbg !2746
  %conv294 = zext i8 %34 to i32, !dbg !2746
  br label %cond.end295, !dbg !2746

cond.end295:                                      ; preds = %cond.true265, %cond.false267, %cond.end290
  %cond296 = phi i32 [ %conv294, %cond.end290 ], [ %call266, %cond.true265 ], [ %bf.clear272, %cond.false267 ], !dbg !2746
  %idxprom297 = zext i32 %cond296 to i64, !dbg !2746
  %arrayidx298 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom297, !dbg !2746
  %35 = load i8, i8* %arrayidx298, align 1, !dbg !2746
  %cmp300 = icmp eq i8 %35, 9, !dbg !2746
  %bf.load304 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast30614 = and i64 %bf.load304, 65535, !dbg !2746
  %cmp307 = icmp eq i64 %bf.cast30614, 14, !dbg !2746
  br i1 %cmp300, label %cond.true302, label %cond.false387, !dbg !2746

cond.true302:                                     ; preds = %cond.end295
  br i1 %cmp307, label %cond.true309, label %cond.false311, !dbg !2746

cond.true309:                                     ; preds = %cond.true302
  %call310 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end317, !dbg !2746

cond.false311:                                    ; preds = %cond.true302
  %type312 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode313 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type312, i64 0, i32 6, !dbg !2746
  %bf.load314 = load i32, i32* %mode313, align 4, !dbg !2746
  %bf.lshr315 = lshr i32 %bf.load314, 16, !dbg !2746
  %bf.clear316 = and i32 %bf.lshr315, 255, !dbg !2746
  br label %cond.end317, !dbg !2746

cond.end317:                                      ; preds = %cond.false311, %cond.true309
  %cond318 = phi i32 [ %call310, %cond.true309 ], [ %bf.clear316, %cond.false311 ], !dbg !2746
  %idxprom319 = zext i32 %cond318 to i64, !dbg !2746
  %arrayidx320 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom319, !dbg !2746
  %36 = load i8, i8* %arrayidx320, align 1, !dbg !2746
  %cmp322 = icmp eq i8 %36, 8, !dbg !2746
  br i1 %cmp322, label %cond.true346, label %lor.lhs.false324, !dbg !2746

lor.lhs.false324:                                 ; preds = %cond.end317
  %bf.load326 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast32818 = and i64 %bf.load326, 65535, !dbg !2746
  %cmp329 = icmp eq i64 %bf.cast32818, 14, !dbg !2746
  br i1 %cmp329, label %cond.true331, label %cond.false333, !dbg !2746

cond.true331:                                     ; preds = %lor.lhs.false324
  %call332 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end339, !dbg !2746

cond.false333:                                    ; preds = %lor.lhs.false324
  %type334 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode335 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type334, i64 0, i32 6, !dbg !2746
  %bf.load336 = load i32, i32* %mode335, align 4, !dbg !2746
  %bf.lshr337 = lshr i32 %bf.load336, 16, !dbg !2746
  %bf.clear338 = and i32 %bf.lshr337, 255, !dbg !2746
  br label %cond.end339, !dbg !2746

cond.end339:                                      ; preds = %cond.false333, %cond.true331
  %cond340 = phi i32 [ %call332, %cond.true331 ], [ %bf.clear338, %cond.false333 ], !dbg !2746
  %idxprom341 = zext i32 %cond340 to i64, !dbg !2746
  %arrayidx342 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom341, !dbg !2746
  %37 = load i8, i8* %arrayidx342, align 1, !dbg !2746
  %cmp344 = icmp eq i8 %37, 9, !dbg !2746
  br i1 %cmp344, label %cond.true346, label %cond.false363, !dbg !2746

cond.true346:                                     ; preds = %cond.end339, %cond.end317
  %bf.load348 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast35020 = and i64 %bf.load348, 65535, !dbg !2746
  %cmp351 = icmp eq i64 %bf.cast35020, 14, !dbg !2746
  br i1 %cmp351, label %cond.true353, label %cond.false355, !dbg !2746

cond.true353:                                     ; preds = %cond.true346
  %call354 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end383, !dbg !2746

cond.false355:                                    ; preds = %cond.true346
  %type356 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode357 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type356, i64 0, i32 6, !dbg !2746
  %bf.load358 = load i32, i32* %mode357, align 4, !dbg !2746
  %bf.lshr359 = lshr i32 %bf.load358, 16, !dbg !2746
  %bf.clear360 = and i32 %bf.lshr359, 255, !dbg !2746
  br label %cond.end383, !dbg !2746

cond.false363:                                    ; preds = %cond.end339
  %bf.load365 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast36719 = and i64 %bf.load365, 65535, !dbg !2746
  %cmp368 = icmp eq i64 %bf.cast36719, 14, !dbg !2746
  br i1 %cmp368, label %cond.true370, label %cond.false372, !dbg !2746

cond.true370:                                     ; preds = %cond.false363
  %call371 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end378, !dbg !2746

cond.false372:                                    ; preds = %cond.false363
  %type373 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode374 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type373, i64 0, i32 6, !dbg !2746
  %bf.load375 = load i32, i32* %mode374, align 4, !dbg !2746
  %bf.lshr376 = lshr i32 %bf.load375, 16, !dbg !2746
  %bf.clear377 = and i32 %bf.lshr376, 255, !dbg !2746
  br label %cond.end378, !dbg !2746

cond.end378:                                      ; preds = %cond.false372, %cond.true370
  %cond379 = phi i32 [ %call371, %cond.true370 ], [ %bf.clear377, %cond.false372 ], !dbg !2746
  %idxprom380 = zext i32 %cond379 to i64, !dbg !2746
  %arrayidx381 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom380, !dbg !2746
  %38 = load i8, i8* %arrayidx381, align 1, !dbg !2746
  %conv382 = zext i8 %38 to i32, !dbg !2746
  br label %cond.end383, !dbg !2746

cond.end383:                                      ; preds = %cond.true353, %cond.false355, %cond.end378
  %cond384 = phi i32 [ %conv382, %cond.end378 ], [ %call354, %cond.true353 ], [ %bf.clear360, %cond.false355 ], !dbg !2746
  br label %cond.end471, !dbg !2746

cond.false387:                                    ; preds = %cond.end295
  br i1 %cmp307, label %cond.true394, label %cond.false396, !dbg !2746

cond.true394:                                     ; preds = %cond.false387
  %call395 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end402, !dbg !2746

cond.false396:                                    ; preds = %cond.false387
  %type397 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode398 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type397, i64 0, i32 6, !dbg !2746
  %bf.load399 = load i32, i32* %mode398, align 4, !dbg !2746
  %bf.lshr400 = lshr i32 %bf.load399, 16, !dbg !2746
  %bf.clear401 = and i32 %bf.lshr400, 255, !dbg !2746
  br label %cond.end402, !dbg !2746

cond.end402:                                      ; preds = %cond.false396, %cond.true394
  %cond403 = phi i32 [ %call395, %cond.true394 ], [ %bf.clear401, %cond.false396 ], !dbg !2746
  %idxprom404 = zext i32 %cond403 to i64, !dbg !2746
  %arrayidx405 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom404, !dbg !2746
  %39 = load i8, i8* %arrayidx405, align 1, !dbg !2746
  %cmp407 = icmp eq i8 %39, 8, !dbg !2746
  br i1 %cmp407, label %cond.true431, label %lor.lhs.false409, !dbg !2746

lor.lhs.false409:                                 ; preds = %cond.end402
  %bf.load411 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast41315 = and i64 %bf.load411, 65535, !dbg !2746
  %cmp414 = icmp eq i64 %bf.cast41315, 14, !dbg !2746
  br i1 %cmp414, label %cond.true416, label %cond.false418, !dbg !2746

cond.true416:                                     ; preds = %lor.lhs.false409
  %call417 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end424, !dbg !2746

cond.false418:                                    ; preds = %lor.lhs.false409
  %type419 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode420 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type419, i64 0, i32 6, !dbg !2746
  %bf.load421 = load i32, i32* %mode420, align 4, !dbg !2746
  %bf.lshr422 = lshr i32 %bf.load421, 16, !dbg !2746
  %bf.clear423 = and i32 %bf.lshr422, 255, !dbg !2746
  br label %cond.end424, !dbg !2746

cond.end424:                                      ; preds = %cond.false418, %cond.true416
  %cond425 = phi i32 [ %call417, %cond.true416 ], [ %bf.clear423, %cond.false418 ], !dbg !2746
  %idxprom426 = zext i32 %cond425 to i64, !dbg !2746
  %arrayidx427 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom426, !dbg !2746
  %40 = load i8, i8* %arrayidx427, align 1, !dbg !2746
  %cmp429 = icmp eq i8 %40, 9, !dbg !2746
  br i1 %cmp429, label %cond.true431, label %cond.false448, !dbg !2746

cond.true431:                                     ; preds = %cond.end424, %cond.end402
  %bf.load433 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast43517 = and i64 %bf.load433, 65535, !dbg !2746
  %cmp436 = icmp eq i64 %bf.cast43517, 14, !dbg !2746
  br i1 %cmp436, label %cond.true438, label %cond.false440, !dbg !2746

cond.true438:                                     ; preds = %cond.true431
  %call439 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end468, !dbg !2746

cond.false440:                                    ; preds = %cond.true431
  %type441 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode442 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type441, i64 0, i32 6, !dbg !2746
  %bf.load443 = load i32, i32* %mode442, align 4, !dbg !2746
  %bf.lshr444 = lshr i32 %bf.load443, 16, !dbg !2746
  %bf.clear445 = and i32 %bf.lshr444, 255, !dbg !2746
  br label %cond.end468, !dbg !2746

cond.false448:                                    ; preds = %cond.end424
  %bf.load450 = load i64, i64* %27, align 8, !dbg !2746
  %bf.cast45216 = and i64 %bf.load450, 65535, !dbg !2746
  %cmp453 = icmp eq i64 %bf.cast45216, 14, !dbg !2746
  br i1 %cmp453, label %cond.true455, label %cond.false457, !dbg !2746

cond.true455:                                     ; preds = %cond.false448
  %call456 = call i32 @vector_type_mode(%union.tree_node* %type.6) #6, !dbg !2746
  br label %cond.end463, !dbg !2746

cond.false457:                                    ; preds = %cond.false448
  %type458 = bitcast %union.tree_node* %type.6 to %struct.tree_type*, !dbg !2746
  %mode459 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type458, i64 0, i32 6, !dbg !2746
  %bf.load460 = load i32, i32* %mode459, align 4, !dbg !2746
  %bf.lshr461 = lshr i32 %bf.load460, 16, !dbg !2746
  %bf.clear462 = and i32 %bf.lshr461, 255, !dbg !2746
  br label %cond.end463, !dbg !2746

cond.end463:                                      ; preds = %cond.false457, %cond.true455
  %cond464 = phi i32 [ %call456, %cond.true455 ], [ %bf.clear462, %cond.false457 ], !dbg !2746
  %idxprom465 = zext i32 %cond464 to i64, !dbg !2746
  %arrayidx466 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom465, !dbg !2746
  %41 = load i8, i8* %arrayidx466, align 1, !dbg !2746
  %conv467 = zext i8 %41 to i32, !dbg !2746
  br label %cond.end468, !dbg !2746

cond.end468:                                      ; preds = %cond.true438, %cond.false440, %cond.end463
  %cond469 = phi i32 [ %conv467, %cond.end463 ], [ %call439, %cond.true438 ], [ %bf.clear445, %cond.false440 ], !dbg !2746
  br label %cond.end471, !dbg !2746

cond.end471:                                      ; preds = %cond.end468, %cond.end383
  %cond472.in = phi i32 [ %cond384, %cond.end383 ], [ %cond469, %cond.end468 ]
  %cond472 = add i32 %cond472.in, -38, !dbg !2746
  %idxprom473 = zext i32 %cond472 to i64, !dbg !2746
  %arrayidx474 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom473, !dbg !2746
  %42 = load %struct.real_format*, %struct.real_format** %arrayidx474, align 8, !dbg !2746
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %42, i64 0, i32 12, !dbg !2746
  %43 = load i8, i8* %has_inf, align 1, !dbg !2746
  %tobool476 = icmp eq i8 %43, 0, !dbg !2746
  br i1 %tobool476, label %if.then477, label %if.else479, !dbg !2749

if.then477:                                       ; preds = %cond.end471, %cond.end207
  %44 = load i32, i32* @input_location, align 4, !dbg !2750
  %call478 = call zeroext i8 (i32, i32, i8*, ...) @pedwarn(i32 %44, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), %union.tree_node* %type.6) #6, !dbg !2751
  br label %if.end504, !dbg !2751

if.else479:                                       ; preds = %cond.end471
  %call480 = call zeroext i8 (i32, i8*, ...) @warning(i32 151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), %union.tree_node* %type.6) #6, !dbg !2752
  br label %if.end504

if.else482:                                       ; preds = %land.lhs.true123, %lor.lhs.false120
  call void @llvm.dbg.value(metadata %struct.real_value* %real, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  %call483 = call zeroext i8 @real_compare(i32 101, %struct.real_value* nonnull %real, %struct.real_value* nonnull @dconst0) #6, !dbg !2753
  %tobool485 = icmp eq i8 %call483, 0, !dbg !2753
  br i1 %tobool485, label %lor.lhs.false486, label %if.then493, !dbg !2754

lor.lhs.false486:                                 ; preds = %if.else482
  br i1 %cmp97, label %if.end504, label %land.lhs.true489, !dbg !2755

land.lhs.true489:                                 ; preds = %lor.lhs.false486
  call void @llvm.dbg.value(metadata %struct.real_value* %real_trunc, metadata !2637, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  %call490 = call zeroext i8 @real_compare(i32 101, %struct.real_value* nonnull %real_trunc, %struct.real_value* nonnull @dconst0) #6, !dbg !2756
  %tobool492 = icmp eq i8 %call490, 0, !dbg !2756
  br i1 %tobool492, label %if.end504, label %if.then493, !dbg !2757

if.then493:                                       ; preds = %land.lhs.true489, %if.else482
  %45 = bitcast %struct.real_value* %realvoidmode to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %45) #8, !dbg !2758
  call void @llvm.dbg.value(metadata %struct.real_value* %realvoidmode, metadata !2645, metadata !DIExpression(DW_OP_deref)), !dbg !2759
  %call494 = call i32 @real_from_string(%struct.real_value* nonnull %realvoidmode, i8* nonnull %23) #6, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %call494, metadata !2649, metadata !DIExpression()), !dbg !2759
  %cmp495 = icmp slt i32 %call494, 0, !dbg !2761
  br i1 %cmp495, label %if.then500, label %lor.lhs.false497, !dbg !2763

lor.lhs.false497:                                 ; preds = %if.then493
  call void @llvm.dbg.value(metadata %struct.real_value* %realvoidmode, metadata !2645, metadata !DIExpression(DW_OP_deref)), !dbg !2759
  %call498 = call zeroext i8 @real_compare(i32 101, %struct.real_value* nonnull %realvoidmode, %struct.real_value* nonnull @dconst0) #6, !dbg !2764
  %tobool499 = icmp eq i8 %call498, 0, !dbg !2764
  br i1 %tobool499, label %if.then500, label %if.end502, !dbg !2765

if.then500:                                       ; preds = %lor.lhs.false497, %if.then493
  %call501 = call zeroext i8 (i32, i8*, ...) @warning(i32 151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !2766
  br label %if.end502, !dbg !2766

if.end502:                                        ; preds = %lor.lhs.false497, %if.then500
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %45) #8, !dbg !2767
  br label %if.end504, !dbg !2768

if.end504:                                        ; preds = %land.lhs.true489, %lor.lhs.false486, %if.end502, %if.then477, %if.else479
  call void @llvm.dbg.value(metadata %struct.real_value* %real, metadata !2636, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  %call505 = call %union.tree_node* @build_real(%union.tree_node* %spec.select4, %struct.real_value* nonnull byval(%struct.real_value) align 8 %real) #6, !dbg !2769
  call void @llvm.dbg.value(metadata %union.tree_node* %call505, metadata !2635, metadata !DIExpression()), !dbg !2650
  %and506 = and i32 %flags.addr.2, 8192, !dbg !2770
  %tobool507 = icmp eq i32 %and506, 0, !dbg !2770
  br i1 %tobool507, label %if.end511, label %if.then508, !dbg !2772

if.then508:                                       ; preds = %if.end504
  %46 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !2773
  %call509 = call %union.tree_node* @convert(%union.tree_node* %spec.select4, %union.tree_node* %46) #6, !dbg !2774
  %call510 = call %union.tree_node* @build_complex(%union.tree_node* null, %union.tree_node* %call509, %union.tree_node* %call505) #6, !dbg !2775
  call void @llvm.dbg.value(metadata %union.tree_node* %call510, metadata !2635, metadata !DIExpression()), !dbg !2650
  br label %if.end511, !dbg !2776

if.end511:                                        ; preds = %if.end504, %if.then508
  %value.0 = phi %union.tree_node* [ %call510, %if.then508 ], [ %call505, %if.end504 ], !dbg !2650
  call void @llvm.dbg.value(metadata %union.tree_node* %value.0, metadata !2635, metadata !DIExpression()), !dbg !2650
  br i1 %cmp97, label %cleanup517, label %if.then514, !dbg !2777

if.then514:                                       ; preds = %if.end511
  %call515 = call %union.tree_node* @build1_stat(i32 190, %union.tree_node* %type.6, %union.tree_node* %value.0) #6, !dbg !2778
  call void @llvm.dbg.value(metadata %union.tree_node* %call515, metadata !2635, metadata !DIExpression()), !dbg !2650
  br label %cleanup517, !dbg !2780

cleanup517:                                       ; preds = %if.end511, %if.then514, %cleanup, %if.then15
  %retval.1 = phi %union.tree_node* [ %call16, %if.then15 ], [ %retval.0, %cleanup ], [ %call515, %if.then514 ], [ %value.0, %if.end511 ], !dbg !2650
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2781
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2781
  ret %union.tree_node* %retval.1, !dbg !2781
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lex_string(%struct.cpp_token* %tok, %union.tree_node** %valp, i8 zeroext %objc_string, i8 zeroext %translate) unnamed_addr #5 !dbg !2782 {
entry:
  %str_ob = alloca %struct.obstack, align 8
  %istr = alloca %struct.cpp_string, align 8
  %str = alloca %struct.cpp_string, align 8
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok, metadata !2786, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata %union.tree_node** %valp, metadata !2787, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8 %objc_string, metadata !2788, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8 %translate, metadata !2789, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 0, metadata !2791, metadata !DIExpression()), !dbg !2829
  %0 = bitcast %struct.obstack* %str_ob to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #8, !dbg !2830
  %1 = bitcast %struct.cpp_string* %istr to i8*, !dbg !2831
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2831
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok, i64 0, i32 1, !dbg !2832
  %bf.load = load i8, i8* %type1, align 4, !dbg !2832
  %bf.cast = zext i8 %bf.load to i32, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2825, metadata !DIExpression()), !dbg !2829
  %2 = bitcast %struct.cpp_string* %str to i8*, !dbg !2833
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2833
  %str2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok, i64 0, i32 3, i32 0, !dbg !2834
  %3 = bitcast %struct.cpp_string* %str2 to i8*, !dbg !2834
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2834
  call void @llvm.dbg.value(metadata %struct.cpp_string* %str, metadata !2827, metadata !DIExpression()), !dbg !2829
  %temp = getelementptr inbounds %struct.obstack, %struct.obstack* %str_ob, i64 0, i32 5, !dbg !2835
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %str_ob, i64 0, i32 3, !dbg !2835
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %str_ob, i64 0, i32 4, !dbg !2835
  br label %retry.outer, !dbg !2839

retry.outer:                                      ; preds = %cond.end44, %entry
  %concats.0.ph = phi i64 [ %inc, %cond.end44 ], [ 0, %entry ]
  %type.0.ph = phi i32 [ %type.3, %cond.end44 ], [ %bf.cast, %entry ]
  %objc_string.addr.0.ph = phi i8 [ %objc_string.addr.0.ph350, %cond.end44 ], [ %objc_string, %entry ]
  br label %retry.outer2, !dbg !2840

retry.outer2:                                     ; preds = %retry.outer, %sw.bb6
  %objc_string.addr.0.ph3 = phi i8 [ %objc_string.addr.0.ph, %retry.outer ], [ 1, %sw.bb6 ]
  br label %retry, !dbg !2840

retry:                                            ; preds = %retry.outer2, %retry
  call void @llvm.dbg.value(metadata i8 %objc_string.addr.0.ph3, metadata !2788, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %type.0.ph, metadata !2825, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %concats.0.ph, metadata !2791, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.label(metadata !2828), !dbg !2841
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2842
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %4) #6, !dbg !2843
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !2786, metadata !DIExpression()), !dbg !2829
  %type3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !2844
  %bf.load41 = load i8, i8* %type3, align 4, !dbg !2844
  switch i8 %bf.load41, label %sw.epilog.loopexit [
    i8 72, label %retry
    i8 52, label %sw.bb6
    i8 62, label %sw.bb7
    i8 63, label %sw.bb7
    i8 64, label %sw.bb7
    i8 65, label %sw.bb7
    i8 61, label %sw.bb20.loopexit
  ], !dbg !2840

sw.bb6:                                           ; preds = %retry
  %5 = load i32, i32* @c_language, align 4, !dbg !2845
  %and = and i32 %5, 1, !dbg !2845
  %cmp = icmp eq i32 %and, 0, !dbg !2845
  br i1 %cmp, label %sw.epilog.loopexit4, label %retry.outer2, !dbg !2847

sw.bb7:                                           ; preds = %retry, %retry, %retry, %retry
  %objc_string.addr.0.ph3.lcssa46 = phi i8 [ %objc_string.addr.0.ph3, %retry ], [ %objc_string.addr.0.ph3, %retry ], [ %objc_string.addr.0.ph3, %retry ], [ %objc_string.addr.0.ph3, %retry ]
  %call.lcssa43 = phi %struct.cpp_token* [ %call, %retry ], [ %call, %retry ], [ %call, %retry ], [ %call, %retry ], !dbg !2843
  %bf.load41.lcssa40 = phi i8 [ %bf.load41, %retry ], [ %bf.load41, %retry ], [ %bf.load41, %retry ], [ %bf.load41, %retry ], !dbg !2844
  %bf.cast10 = zext i8 %bf.load41.lcssa40 to i32, !dbg !2848
  %cmp11 = icmp eq i32 %type.0.ph, %bf.cast10, !dbg !2850
  br i1 %cmp11, label %sw.bb20, label %if.then12, !dbg !2851

if.then12:                                        ; preds = %sw.bb7
  %cmp13 = icmp eq i32 %type.0.ph, 61, !dbg !2852
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !2855

if.then14:                                        ; preds = %if.then12
  call void @llvm.dbg.value(metadata i32 %bf.cast10, metadata !2825, metadata !DIExpression()), !dbg !2829
  br label %sw.bb20, !dbg !2856

if.else:                                          ; preds = %if.then12
  call void (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !2857
  br label %sw.bb20

sw.bb20.loopexit:                                 ; preds = %retry
  %objc_string.addr.0.ph3.lcssa47 = phi i8 [ %objc_string.addr.0.ph3, %retry ]
  %call.lcssa44 = phi %struct.cpp_token* [ %call, %retry ], !dbg !2843
  br label %sw.bb20, !dbg !2858

sw.bb20:                                          ; preds = %sw.bb20.loopexit, %sw.bb7, %if.else, %if.then14
  %objc_string.addr.0.ph350 = phi i8 [ %objc_string.addr.0.ph3.lcssa46, %sw.bb7 ], [ %objc_string.addr.0.ph3.lcssa46, %if.then14 ], [ %objc_string.addr.0.ph3.lcssa46, %if.else ], [ %objc_string.addr.0.ph3.lcssa47, %sw.bb20.loopexit ]
  %call45 = phi %struct.cpp_token* [ %call.lcssa43, %sw.bb7 ], [ %call.lcssa43, %if.then14 ], [ %call.lcssa43, %if.else ], [ %call.lcssa44, %sw.bb20.loopexit ]
  %type.3 = phi i32 [ %type.0.ph, %sw.bb7 ], [ %bf.cast10, %if.then14 ], [ %type.0.ph, %if.else ], [ %type.0.ph, %sw.bb20.loopexit ], !dbg !2829
  call void @llvm.dbg.value(metadata i32 %type.3, metadata !2825, metadata !DIExpression()), !dbg !2829
  %tobool = icmp eq i64 %concats.0.ph, 0, !dbg !2858
  br i1 %tobool, label %if.then21, label %sw.bb20.if.end32_crit_edge, !dbg !2859

sw.bb20.if.end32_crit_edge:                       ; preds = %sw.bb20
  %.pre19 = load i8*, i8** %next_free, align 8, !dbg !2860
  br label %if.end32, !dbg !2859

if.then21:                                        ; preds = %sw.bb20
  call void @llvm.dbg.value(metadata %struct.obstack* %str_ob, metadata !2792, metadata !DIExpression(DW_OP_deref)), !dbg !2829
  %call22 = call i32 @_obstack_begin(%struct.obstack* nonnull %str_ob, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !2861
  store i64 16, i64* %temp, align 8, !dbg !2862
  %6 = load i8*, i8** %next_free, align 8, !dbg !2862
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 16, !dbg !2862
  %7 = load i8*, i8** %chunk_limit, align 8, !dbg !2862
  %cmp24 = icmp ugt i8* %add.ptr, %7, !dbg !2862
  br i1 %cmp24, label %cond.true, label %cond.end, !dbg !2862

cond.true:                                        ; preds = %if.then21
  call void @llvm.dbg.value(metadata %struct.obstack* %str_ob, metadata !2792, metadata !DIExpression(DW_OP_deref)), !dbg !2829
  call void @_obstack_newchunk(%struct.obstack* nonnull %str_ob, i32 16) #6, !dbg !2862
  %.pre = load i8*, i8** %next_free, align 8, !dbg !2862
  %.pre18 = load i64, i64* %temp, align 8, !dbg !2862
  br label %cond.end, !dbg !2862

cond.end:                                         ; preds = %if.then21, %cond.true
  %8 = phi i64 [ 16, %if.then21 ], [ %.pre18, %cond.true ], !dbg !2862
  %9 = phi i8* [ %6, %if.then21 ], [ %.pre, %cond.true ], !dbg !2862
  %call28 = call i8* @memcpy(i8* %9, i8* nonnull %2, i64 %8) #6, !dbg !2862
  %10 = load i64, i64* %temp, align 8, !dbg !2862
  %11 = load i8*, i8** %next_free, align 8, !dbg !2862
  %add.ptr31 = getelementptr inbounds i8, i8* %11, i64 %10, !dbg !2862
  store i8* %add.ptr31, i8** %next_free, align 8, !dbg !2862
  br label %if.end32, !dbg !2863

if.end32:                                         ; preds = %sw.bb20.if.end32_crit_edge, %cond.end
  %12 = phi i8* [ %.pre19, %sw.bb20.if.end32_crit_edge ], [ %add.ptr31, %cond.end ], !dbg !2860
  %inc = add i64 %concats.0.ph, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2791, metadata !DIExpression()), !dbg !2829
  store i64 16, i64* %temp, align 8, !dbg !2860
  %add.ptr36 = getelementptr inbounds i8, i8* %12, i64 16, !dbg !2860
  %13 = load i8*, i8** %chunk_limit, align 8, !dbg !2860
  %cmp38 = icmp ugt i8* %add.ptr36, %13, !dbg !2860
  br i1 %cmp38, label %cond.true40, label %cond.end44, !dbg !2860

cond.true40:                                      ; preds = %if.end32
  call void @llvm.dbg.value(metadata %struct.obstack* %str_ob, metadata !2792, metadata !DIExpression(DW_OP_deref)), !dbg !2829
  call void @_obstack_newchunk(%struct.obstack* nonnull %str_ob, i32 16) #6, !dbg !2860
  %.pre20 = load i8*, i8** %next_free, align 8, !dbg !2860
  %.pre21 = load i64, i64* %temp, align 8, !dbg !2860
  br label %cond.end44, !dbg !2860

cond.end44:                                       ; preds = %if.end32, %cond.true40
  %14 = phi i64 [ 16, %if.end32 ], [ %.pre21, %cond.true40 ], !dbg !2860
  %15 = phi i8* [ %12, %if.end32 ], [ %.pre20, %cond.true40 ], !dbg !2860
  %str48 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call45, i64 0, i32 3, i32 0, !dbg !2860
  %16 = bitcast %struct.cpp_string* %str48 to i8*, !dbg !2860
  %call50 = call i8* @memcpy(i8* %15, i8* nonnull %16, i64 %14) #6, !dbg !2860
  %17 = load i64, i64* %temp, align 8, !dbg !2860
  %18 = load i8*, i8** %next_free, align 8, !dbg !2860
  %add.ptr53 = getelementptr inbounds i8, i8* %18, i64 %17, !dbg !2860
  store i8* %add.ptr53, i8** %next_free, align 8, !dbg !2860
  br label %retry.outer, !dbg !2865

sw.epilog.loopexit:                               ; preds = %retry
  %concats.0.ph.lcssa = phi i64 [ %concats.0.ph, %retry ]
  %type.0.ph.lcssa = phi i32 [ %type.0.ph, %retry ]
  %objc_string.addr.0.ph3.lcssa = phi i8 [ %objc_string.addr.0.ph3, %retry ]
  br label %sw.epilog, !dbg !2866

sw.epilog.loopexit4:                              ; preds = %sw.bb6
  %concats.0.ph.lcssa53 = phi i64 [ %concats.0.ph, %sw.bb6 ]
  %type.0.ph.lcssa51 = phi i32 [ %type.0.ph, %sw.bb6 ]
  %objc_string.addr.0.ph3.lcssa48 = phi i8 [ %objc_string.addr.0.ph3, %sw.bb6 ]
  br label %sw.epilog, !dbg !2866

sw.epilog:                                        ; preds = %sw.epilog.loopexit4, %sw.epilog.loopexit
  %concats.0.ph54 = phi i64 [ %concats.0.ph.lcssa53, %sw.epilog.loopexit4 ], [ %concats.0.ph.lcssa, %sw.epilog.loopexit ]
  %type.0.ph52 = phi i32 [ %type.0.ph.lcssa51, %sw.epilog.loopexit4 ], [ %type.0.ph.lcssa, %sw.epilog.loopexit ]
  %objc_string.addr.0.ph349 = phi i8 [ %objc_string.addr.0.ph3.lcssa48, %sw.epilog.loopexit4 ], [ %objc_string.addr.0.ph3.lcssa, %sw.epilog.loopexit ]
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2866
  call void @_cpp_backup_tokens(%struct.cpp_reader* %19, i32 1) #6, !dbg !2867
  %tobool54 = icmp eq i64 %concats.0.ph54, 0, !dbg !2868
  br i1 %tobool54, label %if.end93, label %if.then55, !dbg !2870

if.then55:                                        ; preds = %sw.epilog
  %20 = load i8*, i8** %next_free, align 8, !dbg !2871
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %str_ob, i64 0, i32 2, !dbg !2871
  %21 = load i8*, i8** %object_base, align 8, !dbg !2871
  %cmp57 = icmp eq i8* %20, %21, !dbg !2871
  %22 = ptrtoint i8* %21 to i64, !dbg !2871
  %23 = ptrtoint i8* %20 to i64, !dbg !2871
  br i1 %cmp57, label %cond.true59, label %cond.end62, !dbg !2871

cond.true59:                                      ; preds = %if.then55
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %str_ob, i64 0, i32 10, !dbg !2871
  %bf.load60 = load i8, i8* %maybe_empty_object, align 8, !dbg !2871
  %bf.set = or i8 %bf.load60, 2, !dbg !2871
  store i8 %bf.set, i8* %maybe_empty_object, align 8, !dbg !2871
  br label %cond.end62, !dbg !2871

cond.end62:                                       ; preds = %if.then55, %cond.true59
  %24 = bitcast i8** %object_base to i64*, !dbg !2871
  store i64 %22, i64* %temp, align 8, !dbg !2871
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %str_ob, i64 0, i32 6, !dbg !2871
  %25 = load i32, i32* %alignment_mask, align 8, !dbg !2871
  %conv69 = sext i32 %25 to i64, !dbg !2871
  %add = add nsw i64 %23, %conv69, !dbg !2871
  %neg = xor i32 %25, -1, !dbg !2871
  %conv71 = sext i32 %neg to i64, !dbg !2871
  %and72 = and i64 %add, %conv71, !dbg !2871
  %26 = inttoptr i64 %and72 to i8*, !dbg !2871
  store i8* %26, i8** %next_free, align 8, !dbg !2871
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %str_ob, i64 0, i32 1, !dbg !2871
  %27 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !2871
  %28 = load i64, i64* %27, align 8, !dbg !2871
  %sub.ptr.sub76 = sub i64 %and72, %28, !dbg !2871
  %29 = bitcast i8** %chunk_limit to i64*, !dbg !2871
  %30 = load i64, i64* %29, align 8, !dbg !2871
  %sub.ptr.sub81 = sub i64 %30, %28, !dbg !2871
  %cmp82 = icmp sgt i64 %sub.ptr.sub76, %sub.ptr.sub81, !dbg !2871
  %31 = bitcast i8* %21 to %struct.cpp_string*, !dbg !2871
  br i1 %cmp82, label %cond.true84, label %cond.end88, !dbg !2871

cond.true84:                                      ; preds = %cond.end62
  %32 = bitcast i8** %next_free to i64*, !dbg !2871
  store i64 %30, i64* %32, align 8, !dbg !2871
  br label %cond.end88, !dbg !2871

cond.end88:                                       ; preds = %cond.end62, %cond.true84
  %33 = phi i64 [ %and72, %cond.end62 ], [ %30, %cond.true84 ], !dbg !2871
  store i64 %33, i64* %24, align 8, !dbg !2871
  call void @llvm.dbg.value(metadata %struct.cpp_string* %31, metadata !2827, metadata !DIExpression()), !dbg !2829
  br label %if.end93, !dbg !2872

if.end93:                                         ; preds = %sw.epilog, %cond.end88
  %strs.0 = phi %struct.cpp_string* [ %31, %cond.end88 ], [ %str, %sw.epilog ], !dbg !2829
  call void @llvm.dbg.value(metadata %struct.cpp_string* %strs.0, metadata !2827, metadata !DIExpression()), !dbg !2829
  %tobool95 = icmp ne i8 %objc_string.addr.0.ph349, 0, !dbg !2873
  %or.cond = or i1 %tobool54, %tobool95, !dbg !2875
  br i1 %or.cond, label %if.end102, label %land.lhs.true96, !dbg !2875

land.lhs.true96:                                  ; preds = %if.end93
  %34 = load i32, i32* @input_location, align 4, !dbg !2876
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %34) #6, !dbg !2876
  %sysp = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 3, !dbg !2876
  %35 = load i8, i8* %sysp, align 8, !dbg !2876
  %cmp98 = icmp eq i8 %35, 0, !dbg !2876
  br i1 %cmp98, label %if.then100, label %if.end102, !dbg !2877

if.then100:                                       ; preds = %land.lhs.true96
  %call101 = call zeroext i8 (i32, i8*, ...) @warning(i32 202, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !2878
  br label %if.end102, !dbg !2878

if.end102:                                        ; preds = %land.lhs.true96, %if.end93, %if.then100
  %tobool104 = icmp eq i8 %translate, 0, !dbg !2879
  %cond105 = select i1 %tobool104, i8 (%struct.cpp_reader*, %struct.cpp_string*, i64, %struct.cpp_string*, i32)* @cpp_interpret_string_notranslate, i8 (%struct.cpp_reader*, %struct.cpp_string*, i64, %struct.cpp_string*, i32)* @cpp_interpret_string, !dbg !2879
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2881
  %add106 = add i64 %concats.0.ph54, 1, !dbg !2882
  call void @llvm.dbg.value(metadata %struct.cpp_string* %istr, metadata !2824, metadata !DIExpression(DW_OP_deref)), !dbg !2829
  %call107 = call zeroext i8 %cond105(%struct.cpp_reader* %36, %struct.cpp_string* %strs.0, i64 %add106, %struct.cpp_string* nonnull %istr, i32 %type.0.ph52) #6, !dbg !2883
  %tobool108 = icmp eq i8 %call107, 0, !dbg !2883
  br i1 %tobool108, label %if.else112, label %if.then109, !dbg !2884

if.then109:                                       ; preds = %if.end102
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %istr, i64 0, i32 0, !dbg !2885
  %37 = load i32, i32* %len, align 8, !dbg !2885
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %istr, i64 0, i32 1, !dbg !2887
  %38 = load i8*, i8** %text, align 8, !dbg !2887
  %call110 = call %union.tree_node* @build_string(i32 %37, i8* %38) #6, !dbg !2888
  call void @llvm.dbg.value(metadata %union.tree_node* %call110, metadata !2790, metadata !DIExpression()), !dbg !2829
  %39 = load i8*, i8** %text, align 8, !dbg !2889
  call void @free(i8* %39) #6, !dbg !2890
  br label %if.end148, !dbg !2891

if.else112:                                       ; preds = %if.end102
  switch i32 %type.0.ph52, label %sw.bb114 [
    i32 62, label %sw.bb136
    i32 64, label %sw.bb125
    i32 63, label %sw.bb116
  ], !dbg !2892

sw.bb114:                                         ; preds = %if.else112
  %call115 = call %union.tree_node* @build_string(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2894
  call void @llvm.dbg.value(metadata %union.tree_node* %call115, metadata !2790, metadata !DIExpression()), !dbg !2829
  br label %if.end148, !dbg !2896

sw.bb116:                                         ; preds = %if.else112
  %40 = load %struct.tree_type*, %struct.tree_type** bitcast ([55 x %union.tree_node*]* @c_global_trees to %struct.tree_type**), align 16, !dbg !2897
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %40, i64 0, i32 6, !dbg !2897
  %bf.load118 = load i32, i32* %precision, align 4, !dbg !2897
  %bf.clear119 = and i32 %bf.load118, 1023, !dbg !2897
  %41 = load %struct.tree_type*, %struct.tree_type** bitcast ([11 x %union.tree_node*]* @integer_types to %struct.tree_type**), align 16, !dbg !2898
  %precision121 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %41, i64 0, i32 6, !dbg !2898
  %bf.load122 = load i32, i32* %precision121, align 4, !dbg !2898
  %bf.clear123 = and i32 %bf.load122, 1023, !dbg !2898
  %div = udiv i32 %bf.clear119, %bf.clear123, !dbg !2899
  %call124 = call %union.tree_node* @build_string(i32 %div, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !2900
  call void @llvm.dbg.value(metadata %union.tree_node* %call124, metadata !2790, metadata !DIExpression()), !dbg !2829
  br label %if.end148, !dbg !2901

sw.bb125:                                         ; preds = %if.else112
  %42 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 1) to %struct.tree_type**), align 8, !dbg !2902
  %precision127 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %42, i64 0, i32 6, !dbg !2902
  %bf.load128 = load i32, i32* %precision127, align 4, !dbg !2902
  %bf.clear129 = and i32 %bf.load128, 1023, !dbg !2902
  %43 = load %struct.tree_type*, %struct.tree_type** bitcast ([11 x %union.tree_node*]* @integer_types to %struct.tree_type**), align 16, !dbg !2903
  %precision131 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %43, i64 0, i32 6, !dbg !2903
  %bf.load132 = load i32, i32* %precision131, align 4, !dbg !2903
  %bf.clear133 = and i32 %bf.load132, 1023, !dbg !2903
  %div134 = udiv i32 %bf.clear129, %bf.clear133, !dbg !2904
  %call135 = call %union.tree_node* @build_string(i32 %div134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !2905
  call void @llvm.dbg.value(metadata %union.tree_node* %call135, metadata !2790, metadata !DIExpression()), !dbg !2829
  br label %if.end148, !dbg !2906

sw.bb136:                                         ; preds = %if.else112
  %44 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 2) to %struct.tree_type**), align 16, !dbg !2907
  %precision138 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %44, i64 0, i32 6, !dbg !2907
  %bf.load139 = load i32, i32* %precision138, align 4, !dbg !2907
  %bf.clear140 = and i32 %bf.load139, 1023, !dbg !2907
  %45 = load %struct.tree_type*, %struct.tree_type** bitcast ([11 x %union.tree_node*]* @integer_types to %struct.tree_type**), align 16, !dbg !2908
  %precision142 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %45, i64 0, i32 6, !dbg !2908
  %bf.load143 = load i32, i32* %precision142, align 4, !dbg !2908
  %bf.clear144 = and i32 %bf.load143, 1023, !dbg !2908
  %div145 = udiv i32 %bf.clear140, %bf.clear144, !dbg !2909
  %call146 = call %union.tree_node* @build_string(i32 %div145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !2910
  call void @llvm.dbg.value(metadata %union.tree_node* %call146, metadata !2790, metadata !DIExpression()), !dbg !2829
  br label %if.end148, !dbg !2911

if.end148:                                        ; preds = %sw.bb114, %sw.bb116, %sw.bb125, %sw.bb136, %if.then109
  %value.1 = phi %union.tree_node* [ %call110, %if.then109 ], [ %call115, %sw.bb114 ], [ %call146, %sw.bb136 ], [ %call135, %sw.bb125 ], [ %call124, %sw.bb116 ], !dbg !2912
  call void @llvm.dbg.value(metadata %union.tree_node* %value.1, metadata !2790, metadata !DIExpression()), !dbg !2829
  switch i32 %type.0.ph52, label %sw.bb150 [
    i32 62, label %sw.bb158
    i32 64, label %sw.bb155
    i32 63, label %sw.bb152
  ], !dbg !2913

sw.bb150:                                         ; preds = %if.end148
  %46 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 38) to i64*), align 16, !dbg !2914
  %type151 = getelementptr inbounds %union.tree_node, %union.tree_node* %value.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2916
  %47 = bitcast %union.tree_node** %type151 to i64*, !dbg !2917
  store i64 %46, i64* %47, align 8, !dbg !2917
  br label %sw.epilog161, !dbg !2918

sw.bb152:                                         ; preds = %if.end148
  %48 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 39) to i64*), align 8, !dbg !2919
  %type154 = getelementptr inbounds %union.tree_node, %union.tree_node* %value.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2920
  %49 = bitcast %union.tree_node** %type154 to i64*, !dbg !2921
  store i64 %48, i64* %49, align 8, !dbg !2921
  br label %sw.epilog161, !dbg !2922

sw.bb155:                                         ; preds = %if.end148
  %50 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 40) to i64*), align 16, !dbg !2923
  %type157 = getelementptr inbounds %union.tree_node, %union.tree_node* %value.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2924
  %51 = bitcast %union.tree_node** %type157 to i64*, !dbg !2925
  store i64 %50, i64* %51, align 8, !dbg !2925
  br label %sw.epilog161, !dbg !2926

sw.bb158:                                         ; preds = %if.end148
  %52 = load i64, i64* bitcast (%union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 41) to i64*), align 8, !dbg !2927
  %type160 = getelementptr inbounds %union.tree_node, %union.tree_node* %value.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2928
  %53 = bitcast %union.tree_node** %type160 to i64*, !dbg !2929
  store i64 %52, i64* %53, align 8, !dbg !2929
  br label %sw.epilog161, !dbg !2930

sw.epilog161:                                     ; preds = %sw.bb158, %sw.bb155, %sw.bb152, %sw.bb150
  %call162 = call %union.tree_node* @fix_string_type(%union.tree_node* %value.1) #6, !dbg !2931
  store %union.tree_node* %call162, %union.tree_node** %valp, align 8, !dbg !2932
  br i1 %tobool54, label %if.end193, label %if.then164, !dbg !2933

if.then164:                                       ; preds = %sw.epilog161
  %chunk165 = getelementptr inbounds %struct.obstack, %struct.obstack* %str_ob, i64 0, i32 1, !dbg !2934
  %54 = bitcast %struct._obstack_chunk** %chunk165 to i64*, !dbg !2934
  %55 = load i64, i64* %54, align 8, !dbg !2934
  %sub.ptr.sub167 = sub i64 0, %55, !dbg !2934
  store i64 %sub.ptr.sub167, i64* %temp, align 8, !dbg !2934
  %cmp170 = icmp sgt i64 %sub.ptr.sub167, 0, !dbg !2934
  %56 = inttoptr i64 %55 to i8*, !dbg !2934
  br i1 %cmp170, label %land.lhs.true172, label %cond.false187, !dbg !2934

land.lhs.true172:                                 ; preds = %if.then164
  %57 = bitcast i8** %chunk_limit to i64*, !dbg !2934
  %58 = load i64, i64* %57, align 8, !dbg !2934
  %sub.ptr.sub178 = sub i64 %58, %55, !dbg !2934
  %cmp179 = icmp sgt i64 %sub.ptr.sub178, %sub.ptr.sub167, !dbg !2934
  br i1 %cmp179, label %cond.true181, label %cond.false187, !dbg !2934

cond.true181:                                     ; preds = %land.lhs.true172
  %add.ptr184 = getelementptr inbounds i8, i8* %56, i64 %sub.ptr.sub167, !dbg !2934
  %object_base185 = getelementptr inbounds %struct.obstack, %struct.obstack* %str_ob, i64 0, i32 2, !dbg !2934
  store i8* %add.ptr184, i8** %object_base185, align 8, !dbg !2934
  store i8* %add.ptr184, i8** %next_free, align 8, !dbg !2934
  br label %if.end193, !dbg !2934

cond.false187:                                    ; preds = %land.lhs.true172, %if.then164
  %add.ptr190 = getelementptr inbounds i8, i8* %56, i64 %sub.ptr.sub167, !dbg !2934
  call void @llvm.dbg.value(metadata %struct.obstack* %str_ob, metadata !2792, metadata !DIExpression(DW_OP_deref)), !dbg !2829
  call void @obstack_free(%struct.obstack* nonnull %str_ob, i8* %add.ptr190) #6, !dbg !2934
  br label %if.end193, !dbg !2934

if.end193:                                        ; preds = %sw.epilog161, %cond.true181, %cond.false187
  %tobool195 = icmp eq i8 %objc_string.addr.0.ph349, 0, !dbg !2936
  %.type.0 = select i1 %tobool195, i32 %type.0.ph52, i32 66, !dbg !2936
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !2937
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2937
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #8, !dbg !2937
  ret i32 %.type.0, !dbg !2938
}

declare dso_local i32 @objc_is_reserved_word(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @error_at(i32, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @cpp_spell_token(%struct.cpp_reader*, %struct.cpp_token*, i8*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @lex_charconst(%struct.cpp_token* %token) unnamed_addr #5 !dbg !2939 {
entry:
  %chars_seen = alloca i32, align 4
  %unsignedp = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2943, metadata !DIExpression()), !dbg !2949
  %0 = bitcast i32* %chars_seen to i8*, !dbg !2950
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2950
  %1 = bitcast i32* %unsignedp to i8*, !dbg !2951
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2951
  call void @llvm.dbg.value(metadata i32 0, metadata !2948, metadata !DIExpression()), !dbg !2949
  store i32 0, i32* %unsignedp, align 4, !dbg !2952
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2953
  call void @llvm.dbg.value(metadata i32* %chars_seen, metadata !2947, metadata !DIExpression(DW_OP_deref)), !dbg !2949
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !2948, metadata !DIExpression(DW_OP_deref)), !dbg !2949
  %call = call i32 @cpp_interpret_charconst(%struct.cpp_reader* %2, %struct.cpp_token* %token, i32* nonnull %chars_seen, i32* nonnull %unsignedp) #6, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %call, metadata !2944, metadata !DIExpression()), !dbg !2949
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !2955
  %bf.load = load i8, i8* %type1, align 4, !dbg !2955
  %cmp = icmp eq i8 %bf.load, 57, !dbg !2957
  br i1 %cmp, label %if.then, label %if.else, !dbg !2958

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 2), align 16, !dbg !2959
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !2945, metadata !DIExpression()), !dbg !2949
  br label %if.end20, !dbg !2960

if.else:                                          ; preds = %entry
  %cmp5 = icmp eq i8 %bf.load, 59, !dbg !2961
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !2963

if.then6:                                         ; preds = %if.else
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 1), align 8, !dbg !2964
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2945, metadata !DIExpression()), !dbg !2949
  br label %if.end20, !dbg !2965

if.else7:                                         ; preds = %if.else
  %cmp11 = icmp eq i8 %bf.load, 58, !dbg !2966
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !2968

if.then12:                                        ; preds = %if.else7
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 0), align 16, !dbg !2969
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2945, metadata !DIExpression()), !dbg !2949
  br label %if.end20, !dbg !2970

if.else13:                                        ; preds = %if.else7
  %6 = load i32, i32* @c_language, align 4, !dbg !2971
  %and = and i32 %6, 2, !dbg !2971
  %cmp14 = icmp eq i32 %and, 0, !dbg !2971
  %7 = load i32, i32* %chars_seen, align 4, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %7, metadata !2947, metadata !DIExpression()), !dbg !2949
  %cmp15 = icmp ugt i32 %7, 1, !dbg !2974
  %or.cond = or i1 %cmp14, %cmp15, !dbg !2975
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2975
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !2975
  %type.0 = select i1 %or.cond, %union.tree_node* %8, %union.tree_node* %9, !dbg !2975
  br label %if.end20, !dbg !2975

if.end20:                                         ; preds = %if.then6, %if.else13, %if.then12, %if.then
  %type.3 = phi %union.tree_node* [ %3, %if.then ], [ %4, %if.then6 ], [ %5, %if.then12 ], [ %type.0, %if.else13 ], !dbg !2976
  call void @llvm.dbg.value(metadata %union.tree_node* %type.3, metadata !2945, metadata !DIExpression()), !dbg !2949
  %10 = load i32, i32* %unsignedp, align 4, !dbg !2977
  call void @llvm.dbg.value(metadata i32 %10, metadata !2948, metadata !DIExpression()), !dbg !2949
  %tobool = icmp ne i32 %10, 0, !dbg !2977
  %cmp22 = icmp sgt i32 %call, -1, !dbg !2979
  %or.cond1 = or i1 %tobool, %cmp22, !dbg !2980
  br i1 %or.cond1, label %if.then23, label %if.else25, !dbg !2980

if.then23:                                        ; preds = %if.end20
  %conv = zext i32 %call to i64, !dbg !2981
  %call24 = call %union.tree_node* @build_int_cst_wide(%union.tree_node* %type.3, i64 %conv, i64 0) #6, !dbg !2982
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !2946, metadata !DIExpression()), !dbg !2949
  br label %if.end28, !dbg !2983

if.else25:                                        ; preds = %if.end20
  %conv26 = sext i32 %call to i64, !dbg !2984
  %call27 = call %union.tree_node* @build_int_cst_wide(%union.tree_node* %type.3, i64 %conv26, i64 -1) #6, !dbg !2985
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !2946, metadata !DIExpression()), !dbg !2949
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then23
  %value.0 = phi %union.tree_node* [ %call24, %if.then23 ], [ %call27, %if.else25 ], !dbg !2986
  call void @llvm.dbg.value(metadata %union.tree_node* %value.0, metadata !2946, metadata !DIExpression()), !dbg !2949
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2987
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2987
  ret %union.tree_node* %value.0, !dbg !2988
}

declare dso_local %union.tree_node* @build_string(i32, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local void @c_common_no_more_pch() local_unnamed_addr #2

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local zeroext i8 @cpp_interpret_string(%struct.cpp_reader*, %struct.cpp_string*, i64, %struct.cpp_string*, i32) local_unnamed_addr #2

declare dso_local %struct.cpp_token* @cpp_get_token(%struct.cpp_reader*) local_unnamed_addr #2

declare dso_local i8* @cpp_token_as_text(%struct.cpp_reader*, %struct.cpp_token*) local_unnamed_addr #2

declare dso_local zeroext i8 @warning_at(i32, i32, i8*, ...) local_unnamed_addr #2

declare dso_local %struct.line_map* @linemap_lookup(%struct.line_maps*, i32) local_unnamed_addr #2

declare dso_local i8* @cpp_macro_definition(%struct.cpp_reader*, %struct.cpp_hashnode*) local_unnamed_addr #2

declare dso_local %struct.cpp_options* @cpp_get_options(%struct.cpp_reader*) local_unnamed_addr #2

declare dso_local void @cpp_interpret_integer(%struct.cpp_num* sret, %struct.cpp_reader*, %struct.cpp_token*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

declare dso_local void @cpp_num_sign_extend(%struct.cpp_num* sret, %struct.cpp_num* byval(%struct.cpp_num) align 8, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @narrowest_unsigned_type(i64 %low, i64 %high, i32 %flags) unnamed_addr #5 !dbg !2989 {
entry:
  call void @llvm.dbg.value(metadata i64 %low, metadata !2993, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %high, metadata !2994, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2995, metadata !DIExpression()), !dbg !3001
  %and = and i32 %flags, 240, !dbg !3002
  %cmp = icmp eq i32 %and, 16, !dbg !3004
  %cmp2 = icmp eq i32 %and, 32, !dbg !3005
  %. = select i1 %cmp2, i64 8, i64 10, !dbg !3005
  %itk.1 = select i1 %cmp, i64 6, i64 %., !dbg !3005
  call void @llvm.dbg.value(metadata i64 %itk.1, metadata !2996, metadata !DIExpression()), !dbg !3001
  br label %for.cond, !dbg !3006

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %itk.1, %entry ], !dbg !3001
  %retval.0 = phi i32 [ %retval.1, %for.inc ], [ undef, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2996, metadata !DIExpression()), !dbg !3001
  %cmp6 = icmp ult i64 %indvars.iv, 11, !dbg !3007
  br i1 %cmp6, label %for.body, label %cleanup20, !dbg !3008

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 %indvars.iv, !dbg !3009
  %0 = bitcast %union.tree_node** %arrayidx to %struct.tree_type**, !dbg !3009
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 16, !dbg !3009
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 14, !dbg !3009
  %2 = load %union.tree_node*, %union.tree_node** %maxval, align 8, !dbg !3009
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2997, metadata !DIExpression()), !dbg !3010
  %int_cst7 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3011
  %high8 = getelementptr inbounds i32, i32* %int_cst7, i64 2, !dbg !3011
  %3 = bitcast i32* %high8 to i64*, !dbg !3011
  %4 = load i64, i64* %3, align 8, !dbg !3011
  %cmp9 = icmp ugt i64 %4, %high, !dbg !3013
  %5 = trunc i64 %indvars.iv to i32, !dbg !3014
  br i1 %cmp9, label %cleanup, label %lor.lhs.false, !dbg !3014

lor.lhs.false:                                    ; preds = %for.body
  %cmp13 = icmp eq i64 %4, %high, !dbg !3015
  br i1 %cmp13, label %land.lhs.true, label %if.end19, !dbg !3016

land.lhs.true:                                    ; preds = %lor.lhs.false
  %low16 = bitcast i32* %int_cst7 to i64*, !dbg !3017
  %6 = load i64, i64* %low16, align 8, !dbg !3017
  %cmp17 = icmp ult i64 %6, %low, !dbg !3018
  br i1 %cmp17, label %if.end19, label %cleanup, !dbg !3019

if.end19:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br label %cleanup, !dbg !3020

cleanup:                                          ; preds = %land.lhs.true, %for.body, %if.end19
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end19 ], [ false, %land.lhs.true ], [ false, %for.body ]
  %retval.1 = phi i32 [ %retval.0, %if.end19 ], [ %5, %land.lhs.true ], [ %5, %for.body ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup20

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2, !dbg !3021
  call void @llvm.dbg.value(metadata i32 undef, metadata !2996, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3001
  br label %for.cond, !dbg !3022, !llvm.loop !3023

cleanup20:                                        ; preds = %for.cond, %cleanup
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ 11, %for.cond ], !dbg !3001
  ret i32 %retval.2, !dbg !3025
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @narrowest_signed_type(i64 %low, i64 %high, i32 %flags) unnamed_addr #5 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata i64 %low, metadata !3028, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i64 %high, metadata !3029, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3030, metadata !DIExpression()), !dbg !3036
  %and = and i32 %flags, 240, !dbg !3037
  %cmp = icmp eq i32 %and, 16, !dbg !3039
  %cmp2 = icmp eq i32 %and, 32, !dbg !3040
  %. = select i1 %cmp2, i64 7, i64 9, !dbg !3040
  %itk.1 = select i1 %cmp, i64 5, i64 %., !dbg !3040
  call void @llvm.dbg.value(metadata i64 %itk.1, metadata !3031, metadata !DIExpression()), !dbg !3036
  br label %for.cond, !dbg !3041

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %itk.1, %entry ], !dbg !3036
  %retval.0 = phi i32 [ %retval.1, %for.inc ], [ undef, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3031, metadata !DIExpression()), !dbg !3036
  %cmp6 = icmp ult i64 %indvars.iv, 11, !dbg !3042
  br i1 %cmp6, label %for.body, label %cleanup20, !dbg !3043

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 %indvars.iv, !dbg !3044
  %0 = bitcast %union.tree_node** %arrayidx to %struct.tree_type**, !dbg !3044
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !3044
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 14, !dbg !3044
  %2 = load %union.tree_node*, %union.tree_node** %maxval, align 8, !dbg !3044
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3032, metadata !DIExpression()), !dbg !3045
  %int_cst7 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3046
  %high8 = getelementptr inbounds i32, i32* %int_cst7, i64 2, !dbg !3046
  %3 = bitcast i32* %high8 to i64*, !dbg !3046
  %4 = load i64, i64* %3, align 8, !dbg !3046
  %cmp9 = icmp ugt i64 %4, %high, !dbg !3048
  %5 = trunc i64 %indvars.iv to i32, !dbg !3049
  br i1 %cmp9, label %cleanup, label %lor.lhs.false, !dbg !3049

lor.lhs.false:                                    ; preds = %for.body
  %cmp13 = icmp eq i64 %4, %high, !dbg !3050
  br i1 %cmp13, label %land.lhs.true, label %if.end19, !dbg !3051

land.lhs.true:                                    ; preds = %lor.lhs.false
  %low16 = bitcast i32* %int_cst7 to i64*, !dbg !3052
  %6 = load i64, i64* %low16, align 8, !dbg !3052
  %cmp17 = icmp ult i64 %6, %low, !dbg !3053
  br i1 %cmp17, label %if.end19, label %cleanup, !dbg !3054

if.end19:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br label %cleanup, !dbg !3055

cleanup:                                          ; preds = %land.lhs.true, %for.body, %if.end19
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end19 ], [ false, %land.lhs.true ], [ false, %for.body ]
  %retval.1 = phi i32 [ %retval.0, %if.end19 ], [ %5, %land.lhs.true ], [ %5, %for.body ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup20

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2, !dbg !3056
  call void @llvm.dbg.value(metadata i32 undef, metadata !3031, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !3036
  br label %for.cond, !dbg !3057, !llvm.loop !3058

cleanup20:                                        ; preds = %for.cond, %cleanup
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ 11, %for.cond ], !dbg !3036
  ret i32 %retval.2, !dbg !3060
}

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #2

declare dso_local zeroext i8 @emit_diagnostic(i32, i32, i32, i8*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst_wide(%union.tree_node*, i64, i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_complex(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @float_const_decimal64_p() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @interpret_fixed(%struct.cpp_token* %token, i32 %flags) unnamed_addr #5 !dbg !3061 {
entry:
  %fixed = alloca %struct.fixed_value, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !3063, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3064, metadata !DIExpression()), !dbg !3070
  %0 = bitcast %struct.fixed_value* %fixed to i8*, !dbg !3071
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3071
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !3072
  %1 = load i32, i32* %len, align 8, !dbg !3072
  %conv = zext i32 %1 to i64, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %conv, metadata !3069, metadata !DIExpression()), !dbg !3070
  %and = and i32 %flags, 1048576, !dbg !3074
  %tobool = icmp eq i32 %and, 0, !dbg !3074
  %and1 = and i32 %flags, 4096, !dbg !3076
  %tobool2 = icmp ne i32 %and1, 0, !dbg !3076
  %and4 = and i32 %flags, 240, !dbg !3076
  %cmp = icmp eq i32 %and4, 64, !dbg !3076
  br i1 %tobool, label %if.else45, label %if.then, !dbg !3077

if.then:                                          ; preds = %entry
  br i1 %tobool2, label %if.then3, label %if.else22, !dbg !3078

if.then3:                                         ; preds = %if.then
  br i1 %cmp, label %if.then6, label %if.else, !dbg !3080

if.then6:                                         ; preds = %if.then3
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 72), align 16, !dbg !3083
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3065, metadata !DIExpression()), !dbg !3070
  %sub = add nsw i64 %conv, -4, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %sub, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %if.end95, !dbg !3087

if.else:                                          ; preds = %if.then3
  %cmp8 = icmp eq i32 %and4, 32, !dbg !3088
  br i1 %cmp8, label %if.then10, label %if.else12, !dbg !3090

if.then10:                                        ; preds = %if.else
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 71), align 8, !dbg !3091
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3065, metadata !DIExpression()), !dbg !3070
  %sub11 = add nsw i64 %conv, -3, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %sub11, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %if.end95, !dbg !3094

if.else12:                                        ; preds = %if.else
  %cmp14 = icmp eq i32 %and4, 16, !dbg !3095
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 69), align 8, !dbg !3097
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 70), align 16, !dbg !3097
  %type.0 = select i1 %cmp14, %union.tree_node* %4, %union.tree_node* %5, !dbg !3097
  %copylen.0.v = select i1 %cmp14, i64 -3, i64 -2, !dbg !3097
  %copylen.0 = add nsw i64 %copylen.0.v, %conv, !dbg !3097
  br label %if.end95, !dbg !3097

if.else22:                                        ; preds = %if.then
  br i1 %cmp, label %if.then26, label %if.else28, !dbg !3098

if.then26:                                        ; preds = %if.else22
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 68), align 16, !dbg !3100
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3065, metadata !DIExpression()), !dbg !3070
  %sub27 = add nsw i64 %conv, -3, !dbg !3103
  call void @llvm.dbg.value(metadata i64 %sub27, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %if.end95, !dbg !3104

if.else28:                                        ; preds = %if.else22
  %cmp30 = icmp eq i32 %and4, 32, !dbg !3105
  br i1 %cmp30, label %if.then32, label %if.else34, !dbg !3107

if.then32:                                        ; preds = %if.else28
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 67), align 8, !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !3065, metadata !DIExpression()), !dbg !3070
  %sub33 = add nsw i64 %conv, -2, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %sub33, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %if.end95, !dbg !3111

if.else34:                                        ; preds = %if.else28
  %cmp36 = icmp eq i32 %and4, 16, !dbg !3112
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 65), align 8, !dbg !3114
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 66), align 16, !dbg !3114
  %type.3 = select i1 %cmp36, %union.tree_node* %8, %union.tree_node* %9, !dbg !3114
  %copylen.3.v = select i1 %cmp36, i64 -2, i64 -1, !dbg !3114
  %copylen.3 = add nsw i64 %copylen.3.v, %conv, !dbg !3114
  br label %if.end95, !dbg !3114

if.else45:                                        ; preds = %entry
  br i1 %tobool2, label %if.then48, label %if.else71, !dbg !3115

if.then48:                                        ; preds = %if.else45
  br i1 %cmp, label %if.then52, label %if.else54, !dbg !3117

if.then52:                                        ; preds = %if.then48
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 88), align 16, !dbg !3120
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !3065, metadata !DIExpression()), !dbg !3070
  %sub53 = add nsw i64 %conv, -4, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %sub53, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %if.end95, !dbg !3124

if.else54:                                        ; preds = %if.then48
  %cmp56 = icmp eq i32 %and4, 32, !dbg !3125
  br i1 %cmp56, label %if.then58, label %if.else60, !dbg !3127

if.then58:                                        ; preds = %if.else54
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 87), align 8, !dbg !3128
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !3065, metadata !DIExpression()), !dbg !3070
  %sub59 = add nsw i64 %conv, -3, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %sub59, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %if.end95, !dbg !3131

if.else60:                                        ; preds = %if.else54
  %cmp62 = icmp eq i32 %and4, 16, !dbg !3132
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 85), align 8, !dbg !3134
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 86), align 16, !dbg !3134
  %type.7 = select i1 %cmp62, %union.tree_node* %12, %union.tree_node* %13, !dbg !3134
  %copylen.7.v = select i1 %cmp62, i64 -3, i64 -2, !dbg !3134
  %copylen.7 = add nsw i64 %copylen.7.v, %conv, !dbg !3134
  br label %if.end95, !dbg !3134

if.else71:                                        ; preds = %if.else45
  br i1 %cmp, label %if.then75, label %if.else77, !dbg !3135

if.then75:                                        ; preds = %if.else71
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 84), align 16, !dbg !3137
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !3065, metadata !DIExpression()), !dbg !3070
  %sub76 = add nsw i64 %conv, -3, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %sub76, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %if.end95, !dbg !3141

if.else77:                                        ; preds = %if.else71
  %cmp79 = icmp eq i32 %and4, 32, !dbg !3142
  br i1 %cmp79, label %if.then81, label %if.else83, !dbg !3144

if.then81:                                        ; preds = %if.else77
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 83), align 8, !dbg !3145
  call void @llvm.dbg.value(metadata %union.tree_node* %15, metadata !3065, metadata !DIExpression()), !dbg !3070
  %sub82 = add nsw i64 %conv, -2, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %sub82, metadata !3069, metadata !DIExpression()), !dbg !3070
  br label %if.end95, !dbg !3148

if.else83:                                        ; preds = %if.else77
  %cmp85 = icmp eq i32 %and4, 16, !dbg !3149
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 81), align 8, !dbg !3151
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 82), align 16, !dbg !3151
  %type.10 = select i1 %cmp85, %union.tree_node* %16, %union.tree_node* %17, !dbg !3151
  %copylen.10.v = select i1 %cmp85, i64 -2, i64 -1, !dbg !3151
  %copylen.10 = add nsw i64 %copylen.10.v, %conv, !dbg !3151
  br label %if.end95, !dbg !3151

if.end95:                                         ; preds = %if.then58, %if.else60, %if.then52, %if.then81, %if.else83, %if.then75, %if.then10, %if.else12, %if.then6, %if.then32, %if.else34, %if.then26
  %type.14 = phi %union.tree_node* [ %2, %if.then6 ], [ %3, %if.then10 ], [ %type.0, %if.else12 ], [ %6, %if.then26 ], [ %7, %if.then32 ], [ %type.3, %if.else34 ], [ %10, %if.then52 ], [ %11, %if.then58 ], [ %type.7, %if.else60 ], [ %14, %if.then75 ], [ %15, %if.then81 ], [ %type.10, %if.else83 ], !dbg !3076
  %copylen.14 = phi i64 [ %sub, %if.then6 ], [ %sub11, %if.then10 ], [ %copylen.0, %if.else12 ], [ %sub27, %if.then26 ], [ %sub33, %if.then32 ], [ %copylen.3, %if.else34 ], [ %sub53, %if.then52 ], [ %sub59, %if.then58 ], [ %copylen.7, %if.else60 ], [ %sub76, %if.then75 ], [ %sub82, %if.then81 ], [ %copylen.10, %if.else83 ], !dbg !3076
  call void @llvm.dbg.value(metadata i64 %copylen.14, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata %union.tree_node* %type.14, metadata !3065, metadata !DIExpression()), !dbg !3070
  %add = add i64 %copylen.14, 1, !dbg !3152
  %18 = alloca i8, i64 %add, align 16, !dbg !3152
  call void @llvm.dbg.value(metadata i8* %18, metadata !3068, metadata !DIExpression()), !dbg !3070
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !3153
  %19 = load i8*, i8** %text, align 8, !dbg !3153
  %call = call i8* @memcpy(i8* nonnull %18, i8* %19, i64 %copylen.14) #6, !dbg !3154
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %copylen.14, !dbg !3155
  store i8 0, i8* %arrayidx, align 1, !dbg !3156
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %type.14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3157
  %bf.load = load i64, i64* %20, align 8, !dbg !3157
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3157
  %cmp98 = icmp eq i64 %bf.cast1, 14, !dbg !3157
  br i1 %cmp98, label %cond.true, label %cond.false, !dbg !3157

cond.true:                                        ; preds = %if.end95
  %call100 = call i32 @vector_type_mode(%union.tree_node* %type.14) #6, !dbg !3157
  br label %cond.end, !dbg !3157

cond.false:                                       ; preds = %if.end95
  %type101 = bitcast %union.tree_node* %type.14 to %struct.tree_type*, !dbg !3157
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type101, i64 0, i32 6, !dbg !3157
  %bf.load102 = load i32, i32* %mode, align 4, !dbg !3157
  %bf.lshr = lshr i32 %bf.load102, 16, !dbg !3157
  %bf.clear103 = and i32 %bf.lshr, 255, !dbg !3157
  br label %cond.end, !dbg !3157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call100, %cond.true ], [ %bf.clear103, %cond.false ], !dbg !3157
  call void @llvm.dbg.value(metadata %struct.fixed_value* %fixed, metadata !3067, metadata !DIExpression(DW_OP_deref)), !dbg !3070
  call void @fixed_from_string(%struct.fixed_value* nonnull %fixed, i8* nonnull %18, i32 %cond) #6, !dbg !3158
  call void @llvm.dbg.value(metadata %struct.fixed_value* %fixed, metadata !3067, metadata !DIExpression(DW_OP_deref)), !dbg !3070
  %call104 = call %union.tree_node* @build_fixed(%union.tree_node* %type.14, %struct.fixed_value* nonnull byval(%struct.fixed_value) align 8 %fixed) #6, !dbg !3159
  call void @llvm.dbg.value(metadata %union.tree_node* %call104, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3160
  ret %union.tree_node* %call104, !dbg !3161
}

declare dso_local zeroext i8 @pedwarn(i32, i32, i8*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node* @c_common_type_for_mode(i32, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @excess_precision_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local void @real_from_string3(%struct.real_value*, i8*, i32) local_unnamed_addr #2

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @real_convert(%struct.real_value*, i32, %struct.real_value*) local_unnamed_addr #2

declare dso_local zeroext i8 @real_isinf(%struct.real_value*) local_unnamed_addr #2

declare dso_local zeroext i8 @real_compare(i32, %struct.real_value*, %struct.real_value*) local_unnamed_addr #2

declare dso_local i32 @real_from_string(%struct.real_value*, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_real(%union.tree_node*, %struct.real_value* byval(%struct.real_value) align 8) local_unnamed_addr #2

declare dso_local %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build1_stat(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @fixed_from_string(%struct.fixed_value*, i8*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_fixed(%union.tree_node*, %struct.fixed_value* byval(%struct.fixed_value) align 8) local_unnamed_addr #2

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #2

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #2

declare dso_local void @_cpp_backup_tokens(%struct.cpp_reader*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @cpp_interpret_string_notranslate(%struct.cpp_reader*, %struct.cpp_string*, i64, %struct.cpp_string*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @fix_string_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #2

declare dso_local i32 @cpp_interpret_charconst(%struct.cpp_reader*, %struct.cpp_token*, i32*, i32*) local_unnamed_addr #2

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
!llvm.module.flags = !{!1480, !1481, !1482}
!llvm.ident = !{!1483}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "header_time", scope: !2, file: !3, line: 46, type: !516, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !513, globals: !1361, nameTableKind: None)
!3 = !DIFile(filename: "c-lex.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !19, !99, !227, !246, !253, !260, !454, !468, !480, !486, !491}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_builtin_type", file: !6, line: 593, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "BT_SPECLINE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "BT_DATE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "BT_FILE", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "BT_BASE_FILE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BT_INCLUDE_LEVEL", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "BT_TIME", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "BT_STDC", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "BT_PRAGMA", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "BT_TIMESTAMP", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "BT_COUNTER", value: 9, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_ttype", file: !6, line: 143, baseType: !7, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!21 = !DIEnumerator(name: "CPP_EQ", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "CPP_NOT", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "CPP_GREATER", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "CPP_LESS", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "CPP_PLUS", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "CPP_MINUS", value: 5, isUnsigned: true)
!27 = !DIEnumerator(name: "CPP_MULT", value: 6, isUnsigned: true)
!28 = !DIEnumerator(name: "CPP_DIV", value: 7, isUnsigned: true)
!29 = !DIEnumerator(name: "CPP_MOD", value: 8, isUnsigned: true)
!30 = !DIEnumerator(name: "CPP_AND", value: 9, isUnsigned: true)
!31 = !DIEnumerator(name: "CPP_OR", value: 10, isUnsigned: true)
!32 = !DIEnumerator(name: "CPP_XOR", value: 11, isUnsigned: true)
!33 = !DIEnumerator(name: "CPP_RSHIFT", value: 12, isUnsigned: true)
!34 = !DIEnumerator(name: "CPP_LSHIFT", value: 13, isUnsigned: true)
!35 = !DIEnumerator(name: "CPP_COMPL", value: 14, isUnsigned: true)
!36 = !DIEnumerator(name: "CPP_AND_AND", value: 15, isUnsigned: true)
!37 = !DIEnumerator(name: "CPP_OR_OR", value: 16, isUnsigned: true)
!38 = !DIEnumerator(name: "CPP_QUERY", value: 17, isUnsigned: true)
!39 = !DIEnumerator(name: "CPP_COLON", value: 18, isUnsigned: true)
!40 = !DIEnumerator(name: "CPP_COMMA", value: 19, isUnsigned: true)
!41 = !DIEnumerator(name: "CPP_OPEN_PAREN", value: 20, isUnsigned: true)
!42 = !DIEnumerator(name: "CPP_CLOSE_PAREN", value: 21, isUnsigned: true)
!43 = !DIEnumerator(name: "CPP_EOF", value: 22, isUnsigned: true)
!44 = !DIEnumerator(name: "CPP_EQ_EQ", value: 23, isUnsigned: true)
!45 = !DIEnumerator(name: "CPP_NOT_EQ", value: 24, isUnsigned: true)
!46 = !DIEnumerator(name: "CPP_GREATER_EQ", value: 25, isUnsigned: true)
!47 = !DIEnumerator(name: "CPP_LESS_EQ", value: 26, isUnsigned: true)
!48 = !DIEnumerator(name: "CPP_PLUS_EQ", value: 27, isUnsigned: true)
!49 = !DIEnumerator(name: "CPP_MINUS_EQ", value: 28, isUnsigned: true)
!50 = !DIEnumerator(name: "CPP_MULT_EQ", value: 29, isUnsigned: true)
!51 = !DIEnumerator(name: "CPP_DIV_EQ", value: 30, isUnsigned: true)
!52 = !DIEnumerator(name: "CPP_MOD_EQ", value: 31, isUnsigned: true)
!53 = !DIEnumerator(name: "CPP_AND_EQ", value: 32, isUnsigned: true)
!54 = !DIEnumerator(name: "CPP_OR_EQ", value: 33, isUnsigned: true)
!55 = !DIEnumerator(name: "CPP_XOR_EQ", value: 34, isUnsigned: true)
!56 = !DIEnumerator(name: "CPP_RSHIFT_EQ", value: 35, isUnsigned: true)
!57 = !DIEnumerator(name: "CPP_LSHIFT_EQ", value: 36, isUnsigned: true)
!58 = !DIEnumerator(name: "CPP_HASH", value: 37, isUnsigned: true)
!59 = !DIEnumerator(name: "CPP_PASTE", value: 38, isUnsigned: true)
!60 = !DIEnumerator(name: "CPP_OPEN_SQUARE", value: 39, isUnsigned: true)
!61 = !DIEnumerator(name: "CPP_CLOSE_SQUARE", value: 40, isUnsigned: true)
!62 = !DIEnumerator(name: "CPP_OPEN_BRACE", value: 41, isUnsigned: true)
!63 = !DIEnumerator(name: "CPP_CLOSE_BRACE", value: 42, isUnsigned: true)
!64 = !DIEnumerator(name: "CPP_SEMICOLON", value: 43, isUnsigned: true)
!65 = !DIEnumerator(name: "CPP_ELLIPSIS", value: 44, isUnsigned: true)
!66 = !DIEnumerator(name: "CPP_PLUS_PLUS", value: 45, isUnsigned: true)
!67 = !DIEnumerator(name: "CPP_MINUS_MINUS", value: 46, isUnsigned: true)
!68 = !DIEnumerator(name: "CPP_DEREF", value: 47, isUnsigned: true)
!69 = !DIEnumerator(name: "CPP_DOT", value: 48, isUnsigned: true)
!70 = !DIEnumerator(name: "CPP_SCOPE", value: 49, isUnsigned: true)
!71 = !DIEnumerator(name: "CPP_DEREF_STAR", value: 50, isUnsigned: true)
!72 = !DIEnumerator(name: "CPP_DOT_STAR", value: 51, isUnsigned: true)
!73 = !DIEnumerator(name: "CPP_ATSIGN", value: 52, isUnsigned: true)
!74 = !DIEnumerator(name: "CPP_NAME", value: 53, isUnsigned: true)
!75 = !DIEnumerator(name: "CPP_AT_NAME", value: 54, isUnsigned: true)
!76 = !DIEnumerator(name: "CPP_NUMBER", value: 55, isUnsigned: true)
!77 = !DIEnumerator(name: "CPP_CHAR", value: 56, isUnsigned: true)
!78 = !DIEnumerator(name: "CPP_WCHAR", value: 57, isUnsigned: true)
!79 = !DIEnumerator(name: "CPP_CHAR16", value: 58, isUnsigned: true)
!80 = !DIEnumerator(name: "CPP_CHAR32", value: 59, isUnsigned: true)
!81 = !DIEnumerator(name: "CPP_OTHER", value: 60, isUnsigned: true)
!82 = !DIEnumerator(name: "CPP_STRING", value: 61, isUnsigned: true)
!83 = !DIEnumerator(name: "CPP_WSTRING", value: 62, isUnsigned: true)
!84 = !DIEnumerator(name: "CPP_STRING16", value: 63, isUnsigned: true)
!85 = !DIEnumerator(name: "CPP_STRING32", value: 64, isUnsigned: true)
!86 = !DIEnumerator(name: "CPP_UTF8STRING", value: 65, isUnsigned: true)
!87 = !DIEnumerator(name: "CPP_OBJC_STRING", value: 66, isUnsigned: true)
!88 = !DIEnumerator(name: "CPP_HEADER_NAME", value: 67, isUnsigned: true)
!89 = !DIEnumerator(name: "CPP_COMMENT", value: 68, isUnsigned: true)
!90 = !DIEnumerator(name: "CPP_MACRO_ARG", value: 69, isUnsigned: true)
!91 = !DIEnumerator(name: "CPP_PRAGMA", value: 70, isUnsigned: true)
!92 = !DIEnumerator(name: "CPP_PRAGMA_EOL", value: 71, isUnsigned: true)
!93 = !DIEnumerator(name: "CPP_PADDING", value: 72, isUnsigned: true)
!94 = !DIEnumerator(name: "N_TTYPES", value: 73, isUnsigned: true)
!95 = !DIEnumerator(name: "CPP_LAST_EQ", value: 13, isUnsigned: true)
!96 = !DIEnumerator(name: "CPP_FIRST_DIGRAPH", value: 37, isUnsigned: true)
!97 = !DIEnumerator(name: "CPP_LAST_PUNCTUATOR", value: 52, isUnsigned: true)
!98 = !DIEnumerator(name: "CPP_LAST_CPP_OP", value: 26, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !100, line: 7, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!102 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!106 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!107 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!108 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!109 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!110 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!111 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!112 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!113 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!114 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!115 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!116 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!117 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!118 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!119 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!120 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!121 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!122 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!123 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!124 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!125 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!126 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!127 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!128 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!129 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!130 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!131 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!132 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!133 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!134 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!135 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!136 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!137 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!138 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!139 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!140 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!141 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!142 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!143 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!144 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!145 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!146 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!147 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!148 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!149 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!150 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!151 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!152 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!153 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!154 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!155 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!156 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!157 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!158 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!159 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!160 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!161 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!162 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!163 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!164 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!165 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!166 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!167 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!168 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!169 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!170 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!171 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!172 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!173 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!174 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!175 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!176 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!177 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!178 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!179 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!180 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!181 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!182 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!183 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!184 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!185 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!186 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!187 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!188 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!189 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!190 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!191 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!192 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!193 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!194 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!195 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!196 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!197 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!198 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!199 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!200 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!201 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!202 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!203 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!204 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!205 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!206 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!207 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!208 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!209 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!210 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!211 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!212 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!213 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!214 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!215 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!216 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!217 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!218 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!219 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!221 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!222 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!223 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!224 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!225 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!226 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !228, line: 280, baseType: !7, size: 32, elements: !229)
!228 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!230 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!233 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!234 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!235 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!236 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!237 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!240 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!241 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!242 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!243 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!244 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !228, line: 1817, baseType: !7, size: 32, elements: !247)
!247 = !{!248, !249, !250, !251, !252}
!248 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!249 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!250 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!251 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!252 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !228, line: 1805, baseType: !7, size: 32, elements: !254)
!254 = !{!255, !256, !257, !258, !259}
!255 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!256 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!257 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!258 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!259 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !228, line: 39, baseType: !7, size: 32, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!262 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!263 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!264 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!265 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!266 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!267 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!268 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!269 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!270 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!271 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!272 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!273 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!274 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!275 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!276 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!277 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!278 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!279 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!280 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!281 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!282 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!283 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!284 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!285 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!286 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!287 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!288 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!289 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!290 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!291 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!292 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!293 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!294 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!295 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!296 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!297 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!298 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!299 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!300 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!301 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!302 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!303 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!304 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!305 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!306 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!307 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!308 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!309 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!310 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!311 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!312 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!313 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!314 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!315 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!316 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!317 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!318 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!319 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!320 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!321 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!322 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!323 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!324 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!325 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!326 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!327 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!328 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!329 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!330 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!331 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!332 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!333 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!334 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!335 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!336 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!337 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!338 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!339 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!340 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!341 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!342 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!343 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!344 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!345 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!346 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!347 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!348 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!349 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!350 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!351 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!352 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!353 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!354 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!355 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!356 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!357 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!358 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!359 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!360 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!361 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!362 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!363 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!364 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!365 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!366 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!367 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!368 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!369 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!370 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!371 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!372 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!373 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!374 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!375 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!376 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!377 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!378 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!379 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!380 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!381 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!382 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!383 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!384 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!385 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!386 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!387 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!388 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!389 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!390 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!391 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!392 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!393 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!394 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!395 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!396 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!397 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!398 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!399 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!400 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!401 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!402 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!403 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!404 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!405 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!406 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!407 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!408 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!409 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!410 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!411 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!412 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!413 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!414 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!415 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!416 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!417 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!418 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!419 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!420 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!421 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!422 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!423 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!424 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!425 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!426 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!427 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!428 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!429 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!430 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!431 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!432 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!433 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!434 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!435 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!436 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!437 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!438 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!439 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!440 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!441 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!442 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!443 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!444 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!445 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!446 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!447 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!448 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!449 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!450 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!451 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!452 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!453 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!454 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "integer_type_kind", file: !228, line: 3745, baseType: !7, size: 32, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!456 = !DIEnumerator(name: "itk_char", value: 0, isUnsigned: true)
!457 = !DIEnumerator(name: "itk_signed_char", value: 1, isUnsigned: true)
!458 = !DIEnumerator(name: "itk_unsigned_char", value: 2, isUnsigned: true)
!459 = !DIEnumerator(name: "itk_short", value: 3, isUnsigned: true)
!460 = !DIEnumerator(name: "itk_unsigned_short", value: 4, isUnsigned: true)
!461 = !DIEnumerator(name: "itk_int", value: 5, isUnsigned: true)
!462 = !DIEnumerator(name: "itk_unsigned_int", value: 6, isUnsigned: true)
!463 = !DIEnumerator(name: "itk_long", value: 7, isUnsigned: true)
!464 = !DIEnumerator(name: "itk_unsigned_long", value: 8, isUnsigned: true)
!465 = !DIEnumerator(name: "itk_long_long", value: 9, isUnsigned: true)
!466 = !DIEnumerator(name: "itk_unsigned_long_long", value: 10, isUnsigned: true)
!467 = !DIEnumerator(name: "itk_none", value: 11, isUnsigned: true)
!468 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_lang", file: !6, line: 158, baseType: !7, size: 32, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!470 = !DIEnumerator(name: "CLK_GNUC89", value: 0, isUnsigned: true)
!471 = !DIEnumerator(name: "CLK_GNUC99", value: 1, isUnsigned: true)
!472 = !DIEnumerator(name: "CLK_STDC89", value: 2, isUnsigned: true)
!473 = !DIEnumerator(name: "CLK_STDC94", value: 3, isUnsigned: true)
!474 = !DIEnumerator(name: "CLK_STDC99", value: 4, isUnsigned: true)
!475 = !DIEnumerator(name: "CLK_GNUCXX", value: 5, isUnsigned: true)
!476 = !DIEnumerator(name: "CLK_CXX98", value: 6, isUnsigned: true)
!477 = !DIEnumerator(name: "CLK_GNUCXX0X", value: 7, isUnsigned: true)
!478 = !DIEnumerator(name: "CLK_CXX0X", value: 8, isUnsigned: true)
!479 = !DIEnumerator(name: "CLK_ASM", value: 9, isUnsigned: true)
!480 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_normalize_level", file: !6, line: 265, baseType: !7, size: 32, elements: !481)
!481 = !{!482, !483, !484, !485}
!482 = !DIEnumerator(name: "normalized_KC", value: 0, isUnsigned: true)
!483 = !DIEnumerator(name: "normalized_C", value: 1, isUnsigned: true)
!484 = !DIEnumerator(name: "normalized_identifier_C", value: 2, isUnsigned: true)
!485 = !DIEnumerator(name: "normalized_none", value: 3, isUnsigned: true)
!486 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_deps_style", file: !6, line: 262, baseType: !7, size: 32, elements: !487)
!487 = !{!488, !489, !490}
!488 = !DIEnumerator(name: "DEPS_NONE", value: 0, isUnsigned: true)
!489 = !DIEnumerator(name: "DEPS_USER", value: 1, isUnsigned: true)
!490 = !DIEnumerator(name: "DEPS_SYSTEM", value: 2, isUnsigned: true)
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !492, line: 36, baseType: !7, size: 32, elements: !493)
!492 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!494 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!495 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!496 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!497 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!498 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!499 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!500 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!501 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!502 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!503 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!504 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!505 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!506 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!507 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!508 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!509 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!510 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!511 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!512 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!513 = !{!514, !515, !516, !517, !520, !521, !523, !531, !528, !536, !535, !544, !545, !547, !518, !1343, !1345, !662, !530, !454, !260, !491, !99, !1346, !1349, !1352, !1358, !1360}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!516 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_compare_fn", file: !524, line: 70, baseType: !525)
!524 = !DIFile(filename: "./include/splay-tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!516, !528, !528}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_key", file: !524, line: 62, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "libi_uhostptr_t", file: !524, line: 41, baseType: !530)
!530 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_value_fn", file: !524, line: 78, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_value", file: !524, line: 63, baseType: !529)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "c_fileinfo", file: !538, line: 1008, size: 64, elements: !539)
!538 = !DIFile(filename: "./c-common.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!539 = !{!540, !541, !543}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !537, file: !538, line: 1010, baseType: !516, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "interface_only", scope: !537, file: !538, line: 1018, baseType: !542, size: 16, offset: 32)
!542 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "interface_unknown", scope: !537, file: !538, line: 1019, baseType: !542, size: 16, offset: 48)
!544 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !546, line: 44, baseType: !7)
!546 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !548, line: 56, baseType: !549)
!548 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !228, line: 3371, size: 1792, elements: !551)
!551 = !{!552, !585, !591, !603, !622, !633, !638, !647, !653, !666, !676, !714, !867, !895, !903, !904, !909, !918, !924, !929, !933, !937, !966, !1013, !1019, !1026, !1033, !1059, !1084, !1101, !1113, !1135, !1153, !1325}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !550, file: !228, line: 3372, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !228, line: 360, size: 64, elements: !554)
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !553, file: !228, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !553, file: !228, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !553, file: !228, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !553, file: !228, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !553, file: !228, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !553, file: !228, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !553, file: !228, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !553, file: !228, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !553, file: !228, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !553, file: !228, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !553, file: !228, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !553, file: !228, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !553, file: !228, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !553, file: !228, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !553, file: !228, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !553, file: !228, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !553, file: !228, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !553, file: !228, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !553, file: !228, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !553, file: !228, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !553, file: !228, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !553, file: !228, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !553, file: !228, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !553, file: !228, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !553, file: !228, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !553, file: !228, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !553, file: !228, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !553, file: !228, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !553, file: !228, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !553, file: !228, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !550, file: !228, line: 3373, baseType: !586, size: 192)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !228, line: 402, size: 192, elements: !587)
!587 = !{!588, !589, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !586, file: !228, line: 403, baseType: !553, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !586, file: !228, line: 404, baseType: !547, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !228, line: 405, baseType: !547, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !550, file: !228, line: 3374, baseType: !592, size: 320)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !228, line: 1384, size: 320, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !592, file: !228, line: 1385, baseType: !586, size: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !592, file: !228, line: 1386, baseType: !596, size: 128, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !597, line: 58, baseType: !598)
!597 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !597, line: 54, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !598, file: !597, line: 56, baseType: !530, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !598, file: !597, line: 57, baseType: !602, size: 64, offset: 64)
!602 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !550, file: !228, line: 3375, baseType: !604, size: 256)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !228, line: 1397, size: 256, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !604, file: !228, line: 1398, baseType: !586, size: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !604, file: !228, line: 1399, baseType: !608, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !610, line: 52, size: 256, elements: !611)
!610 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!611 = !{!612, !613, !614, !615, !616, !617, !618}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !609, file: !610, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !609, file: !610, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !609, file: !610, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !609, file: !610, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !609, file: !610, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !609, file: !610, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !609, file: !610, line: 62, baseType: !619, size: 192, offset: 64)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 192, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 3)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !550, file: !228, line: 3376, baseType: !623, size: 256)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !228, line: 1408, size: 256, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !623, file: !228, line: 1409, baseType: !586, size: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !623, file: !228, line: 1410, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !629, line: 27, size: 192, elements: !630)
!629 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !628, file: !629, line: 29, baseType: !596, size: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !628, file: !629, line: 30, baseType: !99, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !550, file: !228, line: 3377, baseType: !634, size: 256)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !228, line: 1437, size: 256, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !634, file: !228, line: 1438, baseType: !586, size: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !634, file: !228, line: 1439, baseType: !547, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !550, file: !228, line: 3378, baseType: !639, size: 256)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !228, line: 1418, size: 256, elements: !640)
!640 = !{!641, !642, !643}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !639, file: !228, line: 1419, baseType: !586, size: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !639, file: !228, line: 1420, baseType: !516, size: 32, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !639, file: !228, line: 1421, baseType: !644, size: 8, offset: 224)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 8, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 1)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !550, file: !228, line: 3379, baseType: !648, size: 320)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !228, line: 1428, size: 320, elements: !649)
!649 = !{!650, !651, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !648, file: !228, line: 1429, baseType: !586, size: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !648, file: !228, line: 1430, baseType: !547, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !648, file: !228, line: 1431, baseType: !547, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !550, file: !228, line: 3380, baseType: !654, size: 320)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !228, line: 1460, size: 320, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !654, file: !228, line: 1461, baseType: !586, size: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !654, file: !228, line: 1462, baseType: !658, size: 128, offset: 192)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !659, line: 31, size: 128, elements: !660)
!659 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!660 = !{!661, !664, !665}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !658, file: !659, line: 32, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !658, file: !659, line: 33, baseType: !7, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !658, file: !659, line: 34, baseType: !7, size: 32, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !550, file: !228, line: 3381, baseType: !667, size: 384)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !228, line: 2507, size: 384, elements: !668)
!668 = !{!669, !670, !673, !674, !675}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !667, file: !228, line: 2508, baseType: !586, size: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !667, file: !228, line: 2509, baseType: !671, size: 32, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !672, line: 58, baseType: !545)
!672 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!673 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !667, file: !228, line: 2510, baseType: !7, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !667, file: !228, line: 2511, baseType: !547, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !667, file: !228, line: 2512, baseType: !547, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !550, file: !228, line: 3382, baseType: !677, size: 896)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !228, line: 2652, size: 896, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !677, file: !228, line: 2653, baseType: !667, size: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !677, file: !228, line: 2654, baseType: !547, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !677, file: !228, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !677, file: !228, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !677, file: !228, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !677, file: !228, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !677, file: !228, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !677, file: !228, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !677, file: !228, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !677, file: !228, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !677, file: !228, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !677, file: !228, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !677, file: !228, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !677, file: !228, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !677, file: !228, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !677, file: !228, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !677, file: !228, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !677, file: !228, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !677, file: !228, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !677, file: !228, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !677, file: !228, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !677, file: !228, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !677, file: !228, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !677, file: !228, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !677, file: !228, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !677, file: !228, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !677, file: !228, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !677, file: !228, line: 2703, baseType: !7, size: 32, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !677, file: !228, line: 2705, baseType: !547, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !677, file: !228, line: 2706, baseType: !547, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !677, file: !228, line: 2707, baseType: !547, size: 64, offset: 704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !677, file: !228, line: 2708, baseType: !547, size: 64, offset: 768)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !677, file: !228, line: 2711, baseType: !712, size: 64, offset: 832)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !228, line: 2711, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !550, file: !228, line: 3383, baseType: !715, size: 960)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !228, line: 2756, size: 960, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !715, file: !228, line: 2757, baseType: !677, size: 896)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !715, file: !228, line: 2758, baseType: !719, size: 64, offset: 896)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !548, line: 50, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !722, line: 240, size: 384, elements: !723)
!722 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !721, file: !722, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !721, file: !722, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !721, file: !722, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !721, file: !722, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !721, file: !722, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !721, file: !722, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !721, file: !722, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !721, file: !722, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !721, file: !722, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !721, file: !722, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !721, file: !722, line: 321, baseType: !735, size: 320, offset: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !722, line: 315, size: 320, elements: !736)
!736 = !{!737, !800, !802, !865, !866}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !735, file: !722, line: 316, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 64, elements: !645)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !722, line: 183, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !722, line: 166, size: 64, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !754, !755, !767, !770, !773, !774, !777, !790, !797}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !740, file: !722, line: 168, baseType: !516, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !740, file: !722, line: 169, baseType: !7, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !740, file: !722, line: 170, baseType: !521, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !740, file: !722, line: 171, baseType: !719, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !740, file: !722, line: 172, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !548, line: 53, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !722, line: 359, size: 128, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !749, file: !722, line: 360, baseType: !516, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !749, file: !722, line: 361, baseType: !753, size: 64, offset: 64)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 64, elements: !645)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !740, file: !722, line: 173, baseType: !99, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !740, file: !722, line: 174, baseType: !756, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !722, line: 133, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 115, size: 32, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !757, file: !722, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !757, file: !722, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !757, file: !722, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !757, file: !722, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !757, file: !722, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !757, file: !722, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !757, file: !722, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !757, file: !722, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !740, file: !722, line: 175, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !722, line: 175, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !740, file: !722, line: 176, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !548, line: 46, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !740, file: !722, line: 177, baseType: !547, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !740, file: !722, line: 178, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !548, line: 110, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !740, file: !722, line: 179, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !722, line: 150, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !722, line: 142, size: 320, elements: !781)
!781 = !{!782, !783, !784, !785, !788, !789}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !780, file: !722, line: 144, baseType: !547, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !780, file: !722, line: 145, baseType: !719, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !780, file: !722, line: 146, baseType: !719, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !780, file: !722, line: 147, baseType: !786, size: 32, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !787, line: 31, baseType: !516)
!787 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !780, file: !722, line: 148, baseType: !7, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !780, file: !722, line: 149, baseType: !515, size: 8, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !740, file: !722, line: 180, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !722, line: 162, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !722, line: 159, size: 128, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !793, file: !722, line: 160, baseType: !547, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !793, file: !722, line: 161, baseType: !602, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !740, file: !722, line: 181, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !722, line: 181, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !735, file: !722, line: 317, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 64, elements: !645)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !735, file: !722, line: 318, baseType: !803, size: 320)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !722, line: 188, size: 320, elements: !804)
!804 = !{!805, !807, !864}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !803, file: !722, line: 190, baseType: !806, size: 192)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 192, elements: !620)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !803, file: !722, line: 193, baseType: !808, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !722, line: 206, size: 320, elements: !810)
!810 = !{!811, !849, !850, !851, !863}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !809, file: !722, line: 208, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !548, line: 62, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !815, line: 538, size: 256, elements: !816)
!815 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!816 = !{!817, !821, !827, !840}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !814, file: !815, line: 539, baseType: !818, size: 32)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !815, line: 482, size: 32, elements: !819)
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !818, file: !815, line: 484, baseType: !7, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !814, file: !815, line: 540, baseType: !822, size: 192)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !815, line: 488, size: 192, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !822, file: !815, line: 489, baseType: !818, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !822, file: !815, line: 492, baseType: !521, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !822, file: !815, line: 496, baseType: !547, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !814, file: !815, line: 541, baseType: !828, size: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !815, line: 504, size: 256, elements: !829)
!829 = !{!830, !831, !838, !839}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !828, file: !815, line: 505, baseType: !818, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !828, file: !815, line: 509, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !815, line: 501, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !828, file: !815, line: 510, baseType: !836, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !828, file: !815, line: 513, baseType: !812, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !814, file: !815, line: 542, baseType: !841, size: 128)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !815, line: 530, size: 128, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !841, file: !815, line: 531, baseType: !818, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !841, file: !815, line: 534, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !815, line: 525, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!515, !547, !521, !530, !530}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !809, file: !722, line: 211, baseType: !7, size: 32, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !809, file: !722, line: 214, baseType: !602, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !809, file: !722, line: 224, baseType: !852, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !722, line: 202, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !722, line: 202, size: 128, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !854, file: !722, line: 202, baseType: !857, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !722, line: 200, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !722, line: 200, size: 128, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !858, file: !722, line: 200, baseType: !7, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !858, file: !722, line: 200, baseType: !7, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !858, file: !722, line: 200, baseType: !753, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !809, file: !722, line: 234, baseType: !852, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !803, file: !722, line: 197, baseType: !602, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !735, file: !722, line: 319, baseType: !609, size: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !735, file: !722, line: 320, baseType: !628, size: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !550, file: !228, line: 3384, baseType: !868, size: 1472)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !228, line: 3114, size: 1472, elements: !869)
!869 = !{!870, !891, !892, !893, !894}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !868, file: !228, line: 3115, baseType: !871, size: 1216)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !228, line: 2984, size: 1216, elements: !872)
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !871, file: !228, line: 2985, baseType: !715, size: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !871, file: !228, line: 2986, baseType: !547, size: 64, offset: 960)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !871, file: !228, line: 2987, baseType: !547, size: 64, offset: 1024)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !871, file: !228, line: 2988, baseType: !547, size: 64, offset: 1088)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !871, file: !228, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !871, file: !228, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !871, file: !228, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !871, file: !228, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !871, file: !228, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !871, file: !228, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !871, file: !228, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !871, file: !228, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !871, file: !228, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !871, file: !228, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !871, file: !228, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !871, file: !228, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !871, file: !228, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !871, file: !228, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !868, file: !228, line: 3117, baseType: !547, size: 64, offset: 1216)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !868, file: !228, line: 3119, baseType: !547, size: 64, offset: 1280)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !868, file: !228, line: 3121, baseType: !547, size: 64, offset: 1344)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !868, file: !228, line: 3123, baseType: !547, size: 64, offset: 1408)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !550, file: !228, line: 3385, baseType: !896, size: 1088)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !228, line: 2874, size: 1088, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !896, file: !228, line: 2875, baseType: !715, size: 960)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !896, file: !228, line: 2876, baseType: !719, size: 64, offset: 960)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !896, file: !228, line: 2877, baseType: !901, size: 64, offset: 1024)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !228, line: 2856, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !550, file: !228, line: 3386, baseType: !871, size: 1216)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !550, file: !228, line: 3387, baseType: !905, size: 1280)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !228, line: 3093, size: 1280, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !905, file: !228, line: 3094, baseType: !871, size: 1216)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !905, file: !228, line: 3095, baseType: !901, size: 64, offset: 1216)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !550, file: !228, line: 3388, baseType: !910, size: 1216)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !228, line: 2824, size: 1216, elements: !911)
!911 = !{!912, !913, !914, !915, !916, !917}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !910, file: !228, line: 2825, baseType: !677, size: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !910, file: !228, line: 2827, baseType: !547, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !910, file: !228, line: 2828, baseType: !547, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !910, file: !228, line: 2829, baseType: !547, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !910, file: !228, line: 2830, baseType: !547, size: 64, offset: 1088)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !910, file: !228, line: 2831, baseType: !547, size: 64, offset: 1152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !550, file: !228, line: 3389, baseType: !919, size: 1024)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !228, line: 2850, size: 1024, elements: !920)
!920 = !{!921, !922, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !919, file: !228, line: 2851, baseType: !715, size: 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !919, file: !228, line: 2852, baseType: !516, size: 32, offset: 960)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !919, file: !228, line: 2853, baseType: !516, size: 32, offset: 992)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !550, file: !228, line: 3390, baseType: !925, size: 1024)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !228, line: 2857, size: 1024, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !925, file: !228, line: 2858, baseType: !715, size: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !925, file: !228, line: 2859, baseType: !901, size: 64, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !550, file: !228, line: 3391, baseType: !930, size: 960)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !228, line: 2862, size: 960, elements: !931)
!931 = !{!932}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !930, file: !228, line: 2863, baseType: !715, size: 960)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !550, file: !228, line: 3392, baseType: !934, size: 1472)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !228, line: 3304, size: 1472, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !934, file: !228, line: 3305, baseType: !868, size: 1472)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !550, file: !228, line: 3393, baseType: !938, size: 1792)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !228, line: 3248, size: 1792, elements: !939)
!939 = !{!940, !941, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !938, file: !228, line: 3249, baseType: !868, size: 1472)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !938, file: !228, line: 3251, baseType: !942, size: 64, offset: 1472)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !944, line: 41, flags: DIFlagFwdDecl)
!944 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!945 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !938, file: !228, line: 3254, baseType: !547, size: 64, offset: 1536)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !938, file: !228, line: 3257, baseType: !547, size: 64, offset: 1600)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !938, file: !228, line: 3258, baseType: !547, size: 64, offset: 1664)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !938, file: !228, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !938, file: !228, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !938, file: !228, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !938, file: !228, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !938, file: !228, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !938, file: !228, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !938, file: !228, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !938, file: !228, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !938, file: !228, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !938, file: !228, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !938, file: !228, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !938, file: !228, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !938, file: !228, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !938, file: !228, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !938, file: !228, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !938, file: !228, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !938, file: !228, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !938, file: !228, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !550, file: !228, line: 3394, baseType: !967, size: 1344)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !228, line: 2279, size: 1344, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !967, file: !228, line: 2280, baseType: !586, size: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !967, file: !228, line: 2281, baseType: !547, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !967, file: !228, line: 2282, baseType: !547, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !967, file: !228, line: 2283, baseType: !547, size: 64, offset: 320)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !967, file: !228, line: 2284, baseType: !547, size: 64, offset: 384)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !967, file: !228, line: 2285, baseType: !7, size: 32, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !967, file: !228, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !967, file: !228, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !967, file: !228, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !967, file: !228, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !967, file: !228, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !967, file: !228, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !967, file: !228, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !967, file: !228, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !967, file: !228, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !967, file: !228, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !967, file: !228, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !967, file: !228, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !967, file: !228, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !967, file: !228, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !967, file: !228, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !967, file: !228, line: 2305, baseType: !7, size: 32, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !967, file: !228, line: 2306, baseType: !786, size: 32, offset: 544)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !967, file: !228, line: 2307, baseType: !547, size: 64, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !967, file: !228, line: 2308, baseType: !547, size: 64, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !967, file: !228, line: 2314, baseType: !995, size: 64, offset: 704)
!995 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !228, line: 2309, size: 64, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !995, file: !228, line: 2310, baseType: !516, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !995, file: !228, line: 2311, baseType: !521, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !995, file: !228, line: 2312, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !228, line: 2277, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !967, file: !228, line: 2315, baseType: !547, size: 64, offset: 768)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !967, file: !228, line: 2316, baseType: !547, size: 64, offset: 832)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !967, file: !228, line: 2317, baseType: !547, size: 64, offset: 896)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !967, file: !228, line: 2318, baseType: !547, size: 64, offset: 960)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !967, file: !228, line: 2319, baseType: !547, size: 64, offset: 1024)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !967, file: !228, line: 2320, baseType: !547, size: 64, offset: 1088)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !967, file: !228, line: 2321, baseType: !547, size: 64, offset: 1152)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !967, file: !228, line: 2322, baseType: !547, size: 64, offset: 1216)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !967, file: !228, line: 2324, baseType: !1011, size: 64, offset: 1280)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !228, line: 2324, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !550, file: !228, line: 3395, baseType: !1014, size: 320)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !228, line: 1469, size: 320, elements: !1015)
!1015 = !{!1016, !1017, !1018}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1014, file: !228, line: 1470, baseType: !586, size: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1014, file: !228, line: 1471, baseType: !547, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1014, file: !228, line: 1472, baseType: !547, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !550, file: !228, line: 3396, baseType: !1020, size: 320)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !228, line: 1482, size: 320, elements: !1021)
!1021 = !{!1022, !1023, !1024}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1020, file: !228, line: 1483, baseType: !586, size: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1020, file: !228, line: 1484, baseType: !516, size: 32, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1020, file: !228, line: 1485, baseType: !1025, size: 64, offset: 256)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 64, elements: !645)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !550, file: !228, line: 3397, baseType: !1027, size: 384)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !228, line: 1829, size: 384, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1027, file: !228, line: 1830, baseType: !586, size: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1027, file: !228, line: 1831, baseType: !671, size: 32, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1027, file: !228, line: 1832, baseType: !547, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1027, file: !228, line: 1835, baseType: !1025, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !550, file: !228, line: 3398, baseType: !1034, size: 704)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !228, line: 1898, size: 704, elements: !1035)
!1035 = !{!1036, !1037, !1038, !1042, !1043, !1046}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1034, file: !228, line: 1899, baseType: !586, size: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1034, file: !228, line: 1902, baseType: !547, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1034, file: !228, line: 1905, baseType: !1039, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !548, line: 58, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !548, line: 57, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1034, file: !228, line: 1908, baseType: !7, size: 32, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1034, file: !228, line: 1911, baseType: !1044, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !228, line: 1876, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1034, file: !228, line: 1914, baseType: !1047, size: 256, offset: 448)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !228, line: 1883, size: 256, elements: !1048)
!1048 = !{!1049, !1051, !1052, !1057}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1047, file: !228, line: 1884, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1047, file: !228, line: 1885, baseType: !1050, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1047, file: !228, line: 1891, baseType: !1053, size: 64, offset: 128)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !228, line: 1891, size: 64, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1053, file: !228, line: 1891, baseType: !1039, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1053, file: !228, line: 1891, baseType: !547, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1047, file: !228, line: 1892, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !550, file: !228, line: 3399, baseType: !1060, size: 704)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !228, line: 2008, size: 704, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1079, !1080, !1081, !1082, !1083}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1060, file: !228, line: 2009, baseType: !586, size: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1060, file: !228, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1060, file: !228, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1060, file: !228, line: 2014, baseType: !671, size: 32, offset: 224)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1060, file: !228, line: 2016, baseType: !547, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1060, file: !228, line: 2017, baseType: !1068, size: 64, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !228, line: 183, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !228, line: 183, size: 128, elements: !1071)
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1070, file: !228, line: 183, baseType: !1073, size: 128)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !228, line: 182, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !228, line: 182, size: 128, elements: !1075)
!1075 = !{!1076, !1077, !1078}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1074, file: !228, line: 182, baseType: !7, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1074, file: !228, line: 182, baseType: !7, size: 32, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1074, file: !228, line: 182, baseType: !1025, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1060, file: !228, line: 2019, baseType: !547, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1060, file: !228, line: 2020, baseType: !547, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1060, file: !228, line: 2021, baseType: !547, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1060, file: !228, line: 2022, baseType: !547, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1060, file: !228, line: 2023, baseType: !547, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !550, file: !228, line: 3400, baseType: !1085, size: 832)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !228, line: 2430, size: 832, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1085, file: !228, line: 2431, baseType: !586, size: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1085, file: !228, line: 2433, baseType: !547, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1085, file: !228, line: 2434, baseType: !547, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1085, file: !228, line: 2435, baseType: !547, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1085, file: !228, line: 2436, baseType: !547, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1085, file: !228, line: 2437, baseType: !1068, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1085, file: !228, line: 2438, baseType: !547, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1085, file: !228, line: 2440, baseType: !547, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1085, file: !228, line: 2441, baseType: !547, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1085, file: !228, line: 2443, baseType: !1097, size: 128, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !228, line: 182, baseType: !1098)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !228, line: 182, size: 128, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1098, file: !228, line: 182, baseType: !1073, size: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !550, file: !228, line: 3401, baseType: !1102, size: 320)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !228, line: 3327, size: 320, elements: !1103)
!1103 = !{!1104, !1105, !1112}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1102, file: !228, line: 3329, baseType: !586, size: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1102, file: !228, line: 3330, baseType: !1106, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !228, line: 3320, size: 192, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1107, file: !228, line: 3322, baseType: !1106, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1107, file: !228, line: 3323, baseType: !1106, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1107, file: !228, line: 3324, baseType: !547, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1102, file: !228, line: 3331, baseType: !1106, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !550, file: !228, line: 3402, baseType: !1114, size: 256)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !228, line: 1540, size: 256, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1114, file: !228, line: 1541, baseType: !586, size: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1114, file: !228, line: 1542, baseType: !1118, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !228, line: 1538, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !228, line: 1538, size: 192, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1120, file: !228, line: 1538, baseType: !1123, size: 192)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !228, line: 1537, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !228, line: 1537, size: 192, elements: !1125)
!1125 = !{!1126, !1127, !1128}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1124, file: !228, line: 1537, baseType: !7, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1124, file: !228, line: 1537, baseType: !7, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1124, file: !228, line: 1537, baseType: !1129, size: 128, offset: 64)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 128, elements: !645)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !228, line: 1535, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !228, line: 1532, size: 128, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1131, file: !228, line: 1533, baseType: !547, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1131, file: !228, line: 1534, baseType: !547, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !550, file: !228, line: 3403, baseType: !1136, size: 512)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !228, line: 1938, size: 512, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1147, !1151, !1152}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1136, file: !228, line: 1939, baseType: !586, size: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1136, file: !228, line: 1940, baseType: !671, size: 32, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1136, file: !228, line: 1941, baseType: !227, size: 32, offset: 224)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1136, file: !228, line: 1946, baseType: !1142, size: 32, offset: 256)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !228, line: 1942, size: 32, elements: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1142, file: !228, line: 1943, baseType: !246, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1142, file: !228, line: 1944, baseType: !253, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1142, file: !228, line: 1945, baseType: !260, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1136, file: !228, line: 1950, baseType: !1148, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !548, line: 66, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !548, line: 65, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1136, file: !228, line: 1951, baseType: !1148, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1136, file: !228, line: 1953, baseType: !1025, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !550, file: !228, line: 3404, baseType: !1154, size: 1664)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !228, line: 3337, size: 1664, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1154, file: !228, line: 3338, baseType: !586, size: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1154, file: !228, line: 3341, baseType: !1158, size: 1472, offset: 192)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1159, line: 410, size: 1472, elements: !1160)
!1159 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1158, file: !1159, line: 412, baseType: !516, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1158, file: !1159, line: 413, baseType: !516, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1158, file: !1159, line: 414, baseType: !516, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1158, file: !1159, line: 415, baseType: !516, size: 32, offset: 96)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1158, file: !1159, line: 416, baseType: !516, size: 32, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1158, file: !1159, line: 417, baseType: !516, size: 32, offset: 160)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1158, file: !1159, line: 418, baseType: !515, size: 8, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1158, file: !1159, line: 419, baseType: !515, size: 8, offset: 200)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1158, file: !1159, line: 420, baseType: !1170, size: 8, offset: 208)
!1170 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1158, file: !1159, line: 421, baseType: !1170, size: 8, offset: 216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1158, file: !1159, line: 422, baseType: !1170, size: 8, offset: 224)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1158, file: !1159, line: 423, baseType: !1170, size: 8, offset: 232)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1158, file: !1159, line: 424, baseType: !1170, size: 8, offset: 240)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1158, file: !1159, line: 425, baseType: !1170, size: 8, offset: 248)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1158, file: !1159, line: 426, baseType: !1170, size: 8, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1158, file: !1159, line: 427, baseType: !1170, size: 8, offset: 264)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1158, file: !1159, line: 428, baseType: !1170, size: 8, offset: 272)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1158, file: !1159, line: 429, baseType: !1170, size: 8, offset: 280)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1158, file: !1159, line: 430, baseType: !1170, size: 8, offset: 288)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1158, file: !1159, line: 431, baseType: !1170, size: 8, offset: 296)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1158, file: !1159, line: 432, baseType: !1170, size: 8, offset: 304)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1158, file: !1159, line: 433, baseType: !1170, size: 8, offset: 312)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1158, file: !1159, line: 434, baseType: !1170, size: 8, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1158, file: !1159, line: 435, baseType: !1170, size: 8, offset: 328)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1158, file: !1159, line: 436, baseType: !1170, size: 8, offset: 336)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1158, file: !1159, line: 437, baseType: !1170, size: 8, offset: 344)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1158, file: !1159, line: 438, baseType: !1170, size: 8, offset: 352)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1158, file: !1159, line: 439, baseType: !1170, size: 8, offset: 360)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1158, file: !1159, line: 440, baseType: !1170, size: 8, offset: 368)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1158, file: !1159, line: 441, baseType: !1170, size: 8, offset: 376)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1158, file: !1159, line: 442, baseType: !1170, size: 8, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1158, file: !1159, line: 443, baseType: !1170, size: 8, offset: 392)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1158, file: !1159, line: 444, baseType: !1170, size: 8, offset: 400)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1158, file: !1159, line: 445, baseType: !1170, size: 8, offset: 408)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1158, file: !1159, line: 446, baseType: !1170, size: 8, offset: 416)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1158, file: !1159, line: 447, baseType: !1170, size: 8, offset: 424)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1158, file: !1159, line: 448, baseType: !1170, size: 8, offset: 432)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1158, file: !1159, line: 449, baseType: !1170, size: 8, offset: 440)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1158, file: !1159, line: 450, baseType: !1170, size: 8, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1158, file: !1159, line: 451, baseType: !1170, size: 8, offset: 456)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1158, file: !1159, line: 452, baseType: !1170, size: 8, offset: 464)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1158, file: !1159, line: 453, baseType: !1170, size: 8, offset: 472)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1158, file: !1159, line: 454, baseType: !1170, size: 8, offset: 480)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1158, file: !1159, line: 455, baseType: !1170, size: 8, offset: 488)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1158, file: !1159, line: 456, baseType: !1170, size: 8, offset: 496)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1158, file: !1159, line: 457, baseType: !1170, size: 8, offset: 504)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1158, file: !1159, line: 458, baseType: !1170, size: 8, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1158, file: !1159, line: 459, baseType: !1170, size: 8, offset: 520)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1158, file: !1159, line: 460, baseType: !1170, size: 8, offset: 528)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1158, file: !1159, line: 461, baseType: !1170, size: 8, offset: 536)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1158, file: !1159, line: 462, baseType: !1170, size: 8, offset: 544)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1158, file: !1159, line: 463, baseType: !1170, size: 8, offset: 552)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1158, file: !1159, line: 464, baseType: !1170, size: 8, offset: 560)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1158, file: !1159, line: 465, baseType: !1170, size: 8, offset: 568)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1158, file: !1159, line: 466, baseType: !1170, size: 8, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1158, file: !1159, line: 467, baseType: !1170, size: 8, offset: 584)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1158, file: !1159, line: 468, baseType: !1170, size: 8, offset: 592)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1158, file: !1159, line: 469, baseType: !1170, size: 8, offset: 600)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1158, file: !1159, line: 470, baseType: !1170, size: 8, offset: 608)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1158, file: !1159, line: 471, baseType: !1170, size: 8, offset: 616)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1158, file: !1159, line: 472, baseType: !1170, size: 8, offset: 624)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1158, file: !1159, line: 473, baseType: !1170, size: 8, offset: 632)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1158, file: !1159, line: 474, baseType: !1170, size: 8, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1158, file: !1159, line: 475, baseType: !1170, size: 8, offset: 648)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1158, file: !1159, line: 476, baseType: !1170, size: 8, offset: 656)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1158, file: !1159, line: 477, baseType: !1170, size: 8, offset: 664)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1158, file: !1159, line: 478, baseType: !1170, size: 8, offset: 672)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1158, file: !1159, line: 479, baseType: !1170, size: 8, offset: 680)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1158, file: !1159, line: 480, baseType: !1170, size: 8, offset: 688)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1158, file: !1159, line: 481, baseType: !1170, size: 8, offset: 696)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1158, file: !1159, line: 482, baseType: !1170, size: 8, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1158, file: !1159, line: 483, baseType: !1170, size: 8, offset: 712)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1158, file: !1159, line: 484, baseType: !1170, size: 8, offset: 720)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1158, file: !1159, line: 485, baseType: !1170, size: 8, offset: 728)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1158, file: !1159, line: 486, baseType: !1170, size: 8, offset: 736)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1158, file: !1159, line: 487, baseType: !1170, size: 8, offset: 744)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1158, file: !1159, line: 488, baseType: !1170, size: 8, offset: 752)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1158, file: !1159, line: 489, baseType: !1170, size: 8, offset: 760)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1158, file: !1159, line: 490, baseType: !1170, size: 8, offset: 768)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1158, file: !1159, line: 491, baseType: !1170, size: 8, offset: 776)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1158, file: !1159, line: 492, baseType: !1170, size: 8, offset: 784)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1158, file: !1159, line: 493, baseType: !1170, size: 8, offset: 792)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1158, file: !1159, line: 494, baseType: !1170, size: 8, offset: 800)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1158, file: !1159, line: 495, baseType: !1170, size: 8, offset: 808)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1158, file: !1159, line: 496, baseType: !1170, size: 8, offset: 816)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1158, file: !1159, line: 497, baseType: !1170, size: 8, offset: 824)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1158, file: !1159, line: 498, baseType: !1170, size: 8, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1158, file: !1159, line: 499, baseType: !1170, size: 8, offset: 840)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1158, file: !1159, line: 500, baseType: !1170, size: 8, offset: 848)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1158, file: !1159, line: 501, baseType: !1170, size: 8, offset: 856)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1158, file: !1159, line: 502, baseType: !1170, size: 8, offset: 864)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1158, file: !1159, line: 503, baseType: !1170, size: 8, offset: 872)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1158, file: !1159, line: 504, baseType: !1170, size: 8, offset: 880)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1158, file: !1159, line: 505, baseType: !1170, size: 8, offset: 888)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1158, file: !1159, line: 506, baseType: !1170, size: 8, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1158, file: !1159, line: 507, baseType: !1170, size: 8, offset: 904)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1158, file: !1159, line: 508, baseType: !1170, size: 8, offset: 912)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1158, file: !1159, line: 509, baseType: !1170, size: 8, offset: 920)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1158, file: !1159, line: 510, baseType: !1170, size: 8, offset: 928)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1158, file: !1159, line: 511, baseType: !1170, size: 8, offset: 936)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1158, file: !1159, line: 512, baseType: !1170, size: 8, offset: 944)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1158, file: !1159, line: 513, baseType: !1170, size: 8, offset: 952)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1158, file: !1159, line: 514, baseType: !1170, size: 8, offset: 960)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1158, file: !1159, line: 515, baseType: !1170, size: 8, offset: 968)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1158, file: !1159, line: 516, baseType: !1170, size: 8, offset: 976)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1158, file: !1159, line: 517, baseType: !1170, size: 8, offset: 984)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1158, file: !1159, line: 518, baseType: !1170, size: 8, offset: 992)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1158, file: !1159, line: 519, baseType: !1170, size: 8, offset: 1000)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1158, file: !1159, line: 520, baseType: !1170, size: 8, offset: 1008)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1158, file: !1159, line: 521, baseType: !1170, size: 8, offset: 1016)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1158, file: !1159, line: 522, baseType: !1170, size: 8, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1158, file: !1159, line: 523, baseType: !1170, size: 8, offset: 1032)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1158, file: !1159, line: 524, baseType: !1170, size: 8, offset: 1040)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1158, file: !1159, line: 525, baseType: !1170, size: 8, offset: 1048)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1158, file: !1159, line: 526, baseType: !1170, size: 8, offset: 1056)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1158, file: !1159, line: 527, baseType: !1170, size: 8, offset: 1064)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1158, file: !1159, line: 528, baseType: !1170, size: 8, offset: 1072)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1158, file: !1159, line: 529, baseType: !1170, size: 8, offset: 1080)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1158, file: !1159, line: 530, baseType: !1170, size: 8, offset: 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1158, file: !1159, line: 531, baseType: !1170, size: 8, offset: 1096)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1158, file: !1159, line: 532, baseType: !1170, size: 8, offset: 1104)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1158, file: !1159, line: 533, baseType: !1170, size: 8, offset: 1112)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1158, file: !1159, line: 534, baseType: !1170, size: 8, offset: 1120)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1158, file: !1159, line: 535, baseType: !1170, size: 8, offset: 1128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1158, file: !1159, line: 536, baseType: !1170, size: 8, offset: 1136)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1158, file: !1159, line: 537, baseType: !1170, size: 8, offset: 1144)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1158, file: !1159, line: 538, baseType: !1170, size: 8, offset: 1152)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1158, file: !1159, line: 539, baseType: !1170, size: 8, offset: 1160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1158, file: !1159, line: 540, baseType: !1170, size: 8, offset: 1168)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1158, file: !1159, line: 541, baseType: !1170, size: 8, offset: 1176)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1158, file: !1159, line: 542, baseType: !1170, size: 8, offset: 1184)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1158, file: !1159, line: 543, baseType: !1170, size: 8, offset: 1192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1158, file: !1159, line: 544, baseType: !1170, size: 8, offset: 1200)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1158, file: !1159, line: 545, baseType: !1170, size: 8, offset: 1208)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1158, file: !1159, line: 546, baseType: !1170, size: 8, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1158, file: !1159, line: 547, baseType: !1170, size: 8, offset: 1224)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1158, file: !1159, line: 548, baseType: !1170, size: 8, offset: 1232)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1158, file: !1159, line: 549, baseType: !1170, size: 8, offset: 1240)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1158, file: !1159, line: 550, baseType: !1170, size: 8, offset: 1248)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1158, file: !1159, line: 551, baseType: !1170, size: 8, offset: 1256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1158, file: !1159, line: 552, baseType: !1170, size: 8, offset: 1264)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1158, file: !1159, line: 553, baseType: !1170, size: 8, offset: 1272)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1158, file: !1159, line: 554, baseType: !1170, size: 8, offset: 1280)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1158, file: !1159, line: 555, baseType: !1170, size: 8, offset: 1288)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1158, file: !1159, line: 556, baseType: !1170, size: 8, offset: 1296)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1158, file: !1159, line: 557, baseType: !1170, size: 8, offset: 1304)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1158, file: !1159, line: 558, baseType: !1170, size: 8, offset: 1312)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1158, file: !1159, line: 559, baseType: !1170, size: 8, offset: 1320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1158, file: !1159, line: 560, baseType: !1170, size: 8, offset: 1328)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1158, file: !1159, line: 561, baseType: !1170, size: 8, offset: 1336)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1158, file: !1159, line: 562, baseType: !1170, size: 8, offset: 1344)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1158, file: !1159, line: 563, baseType: !1170, size: 8, offset: 1352)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1158, file: !1159, line: 564, baseType: !1170, size: 8, offset: 1360)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1158, file: !1159, line: 565, baseType: !1170, size: 8, offset: 1368)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1158, file: !1159, line: 566, baseType: !1170, size: 8, offset: 1376)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1158, file: !1159, line: 567, baseType: !1170, size: 8, offset: 1384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1158, file: !1159, line: 568, baseType: !1170, size: 8, offset: 1392)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1158, file: !1159, line: 569, baseType: !1170, size: 8, offset: 1400)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1158, file: !1159, line: 570, baseType: !1170, size: 8, offset: 1408)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1158, file: !1159, line: 571, baseType: !1170, size: 8, offset: 1416)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1158, file: !1159, line: 572, baseType: !1170, size: 8, offset: 1424)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1158, file: !1159, line: 573, baseType: !1170, size: 8, offset: 1432)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1158, file: !1159, line: 574, baseType: !1170, size: 8, offset: 1440)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !550, file: !228, line: 3405, baseType: !1326, size: 384)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !228, line: 3352, size: 384, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1326, file: !228, line: 3353, baseType: !586, size: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1326, file: !228, line: 3356, baseType: !1330, size: 192, offset: 192)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1159, line: 578, size: 192, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1330, file: !1159, line: 580, baseType: !516, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1330, file: !1159, line: 581, baseType: !516, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1330, file: !1159, line: 582, baseType: !516, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1330, file: !1159, line: 583, baseType: !516, size: 32, offset: 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1330, file: !1159, line: 584, baseType: !515, size: 8, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1330, file: !1159, line: 585, baseType: !515, size: 8, offset: 136)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1330, file: !1159, line: 586, baseType: !515, size: 8, offset: 144)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1330, file: !1159, line: 587, baseType: !515, size: 8, offset: 152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1330, file: !1159, line: 588, baseType: !515, size: 8, offset: 160)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1330, file: !1159, line: 589, baseType: !515, size: 8, offset: 168)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1330, file: !1159, line: 590, baseType: !515, size: 8, offset: 176)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "ht_identifier", file: !659, line: 30, baseType: !658)
!1345 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!520, !602}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !520}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !6, line: 35, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !6, line: 162, size: 128, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1354, file: !6, line: 163, baseType: !7, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !1354, file: !6, line: 164, baseType: !662, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !1359, line: 35, baseType: !602)
!1359 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "cppchar_signed_t", file: !6, line: 259, baseType: !516)
!1361 = !{!1362, !0, !1440, !1442, !1475, !1477}
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(name: "no_more_pch", scope: !1364, file: !3, line: 299, type: !515, isLocal: true, isDefinition: true)
!1364 = distinct !DISubprogram(name: "c_lex_with_flags", scope: !3, file: !3, line: 296, type: !1365, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1368)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!19, !1058, !1367, !514, !516}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1420, !1421, !1422, !1425, !1428, !1429, !1434, !1437, !1438, !1439}
!1369 = !DILocalVariable(name: "value", arg: 1, scope: !1364, file: !3, line: 296, type: !1058)
!1370 = !DILocalVariable(name: "loc", arg: 2, scope: !1364, file: !3, line: 296, type: !1367)
!1371 = !DILocalVariable(name: "cpp_flags", arg: 3, scope: !1364, file: !3, line: 296, type: !514)
!1372 = !DILocalVariable(name: "lex_flags", arg: 4, scope: !1364, file: !3, line: 297, type: !516)
!1373 = !DILocalVariable(name: "tok", scope: !1364, file: !3, line: 300, type: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !6, line: 34, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !6, line: 212, size: 192, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !1377, file: !6, line: 213, baseType: !545, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1377, file: !6, line: 214, baseType: !7, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1377, file: !6, line: 215, baseType: !1345, size: 16, offset: 48)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1377, file: !6, line: 237, baseType: !1383, size: 128, offset: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !6, line: 217, size: 128, elements: !1384)
!1384 = !{!1385, !1411, !1413, !1414, !1418, !1419}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1383, file: !6, line: 220, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !6, line: 201, size: 64, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1386, file: !6, line: 207, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !6, line: 36, baseType: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !6, line: 644, size: 256, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1391, file: !6, line: 645, baseType: !658, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !1391, file: !6, line: 646, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !1391, file: !6, line: 647, baseType: !7, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !1391, file: !6, line: 650, baseType: !515, size: 8, offset: 136)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1391, file: !6, line: 651, baseType: !7, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1391, file: !6, line: 652, baseType: !7, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1391, file: !6, line: 654, baseType: !1400, size: 64, offset: 192)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !6, line: 633, size: 64, elements: !1401)
!1401 = !{!1402, !1406, !1409, !1410}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !1400, file: !6, line: 635, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !6, line: 37, baseType: !1405)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !6, line: 37, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !1400, file: !6, line: 637, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !6, line: 41, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !1400, file: !6, line: 639, baseType: !5, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !1400, file: !6, line: 641, baseType: !1345, size: 16)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1383, file: !6, line: 223, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1383, file: !6, line: 226, baseType: !1354, size: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !1383, file: !6, line: 229, baseType: !1415, size: 32)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !6, line: 195, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !1415, file: !6, line: 197, baseType: !7, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !1383, file: !6, line: 233, baseType: !7, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !1383, file: !6, line: 236, baseType: !7, size: 32)
!1420 = !DILocalVariable(name: "type", scope: !1364, file: !3, line: 301, type: !19)
!1421 = !DILocalVariable(name: "add_flags", scope: !1364, file: !3, line: 302, type: !515)
!1422 = !DILocalVariable(name: "flags", scope: !1423, file: !3, line: 321, type: !7)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 320, column: 7)
!1424 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 311, column: 5)
!1425 = !DILocalVariable(name: "atloc", scope: !1426, file: !3, line: 353, type: !671)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 352, column: 2)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 351, column: 11)
!1428 = !DILocalVariable(name: "newloc", scope: !1426, file: !3, line: 354, type: !671)
!1429 = !DILocalVariable(name: "name", scope: !1430, file: !3, line: 394, type: !1431)
!1430 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 393, column: 7)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 64, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 8)
!1434 = !DILocalVariable(name: "c", scope: !1435, file: !3, line: 405, type: !1436)
!1435 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 404, column: 7)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "cppchar_t", file: !6, line: 258, baseType: !7)
!1437 = !DILabel(scope: !1364, name: "retry", file: !3, line: 305)
!1438 = !DILabel(scope: !1364, name: "retry_after_at", file: !3, line: 309)
!1439 = !DILabel(scope: !1426, name: "retry_at", file: !3, line: 356)
!1440 = !DIGlobalVariableExpression(var: !1441, expr: !DIExpression())
!1441 = distinct !DIGlobalVariable(name: "body_time", scope: !2, file: !3, line: 46, type: !516, isLocal: true, isDefinition: true)
!1442 = !DIGlobalVariableExpression(var: !1443, expr: !DIExpression())
!1443 = distinct !DIGlobalVariable(name: "file_info_tree", scope: !2, file: !3, line: 47, type: !1444, isLocal: true, isDefinition: true)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree", file: !524, line: 128, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_s", file: !524, line: 109, size: 448, elements: !1447)
!1447 = !{!1448, !1457, !1458, !1463, !1464, !1469, !1474}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1446, file: !524, line: 111, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_node", file: !524, line: 66, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_node_s", file: !524, line: 96, size: 256, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1451, file: !524, line: 98, baseType: !528, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1451, file: !524, line: 101, baseType: !535, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !1451, file: !524, line: 104, baseType: !1449, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !1451, file: !524, line: 105, baseType: !1449, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !1446, file: !524, line: 114, baseType: !523, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "delete_key", scope: !1446, file: !524, line: 117, baseType: !1459, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_key_fn", file: !524, line: 74, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !528}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "delete_value", scope: !1446, file: !524, line: 120, baseType: !531, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !1446, file: !524, line: 123, baseType: !1465, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_allocate_fn", file: !524, line: 87, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!520, !516, !520}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate", scope: !1446, file: !524, line: 124, baseType: !1470, size: 64, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_deallocate_fn", file: !524, line: 93, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !520, !520}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_data", scope: !1446, file: !524, line: 125, baseType: !520, size: 64, offset: 384)
!1475 = !DIGlobalVariableExpression(var: !1476, expr: !DIExpression())
!1476 = distinct !DIGlobalVariable(name: "pending_lang_change", scope: !2, file: !3, line: 49, type: !516, isLocal: false, isDefinition: true)
!1477 = !DIGlobalVariableExpression(var: !1478, expr: !DIExpression())
!1478 = distinct !DIGlobalVariable(name: "c_header_level", scope: !2, file: !3, line: 50, type: !516, isLocal: false, isDefinition: true)
!1479 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1480 = !{i32 2, !"Dwarf Version", i32 4}
!1481 = !{i32 2, !"Debug Info Version", i32 3}
!1482 = !{i32 1, !"wchar_size", i32 4}
!1483 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1484 = distinct !DISubprogram(name: "vprintf", scope: !1485, file: !1485, line: 39, type: !1486, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1496)
!1485 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!516, !1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !521)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1490, file: !3, baseType: !7, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1490, file: !3, baseType: !7, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1490, file: !3, baseType: !520, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1490, file: !3, baseType: !520, size: 64, offset: 128)
!1496 = !{!1497, !1498}
!1497 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1484, file: !1485, line: 39, type: !1488)
!1498 = !DILocalVariable(name: "__arg", arg: 2, scope: !1484, file: !1485, line: 39, type: !1489)
!1499 = !DILocation(line: 0, scope: !1484)
!1500 = !DILocation(line: 41, column: 20, scope: !1484)
!1501 = !DILocation(line: 41, column: 10, scope: !1484)
!1502 = !DILocation(line: 41, column: 3, scope: !1484)
!1503 = distinct !DISubprogram(name: "getchar", scope: !1485, file: !1485, line: 47, type: !1504, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!516}
!1506 = !{}
!1507 = !DILocation(line: 49, column: 16, scope: !1503)
!1508 = !DILocation(line: 49, column: 10, scope: !1503)
!1509 = !DILocation(line: 49, column: 3, scope: !1503)
!1510 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1485, file: !1485, line: 56, type: !1511, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1564)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!516, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1515, line: 7, baseType: !1516)
!1515 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1517, line: 49, size: 1728, elements: !1518)
!1517 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1534, !1536, !1537, !1538, !1541, !1542, !1543, !1544, !1547, !1549, !1552, !1555, !1556, !1557, !1559, !1560}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1516, file: !1517, line: 51, baseType: !516, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1516, file: !1517, line: 54, baseType: !518, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1516, file: !1517, line: 55, baseType: !518, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1516, file: !1517, line: 56, baseType: !518, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1516, file: !1517, line: 57, baseType: !518, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1516, file: !1517, line: 58, baseType: !518, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1516, file: !1517, line: 59, baseType: !518, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1516, file: !1517, line: 60, baseType: !518, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1516, file: !1517, line: 61, baseType: !518, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1516, file: !1517, line: 64, baseType: !518, size: 64, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1516, file: !1517, line: 65, baseType: !518, size: 64, offset: 640)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1516, file: !1517, line: 66, baseType: !518, size: 64, offset: 704)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1516, file: !1517, line: 68, baseType: !1532, size: 64, offset: 768)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1517, line: 36, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1516, file: !1517, line: 70, baseType: !1535, size: 64, offset: 832)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1516, file: !1517, line: 72, baseType: !516, size: 32, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1516, file: !1517, line: 73, baseType: !516, size: 32, offset: 928)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1516, file: !1517, line: 74, baseType: !1539, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1540, line: 152, baseType: !602)
!1540 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1516, file: !1517, line: 77, baseType: !1345, size: 16, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1516, file: !1517, line: 78, baseType: !1170, size: 8, offset: 1040)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1516, file: !1517, line: 79, baseType: !644, size: 8, offset: 1048)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1516, file: !1517, line: 81, baseType: !1545, size: 64, offset: 1088)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1517, line: 43, baseType: null)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1516, file: !1517, line: 89, baseType: !1548, size: 64, offset: 1152)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1540, line: 153, baseType: !602)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1516, file: !1517, line: 91, baseType: !1550, size: 64, offset: 1216)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1517, line: 37, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1516, file: !1517, line: 92, baseType: !1553, size: 64, offset: 1280)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1517, line: 38, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1516, file: !1517, line: 93, baseType: !1535, size: 64, offset: 1344)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1516, file: !1517, line: 94, baseType: !520, size: 64, offset: 1408)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1516, file: !1517, line: 95, baseType: !1558, size: 64, offset: 1472)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1359, line: 46, baseType: !530)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1516, file: !1517, line: 96, baseType: !516, size: 32, offset: 1536)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1516, file: !1517, line: 98, baseType: !1561, size: 160, offset: 1568)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 160, elements: !1562)
!1562 = !{!1563}
!1563 = !DISubrange(count: 20)
!1564 = !{!1565}
!1565 = !DILocalVariable(name: "__fp", arg: 1, scope: !1510, file: !1485, line: 56, type: !1513)
!1566 = !DILocation(line: 0, scope: !1510)
!1567 = !DILocation(line: 58, column: 10, scope: !1510)
!1568 = !DILocation(line: 58, column: 3, scope: !1510)
!1569 = distinct !DISubprogram(name: "getc_unlocked", scope: !1485, file: !1485, line: 66, type: !1511, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1570)
!1570 = !{!1571}
!1571 = !DILocalVariable(name: "__fp", arg: 1, scope: !1569, file: !1485, line: 66, type: !1513)
!1572 = !DILocation(line: 0, scope: !1569)
!1573 = !DILocation(line: 68, column: 10, scope: !1569)
!1574 = !DILocation(line: 68, column: 3, scope: !1569)
!1575 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1485, file: !1485, line: 73, type: !1504, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1506)
!1576 = !DILocation(line: 75, column: 10, scope: !1575)
!1577 = !DILocation(line: 75, column: 3, scope: !1575)
!1578 = distinct !DISubprogram(name: "putchar", scope: !1485, file: !1485, line: 82, type: !1579, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!516, !516}
!1581 = !{!1582}
!1582 = !DILocalVariable(name: "__c", arg: 1, scope: !1578, file: !1485, line: 82, type: !516)
!1583 = !DILocation(line: 0, scope: !1578)
!1584 = !DILocation(line: 84, column: 21, scope: !1578)
!1585 = !DILocation(line: 84, column: 10, scope: !1578)
!1586 = !DILocation(line: 84, column: 3, scope: !1578)
!1587 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1485, file: !1485, line: 91, type: !1588, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1590)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!516, !516, !1513}
!1590 = !{!1591, !1592}
!1591 = !DILocalVariable(name: "__c", arg: 1, scope: !1587, file: !1485, line: 91, type: !516)
!1592 = !DILocalVariable(name: "__stream", arg: 2, scope: !1587, file: !1485, line: 91, type: !1513)
!1593 = !DILocation(line: 0, scope: !1587)
!1594 = !DILocation(line: 93, column: 10, scope: !1587)
!1595 = !DILocation(line: 93, column: 3, scope: !1587)
!1596 = distinct !DISubprogram(name: "putc_unlocked", scope: !1485, file: !1485, line: 101, type: !1588, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1597)
!1597 = !{!1598, !1599}
!1598 = !DILocalVariable(name: "__c", arg: 1, scope: !1596, file: !1485, line: 101, type: !516)
!1599 = !DILocalVariable(name: "__stream", arg: 2, scope: !1596, file: !1485, line: 101, type: !1513)
!1600 = !DILocation(line: 0, scope: !1596)
!1601 = !DILocation(line: 103, column: 10, scope: !1596)
!1602 = !DILocation(line: 103, column: 3, scope: !1596)
!1603 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1485, file: !1485, line: 108, type: !1579, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1604)
!1604 = !{!1605}
!1605 = !DILocalVariable(name: "__c", arg: 1, scope: !1603, file: !1485, line: 108, type: !516)
!1606 = !DILocation(line: 0, scope: !1603)
!1607 = !DILocation(line: 110, column: 10, scope: !1603)
!1608 = !DILocation(line: 110, column: 3, scope: !1603)
!1609 = distinct !DISubprogram(name: "getline", scope: !1485, file: !1485, line: 118, type: !1610, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1614)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!1612, !517, !1613, !1513}
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1540, line: 193, baseType: !602)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1614 = !{!1615, !1616, !1617}
!1615 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1609, file: !1485, line: 118, type: !517)
!1616 = !DILocalVariable(name: "__n", arg: 2, scope: !1609, file: !1485, line: 118, type: !1613)
!1617 = !DILocalVariable(name: "__stream", arg: 3, scope: !1609, file: !1485, line: 118, type: !1513)
!1618 = !DILocation(line: 0, scope: !1609)
!1619 = !DILocation(line: 120, column: 10, scope: !1609)
!1620 = !DILocation(line: 120, column: 3, scope: !1609)
!1621 = distinct !DISubprogram(name: "feof_unlocked", scope: !1485, file: !1485, line: 128, type: !1511, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1622)
!1622 = !{!1623}
!1623 = !DILocalVariable(name: "__stream", arg: 1, scope: !1621, file: !1485, line: 128, type: !1513)
!1624 = !DILocation(line: 0, scope: !1621)
!1625 = !DILocation(line: 130, column: 10, scope: !1621)
!1626 = !DILocation(line: 130, column: 3, scope: !1621)
!1627 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1485, file: !1485, line: 135, type: !1511, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1628)
!1628 = !{!1629}
!1629 = !DILocalVariable(name: "__stream", arg: 1, scope: !1627, file: !1485, line: 135, type: !1513)
!1630 = !DILocation(line: 0, scope: !1627)
!1631 = !DILocation(line: 137, column: 10, scope: !1627)
!1632 = !DILocation(line: 137, column: 3, scope: !1627)
!1633 = distinct !DISubprogram(name: "tolower", scope: !1634, file: !1634, line: 207, type: !1579, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1635)
!1634 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "__c", arg: 1, scope: !1633, file: !1634, line: 207, type: !516)
!1637 = !DILocation(line: 0, scope: !1633)
!1638 = !DILocation(line: 209, column: 22, scope: !1633)
!1639 = !DILocation(line: 209, column: 39, scope: !1633)
!1640 = !DILocation(line: 209, column: 38, scope: !1633)
!1641 = !DILocation(line: 209, column: 37, scope: !1633)
!1642 = !DILocation(line: 209, column: 10, scope: !1633)
!1643 = !DILocation(line: 209, column: 3, scope: !1633)
!1644 = distinct !DISubprogram(name: "toupper", scope: !1634, file: !1634, line: 213, type: !1579, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1645)
!1645 = !{!1646}
!1646 = !DILocalVariable(name: "__c", arg: 1, scope: !1644, file: !1634, line: 213, type: !516)
!1647 = !DILocation(line: 0, scope: !1644)
!1648 = !DILocation(line: 215, column: 22, scope: !1644)
!1649 = !DILocation(line: 215, column: 39, scope: !1644)
!1650 = !DILocation(line: 215, column: 38, scope: !1644)
!1651 = !DILocation(line: 215, column: 37, scope: !1644)
!1652 = !DILocation(line: 215, column: 10, scope: !1644)
!1653 = !DILocation(line: 215, column: 3, scope: !1644)
!1654 = distinct !DISubprogram(name: "atoi", scope: !1655, file: !1655, line: 361, type: !1656, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1658)
!1655 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!516, !521}
!1658 = !{!1659}
!1659 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1654, file: !1655, line: 361, type: !521)
!1660 = !DILocation(line: 0, scope: !1654)
!1661 = !DILocation(line: 363, column: 16, scope: !1654)
!1662 = !DILocation(line: 363, column: 10, scope: !1654)
!1663 = !DILocation(line: 363, column: 3, scope: !1654)
!1664 = distinct !DISubprogram(name: "atol", scope: !1655, file: !1655, line: 366, type: !1665, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!602, !521}
!1667 = !{!1668}
!1668 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1664, file: !1655, line: 366, type: !521)
!1669 = !DILocation(line: 0, scope: !1664)
!1670 = !DILocation(line: 368, column: 10, scope: !1664)
!1671 = !DILocation(line: 368, column: 3, scope: !1664)
!1672 = distinct !DISubprogram(name: "atoll", scope: !1655, file: !1655, line: 373, type: !1673, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1676)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!1675, !521}
!1675 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1676 = !{!1677}
!1677 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1672, file: !1655, line: 373, type: !521)
!1678 = !DILocation(line: 0, scope: !1672)
!1679 = !DILocation(line: 375, column: 10, scope: !1672)
!1680 = !DILocation(line: 375, column: 3, scope: !1672)
!1681 = distinct !DISubprogram(name: "bsearch", scope: !1682, file: !1682, line: 20, type: !1683, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1689)
!1682 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!520, !836, !836, !1558, !1558, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1655, line: 808, baseType: !1686)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!516, !836, !836}
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699}
!1690 = !DILocalVariable(name: "__key", arg: 1, scope: !1681, file: !1682, line: 20, type: !836)
!1691 = !DILocalVariable(name: "__base", arg: 2, scope: !1681, file: !1682, line: 20, type: !836)
!1692 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1681, file: !1682, line: 20, type: !1558)
!1693 = !DILocalVariable(name: "__size", arg: 4, scope: !1681, file: !1682, line: 20, type: !1558)
!1694 = !DILocalVariable(name: "__compar", arg: 5, scope: !1681, file: !1682, line: 21, type: !1685)
!1695 = !DILocalVariable(name: "__l", scope: !1681, file: !1682, line: 23, type: !1558)
!1696 = !DILocalVariable(name: "__u", scope: !1681, file: !1682, line: 23, type: !1558)
!1697 = !DILocalVariable(name: "__idx", scope: !1681, file: !1682, line: 23, type: !1558)
!1698 = !DILocalVariable(name: "__p", scope: !1681, file: !1682, line: 24, type: !836)
!1699 = !DILocalVariable(name: "__comparison", scope: !1681, file: !1682, line: 25, type: !516)
!1700 = !DILocation(line: 0, scope: !1681)
!1701 = !DILocation(line: 29, column: 3, scope: !1681)
!1702 = !DILocation(line: 27, column: 7, scope: !1681)
!1703 = !DILocation(line: 29, column: 14, scope: !1681)
!1704 = !DILocation(line: 31, column: 20, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1681, file: !1682, line: 30, column: 5)
!1706 = !DILocation(line: 31, column: 27, scope: !1705)
!1707 = !DILocation(line: 32, column: 56, scope: !1705)
!1708 = !DILocation(line: 32, column: 47, scope: !1705)
!1709 = !DILocation(line: 33, column: 22, scope: !1705)
!1710 = !DILocation(line: 34, column: 24, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1705, file: !1682, line: 34, column: 11)
!1712 = !DILocation(line: 34, column: 11, scope: !1705)
!1713 = !DILocation(line: 36, column: 29, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !1682, line: 36, column: 16)
!1715 = !DILocation(line: 36, column: 16, scope: !1711)
!1716 = !DILocation(line: 37, column: 14, scope: !1714)
!1717 = distinct !{!1717, !1701, !1718}
!1718 = !DILocation(line: 40, column: 5, scope: !1681)
!1719 = !DILocation(line: 43, column: 1, scope: !1681)
!1720 = distinct !DISubprogram(name: "atof", scope: !1721, file: !1721, line: 25, type: !1722, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1724)
!1721 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!544, !521}
!1724 = !{!1725}
!1725 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1720, file: !1721, line: 25, type: !521)
!1726 = !DILocation(line: 0, scope: !1720)
!1727 = !DILocation(line: 27, column: 10, scope: !1720)
!1728 = !DILocation(line: 27, column: 3, scope: !1720)
!1729 = distinct !DISubprogram(name: "strtoimax", scope: !1730, file: !1730, line: 324, type: !1731, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1737)
!1730 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1733, !1488, !1736, !516}
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1734, line: 101, baseType: !1735)
!1734 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1540, line: 72, baseType: !602)
!1736 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !517)
!1737 = !{!1738, !1739, !1740}
!1738 = !DILocalVariable(name: "nptr", arg: 1, scope: !1729, file: !1730, line: 324, type: !1488)
!1739 = !DILocalVariable(name: "endptr", arg: 2, scope: !1729, file: !1730, line: 324, type: !1736)
!1740 = !DILocalVariable(name: "base", arg: 3, scope: !1729, file: !1730, line: 324, type: !516)
!1741 = !DILocation(line: 0, scope: !1729)
!1742 = !DILocation(line: 327, column: 10, scope: !1729)
!1743 = !DILocation(line: 327, column: 3, scope: !1729)
!1744 = distinct !DISubprogram(name: "strtoumax", scope: !1730, file: !1730, line: 336, type: !1745, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1749)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1747, !1488, !1736, !516}
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1734, line: 102, baseType: !1748)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1540, line: 73, baseType: !530)
!1749 = !{!1750, !1751, !1752}
!1750 = !DILocalVariable(name: "nptr", arg: 1, scope: !1744, file: !1730, line: 336, type: !1488)
!1751 = !DILocalVariable(name: "endptr", arg: 2, scope: !1744, file: !1730, line: 336, type: !1736)
!1752 = !DILocalVariable(name: "base", arg: 3, scope: !1744, file: !1730, line: 336, type: !516)
!1753 = !DILocation(line: 0, scope: !1744)
!1754 = !DILocation(line: 339, column: 10, scope: !1744)
!1755 = !DILocation(line: 339, column: 3, scope: !1744)
!1756 = distinct !DISubprogram(name: "wcstoimax", scope: !1730, file: !1730, line: 348, type: !1757, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1766)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!1733, !1759, !1763, !516}
!1759 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1730, line: 34, baseType: !516)
!1763 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1764)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1766 = !{!1767, !1768, !1769}
!1767 = !DILocalVariable(name: "nptr", arg: 1, scope: !1756, file: !1730, line: 348, type: !1759)
!1768 = !DILocalVariable(name: "endptr", arg: 2, scope: !1756, file: !1730, line: 348, type: !1763)
!1769 = !DILocalVariable(name: "base", arg: 3, scope: !1756, file: !1730, line: 348, type: !516)
!1770 = !DILocation(line: 0, scope: !1756)
!1771 = !DILocation(line: 351, column: 10, scope: !1756)
!1772 = !DILocation(line: 351, column: 3, scope: !1756)
!1773 = distinct !DISubprogram(name: "wcstoumax", scope: !1730, file: !1730, line: 362, type: !1774, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1747, !1759, !1763, !516}
!1776 = !{!1777, !1778, !1779}
!1777 = !DILocalVariable(name: "nptr", arg: 1, scope: !1773, file: !1730, line: 362, type: !1759)
!1778 = !DILocalVariable(name: "endptr", arg: 2, scope: !1773, file: !1730, line: 362, type: !1763)
!1779 = !DILocalVariable(name: "base", arg: 3, scope: !1773, file: !1730, line: 362, type: !516)
!1780 = !DILocation(line: 0, scope: !1773)
!1781 = !DILocation(line: 365, column: 10, scope: !1773)
!1782 = !DILocation(line: 365, column: 3, scope: !1773)
!1783 = distinct !DISubprogram(name: "stat", scope: !1784, file: !1784, line: 453, type: !1785, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1822)
!1784 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!516, !521, !1787}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1789, line: 46, size: 1152, elements: !1790)
!1789 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1790 = !{!1791, !1793, !1795, !1797, !1799, !1801, !1803, !1804, !1805, !1806, !1808, !1810, !1818, !1819, !1820}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1788, file: !1789, line: 48, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1540, line: 145, baseType: !530)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1788, file: !1789, line: 53, baseType: !1794, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1540, line: 148, baseType: !530)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1788, file: !1789, line: 61, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1540, line: 151, baseType: !530)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1788, file: !1789, line: 62, baseType: !1798, size: 32, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1540, line: 150, baseType: !7)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1788, file: !1789, line: 64, baseType: !1800, size: 32, offset: 224)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1540, line: 146, baseType: !7)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1788, file: !1789, line: 65, baseType: !1802, size: 32, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1540, line: 147, baseType: !7)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1788, file: !1789, line: 67, baseType: !516, size: 32, offset: 288)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1788, file: !1789, line: 69, baseType: !1792, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1788, file: !1789, line: 74, baseType: !1539, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1788, file: !1789, line: 78, baseType: !1807, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1540, line: 174, baseType: !602)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1788, file: !1789, line: 80, baseType: !1809, size: 64, offset: 512)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1540, line: 179, baseType: !602)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1788, file: !1789, line: 91, baseType: !1811, size: 128, offset: 576)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1812, line: 10, size: 128, elements: !1813)
!1812 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1813 = !{!1814, !1816}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1811, file: !1812, line: 12, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1540, line: 160, baseType: !602)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1811, file: !1812, line: 16, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1540, line: 196, baseType: !602)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1788, file: !1789, line: 92, baseType: !1811, size: 128, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1788, file: !1789, line: 93, baseType: !1811, size: 128, offset: 832)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1788, file: !1789, line: 106, baseType: !1821, size: 192, offset: 960)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1817, size: 192, elements: !620)
!1822 = !{!1823, !1824}
!1823 = !DILocalVariable(name: "__path", arg: 1, scope: !1783, file: !1784, line: 453, type: !521)
!1824 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1783, file: !1784, line: 453, type: !1787)
!1825 = !DILocation(line: 0, scope: !1783)
!1826 = !DILocation(line: 455, column: 10, scope: !1783)
!1827 = !DILocation(line: 455, column: 3, scope: !1783)
!1828 = distinct !DISubprogram(name: "lstat", scope: !1784, file: !1784, line: 460, type: !1785, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1829 = !{!1830, !1831}
!1830 = !DILocalVariable(name: "__path", arg: 1, scope: !1828, file: !1784, line: 460, type: !521)
!1831 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1828, file: !1784, line: 460, type: !1787)
!1832 = !DILocation(line: 0, scope: !1828)
!1833 = !DILocation(line: 462, column: 10, scope: !1828)
!1834 = !DILocation(line: 462, column: 3, scope: !1828)
!1835 = distinct !DISubprogram(name: "fstat", scope: !1784, file: !1784, line: 467, type: !1836, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1838)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!516, !516, !1787}
!1838 = !{!1839, !1840}
!1839 = !DILocalVariable(name: "__fd", arg: 1, scope: !1835, file: !1784, line: 467, type: !516)
!1840 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1835, file: !1784, line: 467, type: !1787)
!1841 = !DILocation(line: 0, scope: !1835)
!1842 = !DILocation(line: 469, column: 10, scope: !1835)
!1843 = !DILocation(line: 469, column: 3, scope: !1835)
!1844 = distinct !DISubprogram(name: "fstatat", scope: !1784, file: !1784, line: 474, type: !1845, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!516, !516, !521, !1787, !516}
!1847 = !{!1848, !1849, !1850, !1851}
!1848 = !DILocalVariable(name: "__fd", arg: 1, scope: !1844, file: !1784, line: 474, type: !516)
!1849 = !DILocalVariable(name: "__filename", arg: 2, scope: !1844, file: !1784, line: 474, type: !521)
!1850 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1844, file: !1784, line: 474, type: !1787)
!1851 = !DILocalVariable(name: "__flag", arg: 4, scope: !1844, file: !1784, line: 474, type: !516)
!1852 = !DILocation(line: 0, scope: !1844)
!1853 = !DILocation(line: 477, column: 10, scope: !1844)
!1854 = !DILocation(line: 477, column: 3, scope: !1844)
!1855 = distinct !DISubprogram(name: "mknod", scope: !1784, file: !1784, line: 483, type: !1856, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!516, !521, !1798, !1792}
!1858 = !{!1859, !1860, !1861}
!1859 = !DILocalVariable(name: "__path", arg: 1, scope: !1855, file: !1784, line: 483, type: !521)
!1860 = !DILocalVariable(name: "__mode", arg: 2, scope: !1855, file: !1784, line: 483, type: !1798)
!1861 = !DILocalVariable(name: "__dev", arg: 3, scope: !1855, file: !1784, line: 483, type: !1792)
!1862 = !DILocation(line: 0, scope: !1855)
!1863 = !DILocation(line: 485, column: 10, scope: !1855)
!1864 = !DILocation(line: 485, column: 3, scope: !1855)
!1865 = distinct !DISubprogram(name: "mknodat", scope: !1784, file: !1784, line: 491, type: !1866, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!516, !516, !521, !1798, !1792}
!1868 = !{!1869, !1870, !1871, !1872}
!1869 = !DILocalVariable(name: "__fd", arg: 1, scope: !1865, file: !1784, line: 491, type: !516)
!1870 = !DILocalVariable(name: "__path", arg: 2, scope: !1865, file: !1784, line: 491, type: !521)
!1871 = !DILocalVariable(name: "__mode", arg: 3, scope: !1865, file: !1784, line: 491, type: !1798)
!1872 = !DILocalVariable(name: "__dev", arg: 4, scope: !1865, file: !1784, line: 491, type: !1792)
!1873 = !DILocation(line: 0, scope: !1865)
!1874 = !DILocation(line: 494, column: 10, scope: !1865)
!1875 = !DILocation(line: 494, column: 3, scope: !1865)
!1876 = distinct !DISubprogram(name: "stat64", scope: !1784, file: !1784, line: 502, type: !1877, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1899)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!516, !521, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1789, line: 119, size: 1152, elements: !1881)
!1881 = !{!1882, !1883, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1895, !1896, !1897, !1898}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1880, file: !1789, line: 121, baseType: !1792, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1880, file: !1789, line: 123, baseType: !1884, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1540, line: 149, baseType: !530)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1880, file: !1789, line: 124, baseType: !1796, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1880, file: !1789, line: 125, baseType: !1798, size: 32, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1880, file: !1789, line: 132, baseType: !1800, size: 32, offset: 224)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1880, file: !1789, line: 133, baseType: !1802, size: 32, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1880, file: !1789, line: 135, baseType: !516, size: 32, offset: 288)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1880, file: !1789, line: 136, baseType: !1792, size: 64, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1880, file: !1789, line: 137, baseType: !1539, size: 64, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1880, file: !1789, line: 143, baseType: !1807, size: 64, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1880, file: !1789, line: 144, baseType: !1894, size: 64, offset: 512)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1540, line: 180, baseType: !602)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1880, file: !1789, line: 152, baseType: !1811, size: 128, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1880, file: !1789, line: 153, baseType: !1811, size: 128, offset: 704)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1880, file: !1789, line: 154, baseType: !1811, size: 128, offset: 832)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1880, file: !1789, line: 164, baseType: !1821, size: 192, offset: 960)
!1899 = !{!1900, !1901}
!1900 = !DILocalVariable(name: "__path", arg: 1, scope: !1876, file: !1784, line: 502, type: !521)
!1901 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1876, file: !1784, line: 502, type: !1879)
!1902 = !DILocation(line: 0, scope: !1876)
!1903 = !DILocation(line: 504, column: 10, scope: !1876)
!1904 = !DILocation(line: 504, column: 3, scope: !1876)
!1905 = distinct !DISubprogram(name: "lstat64", scope: !1784, file: !1784, line: 509, type: !1877, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1906)
!1906 = !{!1907, !1908}
!1907 = !DILocalVariable(name: "__path", arg: 1, scope: !1905, file: !1784, line: 509, type: !521)
!1908 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1905, file: !1784, line: 509, type: !1879)
!1909 = !DILocation(line: 0, scope: !1905)
!1910 = !DILocation(line: 511, column: 10, scope: !1905)
!1911 = !DILocation(line: 511, column: 3, scope: !1905)
!1912 = distinct !DISubprogram(name: "fstat64", scope: !1784, file: !1784, line: 516, type: !1913, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!516, !516, !1879}
!1915 = !{!1916, !1917}
!1916 = !DILocalVariable(name: "__fd", arg: 1, scope: !1912, file: !1784, line: 516, type: !516)
!1917 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1912, file: !1784, line: 516, type: !1879)
!1918 = !DILocation(line: 0, scope: !1912)
!1919 = !DILocation(line: 518, column: 10, scope: !1912)
!1920 = !DILocation(line: 518, column: 3, scope: !1912)
!1921 = distinct !DISubprogram(name: "fstatat64", scope: !1784, file: !1784, line: 523, type: !1922, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!516, !516, !521, !1879, !516}
!1924 = !{!1925, !1926, !1927, !1928}
!1925 = !DILocalVariable(name: "__fd", arg: 1, scope: !1921, file: !1784, line: 523, type: !516)
!1926 = !DILocalVariable(name: "__filename", arg: 2, scope: !1921, file: !1784, line: 523, type: !521)
!1927 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1921, file: !1784, line: 523, type: !1879)
!1928 = !DILocalVariable(name: "__flag", arg: 4, scope: !1921, file: !1784, line: 523, type: !516)
!1929 = !DILocation(line: 0, scope: !1921)
!1930 = !DILocation(line: 526, column: 10, scope: !1921)
!1931 = !DILocation(line: 526, column: 3, scope: !1921)
!1932 = distinct !DISubprogram(name: "init_c_lex", scope: !3, file: !3, line: 70, type: !1933, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null}
!1935 = !{!1936, !2048}
!1936 = !DILocalVariable(name: "cb", scope: !1932, file: !3, line: 72, type: !1937)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !6, line: 472, size: 1088, elements: !1939)
!1939 = !{!1940, !1947, !1963, !1967, !1972, !1976, !1977, !1983, !1987, !1991, !1995, !2023, !2027, !2038, !2039, !2040, !2044}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !1938, file: !6, line: 475, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !1944, !1374, !516}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !1946)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !548, line: 91, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !1938, file: !6, line: 481, baseType: !1948, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1944, !1951}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !546, line: 61, size: 192, elements: !1954)
!1954 = !{!1955, !1956, !1958, !1959, !1960, !1961, !1962}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !1953, file: !546, line: 62, baseType: !521, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !1953, file: !546, line: 63, baseType: !1957, size: 32, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !546, line: 39, baseType: !7)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !1953, file: !546, line: 64, baseType: !545, size: 32, offset: 96)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !1953, file: !546, line: 65, baseType: !516, size: 32, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1953, file: !546, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !1953, file: !546, line: 68, baseType: !515, size: 8, offset: 168)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !1953, file: !546, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !1938, file: !6, line: 483, baseType: !1964, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1944, !521}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !1938, file: !6, line: 484, baseType: !1968, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1944, !7, !662, !521, !516, !1971}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !1938, file: !6, line: 486, baseType: !1973, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !1944, !7, !1389}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !1938, file: !6, line: 487, baseType: !1973, size: 64, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1938, file: !6, line: 488, baseType: !1978, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1944, !7, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1353)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !1938, file: !6, line: 489, baseType: !1984, size: 64, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1944, !7}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !1938, file: !6, line: 490, baseType: !1988, size: 64, offset: 512)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!516, !1944, !521, !516}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !1938, file: !6, line: 491, baseType: !1992, size: 64, offset: 576)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !1944, !521, !516, !521}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !1938, file: !6, line: 492, baseType: !1996, size: 64, offset: 640)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !6, line: 469, baseType: !1997)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!521, !1944, !521, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !2003)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !2004)
!2004 = !{!2005, !2007, !2008, !2009, !2010, !2011, !2012, !2014, !2018, !2021}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2003, file: !6, line: 526, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2003, file: !6, line: 529, baseType: !518, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2003, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !2003, file: !6, line: 534, baseType: !515, size: 8, offset: 160)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !2003, file: !6, line: 537, baseType: !515, size: 8, offset: 168)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !2003, file: !6, line: 541, baseType: !518, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !2003, file: !6, line: 545, baseType: !2013, size: 64, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !2003, file: !6, line: 551, baseType: !2015, size: 64, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!518, !521, !2001}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2003, file: !6, line: 555, baseType: !2019, size: 64, offset: 384)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !2020, line: 47, baseType: !1794)
!2020 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2003, file: !6, line: 556, baseType: !2022, size: 64, offset: 448)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !2020, line: 59, baseType: !1792)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !1938, file: !6, line: 496, baseType: !2024, size: 64, offset: 704)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!1389, !1944, !1374}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1938, file: !6, line: 500, baseType: !2028, size: 64, offset: 768)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!515, !1944, !516, !545, !7, !521, !2031}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2033, line: 52, baseType: !2034)
!2033 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2035, line: 32, baseType: !2036)
!2035 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 72, baseType: !2037)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1490, size: 192, elements: !645)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !1938, file: !6, line: 506, baseType: !1973, size: 64, offset: 832)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !1938, file: !6, line: 507, baseType: !1973, size: 64, offset: 896)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !1938, file: !6, line: 510, baseType: !2041, size: 64, offset: 960)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !1944}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1938, file: !6, line: 513, baseType: !2045, size: 64, offset: 1024)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !1944, !545, !1389}
!2048 = !DILocalVariable(name: "toplevel", scope: !1932, file: !3, line: 73, type: !536)
!2049 = !DILocation(line: 77, column: 14, scope: !1932)
!2050 = !DILocation(line: 0, scope: !1932)
!2051 = !DILocation(line: 78, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 78, column: 7)
!2053 = !DILocation(line: 78, column: 7, scope: !1932)
!2054 = !DILocation(line: 80, column: 19, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 79, column: 5)
!2056 = !DILocation(line: 81, column: 19, scope: !2055)
!2057 = !DILocation(line: 81, column: 17, scope: !2055)
!2058 = !DILocation(line: 82, column: 17, scope: !2055)
!2059 = !DILocation(line: 82, column: 22, scope: !2055)
!2060 = !DILocation(line: 83, column: 5, scope: !2055)
!2061 = !DILocation(line: 85, column: 27, scope: !1932)
!2062 = !DILocation(line: 85, column: 8, scope: !1932)
!2063 = !DILocation(line: 87, column: 7, scope: !1932)
!2064 = !DILocation(line: 87, column: 19, scope: !1932)
!2065 = !DILocation(line: 88, column: 7, scope: !1932)
!2066 = !DILocation(line: 88, column: 13, scope: !1932)
!2067 = !DILocation(line: 89, column: 7, scope: !1932)
!2068 = !DILocation(line: 89, column: 18, scope: !1932)
!2069 = !DILocation(line: 90, column: 7, scope: !1932)
!2070 = !DILocation(line: 90, column: 17, scope: !1932)
!2071 = !DILocation(line: 91, column: 7, scope: !1932)
!2072 = !DILocation(line: 91, column: 16, scope: !1932)
!2073 = !DILocation(line: 94, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 94, column: 7)
!2075 = !DILocation(line: 94, column: 24, scope: !2074)
!2076 = !DILocation(line: 95, column: 7, scope: !2074)
!2077 = !DILocation(line: 95, column: 11, scope: !2074)
!2078 = !DILocation(line: 95, column: 25, scope: !2074)
!2079 = !DILocation(line: 96, column: 21, scope: !2074)
!2080 = !DILocation(line: 96, column: 4, scope: !2074)
!2081 = !DILocation(line: 98, column: 11, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 97, column: 5)
!2083 = !DILocation(line: 98, column: 18, scope: !2082)
!2084 = !DILocation(line: 99, column: 11, scope: !2082)
!2085 = !DILocation(line: 99, column: 17, scope: !2082)
!2086 = !DILocation(line: 100, column: 5, scope: !2082)
!2087 = !DILocation(line: 101, column: 1, scope: !1932)
!2088 = distinct !DISubprogram(name: "get_fileinfo", scope: !3, file: !3, line: 104, type: !2089, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!536, !521}
!2091 = !{!2092, !2093, !2094}
!2092 = !DILocalVariable(name: "name", arg: 1, scope: !2088, file: !3, line: 104, type: !521)
!2093 = !DILocalVariable(name: "n", scope: !2088, file: !3, line: 106, type: !1449)
!2094 = !DILocalVariable(name: "fi", scope: !2088, file: !3, line: 107, type: !536)
!2095 = !DILocation(line: 0, scope: !2088)
!2096 = !DILocation(line: 109, column: 8, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 109, column: 7)
!2098 = !DILocation(line: 109, column: 7, scope: !2088)
!2099 = !DILocation(line: 110, column: 22, scope: !2097)
!2100 = !DILocation(line: 110, column: 20, scope: !2097)
!2101 = !DILocation(line: 110, column: 5, scope: !2097)
!2102 = !DILocation(line: 114, column: 26, scope: !2088)
!2103 = !DILocation(line: 114, column: 42, scope: !2088)
!2104 = !DILocation(line: 114, column: 7, scope: !2088)
!2105 = !DILocation(line: 115, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 115, column: 7)
!2107 = !DILocation(line: 115, column: 7, scope: !2088)
!2108 = !DILocation(line: 116, column: 37, scope: !2106)
!2109 = !DILocation(line: 116, column: 5, scope: !2106)
!2110 = !DILocation(line: 118, column: 8, scope: !2088)
!2111 = !DILocation(line: 119, column: 7, scope: !2088)
!2112 = !DILocation(line: 119, column: 12, scope: !2088)
!2113 = !DILocation(line: 120, column: 7, scope: !2088)
!2114 = !DILocation(line: 120, column: 22, scope: !2088)
!2115 = !DILocation(line: 121, column: 7, scope: !2088)
!2116 = !DILocation(line: 121, column: 25, scope: !2088)
!2117 = !DILocation(line: 122, column: 22, scope: !2088)
!2118 = !DILocation(line: 123, column: 8, scope: !2088)
!2119 = !DILocation(line: 122, column: 3, scope: !2088)
!2120 = !DILocation(line: 124, column: 3, scope: !2088)
!2121 = !DILocation(line: 125, column: 1, scope: !2088)
!2122 = distinct !DISubprogram(name: "cb_line_change", scope: !3, file: !3, line: 189, type: !1942, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2123)
!2123 = !{!2124, !2125, !2126}
!2124 = !DILocalVariable(name: "pfile", arg: 1, scope: !2122, file: !3, line: 189, type: !1944)
!2125 = !DILocalVariable(name: "token", arg: 2, scope: !2122, file: !3, line: 189, type: !1374)
!2126 = !DILocalVariable(name: "parsing_args", arg: 3, scope: !2122, file: !3, line: 190, type: !516)
!2127 = !DILocation(line: 0, scope: !2122)
!2128 = !DILocation(line: 192, column: 14, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 192, column: 7)
!2130 = !DILocation(line: 192, column: 19, scope: !2129)
!2131 = !DILocation(line: 192, column: 34, scope: !2129)
!2132 = !DILocation(line: 192, column: 30, scope: !2129)
!2133 = !DILocation(line: 193, column: 29, scope: !2129)
!2134 = !DILocation(line: 193, column: 20, scope: !2129)
!2135 = !DILocation(line: 193, column: 5, scope: !2129)
!2136 = !DILocation(line: 194, column: 1, scope: !2122)
!2137 = distinct !DISubprogram(name: "cb_ident", scope: !3, file: !3, line: 168, type: !1979, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2138)
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DILocalVariable(name: "pfile", arg: 1, scope: !2137, file: !3, line: 168, type: !1944)
!2140 = !DILocalVariable(name: "line", arg: 2, scope: !2137, file: !3, line: 169, type: !7)
!2141 = !DILocalVariable(name: "str", arg: 3, scope: !2137, file: !3, line: 170, type: !1981)
!2142 = !DILocalVariable(name: "cstr", scope: !2143, file: !3, line: 176, type: !1353)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 174, column: 5)
!2144 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 173, column: 7)
!2145 = !DILocation(line: 0, scope: !2137)
!2146 = !DILocation(line: 173, column: 8, scope: !2144)
!2147 = !DILocation(line: 173, column: 7, scope: !2137)
!2148 = !DILocation(line: 176, column: 7, scope: !2143)
!2149 = !DILocation(line: 176, column: 18, scope: !2143)
!2150 = !DILocation(line: 0, scope: !2143)
!2151 = !DILocation(line: 177, column: 11, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 177, column: 11)
!2153 = !DILocation(line: 177, column: 11, scope: !2143)
!2154 = !DILocation(line: 179, column: 4, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 178, column: 2)
!2156 = !DILocation(line: 180, column: 10, scope: !2155)
!2157 = !DILocation(line: 180, column: 4, scope: !2155)
!2158 = !DILocation(line: 181, column: 2, scope: !2155)
!2159 = !DILocation(line: 182, column: 5, scope: !2144)
!2160 = !DILocation(line: 182, column: 5, scope: !2143)
!2161 = !DILocation(line: 184, column: 1, scope: !2137)
!2162 = distinct !DISubprogram(name: "cb_def_pragma", scope: !3, file: !3, line: 246, type: !2163, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !1944, !545}
!2165 = !{!2166, !2167, !2168, !2171, !2172, !2173}
!2166 = !DILocalVariable(name: "pfile", arg: 1, scope: !2162, file: !3, line: 246, type: !1944)
!2167 = !DILocalVariable(name: "loc", arg: 2, scope: !2162, file: !3, line: 246, type: !545)
!2168 = !DILocalVariable(name: "space", scope: !2169, file: !3, line: 253, type: !662)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 252, column: 5)
!2170 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 251, column: 7)
!2171 = !DILocalVariable(name: "name", scope: !2169, file: !3, line: 253, type: !662)
!2172 = !DILocalVariable(name: "s", scope: !2169, file: !3, line: 254, type: !1374)
!2173 = !DILocalVariable(name: "fe_loc", scope: !2169, file: !3, line: 255, type: !671)
!2174 = !DILocation(line: 0, scope: !2162)
!2175 = !DILocation(line: 251, column: 7, scope: !2170)
!2176 = !DILocation(line: 251, column: 30, scope: !2170)
!2177 = !DILocation(line: 251, column: 28, scope: !2170)
!2178 = !DILocation(line: 251, column: 7, scope: !2162)
!2179 = !DILocation(line: 0, scope: !2169)
!2180 = !DILocation(line: 258, column: 11, scope: !2169)
!2181 = !DILocation(line: 259, column: 14, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 259, column: 11)
!2183 = !DILocation(line: 259, column: 19, scope: !2182)
!2184 = !DILocation(line: 259, column: 11, scope: !2169)
!2185 = !DILocation(line: 261, column: 12, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 260, column: 2)
!2187 = !DILocation(line: 262, column: 8, scope: !2186)
!2188 = !DILocation(line: 263, column: 11, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 263, column: 8)
!2190 = !DILocation(line: 263, column: 16, scope: !2189)
!2191 = !DILocation(line: 263, column: 8, scope: !2186)
!2192 = !DILocation(line: 264, column: 13, scope: !2189)
!2193 = !DILocation(line: 264, column: 6, scope: !2189)
!2194 = !DILocation(line: 267, column: 7, scope: !2169)
!2195 = !DILocation(line: 269, column: 5, scope: !2169)
!2196 = !DILocation(line: 270, column: 1, scope: !2162)
!2197 = distinct !DISubprogram(name: "cb_define", scope: !3, file: !3, line: 274, type: !2046, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2198 = !{!2199, !2200, !2201, !2202}
!2199 = !DILocalVariable(name: "pfile", arg: 1, scope: !2197, file: !3, line: 274, type: !1944)
!2200 = !DILocalVariable(name: "loc", arg: 2, scope: !2197, file: !3, line: 274, type: !545)
!2201 = !DILocalVariable(name: "node", arg: 3, scope: !2197, file: !3, line: 274, type: !1389)
!2202 = !DILocalVariable(name: "map", scope: !2197, file: !3, line: 276, type: !1951)
!2203 = !DILocation(line: 0, scope: !2197)
!2204 = !DILocation(line: 276, column: 48, scope: !2197)
!2205 = !DILocation(line: 276, column: 32, scope: !2197)
!2206 = !DILocation(line: 277, column: 5, scope: !2197)
!2207 = !DILocation(line: 277, column: 18, scope: !2197)
!2208 = !DILocation(line: 277, column: 27, scope: !2197)
!2209 = !DILocation(line: 278, column: 21, scope: !2197)
!2210 = !DILocation(line: 277, column: 3, scope: !2197)
!2211 = !DILocation(line: 279, column: 1, scope: !2197)
!2212 = distinct !DISubprogram(name: "cb_undef", scope: !3, file: !3, line: 283, type: !2046, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2213 = !{!2214, !2215, !2216, !2217}
!2214 = !DILocalVariable(name: "pfile", arg: 1, scope: !2212, file: !3, line: 283, type: !1944)
!2215 = !DILocalVariable(name: "loc", arg: 2, scope: !2212, file: !3, line: 283, type: !545)
!2216 = !DILocalVariable(name: "node", arg: 3, scope: !2212, file: !3, line: 284, type: !1389)
!2217 = !DILocalVariable(name: "map", scope: !2212, file: !3, line: 286, type: !1951)
!2218 = !DILocation(line: 0, scope: !2212)
!2219 = !DILocation(line: 286, column: 48, scope: !2212)
!2220 = !DILocation(line: 286, column: 32, scope: !2212)
!2221 = !DILocation(line: 287, column: 5, scope: !2212)
!2222 = !DILocation(line: 287, column: 18, scope: !2212)
!2223 = !DILocation(line: 287, column: 26, scope: !2212)
!2224 = !DILocation(line: 288, column: 20, scope: !2212)
!2225 = !DILocation(line: 287, column: 3, scope: !2212)
!2226 = !DILocation(line: 289, column: 1, scope: !2212)
!2227 = distinct !DISubprogram(name: "dump_time_statistics", scope: !3, file: !3, line: 151, type: !1933, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2228 = !{!2229, !2230}
!2229 = !DILocalVariable(name: "file", scope: !2227, file: !3, line: 153, type: !536)
!2230 = !DILocalVariable(name: "this_time", scope: !2227, file: !3, line: 154, type: !516)
!2231 = !DILocation(line: 153, column: 43, scope: !2227)
!2232 = !DILocation(line: 153, column: 29, scope: !2227)
!2233 = !DILocation(line: 0, scope: !2227)
!2234 = !DILocation(line: 154, column: 19, scope: !2227)
!2235 = !DILocation(line: 155, column: 29, scope: !2227)
!2236 = !DILocation(line: 155, column: 27, scope: !2227)
!2237 = !DILocation(line: 155, column: 9, scope: !2227)
!2238 = !DILocation(line: 155, column: 14, scope: !2227)
!2239 = !DILocation(line: 157, column: 12, scope: !2227)
!2240 = !DILocation(line: 157, column: 3, scope: !2227)
!2241 = !DILocation(line: 158, column: 39, scope: !2227)
!2242 = !DILocation(line: 158, column: 3, scope: !2227)
!2243 = !DILocation(line: 159, column: 48, scope: !2227)
!2244 = !DILocation(line: 159, column: 46, scope: !2227)
!2245 = !DILocation(line: 159, column: 36, scope: !2227)
!2246 = !DILocation(line: 159, column: 3, scope: !2227)
!2247 = !DILocation(line: 160, column: 12, scope: !2227)
!2248 = !DILocation(line: 161, column: 14, scope: !2227)
!2249 = !DILocation(line: 161, column: 5, scope: !2227)
!2250 = !DILocation(line: 161, column: 50, scope: !2227)
!2251 = !DILocation(line: 161, column: 48, scope: !2227)
!2252 = !DILocation(line: 161, column: 28, scope: !2227)
!2253 = !DILocation(line: 161, column: 26, scope: !2227)
!2254 = !DILocation(line: 160, column: 3, scope: !2227)
!2255 = !DILocation(line: 162, column: 12, scope: !2227)
!2256 = !DILocation(line: 162, column: 3, scope: !2227)
!2257 = !DILocation(line: 164, column: 23, scope: !2227)
!2258 = !DILocation(line: 164, column: 3, scope: !2227)
!2259 = !DILocation(line: 165, column: 1, scope: !2227)
!2260 = distinct !DISubprogram(name: "dump_one_header", scope: !3, file: !3, line: 143, type: !2261, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!516, !1449, !520}
!2263 = !{!2264, !2265}
!2264 = !DILocalVariable(name: "n", arg: 1, scope: !2260, file: !3, line: 143, type: !1449)
!2265 = !DILocalVariable(name: "dummy", arg: 2, scope: !2260, file: !3, line: 143, type: !520)
!2266 = !DILocation(line: 0, scope: !2260)
!2267 = !DILocation(line: 145, column: 33, scope: !2260)
!2268 = !DILocation(line: 146, column: 34, scope: !2260)
!2269 = !DILocation(line: 146, column: 42, scope: !2260)
!2270 = !DILocation(line: 146, column: 8, scope: !2260)
!2271 = !DILocation(line: 145, column: 3, scope: !2260)
!2272 = !DILocation(line: 147, column: 3, scope: !2260)
!2273 = distinct !DISubprogram(name: "fe_file_change", scope: !3, file: !3, line: 197, type: !2274, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !1951}
!2276 = !{!2277, !2278, !2283}
!2277 = !DILocalVariable(name: "new_map", arg: 1, scope: !2273, file: !3, line: 197, type: !1951)
!2278 = !DILocalVariable(name: "included_at", scope: !2279, file: !3, line: 208, type: !7)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 207, column: 2)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 206, column: 11)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 203, column: 5)
!2282 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 202, column: 7)
!2283 = !DILocalVariable(name: "line", scope: !2279, file: !3, line: 209, type: !516)
!2284 = !DILocation(line: 0, scope: !2273)
!2285 = !DILocation(line: 199, column: 15, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 199, column: 7)
!2287 = !DILocation(line: 199, column: 7, scope: !2273)
!2288 = !DILocation(line: 202, column: 16, scope: !2282)
!2289 = !DILocation(line: 202, column: 23, scope: !2282)
!2290 = !DILocation(line: 202, column: 7, scope: !2273)
!2291 = !DILocation(line: 206, column: 12, scope: !2280)
!2292 = !DILocation(line: 206, column: 11, scope: !2281)
!2293 = !DILocation(line: 208, column: 31, scope: !2279)
!2294 = !DILocation(line: 0, scope: !2279)
!2295 = !DILocation(line: 210, column: 20, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 210, column: 8)
!2297 = !DILocation(line: 210, column: 8, scope: !2279)
!2298 = !DILocation(line: 211, column: 13, scope: !2296)
!2299 = !DILocation(line: 211, column: 6, scope: !2296)
!2300 = !DILocation(line: 213, column: 19, scope: !2279)
!2301 = !DILocation(line: 214, column: 6, scope: !2279)
!2302 = !DILocation(line: 214, column: 19, scope: !2279)
!2303 = !DILocation(line: 214, column: 54, scope: !2279)
!2304 = !DILocation(line: 214, column: 4, scope: !2279)
!2305 = !DILocation(line: 224, column: 2, scope: !2279)
!2306 = !DILocation(line: 226, column: 28, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 226, column: 12)
!2308 = !DILocation(line: 226, column: 12, scope: !2282)
!2309 = !DILocation(line: 236, column: 33, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 227, column: 5)
!2311 = !DILocation(line: 236, column: 22, scope: !2310)
!2312 = !DILocation(line: 238, column: 9, scope: !2310)
!2313 = !DILocation(line: 238, column: 22, scope: !2310)
!2314 = !DILocation(line: 238, column: 49, scope: !2310)
!2315 = !DILocation(line: 238, column: 7, scope: !2310)
!2316 = !DILocation(line: 239, column: 5, scope: !2310)
!2317 = !DILocation(line: 241, column: 33, scope: !2273)
!2318 = !DILocation(line: 241, column: 3, scope: !2273)
!2319 = !DILocation(line: 242, column: 29, scope: !2273)
!2320 = !DILocation(line: 242, column: 18, scope: !2273)
!2321 = !DILocation(line: 243, column: 1, scope: !2273)
!2322 = distinct !DISubprogram(name: "update_header_times", scope: !3, file: !3, line: 128, type: !2323, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !521}
!2325 = !{!2326, !2327, !2330}
!2326 = !DILocalVariable(name: "name", arg: 1, scope: !2322, file: !3, line: 128, type: !521)
!2327 = !DILocalVariable(name: "this_time", scope: !2328, file: !3, line: 134, type: !516)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 133, column: 5)
!2329 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 132, column: 7)
!2330 = !DILocalVariable(name: "file", scope: !2328, file: !3, line: 135, type: !536)
!2331 = !DILocation(line: 0, scope: !2322)
!2332 = !DILocation(line: 132, column: 7, scope: !2329)
!2333 = !DILocation(line: 132, column: 7, scope: !2322)
!2334 = !DILocation(line: 134, column: 23, scope: !2328)
!2335 = !DILocation(line: 0, scope: !2328)
!2336 = !DILocation(line: 135, column: 33, scope: !2328)
!2337 = !DILocation(line: 136, column: 34, scope: !2328)
!2338 = !DILocation(line: 136, column: 32, scope: !2328)
!2339 = !DILocation(line: 136, column: 19, scope: !2328)
!2340 = !DILocation(line: 137, column: 13, scope: !2328)
!2341 = !DILocation(line: 137, column: 18, scope: !2328)
!2342 = !DILocation(line: 138, column: 17, scope: !2328)
!2343 = !DILocation(line: 139, column: 5, scope: !2328)
!2344 = !DILocation(line: 140, column: 1, scope: !2322)
!2345 = !DILocation(line: 0, scope: !1364)
!2346 = !DILocation(line: 304, column: 3, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 304, column: 3)
!2348 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 304, column: 3)
!2349 = !DILocation(line: 304, column: 3, scope: !2348)
!2350 = !DILocation(line: 0, scope: !1426)
!2351 = !DILocation(line: 0, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 360, column: 6)
!2353 = !DILocation(line: 0, scope: !1430)
!2354 = !DILocation(line: 307, column: 3, scope: !1364)
!2355 = !DILocation(line: 305, column: 2, scope: !1364)
!2356 = !DILocation(line: 306, column: 38, scope: !1364)
!2357 = !DILocation(line: 306, column: 9, scope: !1364)
!2358 = !DILocation(line: 307, column: 15, scope: !1364)
!2359 = !DILocation(line: 309, column: 2, scope: !1364)
!2360 = !DILocation(line: 310, column: 3, scope: !1364)
!2361 = !DILocation(line: 316, column: 16, scope: !1424)
!2362 = !DILocation(line: 316, column: 14, scope: !1424)
!2363 = !DILocation(line: 317, column: 7, scope: !1424)
!2364 = !DILocation(line: 321, column: 44, scope: !1423)
!2365 = !DILocation(line: 321, column: 23, scope: !1423)
!2366 = !DILocation(line: 0, scope: !1423)
!2367 = !DILocation(line: 323, column: 16, scope: !1423)
!2368 = !DILocation(line: 323, column: 2, scope: !1423)
!2369 = !DILocation(line: 327, column: 15, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 324, column: 4)
!2371 = !DILocation(line: 327, column: 13, scope: !2370)
!2372 = !DILocation(line: 328, column: 6, scope: !2370)
!2373 = !DILocation(line: 328, column: 16, scope: !2370)
!2374 = !DILocation(line: 329, column: 6, scope: !2370)
!2375 = !DILocation(line: 334, column: 23, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 334, column: 10)
!2377 = !DILocation(line: 334, column: 27, scope: !2376)
!2378 = !DILocation(line: 334, column: 32, scope: !2376)
!2379 = !DILocation(line: 334, column: 49, scope: !2376)
!2380 = !DILocation(line: 334, column: 35, scope: !2376)
!2381 = !DILocation(line: 334, column: 54, scope: !2376)
!2382 = !DILocation(line: 334, column: 10, scope: !2370)
!2383 = !DILocation(line: 336, column: 15, scope: !2370)
!2384 = !DILocation(line: 336, column: 13, scope: !2370)
!2385 = !DILocation(line: 337, column: 6, scope: !2370)
!2386 = !DILocation(line: 340, column: 15, scope: !2370)
!2387 = !DILocation(line: 340, column: 13, scope: !2370)
!2388 = !DILocation(line: 341, column: 6, scope: !2370)
!2389 = !DILocation(line: 344, column: 6, scope: !2370)
!2390 = !DILocation(line: 345, column: 4, scope: !2370)
!2391 = !DILocation(line: 351, column: 11, scope: !1427)
!2392 = !DILocation(line: 351, column: 11, scope: !1424)
!2393 = !DILocation(line: 353, column: 23, scope: !1426)
!2394 = !DILocation(line: 354, column: 4, scope: !1426)
!2395 = !DILocation(line: 356, column: 2, scope: !1426)
!2396 = !DILocation(line: 357, column: 39, scope: !1426)
!2397 = !DILocation(line: 357, column: 10, scope: !1426)
!2398 = !DILocation(line: 358, column: 16, scope: !1426)
!2399 = !DILocation(line: 359, column: 4, scope: !1426)
!2400 = !DILocation(line: 369, column: 15, scope: !2352)
!2401 = !DILocation(line: 370, column: 8, scope: !2352)
!2402 = !DILocation(line: 373, column: 17, scope: !2352)
!2403 = !DILocation(line: 373, column: 15, scope: !2352)
!2404 = !DILocation(line: 374, column: 35, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 374, column: 12)
!2406 = !DILocation(line: 374, column: 12, scope: !2405)
!2407 = !DILocation(line: 374, column: 12, scope: !2352)
!2408 = !DILocation(line: 383, column: 8, scope: !2352)
!2409 = !DILocation(line: 384, column: 15, scope: !2352)
!2410 = !DILocation(line: 384, column: 13, scope: !2352)
!2411 = !DILocation(line: 385, column: 8, scope: !2352)
!2412 = !DILocation(line: 388, column: 2, scope: !1427)
!2413 = !DILocation(line: 394, column: 2, scope: !1430)
!2414 = !DILocation(line: 394, column: 16, scope: !1430)
!2415 = !DILocation(line: 396, column: 20, scope: !1430)
!2416 = !DILocation(line: 396, column: 3, scope: !1430)
!2417 = !DILocation(line: 396, column: 47, scope: !1430)
!2418 = !DILocation(line: 398, column: 2, scope: !1430)
!2419 = !DILocation(line: 399, column: 7, scope: !1424)
!2420 = !DILocation(line: 401, column: 7, scope: !1424)
!2421 = !DILocation(line: 405, column: 29, scope: !1435)
!2422 = !DILocation(line: 405, column: 16, scope: !1435)
!2423 = !DILocation(line: 0, scope: !1435)
!2424 = !DILocation(line: 407, column: 15, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 407, column: 6)
!2426 = !DILocation(line: 408, column: 4, scope: !2425)
!2427 = !DILocation(line: 409, column: 11, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 409, column: 11)
!2429 = !DILocation(line: 409, column: 11, scope: !2425)
!2430 = !DILocation(line: 410, column: 4, scope: !2428)
!2431 = !DILocation(line: 412, column: 4, scope: !2428)
!2432 = !DILocation(line: 414, column: 7, scope: !1424)
!2433 = !DILocation(line: 420, column: 16, scope: !1424)
!2434 = !DILocation(line: 420, column: 14, scope: !1424)
!2435 = !DILocation(line: 421, column: 7, scope: !1424)
!2436 = !DILocation(line: 428, column: 22, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 428, column: 11)
!2438 = !DILocation(line: 428, column: 46, scope: !2437)
!2439 = !DILocation(line: 428, column: 11, scope: !1424)
!2440 = !DILocation(line: 431, column: 9, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 429, column: 2)
!2442 = !DILocation(line: 430, column: 11, scope: !2441)
!2443 = !DILocation(line: 432, column: 4, scope: !2441)
!2444 = !DILocation(line: 434, column: 43, scope: !1424)
!2445 = !DILocation(line: 434, column: 76, scope: !1424)
!2446 = !DILocation(line: 434, column: 16, scope: !1424)
!2447 = !DILocation(line: 434, column: 14, scope: !1424)
!2448 = !DILocation(line: 435, column: 7, scope: !1424)
!2449 = !DILocation(line: 438, column: 46, scope: !1424)
!2450 = !DILocation(line: 438, column: 37, scope: !1424)
!2451 = !DILocation(line: 438, column: 16, scope: !1424)
!2452 = !DILocation(line: 438, column: 14, scope: !1424)
!2453 = !DILocation(line: 439, column: 7, scope: !1424)
!2454 = !DILocation(line: 445, column: 7, scope: !1424)
!2455 = !DILocation(line: 448, column: 14, scope: !1424)
!2456 = !DILocation(line: 449, column: 7, scope: !1424)
!2457 = !DILocation(line: 452, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 452, column: 7)
!2459 = !DILocation(line: 302, column: 17, scope: !1364)
!2460 = !DILocation(line: 452, column: 7, scope: !1364)
!2461 = !DILocation(line: 453, column: 23, scope: !2458)
!2462 = !DILocation(line: 453, column: 18, scope: !2458)
!2463 = !DILocation(line: 453, column: 29, scope: !2458)
!2464 = !DILocation(line: 453, column: 16, scope: !2458)
!2465 = !DILocation(line: 453, column: 5, scope: !2458)
!2466 = !DILocation(line: 455, column: 8, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 455, column: 7)
!2468 = !DILocation(line: 455, column: 7, scope: !1364)
!2469 = !DILocation(line: 457, column: 19, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 456, column: 5)
!2471 = !DILocation(line: 458, column: 7, scope: !2470)
!2472 = !DILocation(line: 459, column: 5, scope: !2470)
!2473 = !DILocation(line: 461, column: 3, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 461, column: 3)
!2475 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 461, column: 3)
!2476 = !DILocation(line: 461, column: 3, scope: !2475)
!2477 = !DILocation(line: 463, column: 3, scope: !1364)
!2478 = distinct !DISubprogram(name: "interpret_integer", scope: !3, file: !3, line: 527, type: !2479, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!547, !1374, !7}
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487, !2496, !2561, !2564}
!2482 = !DILocalVariable(name: "token", arg: 1, scope: !2478, file: !3, line: 527, type: !1374)
!2483 = !DILocalVariable(name: "flags", arg: 2, scope: !2478, file: !3, line: 527, type: !7)
!2484 = !DILocalVariable(name: "value", scope: !2478, file: !3, line: 529, type: !547)
!2485 = !DILocalVariable(name: "type", scope: !2478, file: !3, line: 529, type: !547)
!2486 = !DILocalVariable(name: "itk", scope: !2478, file: !3, line: 530, type: !454)
!2487 = !DILocalVariable(name: "integer", scope: !2478, file: !3, line: 531, type: !2488)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_num", file: !6, line: 771, baseType: !2489)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_num", file: !6, line: 772, size: 192, elements: !2490)
!2490 = !{!2491, !2493, !2494, !2495}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !2489, file: !6, line: 774, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_num_part", file: !6, line: 770, baseType: !530)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !2489, file: !6, line: 775, baseType: !2492, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "unsignedp", scope: !2489, file: !6, line: 776, baseType: !515, size: 8, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !2489, file: !6, line: 777, baseType: !515, size: 8, offset: 136)
!2496 = !DILocalVariable(name: "options", scope: !2478, file: !3, line: 532, type: !2497)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_options", file: !6, line: 33, baseType: !2499)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !2499, file: !6, line: 282, baseType: !7, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !2499, file: !6, line: 285, baseType: !468, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !2499, file: !6, line: 288, baseType: !515, size: 8, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !2499, file: !6, line: 291, baseType: !515, size: 8, offset: 72)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !2499, file: !6, line: 296, baseType: !515, size: 8, offset: 80)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !2499, file: !6, line: 299, baseType: !515, size: 8, offset: 88)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !2499, file: !6, line: 303, baseType: !515, size: 8, offset: 96)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !2499, file: !6, line: 306, baseType: !515, size: 8, offset: 104)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !2499, file: !6, line: 309, baseType: !515, size: 8, offset: 112)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !2499, file: !6, line: 312, baseType: !515, size: 8, offset: 120)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !2499, file: !6, line: 315, baseType: !515, size: 8, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !2499, file: !6, line: 318, baseType: !515, size: 8, offset: 136)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !2499, file: !6, line: 321, baseType: !515, size: 8, offset: 144)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !2499, file: !6, line: 324, baseType: !515, size: 8, offset: 152)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !2499, file: !6, line: 328, baseType: !515, size: 8, offset: 160)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !2499, file: !6, line: 331, baseType: !515, size: 8, offset: 168)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !2499, file: !6, line: 334, baseType: !515, size: 8, offset: 176)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !2499, file: !6, line: 338, baseType: !515, size: 8, offset: 184)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !2499, file: !6, line: 341, baseType: !515, size: 8, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !2499, file: !6, line: 344, baseType: !515, size: 8, offset: 200)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !2499, file: !6, line: 348, baseType: !515, size: 8, offset: 208)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !2499, file: !6, line: 352, baseType: !515, size: 8, offset: 216)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !2499, file: !6, line: 356, baseType: !515, size: 8, offset: 224)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !2499, file: !6, line: 360, baseType: !515, size: 8, offset: 232)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !2499, file: !6, line: 363, baseType: !515, size: 8, offset: 240)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !2499, file: !6, line: 366, baseType: !515, size: 8, offset: 248)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !2499, file: !6, line: 370, baseType: !515, size: 8, offset: 256)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !2499, file: !6, line: 373, baseType: !515, size: 8, offset: 264)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !2499, file: !6, line: 376, baseType: !515, size: 8, offset: 272)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !2499, file: !6, line: 379, baseType: !515, size: 8, offset: 280)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !2499, file: !6, line: 382, baseType: !515, size: 8, offset: 288)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !2499, file: !6, line: 385, baseType: !515, size: 8, offset: 296)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !2499, file: !6, line: 389, baseType: !515, size: 8, offset: 304)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !2499, file: !6, line: 392, baseType: !515, size: 8, offset: 312)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !2499, file: !6, line: 395, baseType: !515, size: 8, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !2499, file: !6, line: 398, baseType: !515, size: 8, offset: 328)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !2499, file: !6, line: 401, baseType: !515, size: 8, offset: 336)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !2499, file: !6, line: 404, baseType: !521, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !2499, file: !6, line: 407, baseType: !521, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !2499, file: !6, line: 410, baseType: !521, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !2499, file: !6, line: 414, baseType: !480, size: 32, offset: 576)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !2499, file: !6, line: 417, baseType: !515, size: 8, offset: 608)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !2499, file: !6, line: 420, baseType: !515, size: 8, offset: 616)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !2499, file: !6, line: 441, baseType: !2545, size: 64, offset: 640)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2499, file: !6, line: 423, size: 64, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2550, !2551}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !2545, file: !6, line: 426, baseType: !486, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !2545, file: !6, line: 429, baseType: !515, size: 8, offset: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !2545, file: !6, line: 433, baseType: !515, size: 8, offset: 40)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !2545, file: !6, line: 436, baseType: !515, size: 8, offset: 48)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !2545, file: !6, line: 440, baseType: !515, size: 8, offset: 56)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !2499, file: !6, line: 447, baseType: !1558, size: 64, offset: 704)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !2499, file: !6, line: 447, baseType: !1558, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !2499, file: !6, line: 447, baseType: !1558, size: 64, offset: 832)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !2499, file: !6, line: 447, baseType: !1558, size: 64, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !2499, file: !6, line: 450, baseType: !515, size: 8, offset: 960)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !2499, file: !6, line: 450, baseType: !515, size: 8, offset: 968)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !2499, file: !6, line: 454, baseType: !515, size: 8, offset: 976)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !2499, file: !6, line: 457, baseType: !515, size: 8, offset: 984)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !2499, file: !6, line: 460, baseType: !515, size: 8, offset: 992)
!2561 = !DILocalVariable(name: "itk_u", scope: !2562, file: !3, line: 545, type: !454)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 541, column: 5)
!2563 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 538, column: 7)
!2564 = !DILocalVariable(name: "itk_s", scope: !2562, file: !3, line: 547, type: !454)
!2565 = !DILocation(line: 0, scope: !2478)
!2566 = !DILocation(line: 531, column: 3, scope: !2478)
!2567 = !DILocation(line: 532, column: 43, scope: !2478)
!2568 = !DILocation(line: 532, column: 26, scope: !2478)
!2569 = !DILocation(line: 534, column: 13, scope: !2478)
!2570 = !DILocation(line: 534, column: 36, scope: !2478)
!2571 = !DILocation(line: 535, column: 13, scope: !2478)
!2572 = !DILocation(line: 535, column: 52, scope: !2478)
!2573 = !DILocation(line: 538, column: 13, scope: !2563)
!2574 = !DILocation(line: 0, scope: !2563)
!2575 = !DILocation(line: 538, column: 7, scope: !2478)
!2576 = !DILocation(line: 0, scope: !2562)
!2577 = !DILocation(line: 548, column: 35, scope: !2562)
!2578 = !DILocation(line: 548, column: 48, scope: !2562)
!2579 = !DILocation(line: 548, column: 4, scope: !2562)
!2580 = !DILocation(line: 554, column: 18, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 554, column: 11)
!2582 = !DILocation(line: 554, column: 33, scope: !2581)
!2583 = !DILocation(line: 554, column: 11, scope: !2562)
!2584 = !DILocation(line: 555, column: 8, scope: !2581)
!2585 = !DILocation(line: 555, column: 2, scope: !2581)
!2586 = !DILocation(line: 565, column: 14, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 565, column: 8)
!2588 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 557, column: 2)
!2589 = !DILocation(line: 565, column: 31, scope: !2587)
!2590 = !DILocation(line: 565, column: 22, scope: !2587)
!2591 = !DILocation(line: 567, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 567, column: 12)
!2593 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 566, column: 6)
!2594 = !DILocation(line: 567, column: 12, scope: !2593)
!2595 = !DILocation(line: 569, column: 9, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 568, column: 3)
!2597 = !DILocation(line: 572, column: 5, scope: !2596)
!2598 = !DILocation(line: 573, column: 3, scope: !2596)
!2599 = !DILocation(line: 575, column: 3, scope: !2592)
!2600 = !DILocation(line: 581, column: 11, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 581, column: 7)
!2602 = !DILocation(line: 581, column: 7, scope: !2478)
!2603 = !DILocation(line: 583, column: 13, scope: !2601)
!2604 = !DILocation(line: 588, column: 14, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 587, column: 5)
!2606 = !DILocation(line: 589, column: 15, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 589, column: 11)
!2608 = !DILocation(line: 590, column: 14, scope: !2607)
!2609 = !DILocation(line: 590, column: 29, scope: !2607)
!2610 = !DILocation(line: 590, column: 4, scope: !2607)
!2611 = !DILocation(line: 592, column: 6, scope: !2607)
!2612 = !DILocation(line: 0, scope: !2607)
!2613 = !DILocation(line: 592, column: 5, scope: !2607)
!2614 = !DILocation(line: 594, column: 5, scope: !2607)
!2615 = !DILocation(line: 595, column: 5, scope: !2607)
!2616 = !DILocation(line: 591, column: 2, scope: !2607)
!2617 = !DILocation(line: 0, scope: !2601)
!2618 = !DILocation(line: 600, column: 45, scope: !2478)
!2619 = !DILocation(line: 600, column: 58, scope: !2478)
!2620 = !DILocation(line: 600, column: 11, scope: !2478)
!2621 = !DILocation(line: 603, column: 13, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 603, column: 7)
!2623 = !DILocation(line: 603, column: 7, scope: !2478)
!2624 = !DILocation(line: 604, column: 39, scope: !2622)
!2625 = !DILocation(line: 604, column: 13, scope: !2622)
!2626 = !DILocation(line: 604, column: 5, scope: !2622)
!2627 = !DILocation(line: 607, column: 1, scope: !2478)
!2628 = !DILocation(line: 606, column: 3, scope: !2478)
!2629 = distinct !DISubprogram(name: "interpret_float", scope: !3, file: !3, line: 612, type: !2479, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2644, !2645, !2649}
!2631 = !DILocalVariable(name: "token", arg: 1, scope: !2629, file: !3, line: 612, type: !1374)
!2632 = !DILocalVariable(name: "flags", arg: 2, scope: !2629, file: !3, line: 612, type: !7)
!2633 = !DILocalVariable(name: "type", scope: !2629, file: !3, line: 614, type: !547)
!2634 = !DILocalVariable(name: "const_type", scope: !2629, file: !3, line: 615, type: !547)
!2635 = !DILocalVariable(name: "value", scope: !2629, file: !3, line: 616, type: !547)
!2636 = !DILocalVariable(name: "real", scope: !2629, file: !3, line: 617, type: !609)
!2637 = !DILocalVariable(name: "real_trunc", scope: !2629, file: !3, line: 618, type: !609)
!2638 = !DILocalVariable(name: "copy", scope: !2629, file: !3, line: 619, type: !518)
!2639 = !DILocalVariable(name: "copylen", scope: !2629, file: !3, line: 620, type: !1558)
!2640 = !DILocalVariable(name: "suffix", scope: !2641, file: !3, line: 654, type: !519)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 653, column: 7)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 652, column: 9)
!2643 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 644, column: 7)
!2644 = !DILocalVariable(name: "mode", scope: !2641, file: !3, line: 655, type: !99)
!2645 = !DILocalVariable(name: "realvoidmode", scope: !2646, file: !3, line: 733, type: !609)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 732, column: 5)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 730, column: 12)
!2648 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 721, column: 7)
!2649 = !DILocalVariable(name: "overflow", scope: !2646, file: !3, line: 734, type: !516)
!2650 = !DILocation(line: 0, scope: !2629)
!2651 = !DILocation(line: 617, column: 3, scope: !2629)
!2652 = !DILocation(line: 618, column: 3, scope: !2629)
!2653 = !DILocation(line: 625, column: 13, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 625, column: 7)
!2655 = !DILocation(line: 625, column: 7, scope: !2629)
!2656 = !DILocation(line: 628, column: 13, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 626, column: 5)
!2658 = !DILocation(line: 630, column: 38, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 630, column: 11)
!2660 = !DILocation(line: 632, column: 4, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 631, column: 2)
!2662 = !DILocation(line: 634, column: 8, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 634, column: 8)
!2664 = !DILocation(line: 635, column: 12, scope: !2663)
!2665 = !DILocation(line: 634, column: 8, scope: !2661)
!2666 = !DILocation(line: 636, column: 2, scope: !2661)
!2667 = !DILocation(line: 640, column: 27, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 640, column: 7)
!2669 = !DILocation(line: 641, column: 12, scope: !2668)
!2670 = !DILocation(line: 641, column: 5, scope: !2668)
!2671 = !DILocation(line: 644, column: 13, scope: !2643)
!2672 = !DILocation(line: 644, column: 7, scope: !2629)
!2673 = !DILocation(line: 645, column: 16, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 645, column: 9)
!2675 = !DILocation(line: 645, column: 31, scope: !2674)
!2676 = !DILocation(line: 645, column: 9, scope: !2643)
!2677 = !DILocation(line: 646, column: 14, scope: !2674)
!2678 = !DILocation(line: 646, column: 7, scope: !2674)
!2679 = !DILocation(line: 647, column: 36, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 647, column: 14)
!2681 = !DILocation(line: 647, column: 14, scope: !2674)
!2682 = !DILocation(line: 652, column: 15, scope: !2642)
!2683 = !DILocation(line: 652, column: 9, scope: !2643)
!2684 = !DILocation(line: 657, column: 31, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 657, column: 6)
!2686 = !DILocation(line: 0, scope: !2641)
!2687 = !DILocation(line: 662, column: 19, scope: !2641)
!2688 = !DILocation(line: 662, column: 9, scope: !2641)
!2689 = !DILocation(line: 663, column: 11, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 663, column: 6)
!2691 = !DILocation(line: 663, column: 6, scope: !2641)
!2692 = !DILocation(line: 665, column: 6, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 664, column: 4)
!2694 = !DILocation(line: 666, column: 6, scope: !2693)
!2695 = !DILocation(line: 666, column: 16, scope: !2693)
!2696 = !DILocation(line: 668, column: 13, scope: !2693)
!2697 = !DILocation(line: 668, column: 6, scope: !2693)
!2698 = !DILocation(line: 671, column: 13, scope: !2690)
!2699 = !DILocation(line: 671, column: 4, scope: !2690)
!2700 = !DILocation(line: 673, column: 9, scope: !2641)
!2701 = !DILocation(line: 674, column: 2, scope: !2641)
!2702 = !DILocation(line: 676, column: 21, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 676, column: 14)
!2704 = !DILocation(line: 676, column: 36, scope: !2703)
!2705 = !DILocation(line: 676, column: 14, scope: !2642)
!2706 = !DILocation(line: 677, column: 14, scope: !2703)
!2707 = !DILocation(line: 677, column: 7, scope: !2703)
!2708 = !DILocation(line: 678, column: 36, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 678, column: 14)
!2710 = !DILocation(line: 679, column: 10, scope: !2709)
!2711 = !DILocation(line: 679, column: 7, scope: !2709)
!2712 = !DILocation(line: 684, column: 16, scope: !2629)
!2713 = !DILocation(line: 685, column: 8, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 685, column: 7)
!2715 = !DILocation(line: 685, column: 7, scope: !2629)
!2716 = !DILocation(line: 691, column: 28, scope: !2629)
!2717 = !DILocation(line: 691, column: 13, scope: !2629)
!2718 = !DILocation(line: 692, column: 7, scope: !2629)
!2719 = !DILocation(line: 693, column: 13, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 692, column: 7)
!2721 = !DILocation(line: 693, column: 5, scope: !2720)
!2722 = !DILocation(line: 696, column: 18, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 696, column: 11)
!2724 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 695, column: 5)
!2725 = !DILocation(line: 696, column: 33, scope: !2723)
!2726 = !DILocation(line: 696, column: 11, scope: !2724)
!2727 = !DILocation(line: 699, column: 11, scope: !2724)
!2728 = !DILocation(line: 0, scope: !2720)
!2729 = !DILocation(line: 704, column: 19, scope: !2629)
!2730 = !DILocation(line: 705, column: 32, scope: !2629)
!2731 = !DILocation(line: 705, column: 3, scope: !2629)
!2732 = !DILocation(line: 706, column: 3, scope: !2629)
!2733 = !DILocation(line: 706, column: 17, scope: !2629)
!2734 = !DILocation(line: 708, column: 35, scope: !2629)
!2735 = !DILocation(line: 708, column: 3, scope: !2629)
!2736 = !DILocation(line: 709, column: 18, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 709, column: 7)
!2738 = !DILocation(line: 709, column: 7, scope: !2629)
!2739 = !DILocation(line: 715, column: 32, scope: !2737)
!2740 = !DILocation(line: 715, column: 5, scope: !2737)
!2741 = !DILocation(line: 721, column: 7, scope: !2648)
!2742 = !DILocation(line: 722, column: 7, scope: !2648)
!2743 = !DILocation(line: 722, column: 30, scope: !2648)
!2744 = !DILocation(line: 722, column: 33, scope: !2648)
!2745 = !DILocation(line: 721, column: 7, scope: !2629)
!2746 = !DILocation(line: 724, column: 12, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 724, column: 11)
!2748 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 723, column: 5)
!2749 = !DILocation(line: 724, column: 11, scope: !2748)
!2750 = !DILocation(line: 725, column: 11, scope: !2747)
!2751 = !DILocation(line: 725, column: 2, scope: !2747)
!2752 = !DILocation(line: 727, column: 2, scope: !2747)
!2753 = !DILocation(line: 730, column: 12, scope: !2647)
!2754 = !DILocation(line: 731, column: 5, scope: !2647)
!2755 = !DILocation(line: 731, column: 28, scope: !2647)
!2756 = !DILocation(line: 731, column: 31, scope: !2647)
!2757 = !DILocation(line: 730, column: 12, scope: !2648)
!2758 = !DILocation(line: 733, column: 7, scope: !2646)
!2759 = !DILocation(line: 0, scope: !2646)
!2760 = !DILocation(line: 734, column: 22, scope: !2646)
!2761 = !DILocation(line: 735, column: 20, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 735, column: 11)
!2763 = !DILocation(line: 735, column: 24, scope: !2762)
!2764 = !DILocation(line: 735, column: 28, scope: !2762)
!2765 = !DILocation(line: 735, column: 11, scope: !2646)
!2766 = !DILocation(line: 736, column: 2, scope: !2762)
!2767 = !DILocation(line: 737, column: 5, scope: !2647)
!2768 = !DILocation(line: 737, column: 5, scope: !2646)
!2769 = !DILocation(line: 740, column: 11, scope: !2629)
!2770 = !DILocation(line: 741, column: 13, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 741, column: 7)
!2772 = !DILocation(line: 741, column: 7, scope: !2629)
!2773 = !DILocation(line: 742, column: 60, scope: !2771)
!2774 = !DILocation(line: 742, column: 39, scope: !2771)
!2775 = !DILocation(line: 742, column: 13, scope: !2771)
!2776 = !DILocation(line: 742, column: 5, scope: !2771)
!2777 = !DILocation(line: 745, column: 7, scope: !2629)
!2778 = !DILocation(line: 746, column: 13, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 745, column: 7)
!2780 = !DILocation(line: 746, column: 5, scope: !2779)
!2781 = !DILocation(line: 749, column: 1, scope: !2629)
!2782 = distinct !DISubprogram(name: "lex_string", scope: !3, file: !3, line: 894, type: !2783, scopeLine: 895, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!19, !1374, !1058, !515, !515}
!2785 = !{!2786, !2787, !2788, !2789, !2790, !2791, !2792, !2824, !2825, !2826, !2827, !2828}
!2786 = !DILocalVariable(name: "tok", arg: 1, scope: !2782, file: !3, line: 894, type: !1374)
!2787 = !DILocalVariable(name: "valp", arg: 2, scope: !2782, file: !3, line: 894, type: !1058)
!2788 = !DILocalVariable(name: "objc_string", arg: 3, scope: !2782, file: !3, line: 894, type: !515)
!2789 = !DILocalVariable(name: "translate", arg: 4, scope: !2782, file: !3, line: 894, type: !515)
!2790 = !DILocalVariable(name: "value", scope: !2782, file: !3, line: 896, type: !547)
!2791 = !DILocalVariable(name: "concats", scope: !2782, file: !3, line: 897, type: !1558)
!2792 = !DILocalVariable(name: "str_ob", scope: !2782, file: !3, line: 898, type: !2793)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !2794, line: 164, size: 704, elements: !2795)
!2794 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2795 = !{!2796, !2797, !2807, !2808, !2809, !2810, !2811, !2812, !2816, !2820, !2821, !2822, !2823}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !2793, file: !2794, line: 166, baseType: !602, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !2793, file: !2794, line: 167, baseType: !2798, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !2794, line: 157, size: 192, elements: !2800)
!2800 = !{!2801, !2802, !2803}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2799, file: !2794, line: 159, baseType: !518, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2799, file: !2794, line: 160, baseType: !2798, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !2799, file: !2794, line: 161, baseType: !2804, size: 32, offset: 128)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 32, elements: !2805)
!2805 = !{!2806}
!2806 = !DISubrange(count: 4)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !2793, file: !2794, line: 168, baseType: !518, size: 64, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !2793, file: !2794, line: 169, baseType: !518, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !2793, file: !2794, line: 170, baseType: !518, size: 64, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2793, file: !2794, line: 171, baseType: !602, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !2793, file: !2794, line: 172, baseType: !516, size: 32, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !2793, file: !2794, line: 176, baseType: !2813, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!2798, !520, !602}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !2793, file: !2794, line: 177, baseType: !2817, size: 64, offset: 512)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !520, !2798}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !2793, file: !2794, line: 178, baseType: !520, size: 64, offset: 576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !2793, file: !2794, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !2793, file: !2794, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !2793, file: !2794, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2824 = !DILocalVariable(name: "istr", scope: !2782, file: !3, line: 899, type: !1353)
!2825 = !DILocalVariable(name: "type", scope: !2782, file: !3, line: 900, type: !19)
!2826 = !DILocalVariable(name: "str", scope: !2782, file: !3, line: 904, type: !1353)
!2827 = !DILocalVariable(name: "strs", scope: !2782, file: !3, line: 905, type: !1352)
!2828 = !DILabel(scope: !2782, name: "retry", file: !3, line: 907)
!2829 = !DILocation(line: 0, scope: !2782)
!2830 = !DILocation(line: 898, column: 3, scope: !2782)
!2831 = !DILocation(line: 899, column: 3, scope: !2782)
!2832 = !DILocation(line: 900, column: 30, scope: !2782)
!2833 = !DILocation(line: 904, column: 3, scope: !2782)
!2834 = !DILocation(line: 904, column: 29, scope: !2782)
!2835 = !DILocation(line: 0, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 938, column: 2)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 937, column: 11)
!2838 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 910, column: 5)
!2839 = !DILocation(line: 905, column: 3, scope: !2782)
!2840 = !DILocation(line: 909, column: 3, scope: !2782)
!2841 = !DILocation(line: 907, column: 2, scope: !2782)
!2842 = !DILocation(line: 908, column: 24, scope: !2782)
!2843 = !DILocation(line: 908, column: 9, scope: !2782)
!2844 = !DILocation(line: 909, column: 16, scope: !2782)
!2845 = !DILocation(line: 914, column: 11, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 914, column: 11)
!2847 = !DILocation(line: 914, column: 11, scope: !2838)
!2848 = !DILocation(line: 928, column: 24, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 928, column: 11)
!2850 = !DILocation(line: 928, column: 16, scope: !2849)
!2851 = !DILocation(line: 928, column: 11, scope: !2838)
!2852 = !DILocation(line: 930, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 930, column: 8)
!2854 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 929, column: 2)
!2855 = !DILocation(line: 930, column: 8, scope: !2854)
!2856 = !DILocation(line: 931, column: 6, scope: !2853)
!2857 = !DILocation(line: 933, column: 6, scope: !2853)
!2858 = !DILocation(line: 937, column: 12, scope: !2837)
!2859 = !DILocation(line: 937, column: 11, scope: !2838)
!2860 = !DILocation(line: 944, column: 7, scope: !2838)
!2861 = !DILocation(line: 939, column: 4, scope: !2836)
!2862 = !DILocation(line: 940, column: 4, scope: !2836)
!2863 = !DILocation(line: 941, column: 2, scope: !2836)
!2864 = !DILocation(line: 943, column: 14, scope: !2838)
!2865 = !DILocation(line: 945, column: 7, scope: !2838)
!2866 = !DILocation(line: 949, column: 23, scope: !2782)
!2867 = !DILocation(line: 949, column: 3, scope: !2782)
!2868 = !DILocation(line: 950, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 950, column: 7)
!2870 = !DILocation(line: 950, column: 7, scope: !2782)
!2871 = !DILocation(line: 951, column: 12, scope: !2869)
!2872 = !DILocation(line: 951, column: 5, scope: !2869)
!2873 = !DILocation(line: 953, column: 19, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 953, column: 7)
!2875 = !DILocation(line: 953, column: 15, scope: !2874)
!2876 = !DILocation(line: 953, column: 35, scope: !2874)
!2877 = !DILocation(line: 953, column: 7, scope: !2782)
!2878 = !DILocation(line: 954, column: 5, scope: !2874)
!2879 = !DILocation(line: 957, column: 8, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 957, column: 7)
!2881 = !DILocation(line: 959, column: 8, scope: !2880)
!2882 = !DILocation(line: 959, column: 32, scope: !2880)
!2883 = !DILocation(line: 957, column: 7, scope: !2880)
!2884 = !DILocation(line: 957, column: 7, scope: !2782)
!2885 = !DILocation(line: 961, column: 34, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 960, column: 5)
!2887 = !DILocation(line: 961, column: 59, scope: !2886)
!2888 = !DILocation(line: 961, column: 15, scope: !2886)
!2889 = !DILocation(line: 962, column: 13, scope: !2886)
!2890 = !DILocation(line: 962, column: 7, scope: !2886)
!2891 = !DILocation(line: 963, column: 5, scope: !2886)
!2892 = !DILocation(line: 969, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 965, column: 5)
!2894 = !DILocation(line: 974, column: 12, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 970, column: 2)
!2896 = !DILocation(line: 975, column: 4, scope: !2895)
!2897 = !DILocation(line: 977, column: 26, scope: !2895)
!2898 = !DILocation(line: 978, column: 7, scope: !2895)
!2899 = !DILocation(line: 978, column: 5, scope: !2895)
!2900 = !DILocation(line: 977, column: 12, scope: !2895)
!2901 = !DILocation(line: 980, column: 4, scope: !2895)
!2902 = !DILocation(line: 982, column: 26, scope: !2895)
!2903 = !DILocation(line: 983, column: 7, scope: !2895)
!2904 = !DILocation(line: 983, column: 5, scope: !2895)
!2905 = !DILocation(line: 982, column: 12, scope: !2895)
!2906 = !DILocation(line: 985, column: 4, scope: !2895)
!2907 = !DILocation(line: 987, column: 26, scope: !2895)
!2908 = !DILocation(line: 988, column: 7, scope: !2895)
!2909 = !DILocation(line: 988, column: 5, scope: !2895)
!2910 = !DILocation(line: 987, column: 12, scope: !2895)
!2911 = !DILocation(line: 991, column: 4, scope: !2895)
!2912 = !DILocation(line: 0, scope: !2880)
!2913 = !DILocation(line: 995, column: 3, scope: !2782)
!2914 = !DILocation(line: 1000, column: 27, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 996, column: 5)
!2916 = !DILocation(line: 1000, column: 7, scope: !2915)
!2917 = !DILocation(line: 1000, column: 25, scope: !2915)
!2918 = !DILocation(line: 1001, column: 7, scope: !2915)
!2919 = !DILocation(line: 1003, column: 27, scope: !2915)
!2920 = !DILocation(line: 1003, column: 7, scope: !2915)
!2921 = !DILocation(line: 1003, column: 25, scope: !2915)
!2922 = !DILocation(line: 1004, column: 7, scope: !2915)
!2923 = !DILocation(line: 1006, column: 27, scope: !2915)
!2924 = !DILocation(line: 1006, column: 7, scope: !2915)
!2925 = !DILocation(line: 1006, column: 25, scope: !2915)
!2926 = !DILocation(line: 1007, column: 7, scope: !2915)
!2927 = !DILocation(line: 1009, column: 27, scope: !2915)
!2928 = !DILocation(line: 1009, column: 7, scope: !2915)
!2929 = !DILocation(line: 1009, column: 25, scope: !2915)
!2930 = !DILocation(line: 1010, column: 5, scope: !2915)
!2931 = !DILocation(line: 1011, column: 11, scope: !2782)
!2932 = !DILocation(line: 1011, column: 9, scope: !2782)
!2933 = !DILocation(line: 1013, column: 7, scope: !2782)
!2934 = !DILocation(line: 1014, column: 5, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1013, column: 7)
!2936 = !DILocation(line: 1016, column: 10, scope: !2782)
!2937 = !DILocation(line: 1017, column: 1, scope: !2782)
!2938 = !DILocation(line: 1016, column: 3, scope: !2782)
!2939 = distinct !DISubprogram(name: "lex_charconst", scope: !3, file: !3, line: 1021, type: !2940, scopeLine: 1022, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!547, !1374}
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948}
!2943 = !DILocalVariable(name: "token", arg: 1, scope: !2939, file: !3, line: 1021, type: !1374)
!2944 = !DILocalVariable(name: "result", scope: !2939, file: !3, line: 1023, type: !1436)
!2945 = !DILocalVariable(name: "type", scope: !2939, file: !3, line: 1024, type: !547)
!2946 = !DILocalVariable(name: "value", scope: !2939, file: !3, line: 1024, type: !547)
!2947 = !DILocalVariable(name: "chars_seen", scope: !2939, file: !3, line: 1025, type: !7)
!2948 = !DILocalVariable(name: "unsignedp", scope: !2939, file: !3, line: 1026, type: !516)
!2949 = !DILocation(line: 0, scope: !2939)
!2950 = !DILocation(line: 1025, column: 3, scope: !2939)
!2951 = !DILocation(line: 1026, column: 3, scope: !2939)
!2952 = !DILocation(line: 1026, column: 7, scope: !2939)
!2953 = !DILocation(line: 1028, column: 37, scope: !2939)
!2954 = !DILocation(line: 1028, column: 12, scope: !2939)
!2955 = !DILocation(line: 1031, column: 14, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1031, column: 7)
!2957 = !DILocation(line: 1031, column: 19, scope: !2956)
!2958 = !DILocation(line: 1031, column: 7, scope: !2939)
!2959 = !DILocation(line: 1032, column: 12, scope: !2956)
!2960 = !DILocation(line: 1032, column: 5, scope: !2956)
!2961 = !DILocation(line: 1033, column: 24, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1033, column: 12)
!2963 = !DILocation(line: 1033, column: 12, scope: !2956)
!2964 = !DILocation(line: 1034, column: 12, scope: !2962)
!2965 = !DILocation(line: 1034, column: 5, scope: !2962)
!2966 = !DILocation(line: 1035, column: 24, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 1035, column: 12)
!2968 = !DILocation(line: 1035, column: 12, scope: !2962)
!2969 = !DILocation(line: 1036, column: 12, scope: !2967)
!2970 = !DILocation(line: 1036, column: 5, scope: !2967)
!2971 = !DILocation(line: 1039, column: 13, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 1039, column: 12)
!2973 = !DILocation(line: 1039, column: 33, scope: !2972)
!2974 = !DILocation(line: 1039, column: 44, scope: !2972)
!2975 = !DILocation(line: 1039, column: 30, scope: !2972)
!2976 = !DILocation(line: 0, scope: !2956)
!2977 = !DILocation(line: 1046, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1046, column: 7)
!2979 = !DILocation(line: 1046, column: 46, scope: !2978)
!2980 = !DILocation(line: 1046, column: 17, scope: !2978)
!2981 = !DILocation(line: 1047, column: 39, scope: !2978)
!2982 = !DILocation(line: 1047, column: 13, scope: !2978)
!2983 = !DILocation(line: 1047, column: 5, scope: !2978)
!2984 = !DILocation(line: 1049, column: 39, scope: !2978)
!2985 = !DILocation(line: 1049, column: 13, scope: !2978)
!2986 = !DILocation(line: 0, scope: !2978)
!2987 = !DILocation(line: 1052, column: 1, scope: !2939)
!2988 = !DILocation(line: 1051, column: 3, scope: !2939)
!2989 = distinct !DISubprogram(name: "narrowest_unsigned_type", scope: !3, file: !3, line: 471, type: !2990, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!454, !530, !530, !7}
!2992 = !{!2993, !2994, !2995, !2996, !2997}
!2993 = !DILocalVariable(name: "low", arg: 1, scope: !2989, file: !3, line: 471, type: !530)
!2994 = !DILocalVariable(name: "high", arg: 2, scope: !2989, file: !3, line: 472, type: !530)
!2995 = !DILocalVariable(name: "flags", arg: 3, scope: !2989, file: !3, line: 473, type: !7)
!2996 = !DILocalVariable(name: "itk", scope: !2989, file: !3, line: 475, type: !516)
!2997 = !DILocalVariable(name: "upper", scope: !2998, file: !3, line: 486, type: !547)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 485, column: 5)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 484, column: 3)
!3000 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 484, column: 3)
!3001 = !DILocation(line: 0, scope: !2989)
!3002 = !DILocation(line: 477, column: 14, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 477, column: 7)
!3004 = !DILocation(line: 477, column: 29, scope: !3003)
!3005 = !DILocation(line: 477, column: 7, scope: !2989)
!3006 = !DILocation(line: 484, column: 3, scope: !2989)
!3007 = !DILocation(line: 484, column: 14, scope: !2999)
!3008 = !DILocation(line: 484, column: 3, scope: !3000)
!3009 = !DILocation(line: 486, column: 20, scope: !2998)
!3010 = !DILocation(line: 0, scope: !2998)
!3011 = !DILocation(line: 488, column: 36, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 488, column: 11)
!3013 = !DILocation(line: 488, column: 62, scope: !3012)
!3014 = !DILocation(line: 489, column: 4, scope: !3012)
!3015 = !DILocation(line: 489, column: 59, scope: !3012)
!3016 = !DILocation(line: 490, column: 8, scope: !3012)
!3017 = !DILocation(line: 490, column: 11, scope: !3012)
!3018 = !DILocation(line: 490, column: 36, scope: !3012)
!3019 = !DILocation(line: 488, column: 11, scope: !2998)
!3020 = !DILocation(line: 492, column: 5, scope: !2999)
!3021 = !DILocation(line: 484, column: 30, scope: !2999)
!3022 = !DILocation(line: 484, column: 3, scope: !2999)
!3023 = distinct !{!3023, !3008, !3024}
!3024 = !DILocation(line: 492, column: 5, scope: !3000)
!3025 = !DILocation(line: 495, column: 1, scope: !2989)
!3026 = distinct !DISubprogram(name: "narrowest_signed_type", scope: !3, file: !3, line: 499, type: !2990, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3032}
!3028 = !DILocalVariable(name: "low", arg: 1, scope: !3026, file: !3, line: 499, type: !530)
!3029 = !DILocalVariable(name: "high", arg: 2, scope: !3026, file: !3, line: 500, type: !530)
!3030 = !DILocalVariable(name: "flags", arg: 3, scope: !3026, file: !3, line: 500, type: !7)
!3031 = !DILocalVariable(name: "itk", scope: !3026, file: !3, line: 502, type: !516)
!3032 = !DILocalVariable(name: "upper", scope: !3033, file: !3, line: 514, type: !547)
!3033 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 513, column: 5)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 512, column: 3)
!3035 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 512, column: 3)
!3036 = !DILocation(line: 0, scope: !3026)
!3037 = !DILocation(line: 504, column: 14, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 504, column: 7)
!3039 = !DILocation(line: 504, column: 29, scope: !3038)
!3040 = !DILocation(line: 504, column: 7, scope: !3026)
!3041 = !DILocation(line: 512, column: 3, scope: !3026)
!3042 = !DILocation(line: 512, column: 14, scope: !3034)
!3043 = !DILocation(line: 512, column: 3, scope: !3035)
!3044 = !DILocation(line: 514, column: 20, scope: !3033)
!3045 = !DILocation(line: 0, scope: !3033)
!3046 = !DILocation(line: 516, column: 36, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 516, column: 11)
!3048 = !DILocation(line: 516, column: 62, scope: !3047)
!3049 = !DILocation(line: 517, column: 4, scope: !3047)
!3050 = !DILocation(line: 517, column: 59, scope: !3047)
!3051 = !DILocation(line: 518, column: 8, scope: !3047)
!3052 = !DILocation(line: 518, column: 11, scope: !3047)
!3053 = !DILocation(line: 518, column: 36, scope: !3047)
!3054 = !DILocation(line: 516, column: 11, scope: !3033)
!3055 = !DILocation(line: 520, column: 5, scope: !3034)
!3056 = !DILocation(line: 512, column: 30, scope: !3034)
!3057 = !DILocation(line: 512, column: 3, scope: !3034)
!3058 = distinct !{!3058, !3043, !3059}
!3059 = !DILocation(line: 520, column: 5, scope: !3035)
!3060 = !DILocation(line: 523, column: 1, scope: !3026)
!3061 = distinct !DISubprogram(name: "interpret_fixed", scope: !3, file: !3, line: 755, type: !2479, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3062)
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3068, !3069}
!3063 = !DILocalVariable(name: "token", arg: 1, scope: !3061, file: !3, line: 755, type: !1374)
!3064 = !DILocalVariable(name: "flags", arg: 2, scope: !3061, file: !3, line: 755, type: !7)
!3065 = !DILocalVariable(name: "type", scope: !3061, file: !3, line: 757, type: !547)
!3066 = !DILocalVariable(name: "value", scope: !3061, file: !3, line: 758, type: !547)
!3067 = !DILocalVariable(name: "fixed", scope: !3061, file: !3, line: 759, type: !628)
!3068 = !DILocalVariable(name: "copy", scope: !3061, file: !3, line: 760, type: !518)
!3069 = !DILocalVariable(name: "copylen", scope: !3061, file: !3, line: 761, type: !1558)
!3070 = !DILocation(line: 0, scope: !3061)
!3071 = !DILocation(line: 759, column: 3, scope: !3061)
!3072 = !DILocation(line: 763, column: 28, scope: !3061)
!3073 = !DILocation(line: 763, column: 13, scope: !3061)
!3074 = !DILocation(line: 765, column: 13, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 765, column: 7)
!3076 = !DILocation(line: 0, scope: !3075)
!3077 = !DILocation(line: 765, column: 7, scope: !3061)
!3078 = !DILocation(line: 767, column: 11, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 766, column: 5)
!3080 = !DILocation(line: 769, column: 8, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 768, column: 2)
!3082 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 767, column: 11)
!3083 = !DILocation(line: 771, column: 15, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 770, column: 6)
!3085 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 769, column: 8)
!3086 = !DILocation(line: 772, column: 16, scope: !3084)
!3087 = !DILocation(line: 773, column: 6, scope: !3084)
!3088 = !DILocation(line: 774, column: 35, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 774, column: 13)
!3090 = !DILocation(line: 774, column: 13, scope: !3085)
!3091 = !DILocation(line: 776, column: 15, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 775, column: 6)
!3093 = !DILocation(line: 777, column: 16, scope: !3092)
!3094 = !DILocation(line: 778, column: 6, scope: !3092)
!3095 = !DILocation(line: 779, column: 35, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 779, column: 13)
!3097 = !DILocation(line: 779, column: 13, scope: !3089)
!3098 = !DILocation(line: 792, column: 8, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 791, column: 2)
!3100 = !DILocation(line: 794, column: 15, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 793, column: 6)
!3102 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 792, column: 8)
!3103 = !DILocation(line: 795, column: 16, scope: !3101)
!3104 = !DILocation(line: 796, column: 6, scope: !3101)
!3105 = !DILocation(line: 797, column: 35, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 797, column: 13)
!3107 = !DILocation(line: 797, column: 13, scope: !3102)
!3108 = !DILocation(line: 799, column: 15, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 798, column: 6)
!3110 = !DILocation(line: 800, column: 16, scope: !3109)
!3111 = !DILocation(line: 801, column: 6, scope: !3109)
!3112 = !DILocation(line: 802, column: 35, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 802, column: 13)
!3114 = !DILocation(line: 802, column: 13, scope: !3106)
!3115 = !DILocation(line: 816, column: 11, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 815, column: 5)
!3117 = !DILocation(line: 818, column: 8, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 817, column: 2)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 816, column: 11)
!3120 = !DILocation(line: 820, column: 15, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 819, column: 6)
!3122 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 818, column: 8)
!3123 = !DILocation(line: 821, column: 16, scope: !3121)
!3124 = !DILocation(line: 822, column: 6, scope: !3121)
!3125 = !DILocation(line: 823, column: 35, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 823, column: 13)
!3127 = !DILocation(line: 823, column: 13, scope: !3122)
!3128 = !DILocation(line: 825, column: 15, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 824, column: 6)
!3130 = !DILocation(line: 826, column: 16, scope: !3129)
!3131 = !DILocation(line: 827, column: 6, scope: !3129)
!3132 = !DILocation(line: 828, column: 35, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 828, column: 13)
!3134 = !DILocation(line: 828, column: 13, scope: !3126)
!3135 = !DILocation(line: 841, column: 8, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 840, column: 9)
!3137 = !DILocation(line: 843, column: 15, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 842, column: 6)
!3139 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 841, column: 8)
!3140 = !DILocation(line: 844, column: 16, scope: !3138)
!3141 = !DILocation(line: 845, column: 6, scope: !3138)
!3142 = !DILocation(line: 846, column: 35, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 846, column: 13)
!3144 = !DILocation(line: 846, column: 13, scope: !3139)
!3145 = !DILocation(line: 848, column: 15, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 847, column: 6)
!3147 = !DILocation(line: 849, column: 16, scope: !3146)
!3148 = !DILocation(line: 850, column: 6, scope: !3146)
!3149 = !DILocation(line: 851, column: 35, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 851, column: 13)
!3151 = !DILocation(line: 851, column: 13, scope: !3143)
!3152 = !DILocation(line: 864, column: 19, scope: !3061)
!3153 = !DILocation(line: 865, column: 32, scope: !3061)
!3154 = !DILocation(line: 865, column: 3, scope: !3061)
!3155 = !DILocation(line: 866, column: 3, scope: !3061)
!3156 = !DILocation(line: 866, column: 17, scope: !3061)
!3157 = !DILocation(line: 868, column: 36, scope: !3061)
!3158 = !DILocation(line: 868, column: 3, scope: !3061)
!3159 = !DILocation(line: 871, column: 11, scope: !3061)
!3160 = !DILocation(line: 874, column: 1, scope: !3061)
!3161 = !DILocation(line: 873, column: 3, scope: !3061)
