; ModuleID = 'c-opts.bc'
source_filename = "c-opts.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i8* (i64)*, i32, i32, %struct.cpp_reader*, i32, i32, i8 }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.cpp_reader = type opaque
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8* (i8*, i64)* }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.deferred_opt = type { i32, i8* }
%struct.cl_option = type { i8*, i8*, i16, i8, i32, i32, i8*, i32, i32 }
%struct.gcc_targetcm = type { i8 (i64, i8*, i32)* }
%struct.visibility_flags = type { i8, [3 x i8] }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void ()*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i8 (%union.tree_node*)*, void (i32, i8*, i32, i8)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)*, void (i32)*, void (%struct.rtx_def*)*, void ()*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void (i32)*, void (%union.tree_node*, %union.tree_node*)*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)*, void (%struct.cpp_reader*, i8*, i32, i8*)*, i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)*, %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)*, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.cpp_dir = type { %struct.cpp_dir*, i8*, i32, i8, i8, i8*, i8**, i8* (i8*, %struct.cpp_dir*)*, i64, i64 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%union._cpp_hashnode_value = type { %struct.cpp_macro* }
%struct.cpp_macro = type opaque
%struct.deps = type opaque
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [33 x i8] c"no class name specified with %qs\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"assertion missing after %qs\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"macro name missing after %qs\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"missing path after %qs\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"missing filename after %qs\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"missing makefile target after %qs\00", align 1
@c_common_init_options.lang_flags = internal unnamed_addr constant [4 x i32] [i32 2, i32 64, i32 4, i32 128], align 16, !dbg !0
@c_language = external dso_local local_unnamed_addr global i32, align 4
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@ident_hash = external dso_local local_unnamed_addr global %struct.ht*, align 8
@line_table = external dso_local local_unnamed_addr global %struct.line_maps*, align 8
@parse_in = external dso_local local_unnamed_addr global %struct.cpp_reader*, align 8
@cpp_opts = common dso_local local_unnamed_addr global %struct.cpp_options* null, align 8, !dbg !946
@flag_exceptions = external dso_local local_unnamed_addr global i32, align 4
@warn_pointer_arith = external dso_local local_unnamed_addr global i32, align 4
@warn_write_strings = external dso_local local_unnamed_addr global i32, align 4
@flag_warn_unused_result = external dso_local local_unnamed_addr global i8, align 1
@flag_complex_method = external dso_local local_unnamed_addr global i32, align 4
@deferred_opts = internal unnamed_addr global %struct.deferred_opt* null, align 8, !dbg !1093
@.str.6 = private unnamed_addr constant [10 x i8] c"-lang-asm\00", align 1
@cl_options = external dso_local local_unnamed_addr constant [0 x %struct.cl_option], align 8
@targetcm = external dso_local local_unnamed_addr global %struct.gcc_targetcm, align 8
@pch_file = external dso_local local_unnamed_addr global i8*, align 8
@flag_preprocess_only = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@quote_chain_split = internal unnamed_addr global i1 false, align 1, !dbg !1295
@.str.8 = private unnamed_addr constant [20 x i8] c"-I- specified twice\00", align 1
@input_location = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [53 x i8] c"obsolete option -I- used, please use -iquote instead\00", align 1
@flag_no_output = external dso_local local_unnamed_addr global i8, align 1
@deps_file = internal unnamed_addr global i8* null, align 8, !dbg !1083
@deps_seen = internal unnamed_addr global i1 false, align 1, !dbg !1296
@flag_no_line_commands = external dso_local local_unnamed_addr global i8, align 1
@flag_working_directory = external dso_local local_unnamed_addr global i32, align 4
@warn_unused = external dso_local local_unnamed_addr global i32, align 4
@warn_char_subscripts = external dso_local local_unnamed_addr global i32, align 4
@warn_missing_braces = external dso_local local_unnamed_addr global i32, align 4
@warn_parentheses = external dso_local local_unnamed_addr global i32, align 4
@warn_return_type = external dso_local local_unnamed_addr global i32, align 4
@warn_sequence_point = external dso_local local_unnamed_addr global i32, align 4
@warn_switch = external dso_local local_unnamed_addr global i32, align 4
@warn_strict_aliasing = external dso_local local_unnamed_addr global i32, align 4
@warn_address = external dso_local local_unnamed_addr global i32, align 4
@warn_strict_overflow = external dso_local local_unnamed_addr global i32, align 4
@warn_array_bounds = external dso_local local_unnamed_addr global i32, align 4
@warn_volatile_register_var = external dso_local local_unnamed_addr global i32, align 4
@warn_unknown_pragmas = external dso_local local_unnamed_addr global i32, align 4
@warn_uninitialized = external dso_local local_unnamed_addr global i32, align 4
@warn_main = external dso_local local_unnamed_addr global i32, align 4
@warn_enum_compare = external dso_local local_unnamed_addr global i32, align 4
@warn_sign_compare = external dso_local local_unnamed_addr global i32, align 4
@warn_reorder = external dso_local local_unnamed_addr global i32, align 4
@warn_cxx0x_compat = external dso_local local_unnamed_addr global i32, align 4
@warn_pointer_sign = external dso_local local_unnamed_addr global i32, align 4
@warn_jump_misses_init = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"implicit-function-declaration\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"nfkc\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"argument %qs to %<-Wnormalized%> not recognized\00", align 1
@warn_strict_null_sentinel = external dso_local local_unnamed_addr global i32, align 4
@warn_unused_macros = internal unnamed_addr global i8 0, align 1, !dbg !1091
@warn_variadic_macros = internal unnamed_addr global i8 1, align 1, !dbg !1097
@warn_ecpp = external dso_local local_unnamed_addr global i32, align 4
@warn_nonvdtor = external dso_local local_unnamed_addr global i32, align 4
@flag_cond_mismatch = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"switch %qs is no longer supported\00", align 1
@flag_access_control = external dso_local local_unnamed_addr global i32, align 4
@flag_no_asm = external dso_local local_unnamed_addr global i32, align 4
@flag_no_builtin = external dso_local local_unnamed_addr global i32, align 4
@flag_hosted = external dso_local local_unnamed_addr global i32, align 4
@flag_short_double = external dso_local local_unnamed_addr global i32, align 4
@flag_short_enums = external dso_local local_unnamed_addr global i32, align 4
@flag_short_wchar = external dso_local local_unnamed_addr global i32, align 4
@flag_signed_bitfields = external dso_local local_unnamed_addr global i32, align 4
@flag_signed_char = external dso_local local_unnamed_addr global i32, align 4
@flag_check_new = external dso_local local_unnamed_addr global i32, align 4
@flag_conserve_space = external dso_local local_unnamed_addr global i32, align 4
@constant_string_class_name = external dso_local local_unnamed_addr global i8*, align 8
@flag_default_inline = external dso_local local_unnamed_addr global i32, align 4
@flag_elide_constructors = external dso_local local_unnamed_addr global i32, align 4
@flag_enforce_eh_specs = external dso_local local_unnamed_addr global i32, align 4
@flag_new_for_scope = external dso_local local_unnamed_addr global i32, align 4
@flag_no_gnu_keywords = external dso_local local_unnamed_addr global i32, align 4
@flag_next_runtime = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [77 x i8] c"-fhandle-exceptions has been renamed -fexceptions (and is now on by default)\00", align 1
@flag_implement_inlines = external dso_local local_unnamed_addr global i32, align 4
@flag_implicit_inline_templates = external dso_local local_unnamed_addr global i32, align 4
@flag_implicit_templates = external dso_local local_unnamed_addr global i32, align 4
@flag_lax_vector_conversions = external dso_local local_unnamed_addr global i32, align 4
@flag_ms_extensions = external dso_local local_unnamed_addr global i32, align 4
@flag_nil_receivers = external dso_local local_unnamed_addr global i32, align 4
@flag_no_nonansi_builtin = external dso_local local_unnamed_addr global i32, align 4
@flag_optional_diags = external dso_local local_unnamed_addr global i32, align 4
@flag_pch_preprocess = external dso_local local_unnamed_addr global i8, align 1
@flag_permissive = external dso_local local_unnamed_addr global i32, align 4
@flag_replace_objc_classes = external dso_local local_unnamed_addr global i32, align 4
@flag_use_repository = external dso_local local_unnamed_addr global i32, align 4
@flag_rtti = external dso_local local_unnamed_addr global i32, align 4
@flag_detailed_statistics = external dso_local local_unnamed_addr global i32, align 4
@max_tinst_depth = external dso_local local_unnamed_addr global i32, align 4
@flag_use_cxa_atexit = external dso_local local_unnamed_addr global i32, align 4
@flag_use_cxa_get_exception_ptr = external dso_local local_unnamed_addr global i32, align 4
@visibility_options = external dso_local local_unnamed_addr global %struct.visibility_flags, align 4
@flag_weak = external dso_local local_unnamed_addr global i32, align 4
@flag_threadsafe_statics = external dso_local local_unnamed_addr global i32, align 4
@flag_pretty_templates = external dso_local local_unnamed_addr global i32, align 4
@flag_zero_link = external dso_local local_unnamed_addr global i32, align 4
@flag_gen_declaration = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"dir:ord:sys,dir:gen:any,ind:base\00", align 1
@imultilib = internal unnamed_addr global i8* null, align 8, !dbg !1087
@iprefix = internal unnamed_addr global i8* null, align 8, !dbg !1085
@sysroot = internal unnamed_addr global i8* null, align 8, !dbg !1099
@std_inc = internal unnamed_addr global i1 false, align 1, !dbg !1297
@std_cxx_inc = internal unnamed_addr global i1 false, align 1, !dbg !1298
@out_fname = internal unnamed_addr global i8* null, align 8, !dbg !1017
@.str.20 = private unnamed_addr constant [32 x i8] c"output filename specified twice\00", align 1
@warn_overlength_strings = external dso_local local_unnamed_addr global i32, align 4
@print_struct_values = external dso_local local_unnamed_addr global i32, align 4
@exit_after_options = external dso_local local_unnamed_addr global i8, align 1
@flag_undef = external dso_local local_unnamed_addr global i32, align 4
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !1299
@warn_psabi = external dso_local local_unnamed_addr global i32, align 4
@in_fnames = external dso_local local_unnamed_addr global i8**, align 8
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@flag_excess_precision_cmdline = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"-fexcess-precision=standard for C++\00", align 1
@flag_iso = external dso_local local_unnamed_addr global i32, align 4
@flag_gnu89_inline = external dso_local local_unnamed_addr global i32, align 4
@flag_isoc99 = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [57 x i8] c"-fno-gnu89-inline is only supported in GNU99 or C99 mode\00", align 1
@flag_objc_sjlj_exceptions = external dso_local local_unnamed_addr global i32, align 4
@flag_objc_exceptions = external dso_local local_unnamed_addr global i32, align 4
@warn_type_limits = external dso_local local_unnamed_addr global i32, align 4
@extra_warnings = external dso_local local_unnamed_addr global i32, align 4
@warn_clobbered = external dso_local local_unnamed_addr global i32, align 4
@warn_empty_body = external dso_local local_unnamed_addr global i32, align 4
@warn_missing_field_initializers = external dso_local local_unnamed_addr global i32, align 4
@warn_missing_parameter_type = external dso_local local_unnamed_addr global i32, align 4
@warn_old_style_declaration = external dso_local local_unnamed_addr global i32, align 4
@warn_override_init = external dso_local local_unnamed_addr global i32, align 4
@warn_ignored_qualifiers = external dso_local local_unnamed_addr global i32, align 4
@warn_sign_conversion = external dso_local local_unnamed_addr global i32, align 4
@warn_conversion = external dso_local local_unnamed_addr global i32, align 4
@warn_packed_bitfield_compat = external dso_local local_unnamed_addr global i32, align 4
@warn_format = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [38 x i8] c"-Wformat-y2k ignored without -Wformat\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"-Wformat-extra-args ignored without -Wformat\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"-Wformat-zero-length ignored without -Wformat\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"-Wformat-nonliteral ignored without -Wformat\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"-Wformat-contains-nul ignored without -Wformat\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"-Wformat-security ignored without -Wformat\00", align 1
@warn_implicit_function_declaration = external dso_local local_unnamed_addr global i32, align 4
@cxx_dialect = external dso_local local_unnamed_addr global i32, align 4
@out_stream = internal unnamed_addr global %struct._IO_FILE* null, align 8, !dbg !1019
@.str.30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"opening output file %s: %m\00", align 1
@num_in_fnames = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [52 x i8] c"too many filenames given.  Type %s --help for usage\00", align 1
@progname = external dso_local local_unnamed_addr global i8*, align 8
@this_input_filename = internal unnamed_addr global i8* null, align 8, !dbg !1015
@c_global_trees = external dso_local local_unnamed_addr global [55 x %union.tree_node*], align 16
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@version_flag = external dso_local local_unnamed_addr global i32, align 4
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [50 x i8] c"The C parser does not support -dy, option ignored\00", align 1
@.str.34 = private unnamed_addr constant [60 x i8] c"The Objective-C parser does not support -dy, option ignored\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"The C++ parser does not support -dy, option ignored\00", align 1
@.str.36 = private unnamed_addr constant [62 x i8] c"The Objective-C++ parser does not support -dy, option ignored\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"c-opts.c\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@debug_hooks = external dso_local local_unnamed_addr global %struct.gcc_debug_hooks*, align 8
@deps_append = internal unnamed_addr global i1 false, align 1, !dbg !1300
@.str.39 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"opening dependency file %s: %m\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"closing dependency file %s: %m\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"when writing output to %s: %m\00", align 1
@deferred_count = internal unnamed_addr global i64 0, align 8, !dbg !1095
@.str.43 = private unnamed_addr constant [20 x i8] c"DEPENDENCIES_OUTPUT\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"SUNPRO_DEPENDENCIES\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"to generate dependencies you must specify either -M or -MM\00", align 1
@flag_dump_macros = external dso_local local_unnamed_addr global i8, align 1
@flag_dump_includes = external dso_local local_unnamed_addr global i8, align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"-MG may only be used with -M or -MM\00", align 1
@warn_long_long = external dso_local local_unnamed_addr global i32, align 4
@pedantic = external dso_local local_unnamed_addr global i32, align 4
@warn_traditional = external dso_local local_unnamed_addr global i32, align 4
@debug_info_level = external dso_local local_unnamed_addr global i32, align 4
@.str.47 = private unnamed_addr constant [55 x i8] c"-fdirectives-only is incompatible with -Wunused_macros\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c"-fdirectives-only is incompatible with -traditional\00", align 1
@cpp_GCC_INCLUDE_DIR = external dso_local constant [0 x i8], align 1
@cpp_GCC_INCLUDE_DIR_len = external dso_local local_unnamed_addr constant i64, align 8
@.str.49 = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"<command-line>\00", align 1
@include_cursor = internal unnamed_addr global i64 0, align 8, !dbg !1105
@.str.51 = private unnamed_addr constant [48 x i8] c"too late for # directive to set debug directory\00", align 1
@flag_isoc94 = external dso_local local_unnamed_addr global i32, align 4
@warn_implicit = external dso_local local_unnamed_addr global i32, align 4
@warn_implicit_int = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1305 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1312, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1313, metadata !DIExpression()), !dbg !1314
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1315
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !1316
  ret i32 %call, !dbg !1317
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1318 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1322
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !1323
  ret i32 %call, !dbg !1324
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1325 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1329, metadata !DIExpression()), !dbg !1330
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1331
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1331
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1331
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1331
  %cmp = icmp uge i8* %0, %1, !dbg !1331
  %conv1 = zext i1 %cmp to i64, !dbg !1331
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1331
  %tobool = icmp eq i64 %expval, 0, !dbg !1331
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1331

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1331
  br label %cond.end, !dbg !1331

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1331
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1331
  %2 = load i8, i8* %0, align 1, !dbg !1331
  %conv3 = zext i8 %2 to i32, !dbg !1331
  br label %cond.end, !dbg !1331

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1331
  ret i32 %cond, !dbg !1332
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1333 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1335, metadata !DIExpression()), !dbg !1336
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1337
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1337
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1337
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1337
  %cmp = icmp uge i8* %0, %1, !dbg !1337
  %conv1 = zext i1 %cmp to i64, !dbg !1337
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1337
  %tobool = icmp eq i64 %expval, 0, !dbg !1337
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1337

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1337
  br label %cond.end, !dbg !1337

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1337
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1337
  %2 = load i8, i8* %0, align 1, !dbg !1337
  %conv3 = zext i8 %2 to i32, !dbg !1337
  br label %cond.end, !dbg !1337

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1337
  ret i32 %cond, !dbg !1338
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1339 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1340
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1340
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1340
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1340
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1340
  %cmp = icmp uge i8* %1, %2, !dbg !1340
  %conv1 = zext i1 %cmp to i64, !dbg !1340
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1340
  %tobool = icmp eq i64 %expval, 0, !dbg !1340
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1340

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !1340
  br label %cond.end, !dbg !1340

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1340
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1340
  %3 = load i8, i8* %1, align 1, !dbg !1340
  %conv3 = zext i8 %3 to i32, !dbg !1340
  br label %cond.end, !dbg !1340

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1340
  ret i32 %cond, !dbg !1341
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1342 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1346, metadata !DIExpression()), !dbg !1347
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1348
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !1349
  ret i32 %call, !dbg !1350
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1351 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1355, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1356, metadata !DIExpression()), !dbg !1357
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1358
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1358
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1358
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1358
  %cmp = icmp uge i8* %0, %1, !dbg !1358
  %conv1 = zext i1 %cmp to i64, !dbg !1358
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1358
  %tobool = icmp eq i64 %expval, 0, !dbg !1358
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1358

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1358
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1358
  br label %cond.end, !dbg !1358

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1358
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1358
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1358
  store i8 %conv2, i8* %0, align 1, !dbg !1358
  %conv6 = and i32 %__c, 255, !dbg !1358
  br label %cond.end, !dbg !1358

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1358
  ret i32 %cond, !dbg !1359
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1360 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1362, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1363, metadata !DIExpression()), !dbg !1364
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1365
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1365
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1365
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1365
  %cmp = icmp uge i8* %0, %1, !dbg !1365
  %conv1 = zext i1 %cmp to i64, !dbg !1365
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1365
  %tobool = icmp eq i64 %expval, 0, !dbg !1365
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1365

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1365
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1365
  br label %cond.end, !dbg !1365

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1365
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1365
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1365
  store i8 %conv2, i8* %0, align 1, !dbg !1365
  %conv6 = and i32 %__c, 255, !dbg !1365
  br label %cond.end, !dbg !1365

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1365
  ret i32 %cond, !dbg !1366
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1367 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1369, metadata !DIExpression()), !dbg !1370
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1371
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1371
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1371
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1371
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1371
  %cmp = icmp uge i8* %1, %2, !dbg !1371
  %conv1 = zext i1 %cmp to i64, !dbg !1371
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1371
  %tobool = icmp eq i64 %expval, 0, !dbg !1371
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1371

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1371
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !1371
  br label %cond.end, !dbg !1371

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1371
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1371
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1371
  store i8 %conv4, i8* %1, align 1, !dbg !1371
  %conv6 = and i32 %__c, 255, !dbg !1371
  br label %cond.end, !dbg !1371

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1371
  ret i32 %cond, !dbg !1372
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1373 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1379, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1380, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1381, metadata !DIExpression()), !dbg !1382
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !1383
  ret i64 %call, !dbg !1384
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1385 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1387, metadata !DIExpression()), !dbg !1388
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1389
  %0 = load i32, i32* %_flags, align 8, !dbg !1389
  %and = lshr i32 %0, 4, !dbg !1389
  %and.lobit = and i32 %and, 1, !dbg !1389
  ret i32 %and.lobit, !dbg !1390
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1391 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1393, metadata !DIExpression()), !dbg !1394
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1395
  %0 = load i32, i32* %_flags, align 8, !dbg !1395
  %and = lshr i32 %0, 5, !dbg !1395
  %and.lobit = and i32 %and, 1, !dbg !1395
  ret i32 %and.lobit, !dbg !1396
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1397 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1400, metadata !DIExpression()), !dbg !1401
  %__c.off = add i32 %__c, 128, !dbg !1402
  %0 = icmp ult i32 %__c.off, 384, !dbg !1402
  br i1 %0, label %cond.true, label %cond.end, !dbg !1402

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !1403
  %1 = load i32*, i32** %call, align 8, !dbg !1404
  %idxprom = sext i32 %__c to i64, !dbg !1405
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1405
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1405
  br label %cond.end, !dbg !1406

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1406
  ret i32 %cond, !dbg !1407
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1408 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1410, metadata !DIExpression()), !dbg !1411
  %__c.off = add i32 %__c, 128, !dbg !1412
  %0 = icmp ult i32 %__c.off, 384, !dbg !1412
  br i1 %0, label %cond.true, label %cond.end, !dbg !1412

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !1413
  %1 = load i32*, i32** %call, align 8, !dbg !1414
  %idxprom = sext i32 %__c to i64, !dbg !1415
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1415
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1415
  br label %cond.end, !dbg !1416

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1416
  ret i32 %cond, !dbg !1417
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1418 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1423, metadata !DIExpression()), !dbg !1424
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1425
  %conv = trunc i64 %call to i32, !dbg !1426
  ret i32 %conv, !dbg !1427
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1428 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1432, metadata !DIExpression()), !dbg !1433
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1434
  ret i64 %call, !dbg !1435
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1436 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1441, metadata !DIExpression()), !dbg !1442
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !1443
  ret i64 %call, !dbg !1444
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1445 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1456, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1457, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1458, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1459, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1460, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 0, metadata !1461, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1462, metadata !DIExpression()), !dbg !1466
  br label %while.cond, !dbg !1467

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1468
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1466
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1462, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1461, metadata !DIExpression()), !dbg !1466
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1469
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1467

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1470
  %div = lshr i64 %add, 1, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %div, metadata !1463, metadata !DIExpression()), !dbg !1466
  %mul = mul i64 %div, %__size, !dbg !1473
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1474
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1464, metadata !DIExpression()), !dbg !1466
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %call, metadata !1465, metadata !DIExpression()), !dbg !1466
  %cmp1 = icmp slt i32 %call, 0, !dbg !1476
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1478

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1479
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1481

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1461, metadata !DIExpression()), !dbg !1466
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1466
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1466
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1462, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1461, metadata !DIExpression()), !dbg !1466
  br label %while.cond, !dbg !1467, !llvm.loop !1483

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1466
  ret i8* %retval.0, !dbg !1485
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1486 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1492, metadata !DIExpression()), !dbg !1493
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !1494
  ret double %call, !dbg !1495
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1496 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1505, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1506, metadata !DIExpression()), !dbg !1508
  call void @llvm.dbg.value(metadata i32 %base, metadata !1507, metadata !DIExpression()), !dbg !1508
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1509
  ret i64 %call, !dbg !1510
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1511 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1517, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1518, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %base, metadata !1519, metadata !DIExpression()), !dbg !1520
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1521
  ret i64 %call, !dbg !1522
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1523 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1534, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1535, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %base, metadata !1536, metadata !DIExpression()), !dbg !1537
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1538
  ret i64 %call, !dbg !1539
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1540 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1544, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1545, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %base, metadata !1546, metadata !DIExpression()), !dbg !1547
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1548
  ret i64 %call, !dbg !1549
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1550 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1590, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1591, metadata !DIExpression()), !dbg !1592
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1593
  ret i32 %call, !dbg !1594
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1595 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1597, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1598, metadata !DIExpression()), !dbg !1599
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1600
  ret i32 %call, !dbg !1601
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1602 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1606, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1607, metadata !DIExpression()), !dbg !1608
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !1609
  ret i32 %call, !dbg !1610
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1611 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1615, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1616, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1617, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1618, metadata !DIExpression()), !dbg !1619
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !1620
  ret i32 %call, !dbg !1621
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1622 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1626, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1627, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1628, metadata !DIExpression()), !dbg !1629
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1628, metadata !DIExpression(DW_OP_deref)), !dbg !1629
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1630
  ret i32 %call, !dbg !1631
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1632 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1636, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1637, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1638, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1639, metadata !DIExpression()), !dbg !1640
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1639, metadata !DIExpression(DW_OP_deref)), !dbg !1640
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1641
  ret i32 %call, !dbg !1642
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1643 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1667, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1668, metadata !DIExpression()), !dbg !1669
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1670
  ret i32 %call, !dbg !1671
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1672 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1674, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1675, metadata !DIExpression()), !dbg !1676
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1677
  ret i32 %call, !dbg !1678
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1679 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1683, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1684, metadata !DIExpression()), !dbg !1685
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !1686
  ret i32 %call, !dbg !1687
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1688 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1692, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1693, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1694, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1695, metadata !DIExpression()), !dbg !1696
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !1697
  ret i32 %call, !dbg !1698
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @c_common_missing_argument(i8* %opt, i64 %code) local_unnamed_addr #3 !dbg !1699 {
entry:
  call void @llvm.dbg.value(metadata i8* %opt, metadata !1703, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 %code, metadata !1704, metadata !DIExpression()), !dbg !1705
  switch i64 %code, label %return [
    i64 308, label %sw.bb
    i64 6, label %sw.bb1
    i64 9, label %sw.bb2
    i64 30, label %sw.bb2
    i64 11, label %sw.bb3
    i64 14, label %sw.bb3
    i64 737, label %sw.bb3
    i64 743, label %sw.bb3
    i64 744, label %sw.bb3
    i64 742, label %sw.bb3
    i64 19, label %sw.bb4
    i64 17, label %sw.bb4
    i64 22, label %sw.bb4
    i64 740, label %sw.bb4
    i64 738, label %sw.bb4
    i64 832, label %sw.bb4
    i64 25, label %sw.bb5
    i64 26, label %sw.bb5
  ], !dbg !1706

sw.bb:                                            ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %opt) #5, !dbg !1707
  br label %return, !dbg !1709

sw.bb1:                                           ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %opt) #5, !dbg !1710
  br label %return, !dbg !1711

sw.bb2:                                           ; preds = %entry, %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %opt) #5, !dbg !1712
  br label %return, !dbg !1713

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %opt) #5, !dbg !1714
  br label %return, !dbg !1715

sw.bb4:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %opt) #5, !dbg !1716
  br label %return, !dbg !1717

sw.bb5:                                           ; preds = %entry, %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %opt) #5, !dbg !1718
  br label %return, !dbg !1719

return:                                           ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4, %sw.bb5, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 1, %sw.bb5 ], [ 1, %sw.bb4 ], [ 1, %sw.bb3 ], [ 1, %sw.bb2 ], [ 1, %sw.bb1 ], [ 1, %sw.bb ], !dbg !1705
  ret i8 %retval.0, !dbg !1720
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @c_common_init_options(i32 %argc, i8** %argv) local_unnamed_addr #3 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1108, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1109, metadata !DIExpression()), !dbg !1721
  %0 = load i32, i32* @c_language, align 4, !dbg !1722
  %and = and i32 %0, 2, !dbg !1722
  %cmp = icmp eq i32 %and, 0, !dbg !1722
  br i1 %cmp, label %if.end, label %if.then, !dbg !1724

if.then:                                          ; preds = %entry
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !1725
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %1, i64 0, i32 0, !dbg !1725
  %2 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1725
  %line_cutoff = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %2, i64 0, i32 5, i32 1, !dbg !1725
  store i32 80, i32* %line_cutoff, align 4, !dbg !1727
  %3 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1728
  %rule = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %3, i64 0, i32 5, i32 0, !dbg !1728
  store i32 0, i32* %rule, align 4, !dbg !1729
  br label %if.end, !dbg !1730

if.end:                                           ; preds = %entry, %if.then
  %cond = select i1 %cmp, i32 0, i32 5, !dbg !1731
  %4 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1732
  %5 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1733
  %call = tail call %struct.cpp_reader* @cpp_create_reader(i32 %cond, %struct.ht* %4, %struct.line_maps* %5) #5, !dbg !1734
  store %struct.cpp_reader* %call, %struct.cpp_reader** @parse_in, align 8, !dbg !1735
  %call5 = tail call %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %call) #5, !dbg !1736
  call void @llvm.dbg.value(metadata %struct.cpp_callbacks* %call5, metadata !1112, metadata !DIExpression()), !dbg !1721
  %error = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call5, i64 0, i32 12, !dbg !1737
  store i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)* @c_cpp_error, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)** %error, align 8, !dbg !1738
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1739
  %call6 = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %6) #5, !dbg !1740
  store %struct.cpp_options* %call6, %struct.cpp_options** @cpp_opts, align 8, !dbg !1741
  %dollars_in_ident = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call6, i64 0, i32 24, !dbg !1742
  store i8 1, i8* %dollars_in_ident, align 2, !dbg !1743
  %7 = load i32, i32* @c_language, align 4, !dbg !1744
  %8 = trunc i32 %7 to i8, !dbg !1744
  %9 = and i8 %8, 1, !dbg !1744
  %objc = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call6, i64 0, i32 4, !dbg !1745
  store i8 %9, i8* %objc, align 2, !dbg !1746
  %warn_dollars = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call6, i64 0, i32 26, !dbg !1747
  store i8 0, i8* %warn_dollars, align 8, !dbg !1748
  %and10 = lshr i32 %7, 1, !dbg !1749
  %and10.lobit = and i32 %and10, 1, !dbg !1749
  store i32 %and10.lobit, i32* @flag_exceptions, align 4, !dbg !1750
  store i32 %and10.lobit, i32* @warn_pointer_arith, align 4, !dbg !1751
  store i32 %and10.lobit, i32* @warn_write_strings, align 4, !dbg !1752
  store i8 1, i8* @flag_warn_unused_result, align 1, !dbg !1753
  store i32 2, i32* @flag_complex_method, align 4, !dbg !1754
  %conv19 = zext i32 %argc to i64, !dbg !1755
  %mul = shl nuw nsw i64 %conv19, 4, !dbg !1755
  %call20 = tail call i8* @xmalloc(i64 %mul) #5, !dbg !1755
  store i8* %call20, i8** bitcast (%struct.deferred_opt** @deferred_opts to i8**), align 8, !dbg !1756
  %10 = load i32, i32* @c_language, align 4, !dbg !1757
  %idxprom = zext i32 %10 to i64, !dbg !1758
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @c_common_init_options.lang_flags, i64 0, i64 %idxprom, !dbg !1758
  %11 = load i32, i32* %arrayidx, align 4, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %11, metadata !1111, metadata !DIExpression()), !dbg !1721
  %cmp21 = icmp eq i32 %10, 0, !dbg !1759
  br i1 %cmp21, label %for.cond.preheader, label %if.end31, !dbg !1761

for.cond.preheader:                               ; preds = %if.end
  %12 = zext i32 %argc to i64, !dbg !1762
  br label %for.cond, !dbg !1762

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !1765
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1110, metadata !DIExpression()), !dbg !1721
  %cmp24 = icmp ult i64 %indvars.iv, %12, !dbg !1766
  br i1 %cmp24, label %for.body, label %if.end31.loopexit, !dbg !1762

for.body:                                         ; preds = %for.cond
  %arrayidx27 = getelementptr inbounds i8*, i8** %argv, i64 %indvars.iv, !dbg !1768
  %13 = load i8*, i8** %arrayidx27, align 8, !dbg !1768
  %call28 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !1770
  %tobool = icmp eq i32 %call28, 0, !dbg !1770
  br i1 %tobool, label %if.then29, label %for.inc, !dbg !1771

if.then29:                                        ; preds = %for.body
  %or = or i32 %11, 198, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %or, metadata !1111, metadata !DIExpression()), !dbg !1721
  br label %if.end31, !dbg !1774

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1775
  br label %for.cond, !dbg !1776, !llvm.loop !1777

if.end31.loopexit:                                ; preds = %for.cond
  br label %if.end31, !dbg !1779

if.end31:                                         ; preds = %if.end31.loopexit, %if.then29, %if.end
  %result.1 = phi i32 [ %11, %if.end ], [ %or, %if.then29 ], [ %11, %if.end31.loopexit ], !dbg !1721
  call void @llvm.dbg.value(metadata i32 %result.1, metadata !1111, metadata !DIExpression()), !dbg !1721
  ret i32 %result.1, !dbg !1779
}

declare dso_local %struct.cpp_reader* @cpp_create_reader(i32, %struct.ht*, %struct.line_maps*) local_unnamed_addr #1

declare dso_local %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local zeroext i8 @c_cpp_error(%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*) #1

declare dso_local %struct.cpp_options* @cpp_get_options(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @c_common_handle_option(i64 %scode, i8* %arg, i32 %value) local_unnamed_addr #3 !dbg !1780 {
entry:
  call void @llvm.dbg.value(metadata i64 %scode, metadata !1784, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %arg, metadata !1785, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i32 %value, metadata !1786, metadata !DIExpression()), !dbg !1804
  %conv = trunc i64 %scode to i32, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1801, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i32 1, metadata !1802, metadata !DIExpression()), !dbg !1804
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1806
  %call = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %0) #5, !dbg !1807
  %lang = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call, i64 0, i32 1, !dbg !1808
  %1 = load i32, i32* %lang, align 4, !dbg !1808
  %cmp = icmp eq i32 %1, 9, !dbg !1809
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !1803, metadata !DIExpression()), !dbg !1804
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 6, label %sw.bb11
    i32 7, label %sw.bb12
    i32 8, label %sw.bb13
    i32 9, label %sw.bb15
    i32 10, label %sw.bb16
    i32 13, label %sw.bb17
    i32 11, label %sw.epilog
    i32 14, label %sw.bb19
    i32 16, label %sw.bb28
    i32 21, label %sw.bb28
    i32 17, label %sw.bb31
    i32 22, label %sw.bb31
    i32 19, label %sw.bb38
    i32 20, label %sw.bb39
    i32 24, label %sw.bb41
    i32 25, label %sw.bb43
    i32 26, label %sw.bb43
    i32 29, label %sw.bb44
    i32 714, label %sw.bb45
    i32 30, label %sw.bb46
    i32 37, label %sw.bb47
    i32 48, label %sw.bb79
    i32 57, label %sw.bb81
    i32 58, label %sw.bb81
    i32 49, label %sw.bb84
    i32 67, label %sw.bb98
    i32 75, label %sw.bb100
    i32 79, label %sw.bb102
    i32 80, label %sw.bb104
    i32 91, label %sw.bb105
    i32 98, label %sw.bb106
    i32 102, label %sw.bb108
    i32 107, label %sw.epilog
    i32 117, label %sw.bb109
    i32 132, label %sw.bb111
    i32 137, label %sw.bb113
    i32 144, label %sw.bb115
    i32 172, label %sw.bb148
    i32 186, label %sw.bb149
    i32 202, label %sw.bb150
    i32 204, label %sw.bb152
    i32 209, label %sw.bb155
    i32 212, label %sw.bb157
    i32 224, label %sw.bb158
    i32 233, label %sw.bb160
    i32 237, label %sw.bb162
    i32 72, label %sw.bb163
    i32 238, label %sw.bb167
    i32 244, label %sw.bb174
    i32 305, label %sw.bb175
    i32 263, label %sw.bb181
    i32 265, label %sw.bb181
    i32 367, label %sw.bb181
    i32 375, label %sw.bb181
    i32 408, label %sw.bb181
    i32 413, label %sw.bb181
    i32 415, label %sw.bb181
    i32 464, label %sw.bb181
    i32 496, label %sw.bb181
    i32 497, label %sw.bb181
    i32 502, label %sw.bb181
    i32 613, label %sw.bb181
    i32 626, label %sw.bb181
    i32 634, label %sw.bb181
    i32 707, label %sw.bb181
    i32 717, label %sw.bb181
    i32 706, label %sw.bb181
    i32 252, label %sw.bb183
    i32 270, label %sw.bb184
    i32 290, label %sw.bb186
    i32 291, label %sw.bb190
    i32 337, label %sw.bb195
    i32 341, label %sw.bb197
    i32 393, label %sw.bb199
    i32 414, label %sw.bb203
    i32 599, label %sw.bb207
    i32 600, label %sw.bb208
    i32 601, label %sw.bb209
    i32 605, label %sw.bb210
    i32 606, label %sw.bb211
    i32 684, label %sw.bb212
    i32 685, label %sw.bb216
    i32 297, label %sw.bb220
    i32 306, label %sw.bb221
    i32 308, label %sw.bb222
    i32 329, label %sw.bb223
    i32 352, label %sw.bb224
    i32 366, label %sw.bb225
    i32 373, label %sw.bb226
    i32 385, label %sw.bb228
    i32 402, label %sw.bb229
    i32 403, label %sw.bb233
    i32 409, label %sw.bb237
    i32 419, label %sw.bb239
    i32 420, label %sw.bb240
    i32 422, label %sw.bb241
    i32 465, label %sw.bb242
    i32 492, label %sw.bb243
    i32 498, label %sw.bb244
    i32 499, label %sw.bb245
    i32 501, label %sw.bb246
    i32 510, label %sw.bb250
    i32 514, label %sw.bb252
    i32 520, label %sw.bb253
    i32 521, label %sw.bb255
    i32 525, label %sw.bb257
    i32 534, label %sw.bb258
    i32 562, label %sw.bb260
    i32 563, label %sw.bb261
    i32 569, label %sw.bb265
    i32 602, label %sw.bb266
    i32 621, label %sw.bb268
    i32 628, label %sw.bb269
    i32 370, label %sw.bb277
    i32 713, label %sw.bb278
    i32 438, label %sw.bb279
    i32 631, label %sw.bb280
    i32 632, label %sw.bb280
    i32 690, label %sw.bb281
    i32 691, label %sw.bb282
    i32 702, label %sw.bb283
    i32 708, label %sw.bb284
    i32 636, label %sw.bb285
    i32 535, label %sw.bb286
    i32 719, label %sw.bb287
    i32 725, label %sw.bb288
    i32 359, label %sw.bb289
    i32 361, label %sw.bb290
    i32 360, label %sw.bb291
    i32 737, label %sw.bb292
    i32 738, label %sw.bb294
    i32 740, label %sw.bb294
    i32 739, label %sw.bb295
    i32 741, label %sw.bb296
    i32 742, label %sw.bb297
    i32 743, label %sw.bb299
    i32 744, label %sw.bb300
    i32 745, label %sw.bb302
    i32 746, label %sw.bb303
    i32 747, label %sw.bb304
    i32 748, label %sw.bb306
    i32 829, label %sw.bb307
    i32 830, label %sw.bb308
    i32 832, label %sw.bb309
    i32 835, label %sw.bb314
    i32 834, label %sw.bb314
    i32 837, label %sw.bb328
    i32 838, label %sw.bb329
    i32 840, label %sw.bb330
    i32 844, label %sw.bb331
    i32 854, label %sw.bb331
    i32 843, label %sw.bb337
    i32 853, label %sw.bb337
    i32 845, label %sw.bb343
    i32 846, label %sw.bb343
    i32 859, label %sw.bb343
    i32 860, label %sw.bb343
    i32 855, label %sw.bb349
    i32 856, label %sw.bb349
    i32 847, label %sw.bb353
    i32 848, label %sw.bb353
    i32 861, label %sw.bb353
    i32 862, label %sw.bb353
    i32 857, label %sw.bb357
    i32 858, label %sw.bb357
    i32 865, label %sw.bb361
    i32 864, label %sw.bb362
    i32 866, label %sw.bb363
    i32 867, label %sw.bb364
    i32 32, label %sw.bb365
  ], !dbg !1810

sw.default:                                       ; preds = %entry
  %idxprom = and i64 %scode, 4294967295, !dbg !1811
  %flags = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %idxprom, i32 5, !dbg !1814
  %2 = load i32, i32* %flags, align 8, !dbg !1814
  %and = and i32 %2, 198, !dbg !1815
  %tobool = icmp eq i32 %and, 0, !dbg !1815
  br i1 %tobool, label %sw.epilog, label %if.then, !dbg !1816

if.then:                                          ; preds = %sw.default
  %flags4 = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %scode, i32 5, !dbg !1817
  %3 = load i32, i32* %flags4, align 8, !dbg !1817
  %and5 = and i32 %3, 1048576, !dbg !1820
  %tobool6 = icmp eq i32 %and5, 0, !dbg !1820
  br i1 %tobool6, label %sw.epilog, label %land.lhs.true, !dbg !1821

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8 (i64, i8*, i32)*, i8 (i64, i8*, i32)** getelementptr inbounds (%struct.gcc_targetcm, %struct.gcc_targetcm* @targetcm, i64 0, i32 0), align 8, !dbg !1822
  %call7 = tail call zeroext i8 %4(i64 %scode, i8* %arg, i32 %value) #5, !dbg !1823
  %tobool8 = icmp ne i8 %call7, 0, !dbg !1823
  %spec.select = zext i1 %tobool8 to i32, !dbg !1824
  ret i32 %spec.select, !dbg !1824

sw.bb:                                            ; preds = %entry
  store i8* %arg, i8** @pch_file, align 8, !dbg !1825
  br label %sw.epilog, !dbg !1826

sw.bb11:                                          ; preds = %entry
  tail call fastcc void @defer_opt(i32 6, i8* %arg) #6, !dbg !1827
  br label %sw.epilog, !dbg !1828

sw.bb12:                                          ; preds = %entry
  %5 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1829
  %discard_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %5, i64 0, i32 5, !dbg !1830
  store i8 0, i8* %discard_comments, align 1, !dbg !1831
  br label %sw.epilog, !dbg !1832

sw.bb13:                                          ; preds = %entry
  %6 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1833
  %discard_comments14 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %6, i64 0, i32 5, !dbg !1834
  store i8 0, i8* %discard_comments14, align 1, !dbg !1835
  %discard_comments_in_macro_exp = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %6, i64 0, i32 6, !dbg !1836
  store i8 0, i8* %discard_comments_in_macro_exp, align 4, !dbg !1837
  br label %sw.epilog, !dbg !1838

sw.bb15:                                          ; preds = %entry
  tail call fastcc void @defer_opt(i32 9, i8* %arg) #6, !dbg !1839
  br label %sw.epilog, !dbg !1840

sw.bb16:                                          ; preds = %entry
  store i32 1, i32* @flag_preprocess_only, align 4, !dbg !1841
  br label %sw.epilog, !dbg !1842

sw.bb17:                                          ; preds = %entry
  %7 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1843
  %print_include_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %7, i64 0, i32 11, !dbg !1844
  store i8 1, i8* %print_include_names, align 1, !dbg !1845
  br label %sw.epilog, !dbg !1846

sw.bb19:                                          ; preds = %entry
  %call20 = tail call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !1847
  %tobool21 = icmp eq i32 %call20, 0, !dbg !1847
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !1849

if.then22:                                        ; preds = %sw.bb19
  %call23 = tail call i8* @xstrdup(i8* %arg) #5, !dbg !1850
  tail call void @add_path(i8* %call23, i32 1, i32 0, i8 zeroext 1) #5, !dbg !1851
  br label %sw.epilog, !dbg !1851

if.else:                                          ; preds = %sw.bb19
  %.b = load i1, i1* @quote_chain_split, align 1, !dbg !1852
  br i1 %.b, label %if.then25, label %if.end26, !dbg !1855

if.then25:                                        ; preds = %if.else
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1856
  br label %if.end26, !dbg !1856

if.end26:                                         ; preds = %if.else, %if.then25
  store i1 true, i1* @quote_chain_split, align 1, !dbg !1857
  tail call void @split_quote_chain() #5, !dbg !1858
  %8 = load i32, i32* @input_location, align 4, !dbg !1859
  tail call void (i32, i8*, ...) @inform(i32 %8, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !1860
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry, %entry
  %cmp29 = icmp eq i32 %conv, 16, !dbg !1861
  %cond = select i1 %cmp29, i32 2, i32 1, !dbg !1862
  %9 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1863
  %style = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %9, i64 0, i32 43, i32 0, !dbg !1864
  store i32 %cond, i32* %style, align 8, !dbg !1865
  store i8 1, i8* @flag_no_output, align 1, !dbg !1866
  br label %sw.epilog, !dbg !1867

sw.bb31:                                          ; preds = %entry, %entry
  %cmp32 = icmp eq i32 %conv, 17, !dbg !1868
  %cond34 = select i1 %cmp32, i32 2, i32 1, !dbg !1869
  %10 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1870
  %style36 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %10, i64 0, i32 43, i32 0, !dbg !1871
  store i32 %cond34, i32* %style36, align 8, !dbg !1872
  %need_preprocessor_output = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %10, i64 0, i32 43, i32 4, !dbg !1873
  store i8 1, i8* %need_preprocessor_output, align 1, !dbg !1874
  store i8* %arg, i8** @deps_file, align 8, !dbg !1875
  br label %sw.epilog, !dbg !1876

sw.bb38:                                          ; preds = %entry
  store i1 true, i1* @deps_seen, align 1, !dbg !1877
  store i8* %arg, i8** @deps_file, align 8, !dbg !1878
  br label %sw.epilog, !dbg !1879

sw.bb39:                                          ; preds = %entry
  store i1 true, i1* @deps_seen, align 1, !dbg !1880
  %11 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1881
  %missing_files = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %11, i64 0, i32 43, i32 1, !dbg !1882
  store i8 1, i8* %missing_files, align 4, !dbg !1883
  br label %sw.epilog, !dbg !1884

sw.bb41:                                          ; preds = %entry
  store i1 true, i1* @deps_seen, align 1, !dbg !1885
  %12 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1886
  %phony_targets = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %12, i64 0, i32 43, i32 2, !dbg !1887
  store i8 1, i8* %phony_targets, align 1, !dbg !1888
  br label %sw.epilog, !dbg !1889

sw.bb43:                                          ; preds = %entry, %entry
  store i1 true, i1* @deps_seen, align 1, !dbg !1890
  tail call fastcc void @defer_opt(i32 %conv, i8* %arg) #6, !dbg !1891
  br label %sw.epilog, !dbg !1892

sw.bb44:                                          ; preds = %entry
  store i8 1, i8* @flag_no_line_commands, align 1, !dbg !1893
  br label %sw.epilog, !dbg !1894

sw.bb45:                                          ; preds = %entry
  store i32 %value, i32* @flag_working_directory, align 4, !dbg !1895
  br label %sw.epilog, !dbg !1896

sw.bb46:                                          ; preds = %entry
  tail call fastcc void @defer_opt(i32 30, i8* %arg) #6, !dbg !1897
  br label %sw.epilog, !dbg !1898

sw.bb47:                                          ; preds = %entry
  store i32 %value, i32* @warn_unused, align 4, !dbg !1899
  tail call void @set_Wformat(i32 %value) #5, !dbg !1900
  tail call fastcc void @set_Wimplicit(i32 %value) #6, !dbg !1901
  store i32 %value, i32* @warn_char_subscripts, align 4, !dbg !1902
  store i32 %value, i32* @warn_missing_braces, align 4, !dbg !1903
  store i32 %value, i32* @warn_parentheses, align 4, !dbg !1904
  store i32 %value, i32* @warn_return_type, align 4, !dbg !1905
  store i32 %value, i32* @warn_sequence_point, align 4, !dbg !1906
  store i32 %value, i32* @warn_switch, align 4, !dbg !1907
  %13 = load i32, i32* @warn_strict_aliasing, align 4, !dbg !1908
  %cmp48 = icmp eq i32 %13, -1, !dbg !1910
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1911

if.then50:                                        ; preds = %sw.bb47
  tail call void @set_Wstrict_aliasing(i32 %value) #5, !dbg !1912
  br label %if.end51, !dbg !1912

if.end51:                                         ; preds = %if.then50, %sw.bb47
  store i32 %value, i32* @warn_address, align 4, !dbg !1913
  %14 = load i32, i32* @warn_strict_overflow, align 4, !dbg !1914
  %cmp52 = icmp eq i32 %14, -1, !dbg !1916
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !1917

if.then54:                                        ; preds = %if.end51
  store i32 %value, i32* @warn_strict_overflow, align 4, !dbg !1918
  br label %if.end55, !dbg !1919

if.end55:                                         ; preds = %if.then54, %if.end51
  store i32 %value, i32* @warn_array_bounds, align 4, !dbg !1920
  store i32 %value, i32* @warn_volatile_register_var, align 4, !dbg !1921
  store i32 %value, i32* @warn_unknown_pragmas, align 4, !dbg !1922
  store i32 %value, i32* @warn_uninitialized, align 4, !dbg !1923
  %15 = load i32, i32* @c_language, align 4, !dbg !1924
  %and56 = and i32 %15, 2, !dbg !1924
  %cmp57 = icmp eq i32 %and56, 0, !dbg !1924
  br i1 %cmp57, label %if.then59, label %if.else70, !dbg !1926

if.then59:                                        ; preds = %if.end55
  %16 = load i32, i32* @warn_main, align 4, !dbg !1927
  %cmp60 = icmp eq i32 %16, -1, !dbg !1930
  br i1 %cmp60, label %if.then62, label %if.end65, !dbg !1931

if.then62:                                        ; preds = %if.then59
  %tobool63 = icmp eq i32 %value, 0, !dbg !1932
  %cond64 = select i1 %tobool63, i32 0, i32 2, !dbg !1932
  store i32 %cond64, i32* @warn_main, align 4, !dbg !1933
  br label %if.end65, !dbg !1934

if.end65:                                         ; preds = %if.then62, %if.then59
  %17 = load i32, i32* @warn_enum_compare, align 4, !dbg !1935
  %cmp66 = icmp eq i32 %17, -1, !dbg !1937
  br i1 %cmp66, label %if.then68, label %if.end71, !dbg !1938

if.then68:                                        ; preds = %if.end65
  store i32 %value, i32* @warn_enum_compare, align 4, !dbg !1939
  br label %if.end71, !dbg !1940

if.else70:                                        ; preds = %if.end55
  store i32 %value, i32* @warn_sign_compare, align 4, !dbg !1941
  store i32 %value, i32* @warn_reorder, align 4, !dbg !1943
  store i32 %value, i32* @warn_cxx0x_compat, align 4, !dbg !1944
  br label %if.end71

if.end71:                                         ; preds = %if.end65, %if.then68, %if.else70
  %conv72 = trunc i32 %value to i8, !dbg !1945
  %18 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1946
  %warn_trigraphs = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %18, i64 0, i32 15, !dbg !1947
  store i8 %conv72, i8* %warn_trigraphs, align 1, !dbg !1948
  %warn_comments = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %18, i64 0, i32 13, !dbg !1949
  store i8 %conv72, i8* %warn_comments, align 1, !dbg !1950
  %warn_num_sign_change = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %18, i64 0, i32 20, !dbg !1951
  store i8 %conv72, i8* %warn_num_sign_change, align 2, !dbg !1952
  %19 = load i32, i32* @warn_pointer_sign, align 4, !dbg !1953
  %cmp75 = icmp eq i32 %19, -1, !dbg !1955
  br i1 %cmp75, label %if.then77, label %sw.epilog, !dbg !1956

if.then77:                                        ; preds = %if.end71
  store i32 %value, i32* @warn_pointer_sign, align 4, !dbg !1957
  br label %sw.epilog, !dbg !1958

sw.bb79:                                          ; preds = %entry
  %conv80 = trunc i32 %value to i8, !dbg !1959
  %20 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1960
  %warn_builtin_macro_redefined = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %20, i64 0, i32 22, !dbg !1961
  store i8 %conv80, i8* %warn_builtin_macro_redefined, align 4, !dbg !1962
  br label %sw.epilog, !dbg !1963

sw.bb81:                                          ; preds = %entry, %entry
  %conv82 = trunc i32 %value to i8, !dbg !1964
  %21 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1965
  %warn_comments83 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %21, i64 0, i32 13, !dbg !1966
  store i8 %conv82, i8* %warn_comments83, align 1, !dbg !1967
  br label %sw.epilog, !dbg !1968

sw.bb84:                                          ; preds = %entry
  %22 = load i32, i32* @warn_enum_compare, align 4, !dbg !1969
  %cmp85 = icmp eq i32 %22, -1, !dbg !1971
  %tobool88 = icmp ne i32 %value, 0, !dbg !1972
  %or.cond = and i1 %cmp85, %tobool88, !dbg !1973
  br i1 %or.cond, label %if.then89, label %if.end90, !dbg !1973

if.then89:                                        ; preds = %sw.bb84
  store i32 %value, i32* @warn_enum_compare, align 4, !dbg !1974
  br label %if.end90, !dbg !1975

if.end90:                                         ; preds = %if.then89, %sw.bb84
  %23 = load i32, i32* @warn_jump_misses_init, align 4, !dbg !1976
  %cmp91 = icmp eq i32 %23, -1, !dbg !1978
  %or.cond1 = and i1 %cmp91, %tobool88, !dbg !1979
  br i1 %or.cond1, label %if.then95, label %if.end96, !dbg !1979

if.then95:                                        ; preds = %if.end90
  store i32 %value, i32* @warn_jump_misses_init, align 4, !dbg !1980
  br label %if.end96, !dbg !1981

if.end96:                                         ; preds = %if.then95, %if.end90
  %conv97 = trunc i32 %value to i8, !dbg !1982
  %24 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1983
  %warn_cxx_operator_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %24, i64 0, i32 35, !dbg !1984
  store i8 %conv97, i8* %warn_cxx_operator_names, align 1, !dbg !1985
  br label %sw.epilog, !dbg !1986

sw.bb98:                                          ; preds = %entry
  %conv99 = trunc i32 %value to i8, !dbg !1987
  %25 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1988
  %warn_deprecated = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %25, i64 0, i32 12, !dbg !1989
  store i8 %conv99, i8* %warn_deprecated, align 2, !dbg !1990
  br label %sw.epilog, !dbg !1991

sw.bb100:                                         ; preds = %entry
  %conv101 = trunc i32 %value to i8, !dbg !1992
  %26 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !1993
  %warn_endif_labels = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %26, i64 0, i32 19, !dbg !1994
  store i8 %conv101, i8* %warn_endif_labels, align 1, !dbg !1995
  br label %sw.epilog, !dbg !1996

sw.bb102:                                         ; preds = %entry
  %conv103 = trunc i32 %value to i8, !dbg !1997
  %27 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !1998
  %warning_as_error_requested = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %27, i64 0, i32 3, !dbg !1999
  store i8 %conv103, i8* %warning_as_error_requested, align 1, !dbg !2000
  br label %sw.epilog, !dbg !2001

sw.bb104:                                         ; preds = %entry
  tail call void @enable_warning_as_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %value, i32 66) #5, !dbg !2002
  br label %sw.epilog, !dbg !2003

sw.bb105:                                         ; preds = %entry
  tail call void @set_Wformat(i32 %value) #5, !dbg !2004
  br label %sw.epilog, !dbg !2005

sw.bb106:                                         ; preds = %entry
  %call107 = tail call i32 @atoi(i8* %arg) #6, !dbg !2006
  tail call void @set_Wformat(i32 %call107) #5, !dbg !2007
  br label %sw.epilog, !dbg !2008

sw.bb108:                                         ; preds = %entry
  tail call fastcc void @set_Wimplicit(i32 %value) #6, !dbg !2009
  br label %sw.epilog, !dbg !2010

sw.bb109:                                         ; preds = %entry
  %conv110 = trunc i32 %value to i8, !dbg !2011
  %28 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2012
  %warn_invalid_pch = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %28, i64 0, i32 41, !dbg !2013
  store i8 %conv110, i8* %warn_invalid_pch, align 4, !dbg !2014
  br label %sw.epilog, !dbg !2015

sw.bb111:                                         ; preds = %entry
  %conv112 = trunc i32 %value to i8, !dbg !2016
  %29 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2017
  %warn_missing_include_dirs = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %29, i64 0, i32 14, !dbg !2018
  store i8 %conv112, i8* %warn_missing_include_dirs, align 4, !dbg !2019
  br label %sw.epilog, !dbg !2020

sw.bb113:                                         ; preds = %entry
  %conv114 = trunc i32 %value to i8, !dbg !2021
  %30 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2022
  %warn_multichar = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %30, i64 0, i32 16, !dbg !2023
  store i8 %conv114, i8* %warn_multichar, align 2, !dbg !2024
  br label %sw.epilog, !dbg !2025

sw.bb115:                                         ; preds = %entry
  %tobool116 = icmp eq i32 %value, 0, !dbg !2026
  br i1 %tobool116, label %if.then122, label %lor.lhs.false, !dbg !2028

lor.lhs.false:                                    ; preds = %sw.bb115
  %cond3 = icmp eq i8* %arg, null, !dbg !2029
  br i1 %cond3, label %if.then129, label %land.lhs.true118, !dbg !2029

land.lhs.true118:                                 ; preds = %lor.lhs.false
  %call119 = tail call i32 @strcasecmp(i8* nonnull %arg, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !2030
  %cmp120 = icmp eq i32 %call119, 0, !dbg !2031
  br i1 %cmp120, label %if.then122, label %if.else123, !dbg !2032

if.then122:                                       ; preds = %sw.bb115, %land.lhs.true118
  %31 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2033
  %warn_normalize = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %31, i64 0, i32 40, !dbg !2034
  store i32 3, i32* %warn_normalize, align 8, !dbg !2035
  br label %sw.epilog, !dbg !2033

if.else123:                                       ; preds = %land.lhs.true118
  %call126 = tail call i32 @strcasecmp(i8* nonnull %arg, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !2036
  %cmp127 = icmp eq i32 %call126, 0, !dbg !2038
  br i1 %cmp127, label %if.then129, label %if.else131, !dbg !2039

if.then129:                                       ; preds = %lor.lhs.false, %if.else123
  %32 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2040
  %warn_normalize130 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %32, i64 0, i32 40, !dbg !2041
  store i32 0, i32* %warn_normalize130, align 8, !dbg !2042
  br label %sw.epilog, !dbg !2040

if.else131:                                       ; preds = %if.else123
  %call132 = tail call i32 @strcasecmp(i8* nonnull %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !2043
  %cmp133 = icmp eq i32 %call132, 0, !dbg !2045
  br i1 %cmp133, label %if.then135, label %if.else137, !dbg !2046

if.then135:                                       ; preds = %if.else131
  %33 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2047
  %warn_normalize136 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %33, i64 0, i32 40, !dbg !2048
  store i32 2, i32* %warn_normalize136, align 8, !dbg !2049
  br label %sw.epilog, !dbg !2047

if.else137:                                       ; preds = %if.else131
  %call138 = tail call i32 @strcasecmp(i8* nonnull %arg, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)) #5, !dbg !2050
  %cmp139 = icmp eq i32 %call138, 0, !dbg !2052
  br i1 %cmp139, label %if.then141, label %if.else143, !dbg !2053

if.then141:                                       ; preds = %if.else137
  %34 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2054
  %warn_normalize142 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %34, i64 0, i32 40, !dbg !2055
  store i32 1, i32* %warn_normalize142, align 8, !dbg !2056
  br label %sw.epilog, !dbg !2054

if.else143:                                       ; preds = %if.else137
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i8* nonnull %arg) #5, !dbg !2057
  br label %sw.epilog

sw.bb148:                                         ; preds = %entry
  store i32 %value, i32* @warn_return_type, align 4, !dbg !2058
  br label %sw.epilog, !dbg !2059

sw.bb149:                                         ; preds = %entry
  store i32 %value, i32* @warn_strict_null_sentinel, align 4, !dbg !2060
  br label %sw.epilog, !dbg !2061

sw.bb150:                                         ; preds = %entry
  %conv151 = trunc i32 %value to i8, !dbg !2062
  %35 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2063
  %warn_traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %35, i64 0, i32 17, !dbg !2064
  store i8 %conv151, i8* %warn_traditional, align 1, !dbg !2065
  br label %sw.epilog, !dbg !2066

sw.bb152:                                         ; preds = %entry
  %conv153 = trunc i32 %value to i8, !dbg !2067
  %36 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2068
  %warn_trigraphs154 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %36, i64 0, i32 15, !dbg !2069
  store i8 %conv153, i8* %warn_trigraphs154, align 1, !dbg !2070
  br label %sw.epilog, !dbg !2071

sw.bb155:                                         ; preds = %entry
  %conv156 = trunc i32 %value to i8, !dbg !2072
  %37 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2073
  %warn_undef = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %37, i64 0, i32 27, !dbg !2074
  store i8 %conv156, i8* %warn_undef, align 1, !dbg !2075
  br label %sw.epilog, !dbg !2076

sw.bb157:                                         ; preds = %entry
  %mul = shl nsw i32 %value, 1, !dbg !2077
  store i32 %mul, i32* @warn_unknown_pragmas, align 4, !dbg !2078
  br label %sw.epilog, !dbg !2079

sw.bb158:                                         ; preds = %entry
  %conv159 = trunc i32 %value to i8, !dbg !2080
  store i8 %conv159, i8* @warn_unused_macros, align 1, !dbg !2081
  br label %sw.epilog, !dbg !2082

sw.bb160:                                         ; preds = %entry
  %conv161 = trunc i32 %value to i8, !dbg !2083
  store i8 %conv161, i8* @warn_variadic_macros, align 1, !dbg !2084
  br label %sw.epilog, !dbg !2085

sw.bb162:                                         ; preds = %entry
  store i32 %value, i32* @warn_write_strings, align 4, !dbg !2086
  br label %sw.epilog, !dbg !2087

sw.bb163:                                         ; preds = %entry
  store i32 %value, i32* @warn_ecpp, align 4, !dbg !2088
  %tobool164 = icmp eq i32 %value, 0, !dbg !2089
  br i1 %tobool164, label %sw.epilog, label %if.then165, !dbg !2091

if.then165:                                       ; preds = %sw.bb163
  store i32 1, i32* @warn_nonvdtor, align 4, !dbg !2092
  br label %sw.epilog, !dbg !2093

sw.bb167:                                         ; preds = %entry
  %38 = load i32, i32* @c_language, align 4, !dbg !2094
  %and168 = and i32 %38, 2, !dbg !2094
  %cmp169 = icmp eq i32 %and168, 0, !dbg !2094
  br i1 %cmp169, label %if.then171, label %if.else172, !dbg !2096

if.then171:                                       ; preds = %sw.bb167
  tail call fastcc void @set_std_c89(i32 0, i32 1) #6, !dbg !2097
  br label %sw.epilog, !dbg !2097

if.else172:                                       ; preds = %sw.bb167
  tail call fastcc void @set_std_cxx98(i32 1) #6, !dbg !2098
  br label %sw.epilog

sw.bb174:                                         ; preds = %entry
  tail call fastcc void @handle_OPT_d(i8* %arg) #6, !dbg !2099
  br label %sw.epilog, !dbg !2100

sw.bb175:                                         ; preds = %entry
  %39 = load i32, i32* @c_language, align 4, !dbg !2101
  %and176 = and i32 %39, 2, !dbg !2101
  %cmp177 = icmp eq i32 %and176, 0, !dbg !2101
  br i1 %cmp177, label %if.then179, label %sw.bb181, !dbg !2103

if.then179:                                       ; preds = %sw.bb175
  store i32 %value, i32* @flag_cond_mismatch, align 4, !dbg !2104
  br label %sw.epilog, !dbg !2106

sw.bb181:                                         ; preds = %sw.bb175, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %opt_text = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %scode, i32 0, !dbg !2107
  %40 = load i8*, i8** %opt_text, align 8, !dbg !2107
  %call182 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* %40) #5, !dbg !2108
  br label %sw.epilog, !dbg !2109

sw.bb183:                                         ; preds = %entry
  store i32 %value, i32* @flag_access_control, align 4, !dbg !2110
  br label %sw.epilog, !dbg !2111

sw.bb184:                                         ; preds = %entry
  %tobool185 = icmp eq i32 %value, 0, !dbg !2112
  %lnot.ext = zext i1 %tobool185 to i32, !dbg !2112
  store i32 %lnot.ext, i32* @flag_no_asm, align 4, !dbg !2113
  br label %sw.epilog, !dbg !2114

sw.bb186:                                         ; preds = %entry
  %tobool187 = icmp eq i32 %value, 0, !dbg !2115
  %lnot.ext189 = zext i1 %tobool187 to i32, !dbg !2115
  store i32 %lnot.ext189, i32* @flag_no_builtin, align 4, !dbg !2116
  br label %sw.epilog, !dbg !2117

sw.bb190:                                         ; preds = %entry
  %tobool191 = icmp eq i32 %value, 0, !dbg !2118
  br i1 %tobool191, label %if.else193, label %sw.epilog, !dbg !2120

if.else193:                                       ; preds = %sw.bb190
  tail call void @disable_builtin_function(i8* %arg) #5, !dbg !2121
  br label %sw.epilog

sw.bb195:                                         ; preds = %entry
  %conv196 = trunc i32 %value to i8, !dbg !2122
  %41 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2123
  %directives_only = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %41, i64 0, i32 52, !dbg !2124
  store i8 %conv196, i8* %directives_only, align 4, !dbg !2125
  br label %sw.epilog, !dbg !2126

sw.bb197:                                         ; preds = %entry
  %conv198 = trunc i32 %value to i8, !dbg !2127
  %42 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2128
  %dollars_in_ident = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %42, i64 0, i32 24, !dbg !2129
  store i8 %conv198, i8* %dollars_in_ident, align 2, !dbg !2130
  br label %sw.epilog, !dbg !2131

sw.bb199:                                         ; preds = %entry
  %tobool200 = icmp eq i32 %value, 0, !dbg !2132
  %lnot.ext202 = zext i1 %tobool200 to i32, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %lnot.ext202, metadata !1786, metadata !DIExpression()), !dbg !1804
  br label %sw.bb203, !dbg !2133

sw.bb203:                                         ; preds = %entry, %sw.bb199
  %value.addr.0 = phi i32 [ %value, %entry ], [ %lnot.ext202, %sw.bb199 ]
  call void @llvm.dbg.value(metadata i32 %value.addr.0, metadata !1786, metadata !DIExpression()), !dbg !1804
  store i32 %value.addr.0, i32* @flag_hosted, align 4, !dbg !2134
  %tobool204 = icmp eq i32 %value.addr.0, 0, !dbg !2135
  %lnot.ext206 = zext i1 %tobool204 to i32, !dbg !2135
  store i32 %lnot.ext206, i32* @flag_no_builtin, align 4, !dbg !2136
  br label %sw.epilog, !dbg !2137

sw.bb207:                                         ; preds = %entry
  store i32 %value, i32* @flag_short_double, align 4, !dbg !2138
  br label %sw.epilog, !dbg !2139

sw.bb208:                                         ; preds = %entry
  store i32 %value, i32* @flag_short_enums, align 4, !dbg !2140
  br label %sw.epilog, !dbg !2141

sw.bb209:                                         ; preds = %entry
  store i32 %value, i32* @flag_short_wchar, align 4, !dbg !2142
  br label %sw.epilog, !dbg !2143

sw.bb210:                                         ; preds = %entry
  store i32 %value, i32* @flag_signed_bitfields, align 4, !dbg !2144
  br label %sw.epilog, !dbg !2145

sw.bb211:                                         ; preds = %entry
  store i32 %value, i32* @flag_signed_char, align 4, !dbg !2146
  br label %sw.epilog, !dbg !2147

sw.bb212:                                         ; preds = %entry
  %tobool213 = icmp eq i32 %value, 0, !dbg !2148
  %lnot.ext215 = zext i1 %tobool213 to i32, !dbg !2148
  store i32 %lnot.ext215, i32* @flag_signed_bitfields, align 4, !dbg !2149
  br label %sw.epilog, !dbg !2150

sw.bb216:                                         ; preds = %entry
  %tobool217 = icmp eq i32 %value, 0, !dbg !2151
  %lnot.ext219 = zext i1 %tobool217 to i32, !dbg !2151
  store i32 %lnot.ext219, i32* @flag_signed_char, align 4, !dbg !2152
  br label %sw.epilog, !dbg !2153

sw.bb220:                                         ; preds = %entry
  store i32 %value, i32* @flag_check_new, align 4, !dbg !2154
  br label %sw.epilog, !dbg !2155

sw.bb221:                                         ; preds = %entry
  store i32 %value, i32* @flag_conserve_space, align 4, !dbg !2156
  br label %sw.epilog, !dbg !2157

sw.bb222:                                         ; preds = %entry
  store i8* %arg, i8** @constant_string_class_name, align 8, !dbg !2158
  br label %sw.epilog, !dbg !2159

sw.bb223:                                         ; preds = %entry
  store i32 %value, i32* @flag_default_inline, align 4, !dbg !2160
  br label %sw.epilog, !dbg !2161

sw.bb224:                                         ; preds = %entry
  store i32 %value, i32* @flag_elide_constructors, align 4, !dbg !2162
  br label %sw.epilog, !dbg !2163

sw.bb225:                                         ; preds = %entry
  store i32 %value, i32* @flag_enforce_eh_specs, align 4, !dbg !2164
  br label %sw.epilog, !dbg !2165

sw.bb226:                                         ; preds = %entry
  %conv227 = trunc i32 %value to i8, !dbg !2166
  %43 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2167
  %extended_identifiers = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %43, i64 0, i32 25, !dbg !2168
  store i8 %conv227, i8* %extended_identifiers, align 1, !dbg !2169
  br label %sw.epilog, !dbg !2170

sw.bb228:                                         ; preds = %entry
  store i32 %value, i32* @flag_new_for_scope, align 4, !dbg !2171
  br label %sw.epilog, !dbg !2172

sw.bb229:                                         ; preds = %entry
  %tobool230 = icmp eq i32 %value, 0, !dbg !2173
  %lnot.ext232 = zext i1 %tobool230 to i32, !dbg !2173
  store i32 %lnot.ext232, i32* @flag_no_gnu_keywords, align 4, !dbg !2174
  br label %sw.epilog, !dbg !2175

sw.bb233:                                         ; preds = %entry
  %tobool234 = icmp eq i32 %value, 0, !dbg !2176
  %lnot.ext236 = zext i1 %tobool234 to i32, !dbg !2176
  store i32 %lnot.ext236, i32* @flag_next_runtime, align 4, !dbg !2177
  br label %sw.epilog, !dbg !2178

sw.bb237:                                         ; preds = %entry
  %call238 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !2179
  store i32 %value, i32* @flag_exceptions, align 4, !dbg !2180
  br label %sw.epilog, !dbg !2181

sw.bb239:                                         ; preds = %entry
  store i32 %value, i32* @flag_implement_inlines, align 4, !dbg !2182
  br label %sw.epilog, !dbg !2183

sw.bb240:                                         ; preds = %entry
  store i32 %value, i32* @flag_implicit_inline_templates, align 4, !dbg !2184
  br label %sw.epilog, !dbg !2185

sw.bb241:                                         ; preds = %entry
  store i32 %value, i32* @flag_implicit_templates, align 4, !dbg !2186
  br label %sw.epilog, !dbg !2187

sw.bb242:                                         ; preds = %entry
  store i32 %value, i32* @flag_lax_vector_conversions, align 4, !dbg !2188
  br label %sw.epilog, !dbg !2189

sw.bb243:                                         ; preds = %entry
  store i32 %value, i32* @flag_ms_extensions, align 4, !dbg !2190
  br label %sw.epilog, !dbg !2191

sw.bb244:                                         ; preds = %entry
  store i32 %value, i32* @flag_next_runtime, align 4, !dbg !2192
  br label %sw.epilog, !dbg !2193

sw.bb245:                                         ; preds = %entry
  store i32 %value, i32* @flag_nil_receivers, align 4, !dbg !2194
  br label %sw.epilog, !dbg !2195

sw.bb246:                                         ; preds = %entry
  %tobool247 = icmp eq i32 %value, 0, !dbg !2196
  %lnot.ext249 = zext i1 %tobool247 to i32, !dbg !2196
  store i32 %lnot.ext249, i32* @flag_no_nonansi_builtin, align 4, !dbg !2197
  br label %sw.epilog, !dbg !2198

sw.bb250:                                         ; preds = %entry
  %conv251 = trunc i32 %value to i8, !dbg !2199
  %44 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2200
  %operator_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %44, i64 0, i32 34, !dbg !2201
  store i8 %conv251, i8* %operator_names, align 8, !dbg !2202
  br label %sw.epilog, !dbg !2203

sw.bb252:                                         ; preds = %entry
  store i32 %value, i32* @flag_optional_diags, align 4, !dbg !2204
  br label %sw.epilog, !dbg !2205

sw.bb253:                                         ; preds = %entry
  %conv254 = trunc i32 %value to i8, !dbg !2206
  %45 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2207
  %restore_pch_deps = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %45, i64 0, i32 42, !dbg !2208
  store i8 %conv254, i8* %restore_pch_deps, align 1, !dbg !2209
  br label %sw.epilog, !dbg !2210

sw.bb255:                                         ; preds = %entry
  %conv256 = trunc i32 %value to i8, !dbg !2211
  store i8 %conv256, i8* @flag_pch_preprocess, align 1, !dbg !2212
  br label %sw.epilog, !dbg !2213

sw.bb257:                                         ; preds = %entry
  store i32 %value, i32* @flag_permissive, align 4, !dbg !2214
  br label %sw.epilog, !dbg !2215

sw.bb258:                                         ; preds = %entry
  %conv259 = trunc i32 %value to i8, !dbg !2216
  %46 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2217
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %46, i64 0, i32 32, !dbg !2218
  store i8 %conv259, i8* %preprocessed, align 2, !dbg !2219
  br label %sw.epilog, !dbg !2220

sw.bb260:                                         ; preds = %entry
  store i32 %value, i32* @flag_replace_objc_classes, align 4, !dbg !2221
  br label %sw.epilog, !dbg !2222

sw.bb261:                                         ; preds = %entry
  store i32 %value, i32* @flag_use_repository, align 4, !dbg !2223
  %tobool262 = icmp eq i32 %value, 0, !dbg !2224
  br i1 %tobool262, label %sw.epilog, label %if.then263, !dbg !2226

if.then263:                                       ; preds = %sw.bb261
  store i32 0, i32* @flag_implicit_templates, align 4, !dbg !2227
  br label %sw.epilog, !dbg !2228

sw.bb265:                                         ; preds = %entry
  store i32 %value, i32* @flag_rtti, align 4, !dbg !2229
  br label %sw.epilog, !dbg !2230

sw.bb266:                                         ; preds = %entry
  %conv267 = trunc i32 %value to i8, !dbg !2231
  %47 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2232
  %show_column = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %47, i64 0, i32 33, !dbg !2233
  store i8 %conv267, i8* %show_column, align 1, !dbg !2234
  br label %sw.epilog, !dbg !2235

sw.bb268:                                         ; preds = %entry
  store i32 %value, i32* @flag_detailed_statistics, align 4, !dbg !2236
  br label %sw.epilog, !dbg !2237

sw.bb269:                                         ; preds = %entry
  %value.off = add i32 %value, -1, !dbg !2238
  %48 = icmp ult i32 %value.off, 100, !dbg !2238
  br i1 %48, label %if.then275, label %sw.epilog, !dbg !2238

if.then275:                                       ; preds = %sw.bb269
  %49 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2240
  %tabstop = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %49, i64 0, i32 0, !dbg !2241
  store i32 %value, i32* %tabstop, align 8, !dbg !2242
  br label %sw.epilog, !dbg !2240

sw.bb277:                                         ; preds = %entry
  %50 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2243
  %narrow_charset = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %50, i64 0, i32 37, !dbg !2244
  store i8* %arg, i8** %narrow_charset, align 8, !dbg !2245
  br label %sw.epilog, !dbg !2246

sw.bb278:                                         ; preds = %entry
  %51 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2247
  %wide_charset = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %51, i64 0, i32 38, !dbg !2248
  store i8* %arg, i8** %wide_charset, align 8, !dbg !2249
  br label %sw.epilog, !dbg !2250

sw.bb279:                                         ; preds = %entry
  %52 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2251
  %input_charset = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %52, i64 0, i32 39, !dbg !2252
  store i8* %arg, i8** %input_charset, align 8, !dbg !2253
  br label %sw.epilog, !dbg !2254

sw.bb280:                                         ; preds = %entry, %entry
  store i32 %value, i32* @max_tinst_depth, align 4, !dbg !2255
  br label %sw.epilog, !dbg !2256

sw.bb281:                                         ; preds = %entry
  store i32 %value, i32* @flag_use_cxa_atexit, align 4, !dbg !2257
  br label %sw.epilog, !dbg !2258

sw.bb282:                                         ; preds = %entry
  store i32 %value, i32* @flag_use_cxa_get_exception_ptr, align 4, !dbg !2259
  br label %sw.epilog, !dbg !2260

sw.bb283:                                         ; preds = %entry
  %53 = trunc i32 %value to i8, !dbg !2261
  %bf.load = load i8, i8* getelementptr inbounds (%struct.visibility_flags, %struct.visibility_flags* @visibility_options, i64 0, i32 0), align 4, !dbg !2261
  %bf.value = shl i8 %53, 1, !dbg !2261
  %bf.shl = and i8 %bf.value, 2, !dbg !2261
  %bf.clear = and i8 %bf.load, -3, !dbg !2261
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !2261
  store i8 %bf.set, i8* getelementptr inbounds (%struct.visibility_flags, %struct.visibility_flags* @visibility_options, i64 0, i32 0), align 4, !dbg !2261
  br label %sw.epilog, !dbg !2262

sw.bb284:                                         ; preds = %entry
  store i32 %value, i32* @flag_weak, align 4, !dbg !2263
  br label %sw.epilog, !dbg !2264

sw.bb285:                                         ; preds = %entry
  store i32 %value, i32* @flag_threadsafe_statics, align 4, !dbg !2265
  br label %sw.epilog, !dbg !2266

sw.bb286:                                         ; preds = %entry
  store i32 %value, i32* @flag_pretty_templates, align 4, !dbg !2267
  br label %sw.epilog, !dbg !2268

sw.bb287:                                         ; preds = %entry
  store i32 %value, i32* @flag_zero_link, align 4, !dbg !2269
  br label %sw.epilog, !dbg !2270

sw.bb288:                                         ; preds = %entry
  store i32 1, i32* @flag_gen_declaration, align 4, !dbg !2271
  br label %sw.epilog, !dbg !2272

sw.bb289:                                         ; preds = %entry
  tail call void @set_struct_debug_option(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #5, !dbg !2273
  br label %sw.epilog, !dbg !2274

sw.bb290:                                         ; preds = %entry
  tail call void @set_struct_debug_option(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0)) #5, !dbg !2275
  br label %sw.epilog, !dbg !2276

sw.bb291:                                         ; preds = %entry
  tail call void @set_struct_debug_option(i8* %arg) #5, !dbg !2277
  br label %sw.epilog, !dbg !2278

sw.bb292:                                         ; preds = %entry
  %call293 = tail call i8* @xstrdup(i8* %arg) #5, !dbg !2279
  tail call void @add_path(i8* %call293, i32 3, i32 0, i8 zeroext 1) #5, !dbg !2280
  br label %sw.epilog, !dbg !2281

sw.bb294:                                         ; preds = %entry, %entry
  tail call fastcc void @defer_opt(i32 %conv, i8* %arg) #6, !dbg !2282
  br label %sw.epilog, !dbg !2283

sw.bb295:                                         ; preds = %entry
  store i8* %arg, i8** @imultilib, align 8, !dbg !2284
  br label %sw.epilog, !dbg !2285

sw.bb296:                                         ; preds = %entry
  store i8* %arg, i8** @iprefix, align 8, !dbg !2286
  br label %sw.epilog, !dbg !2287

sw.bb297:                                         ; preds = %entry
  %call298 = tail call i8* @xstrdup(i8* %arg) #5, !dbg !2288
  tail call void @add_path(i8* %call298, i32 0, i32 0, i8 zeroext 1) #5, !dbg !2289
  br label %sw.epilog, !dbg !2290

sw.bb299:                                         ; preds = %entry
  store i8* %arg, i8** @sysroot, align 8, !dbg !2291
  br label %sw.epilog, !dbg !2292

sw.bb300:                                         ; preds = %entry
  %call301 = tail call i8* @xstrdup(i8* %arg) #5, !dbg !2293
  tail call void @add_path(i8* %call301, i32 2, i32 0, i8 zeroext 1) #5, !dbg !2294
  br label %sw.epilog, !dbg !2295

sw.bb302:                                         ; preds = %entry
  tail call fastcc void @add_prefixed_path(i8* %arg, i64 2) #6, !dbg !2296
  br label %sw.epilog, !dbg !2297

sw.bb303:                                         ; preds = %entry
  tail call fastcc void @add_prefixed_path(i8* %arg, i64 1) #6, !dbg !2298
  br label %sw.epilog, !dbg !2299

sw.bb304:                                         ; preds = %entry
  %54 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2300
  tail call void @cpp_set_lang(%struct.cpp_reader* %54, i32 9) #5, !dbg !2301
  %55 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2302
  %dollars_in_ident305 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %55, i64 0, i32 24, !dbg !2303
  store i8 0, i8* %dollars_in_ident305, align 2, !dbg !2304
  br label %sw.epilog, !dbg !2305

sw.bb306:                                         ; preds = %entry
  %56 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2306
  %objc = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %56, i64 0, i32 4, !dbg !2307
  store i8 1, i8* %objc, align 2, !dbg !2308
  br label %sw.epilog, !dbg !2309

sw.bb307:                                         ; preds = %entry
  store i1 true, i1* @std_inc, align 1, !dbg !2310
  br label %sw.epilog, !dbg !2311

sw.bb308:                                         ; preds = %entry
  store i1 true, i1* @std_cxx_inc, align 1, !dbg !2312
  br label %sw.epilog, !dbg !2313

sw.bb309:                                         ; preds = %entry
  %57 = load i8*, i8** @out_fname, align 8, !dbg !2314
  %tobool310 = icmp eq i8* %57, null, !dbg !2314
  br i1 %tobool310, label %if.then311, label %if.else312, !dbg !2316

if.then311:                                       ; preds = %sw.bb309
  store i8* %arg, i8** @out_fname, align 8, !dbg !2317
  br label %sw.epilog, !dbg !2318

if.else312:                                       ; preds = %sw.bb309
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0)) #5, !dbg !2319
  br label %sw.epilog

sw.bb314:                                         ; preds = %entry, %entry
  %58 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2320
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %58, i64 0, i32 31, !dbg !2321
  store i8 1, i8* %pedantic, align 1, !dbg !2322
  %warn_endif_labels315 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %58, i64 0, i32 19, !dbg !2323
  store i8 1, i8* %warn_endif_labels315, align 1, !dbg !2324
  %59 = load i32, i32* @warn_pointer_sign, align 4, !dbg !2325
  %cmp316 = icmp eq i32 %59, -1, !dbg !2327
  br i1 %cmp316, label %if.then318, label %if.end319, !dbg !2328

if.then318:                                       ; preds = %sw.bb314
  store i32 1, i32* @warn_pointer_sign, align 4, !dbg !2329
  br label %if.end319, !dbg !2330

if.end319:                                        ; preds = %if.then318, %sw.bb314
  %60 = load i32, i32* @warn_overlength_strings, align 4, !dbg !2331
  %cmp320 = icmp eq i32 %60, -1, !dbg !2333
  br i1 %cmp320, label %if.then322, label %if.end323, !dbg !2334

if.then322:                                       ; preds = %if.end319
  store i32 1, i32* @warn_overlength_strings, align 4, !dbg !2335
  br label %if.end323, !dbg !2336

if.end323:                                        ; preds = %if.then322, %if.end319
  %61 = load i32, i32* @warn_main, align 4, !dbg !2337
  %cmp324 = icmp eq i32 %61, -1, !dbg !2339
  br i1 %cmp324, label %if.then326, label %sw.epilog, !dbg !2340

if.then326:                                       ; preds = %if.end323
  store i32 2, i32* @warn_main, align 4, !dbg !2341
  br label %sw.epilog, !dbg !2342

sw.bb328:                                         ; preds = %entry
  store i32 1, i32* @print_struct_values, align 4, !dbg !2343
  br label %sw.epilog, !dbg !2344

sw.bb329:                                         ; preds = %entry
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2345
  tail call void @c_common_print_pch_checksum(%struct._IO_FILE* %62) #5, !dbg !2346
  store i8 1, i8* @exit_after_options, align 1, !dbg !2347
  br label %sw.epilog, !dbg !2348

sw.bb330:                                         ; preds = %entry
  %63 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2349
  %remap = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %63, i64 0, i32 23, !dbg !2350
  store i8 1, i8* %remap, align 1, !dbg !2351
  br label %sw.epilog, !dbg !2352

sw.bb331:                                         ; preds = %entry, %entry
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !1803, metadata !DIExpression()), !dbg !1804
  br i1 %cmp, label %sw.epilog, label %if.then333, !dbg !2353

if.then333:                                       ; preds = %sw.bb331
  %cmp334 = icmp eq i32 %conv, 844, !dbg !2354
  %conv335 = zext i1 %cmp334 to i32, !dbg !2354
  tail call fastcc void @set_std_cxx98(i32 %conv335) #6, !dbg !2356
  br label %sw.epilog, !dbg !2356

sw.bb337:                                         ; preds = %entry, %entry
  br i1 %cmp, label %sw.epilog, label %if.then339, !dbg !2357

if.then339:                                       ; preds = %sw.bb337
  %cmp340 = icmp eq i32 %conv, 843, !dbg !2358
  %conv341 = zext i1 %cmp340 to i32, !dbg !2358
  tail call fastcc void @set_std_cxx0x(i32 %conv341) #6, !dbg !2360
  br label %sw.epilog, !dbg !2360

sw.bb343:                                         ; preds = %entry, %entry, %entry, %entry
  br i1 %cmp, label %sw.epilog, label %if.then345, !dbg !2361

if.then345:                                       ; preds = %sw.bb343
  %cmp346 = icmp eq i32 %conv, 860, !dbg !2362
  %conv347 = zext i1 %cmp346 to i32, !dbg !2362
  tail call fastcc void @set_std_c89(i32 %conv347, i32 1) #6, !dbg !2364
  br label %sw.epilog, !dbg !2364

sw.bb349:                                         ; preds = %entry, %entry
  br i1 %cmp, label %sw.epilog, label %if.then351, !dbg !2365

if.then351:                                       ; preds = %sw.bb349
  tail call fastcc void @set_std_c89(i32 0, i32 0) #6, !dbg !2366
  br label %sw.epilog, !dbg !2366

sw.bb353:                                         ; preds = %entry, %entry, %entry, %entry
  br i1 %cmp, label %sw.epilog, label %if.then355, !dbg !2368

if.then355:                                       ; preds = %sw.bb353
  tail call fastcc void @set_std_c99(i32 1) #6, !dbg !2369
  br label %sw.epilog, !dbg !2369

sw.bb357:                                         ; preds = %entry, %entry
  br i1 %cmp, label %sw.epilog, label %if.then359, !dbg !2371

if.then359:                                       ; preds = %sw.bb357
  tail call fastcc void @set_std_c99(i32 0) #6, !dbg !2372
  br label %sw.epilog, !dbg !2372

sw.bb361:                                         ; preds = %entry
  %64 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2374
  %trigraphs = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %64, i64 0, i32 7, !dbg !2375
  store i8 1, i8* %trigraphs, align 1, !dbg !2376
  br label %sw.epilog, !dbg !2377

sw.bb362:                                         ; preds = %entry
  %65 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2378
  %traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %65, i64 0, i32 36, !dbg !2379
  store i8 1, i8* %traditional, align 2, !dbg !2380
  br label %sw.epilog, !dbg !2381

sw.bb363:                                         ; preds = %entry
  store i32 1, i32* @flag_undef, align 4, !dbg !2382
  br label %sw.epilog, !dbg !2383

sw.bb364:                                         ; preds = %entry
  store i1 true, i1* @verbose, align 1, !dbg !2384
  br label %sw.epilog, !dbg !2385

sw.bb365:                                         ; preds = %entry
  store i32 %value, i32* @warn_psabi, align 4, !dbg !2386
  br label %sw.epilog, !dbg !2387

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb163, %sw.bb190, %sw.bb261, %sw.bb357, %if.then359, %sw.bb353, %if.then355, %sw.bb349, %if.then351, %sw.bb343, %if.then345, %sw.bb337, %if.then339, %sw.bb331, %if.then333, %if.end323, %if.then326, %if.then311, %if.else312, %sw.bb269, %if.then275, %if.then263, %if.else193, %if.then171, %if.else172, %if.then165, %if.then122, %if.then135, %if.else143, %if.then141, %if.then129, %if.end71, %if.then77, %if.then22, %if.end26, %entry, %sw.bb365, %sw.bb364, %sw.bb363, %sw.bb362, %sw.bb361, %sw.bb330, %sw.bb329, %sw.bb328, %sw.bb308, %sw.bb307, %sw.bb306, %sw.bb304, %sw.bb303, %sw.bb302, %sw.bb300, %sw.bb299, %sw.bb297, %sw.bb296, %sw.bb295, %sw.bb294, %sw.bb292, %sw.bb291, %sw.bb290, %sw.bb289, %sw.bb288, %sw.bb287, %sw.bb286, %sw.bb285, %sw.bb284, %sw.bb283, %sw.bb282, %sw.bb281, %sw.bb280, %sw.bb279, %sw.bb278, %sw.bb277, %sw.bb268, %sw.bb266, %sw.bb265, %sw.bb260, %sw.bb258, %sw.bb257, %sw.bb255, %sw.bb253, %sw.bb252, %sw.bb250, %sw.bb246, %sw.bb245, %sw.bb244, %sw.bb243, %entry, %sw.bb242, %sw.bb241, %sw.bb240, %sw.bb239, %sw.bb237, %sw.bb233, %sw.bb229, %sw.bb228, %sw.bb226, %sw.bb225, %sw.bb224, %sw.bb223, %sw.bb222, %sw.bb221, %sw.bb220, %sw.bb216, %sw.bb212, %sw.bb211, %sw.bb210, %sw.bb209, %sw.bb208, %sw.bb207, %sw.bb203, %sw.bb197, %sw.bb195, %sw.bb186, %sw.bb184, %sw.bb183, %sw.bb181, %if.then179, %sw.bb174, %sw.bb162, %sw.bb160, %sw.bb158, %sw.bb157, %sw.bb155, %sw.bb152, %sw.bb150, %sw.bb149, %sw.bb148, %sw.bb113, %sw.bb111, %sw.bb109, %sw.bb108, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb102, %sw.bb100, %sw.bb98, %if.end96, %sw.bb81, %sw.bb79, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb38, %sw.bb31, %sw.bb28, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb
  %result.2 = phi i32 [ 1, %sw.bb365 ], [ 1, %sw.bb364 ], [ 1, %sw.bb363 ], [ 1, %sw.bb362 ], [ 1, %sw.bb361 ], [ 1, %sw.bb330 ], [ 1, %sw.bb329 ], [ 1, %sw.bb328 ], [ 1, %sw.bb308 ], [ 1, %sw.bb307 ], [ 1, %sw.bb306 ], [ 1, %sw.bb304 ], [ 1, %sw.bb303 ], [ 1, %sw.bb302 ], [ 1, %sw.bb300 ], [ 1, %sw.bb299 ], [ 1, %sw.bb297 ], [ 1, %sw.bb296 ], [ 1, %sw.bb295 ], [ 1, %sw.bb294 ], [ 1, %sw.bb292 ], [ 1, %sw.bb291 ], [ 1, %sw.bb290 ], [ 1, %sw.bb289 ], [ 1, %sw.bb288 ], [ 1, %sw.bb287 ], [ 1, %sw.bb286 ], [ 1, %sw.bb285 ], [ 1, %sw.bb284 ], [ 1, %sw.bb283 ], [ 1, %sw.bb282 ], [ 1, %sw.bb281 ], [ 1, %sw.bb280 ], [ 1, %sw.bb279 ], [ 1, %sw.bb278 ], [ 1, %sw.bb277 ], [ 1, %sw.bb268 ], [ 1, %sw.bb266 ], [ 1, %sw.bb265 ], [ 1, %sw.bb260 ], [ 1, %sw.bb258 ], [ 1, %sw.bb257 ], [ 1, %sw.bb255 ], [ 1, %sw.bb253 ], [ 1, %sw.bb252 ], [ 1, %sw.bb250 ], [ 1, %sw.bb246 ], [ 1, %sw.bb245 ], [ 1, %sw.bb244 ], [ 1, %sw.bb243 ], [ 1, %sw.bb242 ], [ 1, %sw.bb241 ], [ 1, %sw.bb240 ], [ 1, %sw.bb239 ], [ 1, %sw.bb237 ], [ 1, %sw.bb233 ], [ 1, %sw.bb229 ], [ 1, %sw.bb228 ], [ 1, %sw.bb226 ], [ 1, %sw.bb225 ], [ 1, %sw.bb224 ], [ 1, %sw.bb223 ], [ 1, %sw.bb222 ], [ 1, %sw.bb221 ], [ 1, %sw.bb220 ], [ 1, %sw.bb216 ], [ 1, %sw.bb212 ], [ 1, %sw.bb211 ], [ 1, %sw.bb210 ], [ 1, %sw.bb209 ], [ 1, %sw.bb208 ], [ 1, %sw.bb207 ], [ 1, %sw.bb203 ], [ 1, %sw.bb197 ], [ 1, %sw.bb195 ], [ 1, %sw.bb186 ], [ 1, %sw.bb184 ], [ 1, %sw.bb183 ], [ 1, %sw.bb181 ], [ 1, %if.then179 ], [ 1, %sw.bb174 ], [ 1, %sw.bb162 ], [ 1, %sw.bb160 ], [ 1, %sw.bb158 ], [ 1, %sw.bb157 ], [ 1, %sw.bb155 ], [ 1, %sw.bb152 ], [ 1, %sw.bb150 ], [ 1, %sw.bb149 ], [ 1, %sw.bb148 ], [ 1, %sw.bb113 ], [ 1, %sw.bb111 ], [ 1, %sw.bb109 ], [ 1, %entry ], [ 1, %sw.bb108 ], [ 1, %sw.bb106 ], [ 1, %sw.bb105 ], [ 1, %sw.bb104 ], [ 1, %sw.bb102 ], [ 1, %sw.bb100 ], [ 1, %sw.bb98 ], [ 1, %if.end96 ], [ 1, %sw.bb81 ], [ 1, %sw.bb79 ], [ 1, %sw.bb46 ], [ 1, %sw.bb45 ], [ 1, %sw.bb44 ], [ 1, %sw.bb43 ], [ 1, %sw.bb41 ], [ 1, %sw.bb39 ], [ 1, %sw.bb38 ], [ 1, %sw.bb31 ], [ 1, %sw.bb28 ], [ 1, %sw.bb17 ], [ 1, %sw.bb16 ], [ 1, %sw.bb15 ], [ 1, %sw.bb13 ], [ 1, %sw.bb12 ], [ 1, %sw.bb11 ], [ 1, %sw.bb ], [ 1, %if.then ], [ 0, %sw.default ], [ 1, %entry ], [ 1, %if.end26 ], [ 1, %if.then22 ], [ 1, %if.then77 ], [ 1, %if.end71 ], [ 1, %if.then129 ], [ 1, %if.then141 ], [ 1, %if.else143 ], [ 1, %if.then135 ], [ 1, %if.then122 ], [ 1, %if.then165 ], [ 1, %sw.bb163 ], [ 1, %if.else172 ], [ 1, %if.then171 ], [ 1, %if.else193 ], [ 0, %sw.bb190 ], [ 1, %if.then263 ], [ 1, %sw.bb261 ], [ 1, %if.then275 ], [ 1, %sw.bb269 ], [ 1, %if.else312 ], [ 1, %if.then311 ], [ 1, %if.then326 ], [ 1, %if.end323 ], [ 1, %if.then333 ], [ 1, %sw.bb331 ], [ 1, %if.then339 ], [ 1, %sw.bb337 ], [ 1, %if.then345 ], [ 1, %sw.bb343 ], [ 1, %if.then351 ], [ 1, %sw.bb349 ], [ 1, %if.then355 ], [ 1, %sw.bb353 ], [ 1, %if.then359 ], [ 1, %sw.bb357 ], !dbg !1804
  call void @llvm.dbg.value(metadata i32 %result.2, metadata !1802, metadata !DIExpression()), !dbg !1804
  ret i32 %result.2, !dbg !2388
}

; Function Attrs: nounwind uwtable
define internal fastcc void @defer_opt(i32 %code, i8* %arg) unnamed_addr #3 !dbg !2389 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %arg, metadata !2394, metadata !DIExpression()), !dbg !2395
  %0 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8, !dbg !2396
  %1 = load i64, i64* @deferred_count, align 8, !dbg !2397
  %code1 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %0, i64 %1, i32 0, !dbg !2398
  store i32 %code, i32* %code1, align 8, !dbg !2399
  %2 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8, !dbg !2400
  %3 = load i64, i64* @deferred_count, align 8, !dbg !2401
  %arg3 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %2, i64 %3, i32 1, !dbg !2402
  store i8* %arg, i8** %arg3, align 8, !dbg !2403
  %4 = load i64, i64* @deferred_count, align 8, !dbg !2404
  %inc = add i64 %4, 1, !dbg !2404
  store i64 %inc, i64* @deferred_count, align 8, !dbg !2404
  ret void, !dbg !2405
}

declare dso_local void @add_path(i8*, i32, i32, i8 zeroext) local_unnamed_addr #1

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

declare dso_local void @split_quote_chain() local_unnamed_addr #1

declare dso_local void @inform(i32, i8*, ...) local_unnamed_addr #1

declare dso_local void @set_Wformat(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @set_Wimplicit(i32 %on) unnamed_addr #3 !dbg !2406 {
entry:
  call void @llvm.dbg.value(metadata i32 %on, metadata !2410, metadata !DIExpression()), !dbg !2411
  store i32 %on, i32* @warn_implicit, align 4, !dbg !2412
  store i32 %on, i32* @warn_implicit_int, align 4, !dbg !2413
  store i32 %on, i32* @warn_implicit_function_declaration, align 4, !dbg !2414
  ret void, !dbg !2415
}

declare dso_local void @set_Wstrict_aliasing(i32) local_unnamed_addr #1

declare dso_local void @enable_warning_as_error(i8*, i32, i32) local_unnamed_addr #1

declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @set_std_c89(i32 %c94, i32 %iso) unnamed_addr #3 !dbg !2416 {
entry:
  call void @llvm.dbg.value(metadata i32 %c94, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %iso, metadata !2421, metadata !DIExpression()), !dbg !2422
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2423
  %tobool = icmp eq i32 %c94, 0, !dbg !2424
  br i1 %tobool, label %cond.false, label %cond.end, !dbg !2424

cond.false:                                       ; preds = %entry
  %tobool1 = icmp eq i32 %iso, 0, !dbg !2425
  %cond = select i1 %tobool1, i32 0, i32 2, !dbg !2425
  br label %cond.end, !dbg !2424

cond.end:                                         ; preds = %entry, %cond.false
  %cond2 = phi i32 [ %cond, %cond.false ], [ 3, %entry ], !dbg !2424
  tail call void @cpp_set_lang(%struct.cpp_reader* %0, i32 %cond2) #5, !dbg !2426
  store i32 %iso, i32* @flag_iso, align 4, !dbg !2427
  store i32 %iso, i32* @flag_no_asm, align 4, !dbg !2428
  store i32 %iso, i32* @flag_no_gnu_keywords, align 4, !dbg !2429
  store i32 %iso, i32* @flag_no_nonansi_builtin, align 4, !dbg !2430
  store i32 %c94, i32* @flag_isoc94, align 4, !dbg !2431
  store i32 0, i32* @flag_isoc99, align 4, !dbg !2432
  ret void, !dbg !2433
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_std_cxx98(i32 %iso) unnamed_addr #3 !dbg !2434 {
entry:
  call void @llvm.dbg.value(metadata i32 %iso, metadata !2436, metadata !DIExpression()), !dbg !2437
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2438
  %tobool = icmp eq i32 %iso, 0, !dbg !2439
  %cond = select i1 %tobool, i32 5, i32 6, !dbg !2439
  tail call void @cpp_set_lang(%struct.cpp_reader* %0, i32 %cond) #5, !dbg !2440
  store i32 %iso, i32* @flag_no_gnu_keywords, align 4, !dbg !2441
  store i32 %iso, i32* @flag_no_nonansi_builtin, align 4, !dbg !2442
  store i32 %iso, i32* @flag_iso, align 4, !dbg !2443
  store i32 0, i32* @cxx_dialect, align 4, !dbg !2444
  ret void, !dbg !2445
}

; Function Attrs: nounwind uwtable
define internal fastcc void @handle_OPT_d(i8* %arg) unnamed_addr #3 !dbg !2446 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !2450, metadata !DIExpression()), !dbg !2452
  br label %while.cond, !dbg !2453

while.cond:                                       ; preds = %sw.epilog, %entry
  %arg.addr.0 = phi i8* [ %arg, %entry ], [ %incdec.ptr, %sw.epilog ]
  call void @llvm.dbg.value(metadata i8* %arg.addr.0, metadata !2450, metadata !DIExpression()), !dbg !2452
  %incdec.ptr = getelementptr inbounds i8, i8* %arg.addr.0, i64 1, !dbg !2454
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2450, metadata !DIExpression()), !dbg !2452
  %0 = load i8, i8* %arg.addr.0, align 1, !dbg !2455
  call void @llvm.dbg.value(metadata i8 %0, metadata !2451, metadata !DIExpression()), !dbg !2452
  %cmp = icmp eq i8 %0, 0, !dbg !2456
  br i1 %cmp, label %while.end, label %while.body, !dbg !2453

while.body:                                       ; preds = %while.cond
  %conv2 = sext i8 %0 to i32, !dbg !2457
  switch i32 %conv2, label %sw.epilog [
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 68, label %sw.bb
    i32 85, label %sw.bb
    i32 73, label %sw.bb3
  ], !dbg !2458

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body
  store i8 %0, i8* @flag_dump_macros, align 1, !dbg !2459
  br label %sw.epilog, !dbg !2461

sw.bb3:                                           ; preds = %while.body
  store i8 1, i8* @flag_dump_includes, align 1, !dbg !2462
  br label %sw.epilog, !dbg !2463

sw.epilog:                                        ; preds = %while.body, %sw.bb3, %sw.bb
  br label %while.cond, !dbg !2453, !llvm.loop !2464

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2466
}

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #1

declare dso_local void @disable_builtin_function(i8*) local_unnamed_addr #1

declare dso_local void @set_struct_debug_option(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_prefixed_path(i8* %suffix, i64 %chain) unnamed_addr #3 !dbg !2467 {
entry:
  call void @llvm.dbg.value(metadata i8* %suffix, metadata !2471, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %chain, metadata !2472, metadata !DIExpression()), !dbg !2477
  %call = tail call i64 @strlen(i8* %suffix) #5, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %call, metadata !2476, metadata !DIExpression()), !dbg !2477
  %0 = load i8*, i8** @iprefix, align 8, !dbg !2479
  %tobool = icmp eq i8* %0, null, !dbg !2479
  %cond = select i1 %tobool, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_GCC_INCLUDE_DIR, i64 0, i64 0), i8* %0, !dbg !2479
  call void @llvm.dbg.value(metadata i8* %cond, metadata !2474, metadata !DIExpression()), !dbg !2477
  br i1 %tobool, label %cond.false4, label %cond.true2, !dbg !2480

cond.true2:                                       ; preds = %entry
  %call3 = tail call i64 @strlen(i8* nonnull %0) #5, !dbg !2481
  br label %cond.end5, !dbg !2480

cond.false4:                                      ; preds = %entry
  %1 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8, !dbg !2482
  br label %cond.end5, !dbg !2480

cond.end5:                                        ; preds = %cond.false4, %cond.true2
  %cond6 = phi i64 [ %call3, %cond.true2 ], [ %1, %cond.false4 ], !dbg !2480
  call void @llvm.dbg.value(metadata i64 %cond6, metadata !2475, metadata !DIExpression()), !dbg !2477
  %add = add i64 %cond6, %call, !dbg !2483
  %add7 = add i64 %add, 1, !dbg !2484
  %call8 = tail call i8* @xmalloc(i64 %add7) #5, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %call8, metadata !2473, metadata !DIExpression()), !dbg !2477
  %call9 = tail call i8* @memcpy(i8* %call8, i8* %cond, i64 %cond6) #5, !dbg !2486
  %add.ptr = getelementptr inbounds i8, i8* %call8, i64 %cond6, !dbg !2487
  %call10 = tail call i8* @memcpy(i8* %add.ptr, i8* %suffix, i64 %call) #5, !dbg !2488
  %arrayidx = getelementptr inbounds i8, i8* %call8, i64 %add, !dbg !2489
  store i8 0, i8* %arrayidx, align 1, !dbg !2490
  %conv = trunc i64 %chain to i32, !dbg !2491
  tail call void @add_path(i8* %call8, i32 %conv, i32 0, i8 zeroext 0) #5, !dbg !2492
  ret void, !dbg !2493
}

declare dso_local void @cpp_set_lang(%struct.cpp_reader*, i32) local_unnamed_addr #1

declare dso_local void @c_common_print_pch_checksum(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @set_std_cxx0x(i32 %iso) unnamed_addr #3 !dbg !2494 {
entry:
  call void @llvm.dbg.value(metadata i32 %iso, metadata !2496, metadata !DIExpression()), !dbg !2497
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2498
  %tobool = icmp eq i32 %iso, 0, !dbg !2499
  %cond = select i1 %tobool, i32 7, i32 8, !dbg !2499
  tail call void @cpp_set_lang(%struct.cpp_reader* %0, i32 %cond) #5, !dbg !2500
  store i32 %iso, i32* @flag_no_gnu_keywords, align 4, !dbg !2501
  store i32 %iso, i32* @flag_no_nonansi_builtin, align 4, !dbg !2502
  store i32 %iso, i32* @flag_iso, align 4, !dbg !2503
  store i32 1, i32* @cxx_dialect, align 4, !dbg !2504
  ret void, !dbg !2505
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_std_c99(i32 %iso) unnamed_addr #3 !dbg !2506 {
entry:
  call void @llvm.dbg.value(metadata i32 %iso, metadata !2508, metadata !DIExpression()), !dbg !2509
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2510
  %tobool = icmp eq i32 %iso, 0, !dbg !2511
  %cond = select i1 %tobool, i32 1, i32 4, !dbg !2511
  tail call void @cpp_set_lang(%struct.cpp_reader* %0, i32 %cond) #5, !dbg !2512
  store i32 %iso, i32* @flag_no_asm, align 4, !dbg !2513
  store i32 %iso, i32* @flag_no_nonansi_builtin, align 4, !dbg !2514
  store i32 %iso, i32* @flag_iso, align 4, !dbg !2515
  store i32 1, i32* @flag_isoc99, align 4, !dbg !2516
  store i32 1, i32* @flag_isoc94, align 4, !dbg !2517
  ret void, !dbg !2518
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @c_common_post_options(i8** %pfilename) local_unnamed_addr #3 !dbg !2519 {
entry:
  call void @llvm.dbg.value(metadata i8** %pfilename, metadata !2523, metadata !DIExpression()), !dbg !2525
  %0 = load i8**, i8*** @in_fnames, align 8, !dbg !2526
  %cmp = icmp eq i8** %0, null, !dbg !2528
  br i1 %cmp, label %if.then, label %if.else, !dbg !2529

if.then:                                          ; preds = %entry
  %call = tail call i8* @xmalloc(i64 8) #5, !dbg !2530
  store i8* %call, i8** bitcast (i8*** @in_fnames to i8**), align 8, !dbg !2532
  %.cast = bitcast i8* %call to i8**, !dbg !2533
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8** %.cast, align 8, !dbg !2534
  br label %if.end6, !dbg !2535

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %0, align 8, !dbg !2536
  %call2 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !2538
  %cmp3 = icmp eq i32 %call2, 0, !dbg !2539
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2540

if.then4:                                         ; preds = %if.else
  %2 = load i8**, i8*** @in_fnames, align 8, !dbg !2541
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8, !dbg !2542
  br label %if.end6, !dbg !2541

if.end6:                                          ; preds = %if.else, %if.then4, %if.then
  %3 = load i8*, i8** @out_fname, align 8, !dbg !2543
  %cmp7 = icmp eq i8* %3, null, !dbg !2545
  br i1 %cmp7, label %if.then9, label %lor.lhs.false, !dbg !2546

lor.lhs.false:                                    ; preds = %if.end6
  %call8 = tail call i32 @strcmp(i8* nonnull %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !2547
  %tobool = icmp eq i32 %call8, 0, !dbg !2547
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !2548

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), i8** @out_fname, align 8, !dbg !2549
  br label %if.end10, !dbg !2550

if.end10:                                         ; preds = %lor.lhs.false, %if.then9
  %4 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2551
  %style = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %4, i64 0, i32 43, i32 0, !dbg !2553
  %5 = load i32, i32* %style, align 8, !dbg !2553
  %cmp11 = icmp eq i32 %5, 0, !dbg !2554
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2555

if.then12:                                        ; preds = %if.end10
  tail call fastcc void @check_deps_environment_vars() #6, !dbg !2556
  br label %if.end13, !dbg !2556

if.end13:                                         ; preds = %if.then12, %if.end10
  tail call fastcc void @handle_deferred_opts() #6, !dbg !2557
  tail call fastcc void @sanitize_cpp_opts() #6, !dbg !2558
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2559
  %7 = load i8*, i8** @sysroot, align 8, !dbg !2560
  %8 = load i8*, i8** @iprefix, align 8, !dbg !2561
  %9 = load i8*, i8** @imultilib, align 8, !dbg !2562
  %.b = load i1, i1* @std_inc, align 1, !dbg !2563
  %not..b = xor i1 %.b, true, !dbg !2563
  %conv = zext i1 %not..b to i32, !dbg !2563
  %.b4 = load i1, i1* @std_cxx_inc, align 1, !dbg !2564
  br i1 %.b4, label %land.end, label %land.rhs, !dbg !2565

land.rhs:                                         ; preds = %if.end13
  %10 = load i32, i32* @c_language, align 4, !dbg !2566
  %and = and i32 %10, 2, !dbg !2566
  %cmp16 = icmp ne i32 %and, 0, !dbg !2566
  br label %land.end

land.end:                                         ; preds = %if.end13, %land.rhs
  %11 = phi i1 [ false, %if.end13 ], [ %cmp16, %land.rhs ], !dbg !2525
  %land.ext = zext i1 %11 to i32, !dbg !2565
  %.b5 = load i1, i1* @verbose, align 1, !dbg !2567
  %conv18 = zext i1 %.b5 to i32, !dbg !2567
  tail call void @register_include_chains(%struct.cpp_reader* %6, i8* %7, i8* %8, i8* %9, i32 %conv, i32 %land.ext, i32 %conv18) #5, !dbg !2568
  %12 = load i32, i32* @c_language, align 4, !dbg !2569
  %and19 = and i32 %12, 2, !dbg !2569
  %cmp20 = icmp eq i32 %and19, 0, !dbg !2569
  %13 = load i32, i32* @flag_excess_precision_cmdline, align 4, !dbg !2571
  br i1 %cmp20, label %if.else27, label %if.then22, !dbg !2572

if.then22:                                        ; preds = %land.end
  %cmp23 = icmp eq i32 %13, 2, !dbg !2573
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !2576

if.then25:                                        ; preds = %if.then22
  tail call void (i8*, ...) @sorry(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0)) #5, !dbg !2577
  br label %if.end26, !dbg !2577

if.end26:                                         ; preds = %if.then25, %if.then22
  store i32 1, i32* @flag_excess_precision_cmdline, align 4, !dbg !2578
  br label %if.end33, !dbg !2579

if.else27:                                        ; preds = %land.end
  %cmp28 = icmp eq i32 %13, 0, !dbg !2580
  br i1 %cmp28, label %if.then30, label %if.end33, !dbg !2582

if.then30:                                        ; preds = %if.else27
  %14 = load i32, i32* @flag_iso, align 4, !dbg !2583
  %tobool31 = icmp eq i32 %14, 0, !dbg !2583
  %cond = select i1 %tobool31, i32 1, i32 2, !dbg !2583
  store i32 %cond, i32* @flag_excess_precision_cmdline, align 4, !dbg !2584
  br label %if.end33, !dbg !2585

if.end33:                                         ; preds = %if.else27, %if.then30, %if.end26
  %15 = load i32, i32* @flag_gnu89_inline, align 4, !dbg !2586
  %cmp34 = icmp eq i32 %15, -1, !dbg !2588
  br i1 %cmp34, label %if.then36, label %if.else38, !dbg !2589

if.then36:                                        ; preds = %if.end33
  %16 = load i32, i32* @flag_isoc99, align 4, !dbg !2590
  %tobool37 = icmp eq i32 %16, 0, !dbg !2591
  %lnot.ext = zext i1 %tobool37 to i32, !dbg !2591
  store i32 %lnot.ext, i32* @flag_gnu89_inline, align 4, !dbg !2592
  br label %if.end43, !dbg !2593

if.else38:                                        ; preds = %if.end33
  %17 = load i32, i32* @flag_isoc99, align 4, !dbg !2594
  %18 = or i32 %15, %17, !dbg !2596
  %19 = icmp eq i32 %18, 0, !dbg !2596
  br i1 %19, label %if.then41, label %if.end43, !dbg !2596

if.then41:                                        ; preds = %if.else38
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0)) #5, !dbg !2597
  br label %if.end43, !dbg !2597

if.end43:                                         ; preds = %if.else38, %if.then41, %if.then36
  %20 = load i32, i32* @flag_objc_sjlj_exceptions, align 4, !dbg !2598
  %cmp44 = icmp slt i32 %20, 0, !dbg !2600
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !2601

if.then46:                                        ; preds = %if.end43
  %21 = load i32, i32* @flag_next_runtime, align 4, !dbg !2602
  store i32 %21, i32* @flag_objc_sjlj_exceptions, align 4, !dbg !2603
  br label %if.end47, !dbg !2604

if.end47:                                         ; preds = %if.then46, %if.end43
  %22 = phi i32 [ %21, %if.then46 ], [ %20, %if.end43 ], !dbg !2605
  %23 = load i32, i32* @flag_objc_exceptions, align 4, !dbg !2607
  %tobool48 = icmp eq i32 %23, 0, !dbg !2607
  %tobool50 = icmp ne i32 %22, 0, !dbg !2605
  %or.cond1 = or i1 %tobool48, %tobool50, !dbg !2608
  br i1 %or.cond1, label %if.end52, label %if.then51, !dbg !2608

if.then51:                                        ; preds = %if.end47
  store i32 1, i32* @flag_exceptions, align 4, !dbg !2609
  br label %if.end52, !dbg !2610

if.end52:                                         ; preds = %if.end47, %if.then51
  %24 = load i32, i32* @warn_type_limits, align 4, !dbg !2611
  %cmp53 = icmp eq i32 %24, -1, !dbg !2613
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !2614

if.then55:                                        ; preds = %if.end52
  %25 = load i32, i32* @extra_warnings, align 4, !dbg !2615
  store i32 %25, i32* @warn_type_limits, align 4, !dbg !2616
  br label %if.end56, !dbg !2617

if.end56:                                         ; preds = %if.then55, %if.end52
  %26 = load i32, i32* @warn_clobbered, align 4, !dbg !2618
  %cmp57 = icmp eq i32 %26, -1, !dbg !2620
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !2621

if.then59:                                        ; preds = %if.end56
  %27 = load i32, i32* @extra_warnings, align 4, !dbg !2622
  store i32 %27, i32* @warn_clobbered, align 4, !dbg !2623
  br label %if.end60, !dbg !2624

if.end60:                                         ; preds = %if.then59, %if.end56
  %28 = load i32, i32* @warn_empty_body, align 4, !dbg !2625
  %cmp61 = icmp eq i32 %28, -1, !dbg !2627
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !2628

if.then63:                                        ; preds = %if.end60
  %29 = load i32, i32* @extra_warnings, align 4, !dbg !2629
  store i32 %29, i32* @warn_empty_body, align 4, !dbg !2630
  br label %if.end64, !dbg !2631

if.end64:                                         ; preds = %if.then63, %if.end60
  %30 = load i32, i32* @warn_sign_compare, align 4, !dbg !2632
  %cmp65 = icmp eq i32 %30, -1, !dbg !2634
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !2635

if.then67:                                        ; preds = %if.end64
  %31 = load i32, i32* @extra_warnings, align 4, !dbg !2636
  store i32 %31, i32* @warn_sign_compare, align 4, !dbg !2637
  br label %if.end68, !dbg !2638

if.end68:                                         ; preds = %if.then67, %if.end64
  %32 = load i32, i32* @warn_missing_field_initializers, align 4, !dbg !2639
  %cmp69 = icmp eq i32 %32, -1, !dbg !2641
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !2642

if.then71:                                        ; preds = %if.end68
  %33 = load i32, i32* @extra_warnings, align 4, !dbg !2643
  store i32 %33, i32* @warn_missing_field_initializers, align 4, !dbg !2644
  br label %if.end72, !dbg !2645

if.end72:                                         ; preds = %if.then71, %if.end68
  %34 = load i32, i32* @warn_missing_parameter_type, align 4, !dbg !2646
  %cmp73 = icmp eq i32 %34, -1, !dbg !2648
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !2649

if.then75:                                        ; preds = %if.end72
  %35 = load i32, i32* @extra_warnings, align 4, !dbg !2650
  store i32 %35, i32* @warn_missing_parameter_type, align 4, !dbg !2651
  br label %if.end76, !dbg !2652

if.end76:                                         ; preds = %if.then75, %if.end72
  %36 = load i32, i32* @warn_old_style_declaration, align 4, !dbg !2653
  %cmp77 = icmp eq i32 %36, -1, !dbg !2655
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !2656

if.then79:                                        ; preds = %if.end76
  %37 = load i32, i32* @extra_warnings, align 4, !dbg !2657
  store i32 %37, i32* @warn_old_style_declaration, align 4, !dbg !2658
  br label %if.end80, !dbg !2659

if.end80:                                         ; preds = %if.then79, %if.end76
  %38 = load i32, i32* @warn_override_init, align 4, !dbg !2660
  %cmp81 = icmp eq i32 %38, -1, !dbg !2662
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !2663

if.then83:                                        ; preds = %if.end80
  %39 = load i32, i32* @extra_warnings, align 4, !dbg !2664
  store i32 %39, i32* @warn_override_init, align 4, !dbg !2665
  br label %if.end84, !dbg !2666

if.end84:                                         ; preds = %if.then83, %if.end80
  %40 = load i32, i32* @warn_ignored_qualifiers, align 4, !dbg !2667
  %cmp85 = icmp eq i32 %40, -1, !dbg !2669
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !2670

if.then87:                                        ; preds = %if.end84
  %41 = load i32, i32* @extra_warnings, align 4, !dbg !2671
  store i32 %41, i32* @warn_ignored_qualifiers, align 4, !dbg !2672
  br label %if.end88, !dbg !2673

if.end88:                                         ; preds = %if.then87, %if.end84
  %42 = load i32, i32* @warn_pointer_sign, align 4, !dbg !2674
  %cmp89 = icmp eq i32 %42, -1, !dbg !2676
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !2677

if.then91:                                        ; preds = %if.end88
  store i32 0, i32* @warn_pointer_sign, align 4, !dbg !2678
  br label %if.end92, !dbg !2679

if.end92:                                         ; preds = %if.then91, %if.end88
  %43 = load i32, i32* @warn_strict_aliasing, align 4, !dbg !2680
  %cmp93 = icmp eq i32 %43, -1, !dbg !2682
  br i1 %cmp93, label %if.then95, label %if.end96, !dbg !2683

if.then95:                                        ; preds = %if.end92
  store i32 0, i32* @warn_strict_aliasing, align 4, !dbg !2684
  br label %if.end96, !dbg !2685

if.end96:                                         ; preds = %if.then95, %if.end92
  %44 = load i32, i32* @warn_strict_overflow, align 4, !dbg !2686
  %cmp97 = icmp eq i32 %44, -1, !dbg !2688
  br i1 %cmp97, label %if.then99, label %if.end100, !dbg !2689

if.then99:                                        ; preds = %if.end96
  store i32 0, i32* @warn_strict_overflow, align 4, !dbg !2690
  br label %if.end100, !dbg !2691

if.end100:                                        ; preds = %if.then99, %if.end96
  %45 = load i32, i32* @warn_jump_misses_init, align 4, !dbg !2692
  %cmp101 = icmp eq i32 %45, -1, !dbg !2694
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !2695

if.then103:                                       ; preds = %if.end100
  store i32 0, i32* @warn_jump_misses_init, align 4, !dbg !2696
  br label %if.end104, !dbg !2697

if.end104:                                        ; preds = %if.then103, %if.end100
  %46 = load i32, i32* @warn_overlength_strings, align 4, !dbg !2698
  %cmp105 = icmp eq i32 %46, -1, !dbg !2700
  br i1 %cmp105, label %if.then111, label %lor.lhs.false107, !dbg !2701

lor.lhs.false107:                                 ; preds = %if.end104
  %47 = load i32, i32* @c_language, align 4, !dbg !2702
  %and108 = and i32 %47, 2, !dbg !2702
  %cmp109 = icmp eq i32 %and108, 0, !dbg !2702
  br i1 %cmp109, label %if.end112, label %if.then111, !dbg !2703

if.then111:                                       ; preds = %lor.lhs.false107, %if.end104
  store i32 0, i32* @warn_overlength_strings, align 4, !dbg !2704
  br label %if.end112, !dbg !2705

if.end112:                                        ; preds = %lor.lhs.false107, %if.then111
  %48 = load i32, i32* @warn_main, align 4, !dbg !2706
  %cmp113 = icmp eq i32 %48, -1, !dbg !2708
  br i1 %cmp113, label %if.then115, label %if.else124, !dbg !2709

if.then115:                                       ; preds = %if.end112
  %49 = load i32, i32* @c_language, align 4, !dbg !2710
  %and116 = and i32 %49, 2, !dbg !2710
  %cmp117 = icmp ne i32 %and116, 0, !dbg !2710
  %50 = load i32, i32* @flag_hosted, align 4, !dbg !2711
  %tobool120 = icmp ne i32 %50, 0, !dbg !2711
  %51 = and i1 %tobool120, %cmp117, !dbg !2711
  %cond123 = zext i1 %51 to i32, !dbg !2712
  store i32 %cond123, i32* @warn_main, align 4, !dbg !2713
  br label %if.end131, !dbg !2714

if.else124:                                       ; preds = %if.end112
  %cmp125 = icmp eq i32 %48, 2, !dbg !2715
  br i1 %cmp125, label %if.then127, label %if.end131, !dbg !2717

if.then127:                                       ; preds = %if.else124
  %52 = load i32, i32* @flag_hosted, align 4, !dbg !2718
  %tobool128 = icmp ne i32 %52, 0, !dbg !2718
  %cond129 = zext i1 %tobool128 to i32, !dbg !2718
  store i32 %cond129, i32* @warn_main, align 4, !dbg !2719
  br label %if.end131, !dbg !2720

if.end131:                                        ; preds = %if.else124, %if.then127, %if.then115
  %53 = load i32, i32* @warn_sign_conversion, align 4, !dbg !2721
  %cmp132 = icmp eq i32 %53, -1, !dbg !2723
  br i1 %cmp132, label %if.then134, label %if.end139, !dbg !2724

if.then134:                                       ; preds = %if.end131
  %54 = load i32, i32* @c_language, align 4, !dbg !2725
  %and135 = and i32 %54, 2, !dbg !2725
  %cmp136 = icmp eq i32 %and135, 0, !dbg !2725
  %55 = load i32, i32* @warn_conversion, align 4, !dbg !2726
  %cond138 = select i1 %cmp136, i32 %55, i32 0, !dbg !2726
  store i32 %cond138, i32* @warn_sign_conversion, align 4, !dbg !2727
  br label %if.end139, !dbg !2728

if.end139:                                        ; preds = %if.then134, %if.end131
  %56 = load i32, i32* @warn_enum_compare, align 4, !dbg !2729
  %cmp140 = icmp eq i32 %56, -1, !dbg !2731
  br i1 %cmp140, label %if.then142, label %if.end147, !dbg !2732

if.then142:                                       ; preds = %if.end139
  %57 = load i32, i32* @c_language, align 4, !dbg !2733
  %and143 = lshr i32 %57, 1, !dbg !2733
  %and143.lobit = and i32 %and143, 1, !dbg !2733
  store i32 %and143.lobit, i32* @warn_enum_compare, align 4, !dbg !2734
  br label %if.end147, !dbg !2735

if.end147:                                        ; preds = %if.then142, %if.end139
  %58 = load i32, i32* @warn_packed_bitfield_compat, align 4, !dbg !2736
  %cmp148 = icmp eq i32 %58, -1, !dbg !2738
  br i1 %cmp148, label %if.then150, label %if.end151, !dbg !2739

if.then150:                                       ; preds = %if.end147
  store i32 1, i32* @warn_packed_bitfield_compat, align 4, !dbg !2740
  br label %if.end151, !dbg !2741

if.end151:                                        ; preds = %if.then150, %if.end147
  %59 = load i32, i32* @warn_format, align 4, !dbg !2742
  %tobool152 = icmp eq i32 %59, 0, !dbg !2742
  br i1 %tobool152, label %if.then153, label %if.end160, !dbg !2744

if.then153:                                       ; preds = %if.end151
  %call154 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0)) #5, !dbg !2745
  %call155 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !2747
  %call156 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0)) #5, !dbg !2748
  %call157 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 94, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !2749
  %call158 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 92, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0)) #5, !dbg !2750
  %call159 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0)) #5, !dbg !2751
  br label %if.end160, !dbg !2752

if.end160:                                        ; preds = %if.end151, %if.then153
  %60 = load i32, i32* @warn_implicit_function_declaration, align 4, !dbg !2753
  %cmp161 = icmp eq i32 %60, -1, !dbg !2755
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !2756

if.then163:                                       ; preds = %if.end160
  %61 = load i32, i32* @flag_isoc99, align 4, !dbg !2757
  store i32 %61, i32* @warn_implicit_function_declaration, align 4, !dbg !2758
  br label %if.end164, !dbg !2759

if.end164:                                        ; preds = %if.then163, %if.end160
  %62 = load i32, i32* @cxx_dialect, align 4, !dbg !2760
  %cmp165 = icmp eq i32 %62, 1, !dbg !2762
  br i1 %cmp165, label %if.then167, label %if.end168, !dbg !2763

if.then167:                                       ; preds = %if.end164
  store i32 0, i32* @warn_cxx0x_compat, align 4, !dbg !2764
  br label %if.end168, !dbg !2765

if.end168:                                        ; preds = %if.then167, %if.end164
  %63 = load i32, i32* @flag_preprocess_only, align 4, !dbg !2766
  %tobool169 = icmp eq i32 %63, 0, !dbg !2766
  br i1 %tobool169, label %if.else187, label %if.then170, !dbg !2768

if.then170:                                       ; preds = %if.end168
  %64 = load i8*, i8** @out_fname, align 8, !dbg !2769
  %65 = load i8, i8* %64, align 1, !dbg !2769
  %cmp173 = icmp eq i8 %65, 0, !dbg !2772
  br i1 %cmp173, label %if.then175, label %if.else176, !dbg !2773

if.then175:                                       ; preds = %if.then170
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2774
  br label %if.end178, !dbg !2775

if.else176:                                       ; preds = %if.then170
  %call177 = tail call %struct._IO_FILE* @fopen_unlocked(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #5, !dbg !2776
  br label %if.end178

if.end178:                                        ; preds = %if.else176, %if.then175
  %storemerge = phi %struct._IO_FILE* [ %call177, %if.else176 ], [ %66, %if.then175 ], !dbg !2777
  store %struct._IO_FILE* %storemerge, %struct._IO_FILE** @out_stream, align 8, !dbg !2777
  %cmp179 = icmp eq %struct._IO_FILE* %storemerge, null, !dbg !2778
  br i1 %cmp179, label %if.then181, label %if.end182, !dbg !2780

if.then181:                                       ; preds = %if.end178
  %67 = load i8*, i8** @out_fname, align 8, !dbg !2781
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i8* %67) #5, !dbg !2783
  br label %cleanup, !dbg !2784

if.end182:                                        ; preds = %if.end178
  %68 = load i32, i32* @num_in_fnames, align 4, !dbg !2785
  %cmp183 = icmp ugt i32 %68, 1, !dbg !2787
  br i1 %cmp183, label %if.then185, label %if.end186, !dbg !2788

if.then185:                                       ; preds = %if.end182
  %69 = load i8*, i8** @progname, align 8, !dbg !2789
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i64 0, i64 0), i8* %69) #5, !dbg !2790
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** @out_stream, align 8, !dbg !2791
  br label %if.end186, !dbg !2790

if.end186:                                        ; preds = %if.then185, %if.end182
  %70 = phi %struct._IO_FILE* [ %.pre, %if.then185 ], [ %storemerge, %if.end182 ], !dbg !2791
  tail call void @init_pp_output(%struct._IO_FILE* %70) #5, !dbg !2792
  br label %if.end188, !dbg !2793

if.else187:                                       ; preds = %if.end168
  tail call void @init_c_lex() #5, !dbg !2794
  store i32 0, i32* @input_location, align 4, !dbg !2796
  br label %if.end188

if.end188:                                        ; preds = %if.else187, %if.end186
  %71 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2797
  %call189 = tail call %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %71) #5, !dbg !2798
  call void @llvm.dbg.value(metadata %struct.cpp_callbacks* %call189, metadata !2524, metadata !DIExpression()), !dbg !2525
  %file_change = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call189, i64 0, i32 1, !dbg !2799
  store void (%struct.cpp_reader*, %struct.line_map*)* @cb_file_change, void (%struct.cpp_reader*, %struct.line_map*)** %file_change, align 8, !dbg !2800
  %dir_change = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call189, i64 0, i32 2, !dbg !2801
  store void (%struct.cpp_reader*, i8*)* @cb_dir_change, void (%struct.cpp_reader*, i8*)** %dir_change, align 8, !dbg !2802
  %72 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2803
  tail call void @cpp_post_options(%struct.cpp_reader* %72) #5, !dbg !2804
  store i32 0, i32* @input_location, align 4, !dbg !2805
  %73 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2806
  %74 = load i8**, i8*** @in_fnames, align 8, !dbg !2807
  %75 = load i8*, i8** %74, align 8, !dbg !2807
  %call191 = tail call i8* @cpp_read_main_file(%struct.cpp_reader* %73, i8* %75) #5, !dbg !2808
  store i8* %call191, i8** @this_input_filename, align 8, !dbg !2809
  store i8* %call191, i8** %pfilename, align 8, !dbg !2810
  %76 = load i8*, i8** @this_input_filename, align 8, !dbg !2811
  %cmp192 = icmp eq i8* %76, null, !dbg !2813
  br i1 %cmp192, label %if.then194, label %if.end196, !dbg !2814

if.then194:                                       ; preds = %if.end188
  %77 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2815
  %arrayidx195 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %77, i64 0, i32 1, i64 4, !dbg !2815
  %78 = load i32, i32* %arrayidx195, align 8, !dbg !2817
  %inc = add nsw i32 %78, 1, !dbg !2817
  store i32 %inc, i32* %arrayidx195, align 8, !dbg !2817
  br label %cleanup, !dbg !2818

if.end196:                                        ; preds = %if.end188
  %79 = load i32, i32* @flag_working_directory, align 4, !dbg !2819
  %tobool197 = icmp eq i32 %79, 0, !dbg !2819
  %80 = load i32, i32* @flag_preprocess_only, align 4, !dbg !2821
  %tobool199 = icmp eq i32 %80, 0, !dbg !2821
  %or.cond2.not = or i1 %tobool199, %tobool197, !dbg !2822
  %81 = load i8, i8* @flag_no_line_commands, align 1, !dbg !2823
  %tobool201 = icmp ne i8 %81, 0, !dbg !2823
  %or.cond3 = or i1 %or.cond2.not, %tobool201, !dbg !2822
  br i1 %or.cond3, label %if.end204, label %if.then202, !dbg !2822

if.then202:                                       ; preds = %if.end196
  %82 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2824
  %call203 = tail call i8* @get_src_pwd() #5, !dbg !2825
  tail call void @pp_dir_change(%struct.cpp_reader* %82, i8* %call203) #5, !dbg !2826
  %.pre6 = load i32, i32* @flag_preprocess_only, align 4, !dbg !2827
  br label %if.end204, !dbg !2826

if.end204:                                        ; preds = %if.end196, %if.then202
  %83 = phi i32 [ %80, %if.end196 ], [ %.pre6, %if.then202 ], !dbg !2827
  %conv205 = trunc i32 %83 to i8, !dbg !2827
  br label %cleanup, !dbg !2828

cleanup:                                          ; preds = %if.end204, %if.then194, %if.then181
  %retval.0 = phi i8 [ 0, %if.then181 ], [ 0, %if.then194 ], [ %conv205, %if.end204 ], !dbg !2525
  ret i8 %retval.0, !dbg !2829
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_deps_environment_vars() unnamed_addr #3 !dbg !2830 {
entry:
  %call = tail call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0)) #5, !dbg !2838
  call void @llvm.dbg.value(metadata i8* %call, metadata !2834, metadata !DIExpression()), !dbg !2840
  %tobool = icmp eq i8* %call, null, !dbg !2841
  br i1 %tobool, label %do.body1, label %if.then, !dbg !2843

if.then:                                          ; preds = %entry
  %0 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2844
  %style = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %0, i64 0, i32 43, i32 0, !dbg !2845
  store i32 1, i32* %style, align 8, !dbg !2846
  br label %if.end10, !dbg !2844

do.body1:                                         ; preds = %entry
  %call2 = tail call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0)) #5, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2834, metadata !DIExpression()), !dbg !2840
  %tobool5 = icmp eq i8* %call2, null, !dbg !2850
  br i1 %tobool5, label %if.end10, label %if.then6, !dbg !2852

if.then6:                                         ; preds = %do.body1
  %1 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2853
  %style8 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %1, i64 0, i32 43, i32 0, !dbg !2855
  store i32 2, i32* %style8, align 8, !dbg !2856
  %ignore_main_file = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %1, i64 0, i32 43, i32 3, !dbg !2857
  store i8 1, i8* %ignore_main_file, align 2, !dbg !2858
  br label %if.end10, !dbg !2859

if.end10:                                         ; preds = %do.body1, %if.then6, %if.then
  %spec.0 = phi i8* [ %call, %if.then ], [ %call2, %if.then6 ], [ null, %do.body1 ], !dbg !2840
  call void @llvm.dbg.value(metadata i8* %spec.0, metadata !2834, metadata !DIExpression()), !dbg !2840
  %tobool11 = icmp eq i8* %spec.0, null, !dbg !2860
  br i1 %tobool11, label %if.end20, label %if.then12, !dbg !2861

if.then12:                                        ; preds = %if.end10
  %call13 = tail call i8* @strchr(i8* nonnull %spec.0, i32 32) #5, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %call13, metadata !2835, metadata !DIExpression()), !dbg !2863
  %tobool14 = icmp eq i8* %call13, null, !dbg !2864
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !2866

if.then15:                                        ; preds = %if.then12
  %add.ptr = getelementptr inbounds i8, i8* %call13, i64 1, !dbg !2867
  tail call fastcc void @defer_opt(i32 26, i8* nonnull %add.ptr) #6, !dbg !2869
  store i8 0, i8* %call13, align 1, !dbg !2870
  br label %if.end16, !dbg !2871

if.end16:                                         ; preds = %if.then12, %if.then15
  %2 = load i8*, i8** @deps_file, align 8, !dbg !2872
  %tobool17 = icmp eq i8* %2, null, !dbg !2872
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2874

if.then18:                                        ; preds = %if.end16
  store i8* %spec.0, i8** @deps_file, align 8, !dbg !2875
  br label %if.end19, !dbg !2876

if.end19:                                         ; preds = %if.end16, %if.then18
  store i1 true, i1* @deps_append, align 1, !dbg !2877
  store i1 true, i1* @deps_seen, align 1, !dbg !2878
  br label %if.end20, !dbg !2879

if.end20:                                         ; preds = %if.end10, %if.end19
  ret void, !dbg !2880
}

; Function Attrs: nounwind uwtable
define internal fastcc void @handle_deferred_opts() unnamed_addr #3 !dbg !2881 {
entry:
  %.b = load i1, i1* @deps_seen, align 1, !dbg !2891
  br i1 %.b, label %if.end, label %cleanup.cont, !dbg !2893

if.end:                                           ; preds = %entry
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2894
  %call = tail call %struct.deps* @cpp_get_deps(%struct.cpp_reader* %0) #5, !dbg !2895
  call void @llvm.dbg.value(metadata %struct.deps* %call, metadata !2884, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i64 0, metadata !2883, metadata !DIExpression()), !dbg !2896
  br label %for.cond, !dbg !2897

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i64 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !2898
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2883, metadata !DIExpression()), !dbg !2896
  %1 = load i64, i64* @deferred_count, align 8, !dbg !2899
  %cmp = icmp ult i64 %i.0, %1, !dbg !2900
  br i1 %cmp, label %for.body, label %cleanup.cont.loopexit, !dbg !2901

for.body:                                         ; preds = %for.cond
  %2 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8, !dbg !2902
  call void @llvm.dbg.value(metadata %struct.deferred_opt* undef, metadata !2887, metadata !DIExpression()), !dbg !2903
  %code = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %2, i64 %i.0, i32 0, !dbg !2904
  %3 = load i32, i32* %code, align 8, !dbg !2904
  %cmp1 = icmp eq i32 %3, 26, !dbg !2906
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !2907

lor.lhs.false:                                    ; preds = %for.body
  %cmp3 = icmp eq i32 %3, 25, !dbg !2908
  br i1 %cmp3, label %if.then4, label %for.inc, !dbg !2909

if.then4:                                         ; preds = %lor.lhs.false, %for.body
  %arg = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %2, i64 %i.0, i32 1, !dbg !2910
  %4 = load i8*, i8** %arg, align 8, !dbg !2910
  %cmp6 = icmp eq i32 %3, 25, !dbg !2911
  %conv = zext i1 %cmp6 to i32, !dbg !2911
  tail call void @deps_add_target(%struct.deps* %call, i8* %4, i32 %conv) #5, !dbg !2912
  br label %for.inc, !dbg !2912

for.inc:                                          ; preds = %lor.lhs.false, %if.then4
  %inc = add i64 %i.0, 1, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2883, metadata !DIExpression()), !dbg !2896
  br label %for.cond, !dbg !2914, !llvm.loop !2915

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !2917

cleanup.cont:                                     ; preds = %entry, %cleanup.cont.loopexit
  ret void, !dbg !2917
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sanitize_cpp_opts() unnamed_addr #3 !dbg !2918 {
entry:
  %.b = load i1, i1* @deps_seen, align 1, !dbg !2919
  br i1 %.b, label %land.lhs.true, label %if.end, !dbg !2921

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2922
  %style = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %0, i64 0, i32 43, i32 0, !dbg !2923
  %1 = load i32, i32* %style, align 8, !dbg !2923
  %cmp = icmp eq i32 %1, 0, !dbg !2924
  br i1 %cmp, label %if.then, label %if.end, !dbg !2925

if.then:                                          ; preds = %land.lhs.true
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i64 0, i64 0)) #5, !dbg !2926
  br label %if.end, !dbg !2926

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  %2 = load i8, i8* @flag_dump_macros, align 1, !dbg !2927
  %cmp3 = icmp eq i8 %2, 77, !dbg !2929
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !2930

if.then5:                                         ; preds = %if.end
  store i8 1, i8* @flag_no_output, align 1, !dbg !2931
  br label %if.end6, !dbg !2932

if.end6:                                          ; preds = %if.then5, %if.end
  %3 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2933
  %directives_only = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %3, i64 0, i32 52, !dbg !2935
  %4 = load i8, i8* %directives_only, align 4, !dbg !2935
  %tobool8 = icmp eq i8 %4, 0, !dbg !2933
  br i1 %tobool8, label %if.end14, label %land.lhs.true9, !dbg !2936

land.lhs.true9:                                   ; preds = %if.end6
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %3, i64 0, i32 32, !dbg !2937
  %5 = load i8, i8* %preprocessed, align 2, !dbg !2937
  %6 = or i8 %5, %2, !dbg !2938
  %7 = icmp eq i8 %6, 0, !dbg !2938
  br i1 %7, label %if.then13, label %if.end14, !dbg !2938

if.then13:                                        ; preds = %land.lhs.true9
  store i8 68, i8* @flag_dump_macros, align 1, !dbg !2939
  br label %if.end14, !dbg !2940

if.end14:                                         ; preds = %land.lhs.true9, %if.end6, %if.then13
  %8 = phi i8 [ %2, %land.lhs.true9 ], [ %2, %if.end6 ], [ 68, %if.then13 ]
  %9 = load i8, i8* @flag_no_output, align 1, !dbg !2941
  %tobool15 = icmp eq i8 %9, 0, !dbg !2941
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !2943

if.then16:                                        ; preds = %if.end14
  %cmp18 = icmp eq i8 %8, 77, !dbg !2944
  br i1 %cmp18, label %if.end21, label %if.then20, !dbg !2947

if.then20:                                        ; preds = %if.then16
  store i8 0, i8* @flag_dump_macros, align 1, !dbg !2948
  br label %if.end21, !dbg !2949

if.end21:                                         ; preds = %if.then16, %if.then20
  store i8 0, i8* @flag_dump_includes, align 1, !dbg !2950
  store i8 1, i8* @flag_no_line_commands, align 1, !dbg !2951
  br label %if.end26, !dbg !2952

if.else:                                          ; preds = %if.end14
  %missing_files = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %3, i64 0, i32 43, i32 1, !dbg !2953
  %10 = load i8, i8* %missing_files, align 4, !dbg !2953
  %tobool23 = icmp eq i8 %10, 0, !dbg !2955
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !2956

if.then24:                                        ; preds = %if.else
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i64 0, i64 0)) #5, !dbg !2957
  %.pre = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !2958
  br label %if.end26, !dbg !2957

if.end26:                                         ; preds = %if.else, %if.then24, %if.end21
  %11 = phi %struct.cpp_options* [ %3, %if.else ], [ %.pre, %if.then24 ], [ %3, %if.end21 ], !dbg !2958
  %12 = load i32, i32* @flag_signed_char, align 4, !dbg !2959
  %tobool27 = icmp eq i32 %12, 0, !dbg !2960
  %conv28 = zext i1 %tobool27 to i8, !dbg !2960
  %unsigned_char = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %11, i64 0, i32 48, !dbg !2961
  store i8 %conv28, i8* %unsigned_char, align 8, !dbg !2962
  %stdc_0_in_system_headers = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %11, i64 0, i32 51, !dbg !2963
  store i8 0, i8* %stdc_0_in_system_headers, align 1, !dbg !2964
  %13 = load i32, i32* @warn_long_long, align 4, !dbg !2965
  %cmp29 = icmp eq i32 %13, -1, !dbg !2967
  br i1 %cmp29, label %if.then31, label %if.end42, !dbg !2968

if.then31:                                        ; preds = %if.end26
  %14 = load i32, i32* @pedantic, align 4, !dbg !2969
  %15 = load i32, i32* @warn_traditional, align 4, !dbg !2970
  %16 = or i32 %14, %15, !dbg !2971
  %17 = icmp eq i32 %16, 0, !dbg !2971
  br i1 %17, label %land.end, label %land.rhs, !dbg !2971

land.rhs:                                         ; preds = %if.then31
  %18 = load i32, i32* @c_language, align 4, !dbg !2972
  %and = and i32 %18, 2, !dbg !2972
  %cmp34 = icmp eq i32 %and, 0, !dbg !2972
  br i1 %cmp34, label %cond.false, label %cond.true, !dbg !2972

cond.true:                                        ; preds = %land.rhs
  br label %cond.end, !dbg !2972

cond.false:                                       ; preds = %land.rhs
  br label %cond.end, !dbg !2972

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in.in.in = phi i32* [ @cxx_dialect, %cond.true ], [ @flag_isoc99, %cond.false ]
  %cond.in.in = load i32, i32* %cond.in.in.in, align 4, !dbg !2973
  %cond.in = icmp eq i32 %cond.in.in, 0, !dbg !2973
  %cond = zext i1 %cond.in to i32, !dbg !2972
  br label %land.end

land.end:                                         ; preds = %if.then31, %cond.end
  %19 = phi i32 [ %cond, %cond.end ], [ 0, %if.then31 ]
  store i32 %19, i32* @warn_long_long, align 4, !dbg !2974
  br label %if.end42, !dbg !2975

if.end42:                                         ; preds = %land.end, %if.end26
  %20 = phi i32 [ %19, %land.end ], [ %13, %if.end26 ], !dbg !2976
  %conv43 = trunc i32 %20 to i8, !dbg !2976
  %warn_long_long = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %11, i64 0, i32 18, !dbg !2977
  store i8 %conv43, i8* %warn_long_long, align 8, !dbg !2978
  %21 = load i8, i8* @warn_variadic_macros, align 1, !dbg !2979
  %tobool45 = icmp eq i8 %21, 0, !dbg !2979
  br i1 %tobool45, label %land.end49, label %land.rhs46, !dbg !2980

land.rhs46:                                       ; preds = %if.end42
  %22 = load i32, i32* @pedantic, align 4, !dbg !2981
  %23 = load i32, i32* @warn_traditional, align 4, !dbg !2982
  %24 = or i32 %23, %22, !dbg !2982
  %25 = icmp ne i32 %24, 0, !dbg !2982
  %phitmp = zext i1 %25 to i8, !dbg !2982
  br label %land.end49, !dbg !2982

land.end49:                                       ; preds = %if.end42, %land.rhs46
  %26 = phi i8 [ 0, %if.end42 ], [ %phitmp, %land.rhs46 ]
  %warn_variadic_macros = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %11, i64 0, i32 21, !dbg !2983
  store i8 %26, i8* %warn_variadic_macros, align 1, !dbg !2984
  %27 = load i32, i32* @flag_working_directory, align 4, !dbg !2985
  %cmp52 = icmp eq i32 %27, -1, !dbg !2987
  br i1 %cmp52, label %if.then54, label %if.end57, !dbg !2988

if.then54:                                        ; preds = %land.end49
  %28 = load i32, i32* @debug_info_level, align 4, !dbg !2989
  %cmp55 = icmp ne i32 %28, 0, !dbg !2990
  %conv56 = zext i1 %cmp55 to i32, !dbg !2990
  store i32 %conv56, i32* @flag_working_directory, align 4, !dbg !2991
  br label %if.end57, !dbg !2992

if.end57:                                         ; preds = %if.then54, %land.end49
  %directives_only58 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %11, i64 0, i32 52, !dbg !2993
  %29 = load i8, i8* %directives_only58, align 4, !dbg !2993
  %tobool59 = icmp eq i8 %29, 0, !dbg !2995
  br i1 %tobool59, label %if.end67, label %if.then60, !dbg !2996

if.then60:                                        ; preds = %if.end57
  %30 = load i8, i8* @warn_unused_macros, align 1, !dbg !2997
  %tobool61 = icmp eq i8 %30, 0, !dbg !2997
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !3000

if.then62:                                        ; preds = %if.then60
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.47, i64 0, i64 0)) #5, !dbg !3001
  %.pre3 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !3002
  br label %if.end63, !dbg !3001

if.end63:                                         ; preds = %if.then60, %if.then62
  %31 = phi %struct.cpp_options* [ %11, %if.then60 ], [ %.pre3, %if.then62 ], !dbg !3002
  %traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %31, i64 0, i32 36, !dbg !3004
  %32 = load i8, i8* %traditional, align 2, !dbg !3004
  %tobool64 = icmp eq i8 %32, 0, !dbg !3002
  br i1 %tobool64, label %if.end67, label %if.then65, !dbg !3005

if.then65:                                        ; preds = %if.end63
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.48, i64 0, i64 0)) #5, !dbg !3006
  br label %if.end67, !dbg !3006

if.end67:                                         ; preds = %if.end63, %if.end57, %if.then65
  ret void, !dbg !3007
}

declare dso_local void @register_include_chains(%struct.cpp_reader*, i8*, i8*, i8*, i32, i32, i32) local_unnamed_addr #1

declare dso_local void @sorry(i8*, ...) local_unnamed_addr #1

declare dso_local %struct._IO_FILE* @fopen_unlocked(i8*, i8*) local_unnamed_addr #1

declare dso_local void @fatal_error(i8*, ...) local_unnamed_addr #1

declare dso_local void @init_pp_output(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @init_c_lex() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @cb_file_change(%struct.cpp_reader* %pfile, %struct.line_map* %new_map) #3 !dbg !3008 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3010, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata %struct.line_map* %new_map, metadata !3011, metadata !DIExpression()), !dbg !3012
  %0 = load i32, i32* @flag_preprocess_only, align 4, !dbg !3013
  %tobool = icmp eq i32 %0, 0, !dbg !3013
  br i1 %tobool, label %if.else, label %if.then, !dbg !3015

if.then:                                          ; preds = %entry
  tail call void @pp_file_change(%struct.line_map* %new_map) #5, !dbg !3016
  br label %if.end, !dbg !3016

if.else:                                          ; preds = %entry
  tail call void @fe_file_change(%struct.line_map* %new_map) #5, !dbg !3017
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp = icmp eq %struct.line_map* %new_map, null, !dbg !3018
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !3020

lor.lhs.false:                                    ; preds = %if.end
  %reason = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 4, !dbg !3021
  %bf.load = load i8, i8* %reason, align 4, !dbg !3021
  %cmp1 = icmp eq i8 %bf.load, 1, !dbg !3022
  br i1 %cmp1, label %land.lhs.true, label %if.end4, !dbg !3023

land.lhs.true:                                    ; preds = %lor.lhs.false
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %new_map, i64 0, i32 3, !dbg !3024
  %1 = load i32, i32* %included_from, align 8, !dbg !3024
  %cmp2 = icmp slt i32 %1, 0, !dbg !3024
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !3025

if.then3:                                         ; preds = %land.lhs.true, %if.end
  tail call fastcc void @push_command_line_include() #6, !dbg !3026
  br label %if.end4, !dbg !3026

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %lor.lhs.false
  ret void, !dbg !3027
}

; Function Attrs: nounwind uwtable
define internal void @cb_dir_change(%struct.cpp_reader* %pfile, i8* %dir) #3 !dbg !3028 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8* %dir, metadata !3031, metadata !DIExpression()), !dbg !3032
  %call = tail call zeroext i8 @set_src_pwd(i8* %dir) #5, !dbg !3033
  %tobool = icmp eq i8 %call, 0, !dbg !3033
  br i1 %tobool, label %if.then, label %if.end, !dbg !3035

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i64 0, i64 0)) #5, !dbg !3036
  br label %if.end, !dbg !3036

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3037
}

declare dso_local void @cpp_post_options(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local i8* @cpp_read_main_file(%struct.cpp_reader*, i8*) local_unnamed_addr #1

declare dso_local void @pp_dir_change(%struct.cpp_reader*, i8*) local_unnamed_addr #1

declare dso_local i8* @get_src_pwd() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @c_common_init() local_unnamed_addr #3 !dbg !3038 {
entry:
  %0 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 7) to %struct.tree_type**), align 8, !dbg !3041
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %0, i64 0, i32 6, !dbg !3041
  %bf.load = load i32, i32* %precision, align 4, !dbg !3041
  %bf.clear = and i32 %bf.load, 1023, !dbg !3041
  %conv = zext i32 %bf.clear to i64, !dbg !3041
  %1 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !3042
  %precision1 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %1, i64 0, i32 44, !dbg !3043
  store i64 %conv, i64* %precision1, align 8, !dbg !3044
  %2 = load %struct.tree_type*, %struct.tree_type** bitcast ([11 x %union.tree_node*]* @integer_types to %struct.tree_type**), align 16, !dbg !3045
  %precision3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %2, i64 0, i32 6, !dbg !3045
  %bf.load4 = load i32, i32* %precision3, align 4, !dbg !3045
  %bf.clear5 = and i32 %bf.load4, 1023, !dbg !3045
  %conv6 = zext i32 %bf.clear5 to i64, !dbg !3045
  %char_precision = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %1, i64 0, i32 45, !dbg !3046
  store i64 %conv6, i64* %char_precision, align 8, !dbg !3047
  %3 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5) to %struct.tree_type**), align 8, !dbg !3048
  %precision8 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !3048
  %bf.load9 = load i32, i32* %precision8, align 4, !dbg !3048
  %bf.clear10 = and i32 %bf.load9, 1023, !dbg !3048
  %conv11 = zext i32 %bf.clear10 to i64, !dbg !3048
  %int_precision = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %1, i64 0, i32 46, !dbg !3049
  store i64 %conv11, i64* %int_precision, align 8, !dbg !3050
  %4 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 2) to %struct.tree_type**), align 16, !dbg !3051
  %precision13 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %4, i64 0, i32 6, !dbg !3051
  %bf.load14 = load i32, i32* %precision13, align 4, !dbg !3051
  %bf.clear15 = and i32 %bf.load14, 1023, !dbg !3051
  %conv16 = zext i32 %bf.clear15 to i64, !dbg !3051
  %wchar_precision = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %1, i64 0, i32 47, !dbg !3052
  store i64 %conv16, i64* %wchar_precision, align 8, !dbg !3053
  %5 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %4, i64 0, i32 0, i32 0, i32 0, !dbg !3054
  %bf.load17 = load i64, i64* %5, align 8, !dbg !3054
  %bf.lshr = lshr i64 %bf.load17, 21, !dbg !3054
  %6 = trunc i64 %bf.lshr to i8, !dbg !3054
  %bf.cast = and i8 %6, 1, !dbg !3054
  %unsigned_wchar = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %1, i64 0, i32 49, !dbg !3055
  store i8 %bf.cast, i8* %unsigned_wchar, align 1, !dbg !3056
  %bytes_big_endian = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %1, i64 0, i32 50, !dbg !3057
  store i8 0, i8* %bytes_big_endian, align 2, !dbg !3058
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3059
  tail call void @cpp_init_iconv(%struct.cpp_reader* %7) #5, !dbg !3060
  %8 = load i32, i32* @version_flag, align 4, !dbg !3061
  %tobool = icmp eq i32 %8, 0, !dbg !3061
  br i1 %tobool, label %if.end, label %if.then, !dbg !3063

if.then:                                          ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3064
  tail call void @c_common_print_pch_checksum(%struct._IO_FILE* %9) #5, !dbg !3065
  br label %if.end, !dbg !3065

if.end:                                           ; preds = %entry, %if.then
  tail call void @init_pragma() #5, !dbg !3066
  %10 = load i32, i32* @flag_preprocess_only, align 4, !dbg !3067
  %tobool20 = icmp eq i32 %10, 0, !dbg !3067
  br i1 %tobool20, label %return, label %if.then21, !dbg !3069

if.then21:                                        ; preds = %if.end
  tail call fastcc void @finish_options() #6, !dbg !3070
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3072
  tail call void @preprocess_file(%struct.cpp_reader* %11) #5, !dbg !3073
  br label %return, !dbg !3074

return:                                           ; preds = %if.end, %if.then21
  %retval.0 = phi i8 [ 0, %if.then21 ], [ 1, %if.end ], !dbg !3075
  ret i8 %retval.0, !dbg !3076
}

declare dso_local void @cpp_init_iconv(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @init_pragma() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @finish_options() unnamed_addr #3 !dbg !3077 {
entry:
  %0 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !3090
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %0, i64 0, i32 32, !dbg !3091
  %1 = load i8, i8* %preprocessed, align 2, !dbg !3091
  %tobool = icmp eq i8 %1, 0, !dbg !3090
  br i1 %tobool, label %if.then, label %if.else49, !dbg !3092

if.then:                                          ; preds = %entry
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3093
  %3 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !3094
  %call = tail call %struct.line_map* @linemap_add(%struct.line_maps* %3, i32 2, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i32 0) #5, !dbg !3095
  tail call void @cb_file_change(%struct.cpp_reader* %2, %struct.line_map* %call) #6, !dbg !3096
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3097
  %5 = load i32, i32* @flag_hosted, align 4, !dbg !3098
  tail call void @cpp_init_builtins(%struct.cpp_reader* %4, i32 %5) #5, !dbg !3099
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3100
  tail call void @c_cpp_builtins(%struct.cpp_reader* %6) #5, !dbg !3101
  %7 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !3102
  %pedantic = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %7, i64 0, i32 31, !dbg !3103
  %8 = load i8, i8* %pedantic, align 1, !dbg !3103
  %tobool1 = icmp eq i8 %8, 0, !dbg !3102
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !3104

land.rhs:                                         ; preds = %if.then
  %c99 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %7, i64 0, i32 29, !dbg !3105
  %9 = load i8, i8* %c99, align 1, !dbg !3105
  %tobool2 = icmp eq i8 %9, 0, !dbg !3106
  %phitmp = zext i1 %tobool2 to i8
  br label %land.end

land.end:                                         ; preds = %if.then, %land.rhs
  %10 = phi i8 [ 0, %if.then ], [ %phitmp, %land.rhs ]
  %warn_dollars = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %7, i64 0, i32 26, !dbg !3107
  store i8 %10, i8* %warn_dollars, align 8, !dbg !3108
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3109
  %12 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !3110
  %call4 = tail call %struct.line_map* @linemap_add(%struct.line_maps* %12, i32 2, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i32 0) #5, !dbg !3111
  tail call void @cb_file_change(%struct.cpp_reader* %11, %struct.line_map* %call4) #6, !dbg !3112
  call void @llvm.dbg.value(metadata i64 0, metadata !3079, metadata !DIExpression()), !dbg !3113
  br label %for.cond, !dbg !3114

for.cond:                                         ; preds = %for.inc, %land.end
  %i.0 = phi i64 [ 0, %land.end ], [ %inc, %for.inc ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3079, metadata !DIExpression()), !dbg !3113
  %13 = load i64, i64* @deferred_count, align 8, !dbg !3116
  %cmp = icmp ult i64 %i.0, %13, !dbg !3117
  br i1 %cmp, label %for.body, label %for.cond31.preheader, !dbg !3118

for.cond31.preheader:                             ; preds = %for.cond
  %.lcssa = phi i64 [ %13, %for.cond ], !dbg !3116
  br label %for.cond31, !dbg !3119

for.body:                                         ; preds = %for.cond
  %14 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8, !dbg !3120
  call void @llvm.dbg.value(metadata %struct.deferred_opt* undef, metadata !3082, metadata !DIExpression()), !dbg !3121
  %code = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %14, i64 %i.0, i32 0, !dbg !3122
  %15 = load i32, i32* %code, align 8, !dbg !3122
  %cmp6 = icmp eq i32 %15, 9, !dbg !3124
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !3125

if.then8:                                         ; preds = %for.body
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3126
  %arg = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %14, i64 %i.0, i32 1, !dbg !3127
  %17 = load i8*, i8** %arg, align 8, !dbg !3127
  tail call void @cpp_define(%struct.cpp_reader* %16, i8* %17) #5, !dbg !3128
  br label %for.inc, !dbg !3128

if.else:                                          ; preds = %for.body
  %cmp10 = icmp eq i32 %15, 30, !dbg !3129
  br i1 %cmp10, label %if.then12, label %if.else14, !dbg !3131

if.then12:                                        ; preds = %if.else
  %18 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3132
  %arg13 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %14, i64 %i.0, i32 1, !dbg !3133
  %19 = load i8*, i8** %arg13, align 8, !dbg !3133
  tail call void @cpp_undef(%struct.cpp_reader* %18, i8* %19) #5, !dbg !3134
  br label %for.inc, !dbg !3134

if.else14:                                        ; preds = %if.else
  %cmp16 = icmp eq i32 %15, 6, !dbg !3135
  br i1 %cmp16, label %if.then18, label %for.inc, !dbg !3137

if.then18:                                        ; preds = %if.else14
  %arg19 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %14, i64 %i.0, i32 1, !dbg !3138
  %20 = load i8*, i8** %arg19, align 8, !dbg !3138
  %21 = load i8, i8* %20, align 1, !dbg !3141
  %cmp22 = icmp eq i8 %21, 45, !dbg !3142
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3143
  br i1 %cmp22, label %if.then24, label %if.else26, !dbg !3144

if.then24:                                        ; preds = %if.then18
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3145
  tail call void @cpp_unassert(%struct.cpp_reader* %22, i8* nonnull %add.ptr) #5, !dbg !3146
  br label %for.inc, !dbg !3146

if.else26:                                        ; preds = %if.then18
  tail call void @cpp_assert(%struct.cpp_reader* %22, i8* %20) #5, !dbg !3147
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.else14, %if.else26, %if.then24, %if.then12
  %inc = add i64 %i.0, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3079, metadata !DIExpression()), !dbg !3113
  br label %for.cond, !dbg !3149, !llvm.loop !3150

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc46
  %23 = phi i64 [ %.pre, %for.inc46 ], [ %.lcssa, %for.cond31.preheader ], !dbg !3152
  %i.1 = phi i64 [ %inc47, %for.inc46 ], [ 0, %for.cond31.preheader ], !dbg !3153
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !3079, metadata !DIExpression()), !dbg !3113
  %cmp32 = icmp ult i64 %i.1, %23, !dbg !3154
  br i1 %cmp32, label %for.body34, label %if.end53.loopexit, !dbg !3119

for.body34:                                       ; preds = %for.cond31
  %24 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8, !dbg !3155
  call void @llvm.dbg.value(metadata %struct.deferred_opt* undef, metadata !3086, metadata !DIExpression()), !dbg !3156
  %code37 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %24, i64 %i.1, i32 0, !dbg !3157
  %25 = load i32, i32* %code37, align 8, !dbg !3157
  %cmp38 = icmp eq i32 %25, 738, !dbg !3159
  br i1 %cmp38, label %land.lhs.true, label %for.inc46, !dbg !3160

land.lhs.true:                                    ; preds = %for.body34
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3161
  %arg40 = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %24, i64 %i.1, i32 1, !dbg !3162
  %27 = load i8*, i8** %arg40, align 8, !dbg !3162
  %call41 = tail call zeroext i8 @cpp_push_include(%struct.cpp_reader* %26, i8* %27) #5, !dbg !3163
  %tobool43 = icmp eq i8 %call41, 0, !dbg !3163
  br i1 %tobool43, label %for.inc46, label %if.then44, !dbg !3164

if.then44:                                        ; preds = %land.lhs.true
  %28 = load i64, i64* @deferred_count, align 8, !dbg !3165
  %add = add i64 %28, 1, !dbg !3167
  store i64 %add, i64* @include_cursor, align 8, !dbg !3168
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3169
  tail call void @cpp_scan_nooutput(%struct.cpp_reader* %29) #5, !dbg !3170
  br label %for.inc46, !dbg !3171

for.inc46:                                        ; preds = %land.lhs.true, %for.body34, %if.then44
  %inc47 = add i64 %i.1, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %inc47, metadata !3079, metadata !DIExpression()), !dbg !3113
  %.pre = load i64, i64* @deferred_count, align 8, !dbg !3152
  br label %for.cond31, !dbg !3173, !llvm.loop !3174

if.else49:                                        ; preds = %entry
  %directives_only = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %0, i64 0, i32 52, !dbg !3176
  %30 = load i8, i8* %directives_only, align 4, !dbg !3176
  %tobool50 = icmp eq i8 %30, 0, !dbg !3178
  br i1 %tobool50, label %if.end53, label %if.then51, !dbg !3179

if.then51:                                        ; preds = %if.else49
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3180
  tail call void @cpp_init_special_builtins(%struct.cpp_reader* %31) #5, !dbg !3181
  br label %if.end53, !dbg !3181

if.end53.loopexit:                                ; preds = %for.cond31
  br label %if.end53, !dbg !3182

if.end53:                                         ; preds = %if.end53.loopexit, %if.else49, %if.then51
  store i64 0, i64* @include_cursor, align 8, !dbg !3182
  tail call fastcc void @push_command_line_include() #6, !dbg !3183
  ret void, !dbg !3184
}

declare dso_local void @preprocess_file(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @c_common_parse_file(i32 %set_yydebug) local_unnamed_addr #3 !dbg !3185 {
entry:
  call void @llvm.dbg.value(metadata i32 %set_yydebug, metadata !3187, metadata !DIExpression()), !dbg !3189
  %tobool = icmp eq i32 %set_yydebug, 0, !dbg !3190
  br i1 %tobool, label %if.end, label %if.then, !dbg !3192

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @c_language, align 4, !dbg !3193
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ], !dbg !3194

sw.bb:                                            ; preds = %if.then
  %call = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.33, i64 0, i64 0)) #5, !dbg !3195
  br label %if.end, !dbg !3197

sw.bb1:                                           ; preds = %if.then
  %call2 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.34, i64 0, i64 0)) #5, !dbg !3198
  br label %if.end, !dbg !3199

sw.bb3:                                           ; preds = %if.then
  %call4 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i64 0, i64 0)) #5, !dbg !3200
  br label %if.end, !dbg !3201

sw.bb5:                                           ; preds = %if.then
  %call6 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !3202
  br label %if.end, !dbg !3203

sw.default:                                       ; preds = %if.then
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i32 1271, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #5, !dbg !3204
  br label %if.end, !dbg !3205

if.end:                                           ; preds = %entry, %sw.bb, %sw.bb1, %sw.bb3, %sw.bb5, %sw.default
  call void @llvm.dbg.value(metadata i32 0, metadata !3188, metadata !DIExpression()), !dbg !3189
  br label %for.cond, !dbg !3206

for.cond:                                         ; preds = %if.end15, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end15 ], [ 0, %if.end ], !dbg !3189
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3188, metadata !DIExpression()), !dbg !3189
  %1 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !3207
  %start_end_main_source_file = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %1, i64 0, i32 31, !dbg !3212
  %2 = load i32, i32* %start_end_main_source_file, align 8, !dbg !3212
  %tobool7 = icmp eq i32 %2, 0, !dbg !3207
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3213

if.then8:                                         ; preds = %for.cond
  %start_source_file = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %1, i64 0, i32 5, !dbg !3214
  %3 = load void (i32, i8*)*, void (i32, i8*)** %start_source_file, align 8, !dbg !3214
  %4 = load i8*, i8** @this_input_filename, align 8, !dbg !3215
  tail call void %3(i32 0, i8* %4) #5, !dbg !3216
  br label %if.end9, !dbg !3216

if.end9:                                          ; preds = %for.cond, %if.then8
  tail call fastcc void @finish_options() #6, !dbg !3217
  tail call void @pch_init() #5, !dbg !3218
  tail call void @push_file_scope() #5, !dbg !3219
  tail call void @c_parse_file() #5, !dbg !3220
  tail call void @finish_file() #5, !dbg !3221
  tail call void @pop_file_scope() #5, !dbg !3222
  %5 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !3223
  %start_end_main_source_file10 = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %5, i64 0, i32 31, !dbg !3225
  %6 = load i32, i32* %start_end_main_source_file10, align 8, !dbg !3225
  %tobool11 = icmp eq i32 %6, 0, !dbg !3223
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3226

if.then12:                                        ; preds = %if.end9
  %end_source_file = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %5, i64 0, i32 6, !dbg !3227
  %7 = load void (i32)*, void (i32)** %end_source_file, align 8, !dbg !3227
  tail call void %7(i32 0) #5, !dbg !3228
  br label %if.end13, !dbg !3228

if.end13:                                         ; preds = %if.end9, %if.then12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3229
  call void @llvm.dbg.value(metadata i32 undef, metadata !3188, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3189
  %8 = load i32, i32* @num_in_fnames, align 4, !dbg !3231
  %9 = zext i32 %8 to i64, !dbg !3232
  %cmp = icmp ult i64 %indvars.iv.next, %9, !dbg !3232
  br i1 %cmp, label %if.end15, label %for.end, !dbg !3233

if.end15:                                         ; preds = %if.end13
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3234
  tail call void @cpp_undef_all(%struct.cpp_reader* %10) #5, !dbg !3235
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3236
  tail call void @cpp_clear_file_cache(%struct.cpp_reader* %11) #5, !dbg !3237
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3238
  %13 = load i8**, i8*** @in_fnames, align 8, !dbg !3239
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %indvars.iv.next, !dbg !3239
  %14 = load i8*, i8** %arrayidx, align 8, !dbg !3239
  %call16 = tail call i8* @cpp_read_main_file(%struct.cpp_reader* %12, i8* %14) #5, !dbg !3240
  store i8* %call16, i8** @this_input_filename, align 8, !dbg !3241
  %tobool17 = icmp eq i8* %call16, null, !dbg !3242
  br i1 %tobool17, label %for.end, label %for.cond, !dbg !3244, !llvm.loop !3245

for.end:                                          ; preds = %if.end15, %if.end13
  ret void, !dbg !3248
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local void @pch_init() local_unnamed_addr #1

declare dso_local void @push_file_scope() local_unnamed_addr #1

declare dso_local void @c_parse_file() local_unnamed_addr #1

declare dso_local void @finish_file() local_unnamed_addr #1

declare dso_local void @pop_file_scope() local_unnamed_addr #1

declare dso_local void @cpp_undef_all(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @cpp_clear_file_cache(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @c_common_finish() local_unnamed_addr #3 !dbg !3249 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !3251, metadata !DIExpression()), !dbg !3252
  %0 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !3253
  %style = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %0, i64 0, i32 43, i32 0, !dbg !3255
  %1 = load i32, i32* %style, align 8, !dbg !3255
  %cmp = icmp eq i32 %1, 0, !dbg !3256
  br i1 %cmp, label %if.end7, label %land.lhs.true, !dbg !3257

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !3258
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %2, i64 0, i32 1, i64 4, !dbg !3258
  %3 = load i32, i32* %arrayidx, align 8, !dbg !3258
  %cmp1 = icmp eq i32 %3, 0, !dbg !3259
  br i1 %cmp1, label %if.then, label %if.end7, !dbg !3260

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** @deps_file, align 8, !dbg !3261
  %tobool = icmp eq i8* %4, null, !dbg !3261
  br i1 %tobool, label %if.then2, label %if.else, !dbg !3264

if.then2:                                         ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out_stream, align 8, !dbg !3265
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %5, metadata !3251, metadata !DIExpression()), !dbg !3252
  br label %if.end7, !dbg !3266

if.else:                                          ; preds = %if.then
  %.b = load i1, i1* @deps_append, align 1, !dbg !3267
  %cond = select i1 %.b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), !dbg !3267
  %call = tail call %struct._IO_FILE* @fopen_unlocked(i8* nonnull %4, i8* %cond) #5, !dbg !3267
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !3251, metadata !DIExpression()), !dbg !3252
  %tobool4 = icmp eq %struct._IO_FILE* %call, null, !dbg !3269
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !3271

if.then5:                                         ; preds = %if.else
  %6 = load i8*, i8** @deps_file, align 8, !dbg !3272
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0), i8* %6) #5, !dbg !3273
  br label %if.end7, !dbg !3273

if.end7:                                          ; preds = %if.else, %entry, %if.then2, %if.then5, %land.lhs.true
  %deps_stream.1 = phi %struct._IO_FILE* [ null, %land.lhs.true ], [ null, %entry ], [ %5, %if.then2 ], [ null, %if.then5 ], [ %call, %if.else ], !dbg !3252
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %deps_stream.1, metadata !3251, metadata !DIExpression()), !dbg !3252
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3274
  tail call void @cpp_finish(%struct.cpp_reader* %7, %struct._IO_FILE* %deps_stream.1) #5, !dbg !3275
  %tobool8 = icmp ne %struct._IO_FILE* %deps_stream.1, null, !dbg !3276
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @out_stream, align 8, !dbg !3278
  %cmp10 = icmp ne %struct._IO_FILE* %deps_stream.1, %8, !dbg !3279
  %or.cond = and i1 %tobool8, %cmp10, !dbg !3280
  br i1 %or.cond, label %land.lhs.true12, label %if.end18, !dbg !3280

land.lhs.true12:                                  ; preds = %if.end7
  %call13 = tail call i32 @ferror(%struct._IO_FILE* nonnull %deps_stream.1) #5, !dbg !3281
  %tobool14 = icmp eq i32 %call13, 0, !dbg !3281
  br i1 %tobool14, label %lor.lhs.false, label %if.then17, !dbg !3282

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %call15 = tail call i32 @fclose(%struct._IO_FILE* nonnull %deps_stream.1) #5, !dbg !3283
  %tobool16 = icmp eq i32 %call15, 0, !dbg !3283
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !3284

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true12
  %9 = load i8*, i8** @deps_file, align 8, !dbg !3285
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i8* %9) #5, !dbg !3286
  br label %if.end18, !dbg !3286

if.end18:                                         ; preds = %lor.lhs.false, %if.then17, %if.end7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @out_stream, align 8, !dbg !3287
  %tobool19 = icmp eq %struct._IO_FILE* %10, null, !dbg !3287
  br i1 %tobool19, label %if.end27, label %land.lhs.true20, !dbg !3289

land.lhs.true20:                                  ; preds = %if.end18
  %call21 = tail call i32 @ferror(%struct._IO_FILE* nonnull %10) #5, !dbg !3290
  %tobool22 = icmp eq i32 %call21, 0, !dbg !3290
  br i1 %tobool22, label %lor.lhs.false23, label %if.then26, !dbg !3291

lor.lhs.false23:                                  ; preds = %land.lhs.true20
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @out_stream, align 8, !dbg !3292
  %call24 = tail call i32 @fclose(%struct._IO_FILE* %11) #5, !dbg !3293
  %tobool25 = icmp eq i32 %call24, 0, !dbg !3293
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !3294

if.then26:                                        ; preds = %lor.lhs.false23, %land.lhs.true20
  %12 = load i8*, i8** @out_fname, align 8, !dbg !3295
  tail call void (i8*, ...) @fatal_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0), i8* %12) #5, !dbg !3296
  br label %if.end27, !dbg !3296

if.end27:                                         ; preds = %lor.lhs.false23, %if.end18, %if.then26
  ret void, !dbg !3297
}

declare dso_local void @cpp_finish(%struct.cpp_reader*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @ferror(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @fclose(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i8* @getenv(i8*) local_unnamed_addr #1

declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

declare dso_local %struct.deps* @cpp_get_deps(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @deps_add_target(%struct.deps*, i8*, i32) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local %struct.line_map* @linemap_add(%struct.line_maps*, i32, i32, i8*, i32) local_unnamed_addr #1

declare dso_local void @cpp_init_builtins(%struct.cpp_reader*, i32) local_unnamed_addr #1

declare dso_local void @c_cpp_builtins(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @cpp_define(%struct.cpp_reader*, i8*) local_unnamed_addr #1

declare dso_local void @cpp_undef(%struct.cpp_reader*, i8*) local_unnamed_addr #1

declare dso_local void @cpp_unassert(%struct.cpp_reader*, i8*) local_unnamed_addr #1

declare dso_local void @cpp_assert(%struct.cpp_reader*, i8*) local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_push_include(%struct.cpp_reader*, i8*) local_unnamed_addr #1

declare dso_local void @cpp_scan_nooutput(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @cpp_init_special_builtins(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @push_command_line_include() unnamed_addr #3 !dbg !3298 {
entry:
  br label %while.cond, !dbg !3302

while.cond:                                       ; preds = %cleanup, %entry
  %0 = load i64, i64* @include_cursor, align 8, !dbg !3303
  %1 = load i64, i64* @deferred_count, align 8, !dbg !3304
  %cmp = icmp ult i64 %0, %1, !dbg !3305
  br i1 %cmp, label %while.body, label %while.end, !dbg !3302

while.body:                                       ; preds = %while.cond
  %2 = load %struct.deferred_opt*, %struct.deferred_opt** @deferred_opts, align 8, !dbg !3306
  %inc = add i64 %0, 1, !dbg !3307
  store i64 %inc, i64* @include_cursor, align 8, !dbg !3307
  call void @llvm.dbg.value(metadata %struct.deferred_opt* undef, metadata !3300, metadata !DIExpression()), !dbg !3308
  %3 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !3309
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %3, i64 0, i32 32, !dbg !3311
  %4 = load i8, i8* %preprocessed, align 2, !dbg !3311
  %tobool = icmp eq i8 %4, 0, !dbg !3309
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3312

land.lhs.true:                                    ; preds = %while.body
  call void @llvm.dbg.value(metadata %struct.deferred_opt* undef, metadata !3300, metadata !DIExpression()), !dbg !3308
  %code = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %2, i64 %0, i32 0, !dbg !3313
  %5 = load i32, i32* %code, align 8, !dbg !3313
  %cmp1 = icmp eq i32 %5, 740, !dbg !3314
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !3315

land.lhs.true2:                                   ; preds = %land.lhs.true
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3316
  %arg = getelementptr inbounds %struct.deferred_opt, %struct.deferred_opt* %2, i64 %0, i32 1, !dbg !3317
  %7 = load i8*, i8** %arg, align 8, !dbg !3317
  %call = tail call zeroext i8 @cpp_push_include(%struct.cpp_reader* %6, i8* %7) #5, !dbg !3318
  %tobool3 = icmp eq i8 %call, 0, !dbg !3318
  br i1 %tobool3, label %if.end, label %cleanup, !dbg !3319

if.end:                                           ; preds = %land.lhs.true2, %while.body, %land.lhs.true
  br label %cleanup, !dbg !3320

cleanup:                                          ; preds = %land.lhs.true2, %if.end
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true2 ]
  br i1 %cleanup.dest.slot.0, label %while.cond, label %if.end12.loopexit, !llvm.loop !3321

while.end:                                        ; preds = %while.cond
  %.lcssa5 = phi i64 [ %0, %while.cond ], !dbg !3303
  %.lcssa = phi i64 [ %1, %while.cond ], !dbg !3304
  %cmp4 = icmp eq i64 %.lcssa5, %.lcssa, !dbg !3322
  br i1 %cmp4, label %if.then6, label %if.end12, !dbg !3324

if.then6:                                         ; preds = %while.end
  %inc7 = add i64 %.lcssa5, 1, !dbg !3325
  store i64 %inc7, i64* @include_cursor, align 8, !dbg !3325
  %8 = load i8, i8* @warn_unused_macros, align 1, !dbg !3327
  %9 = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !3328
  %warn_unused_macros = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %9, i64 0, i32 28, !dbg !3329
  store i8 %8, i8* %warn_unused_macros, align 2, !dbg !3330
  %preprocessed8 = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %9, i64 0, i32 32, !dbg !3331
  %10 = load i8, i8* %preprocessed8, align 2, !dbg !3331
  %tobool9 = icmp eq i8 %10, 0, !dbg !3333
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3334

if.then10:                                        ; preds = %if.then6
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !3335
  %12 = load i8*, i8** @this_input_filename, align 8, !dbg !3336
  tail call void @cpp_change_file(%struct.cpp_reader* %11, i32 2, i8* %12) #5, !dbg !3337
  %.pre = load %struct.cpp_options*, %struct.cpp_options** @cpp_opts, align 8, !dbg !3338
  br label %if.end11, !dbg !3337

if.end11:                                         ; preds = %if.then6, %if.then10
  %13 = phi %struct.cpp_options* [ %9, %if.then6 ], [ %.pre, %if.then10 ], !dbg !3338
  %print_include_names = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %13, i64 0, i32 11, !dbg !3339
  %14 = load i8, i8* %print_include_names, align 1, !dbg !3339
  %15 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !3340
  %trace_includes = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i64 0, i32 6, !dbg !3341
  store i8 %14, i8* %trace_includes, align 4, !dbg !3342
  br label %if.end12, !dbg !3343

if.end12.loopexit:                                ; preds = %cleanup
  br label %if.end12, !dbg !3344

if.end12:                                         ; preds = %if.end12.loopexit, %if.end11, %while.end
  ret void, !dbg !3344
}

declare dso_local void @cpp_change_file(%struct.cpp_reader*, i32, i8*) local_unnamed_addr #1

declare dso_local void @pp_file_change(%struct.line_map*) local_unnamed_addr #1

declare dso_local void @fe_file_change(%struct.line_map*) local_unnamed_addr #1

declare dso_local zeroext i8 @set_src_pwd(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!1301, !1302, !1303}
!llvm.ident = !{!1304}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lang_flags", scope: !2, file: !3, line: 203, type: !1291, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "c_common_init_options", scope: !3, file: !3, line: 201, type: !4, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1107)
!3 = !DIFile(filename: "c-opts.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !7}
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !931, globals: !945, nameTableKind: None)
!12 = !{!13, !26, !900, !908, !920, !926}
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_builtin_type", file: !14, line: 593, baseType: !6, size: 32, elements: !15)
!14 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!16 = !DIEnumerator(name: "BT_SPECLINE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "BT_DATE", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "BT_FILE", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "BT_BASE_FILE", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "BT_INCLUDE_LEVEL", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "BT_TIME", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "BT_STDC", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "BT_PRAGMA", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "BT_TIMESTAMP", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "BT_COUNTER", value: 9, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_code", file: !27, line: 723, baseType: !6, size: 32, elements: !28)
!27 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!29 = !DIEnumerator(name: "OPT__help", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "OPT__help_", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "OPT__output_pch_", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "OPT__param", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "OPT__target_help", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "OPT__version", value: 5, isUnsigned: true)
!35 = !DIEnumerator(name: "OPT_A", value: 6, isUnsigned: true)
!36 = !DIEnumerator(name: "OPT_C", value: 7, isUnsigned: true)
!37 = !DIEnumerator(name: "OPT_CC", value: 8, isUnsigned: true)
!38 = !DIEnumerator(name: "OPT_D", value: 9, isUnsigned: true)
!39 = !DIEnumerator(name: "OPT_E", value: 10, isUnsigned: true)
!40 = !DIEnumerator(name: "OPT_F", value: 11, isUnsigned: true)
!41 = !DIEnumerator(name: "OPT_G", value: 12, isUnsigned: true)
!42 = !DIEnumerator(name: "OPT_H", value: 13, isUnsigned: true)
!43 = !DIEnumerator(name: "OPT_I", value: 14, isUnsigned: true)
!44 = !DIEnumerator(name: "OPT_J", value: 15, isUnsigned: true)
!45 = !DIEnumerator(name: "OPT_M", value: 16, isUnsigned: true)
!46 = !DIEnumerator(name: "OPT_MD", value: 17, isUnsigned: true)
!47 = !DIEnumerator(name: "OPT_MD_", value: 18, isUnsigned: true)
!48 = !DIEnumerator(name: "OPT_MF", value: 19, isUnsigned: true)
!49 = !DIEnumerator(name: "OPT_MG", value: 20, isUnsigned: true)
!50 = !DIEnumerator(name: "OPT_MM", value: 21, isUnsigned: true)
!51 = !DIEnumerator(name: "OPT_MMD", value: 22, isUnsigned: true)
!52 = !DIEnumerator(name: "OPT_MMD_", value: 23, isUnsigned: true)
!53 = !DIEnumerator(name: "OPT_MP", value: 24, isUnsigned: true)
!54 = !DIEnumerator(name: "OPT_MQ", value: 25, isUnsigned: true)
!55 = !DIEnumerator(name: "OPT_MT", value: 26, isUnsigned: true)
!56 = !DIEnumerator(name: "OPT_O", value: 27, isUnsigned: true)
!57 = !DIEnumerator(name: "OPT_Os", value: 28, isUnsigned: true)
!58 = !DIEnumerator(name: "OPT_P", value: 29, isUnsigned: true)
!59 = !DIEnumerator(name: "OPT_U", value: 30, isUnsigned: true)
!60 = !DIEnumerator(name: "OPT_W", value: 31, isUnsigned: true)
!61 = !DIEnumerator(name: "OPT_Wabi", value: 32, isUnsigned: true)
!62 = !DIEnumerator(name: "OPT_Waddress", value: 33, isUnsigned: true)
!63 = !DIEnumerator(name: "OPT_Waggregate_return", value: 34, isUnsigned: true)
!64 = !DIEnumerator(name: "OPT_Waliasing", value: 35, isUnsigned: true)
!65 = !DIEnumerator(name: "OPT_Walign_commons", value: 36, isUnsigned: true)
!66 = !DIEnumerator(name: "OPT_Wall", value: 37, isUnsigned: true)
!67 = !DIEnumerator(name: "OPT_Wall_deprecation", value: 38, isUnsigned: true)
!68 = !DIEnumerator(name: "OPT_Wall_javadoc", value: 39, isUnsigned: true)
!69 = !DIEnumerator(name: "OPT_Wampersand", value: 40, isUnsigned: true)
!70 = !DIEnumerator(name: "OPT_Warray_bounds", value: 41, isUnsigned: true)
!71 = !DIEnumerator(name: "OPT_Warray_temporaries", value: 42, isUnsigned: true)
!72 = !DIEnumerator(name: "OPT_Wassert_identifier", value: 43, isUnsigned: true)
!73 = !DIEnumerator(name: "OPT_Wassign_intercept", value: 44, isUnsigned: true)
!74 = !DIEnumerator(name: "OPT_Wattributes", value: 45, isUnsigned: true)
!75 = !DIEnumerator(name: "OPT_Wbad_function_cast", value: 46, isUnsigned: true)
!76 = !DIEnumerator(name: "OPT_Wboxing", value: 47, isUnsigned: true)
!77 = !DIEnumerator(name: "OPT_Wbuiltin_macro_redefined", value: 48, isUnsigned: true)
!78 = !DIEnumerator(name: "OPT_Wc___compat", value: 49, isUnsigned: true)
!79 = !DIEnumerator(name: "OPT_Wc__0x_compat", value: 50, isUnsigned: true)
!80 = !DIEnumerator(name: "OPT_Wcast_align", value: 51, isUnsigned: true)
!81 = !DIEnumerator(name: "OPT_Wcast_qual", value: 52, isUnsigned: true)
!82 = !DIEnumerator(name: "OPT_Wchar_concat", value: 53, isUnsigned: true)
!83 = !DIEnumerator(name: "OPT_Wchar_subscripts", value: 54, isUnsigned: true)
!84 = !DIEnumerator(name: "OPT_Wcharacter_truncation", value: 55, isUnsigned: true)
!85 = !DIEnumerator(name: "OPT_Wclobbered", value: 56, isUnsigned: true)
!86 = !DIEnumerator(name: "OPT_Wcomment", value: 57, isUnsigned: true)
!87 = !DIEnumerator(name: "OPT_Wcomments", value: 58, isUnsigned: true)
!88 = !DIEnumerator(name: "OPT_Wcondition_assign", value: 59, isUnsigned: true)
!89 = !DIEnumerator(name: "OPT_Wconstructor_name", value: 60, isUnsigned: true)
!90 = !DIEnumerator(name: "OPT_Wconversion", value: 61, isUnsigned: true)
!91 = !DIEnumerator(name: "OPT_Wconversion_null", value: 62, isUnsigned: true)
!92 = !DIEnumerator(name: "OPT_Wcoverage_mismatch", value: 63, isUnsigned: true)
!93 = !DIEnumerator(name: "OPT_Wctor_dtor_privacy", value: 64, isUnsigned: true)
!94 = !DIEnumerator(name: "OPT_Wdeclaration_after_statement", value: 65, isUnsigned: true)
!95 = !DIEnumerator(name: "OPT_Wdep_ann", value: 66, isUnsigned: true)
!96 = !DIEnumerator(name: "OPT_Wdeprecated", value: 67, isUnsigned: true)
!97 = !DIEnumerator(name: "OPT_Wdeprecated_declarations", value: 68, isUnsigned: true)
!98 = !DIEnumerator(name: "OPT_Wdisabled_optimization", value: 69, isUnsigned: true)
!99 = !DIEnumerator(name: "OPT_Wdiscouraged", value: 70, isUnsigned: true)
!100 = !DIEnumerator(name: "OPT_Wdiv_by_zero", value: 71, isUnsigned: true)
!101 = !DIEnumerator(name: "OPT_Weffc__", value: 72, isUnsigned: true)
!102 = !DIEnumerator(name: "OPT_Wempty_block", value: 73, isUnsigned: true)
!103 = !DIEnumerator(name: "OPT_Wempty_body", value: 74, isUnsigned: true)
!104 = !DIEnumerator(name: "OPT_Wendif_labels", value: 75, isUnsigned: true)
!105 = !DIEnumerator(name: "OPT_Wenum_compare", value: 76, isUnsigned: true)
!106 = !DIEnumerator(name: "OPT_Wenum_identifier", value: 77, isUnsigned: true)
!107 = !DIEnumerator(name: "OPT_Wenum_switch", value: 78, isUnsigned: true)
!108 = !DIEnumerator(name: "OPT_Werror", value: 79, isUnsigned: true)
!109 = !DIEnumerator(name: "OPT_Werror_implicit_function_declaration", value: 80, isUnsigned: true)
!110 = !DIEnumerator(name: "OPT_Werror_", value: 81, isUnsigned: true)
!111 = !DIEnumerator(name: "OPT_Wextra", value: 82, isUnsigned: true)
!112 = !DIEnumerator(name: "OPT_Wextraneous_semicolon", value: 83, isUnsigned: true)
!113 = !DIEnumerator(name: "OPT_Wfallthrough", value: 84, isUnsigned: true)
!114 = !DIEnumerator(name: "OPT_Wfatal_errors", value: 85, isUnsigned: true)
!115 = !DIEnumerator(name: "OPT_Wfield_hiding", value: 86, isUnsigned: true)
!116 = !DIEnumerator(name: "OPT_Wfinal_bound", value: 87, isUnsigned: true)
!117 = !DIEnumerator(name: "OPT_Wfinally", value: 88, isUnsigned: true)
!118 = !DIEnumerator(name: "OPT_Wfloat_equal", value: 89, isUnsigned: true)
!119 = !DIEnumerator(name: "OPT_Wforbidden", value: 90, isUnsigned: true)
!120 = !DIEnumerator(name: "OPT_Wformat", value: 91, isUnsigned: true)
!121 = !DIEnumerator(name: "OPT_Wformat_contains_nul", value: 92, isUnsigned: true)
!122 = !DIEnumerator(name: "OPT_Wformat_extra_args", value: 93, isUnsigned: true)
!123 = !DIEnumerator(name: "OPT_Wformat_nonliteral", value: 94, isUnsigned: true)
!124 = !DIEnumerator(name: "OPT_Wformat_security", value: 95, isUnsigned: true)
!125 = !DIEnumerator(name: "OPT_Wformat_y2k", value: 96, isUnsigned: true)
!126 = !DIEnumerator(name: "OPT_Wformat_zero_length", value: 97, isUnsigned: true)
!127 = !DIEnumerator(name: "OPT_Wformat_", value: 98, isUnsigned: true)
!128 = !DIEnumerator(name: "OPT_Wframe_larger_than_", value: 99, isUnsigned: true)
!129 = !DIEnumerator(name: "OPT_Whiding", value: 100, isUnsigned: true)
!130 = !DIEnumerator(name: "OPT_Wignored_qualifiers", value: 101, isUnsigned: true)
!131 = !DIEnumerator(name: "OPT_Wimplicit", value: 102, isUnsigned: true)
!132 = !DIEnumerator(name: "OPT_Wimplicit_function_declaration", value: 103, isUnsigned: true)
!133 = !DIEnumerator(name: "OPT_Wimplicit_int", value: 104, isUnsigned: true)
!134 = !DIEnumerator(name: "OPT_Wimplicit_interface", value: 105, isUnsigned: true)
!135 = !DIEnumerator(name: "OPT_Wimplicit_procedure", value: 106, isUnsigned: true)
!136 = !DIEnumerator(name: "OPT_Wimport", value: 107, isUnsigned: true)
!137 = !DIEnumerator(name: "OPT_Windirect_static", value: 108, isUnsigned: true)
!138 = !DIEnumerator(name: "OPT_Winit_self", value: 109, isUnsigned: true)
!139 = !DIEnumerator(name: "OPT_Winline", value: 110, isUnsigned: true)
!140 = !DIEnumerator(name: "OPT_Wint_to_pointer_cast", value: 111, isUnsigned: true)
!141 = !DIEnumerator(name: "OPT_Wintf_annotation", value: 112, isUnsigned: true)
!142 = !DIEnumerator(name: "OPT_Wintf_non_inherited", value: 113, isUnsigned: true)
!143 = !DIEnumerator(name: "OPT_Wintrinsic_shadow", value: 114, isUnsigned: true)
!144 = !DIEnumerator(name: "OPT_Wintrinsics_std", value: 115, isUnsigned: true)
!145 = !DIEnumerator(name: "OPT_Winvalid_offsetof", value: 116, isUnsigned: true)
!146 = !DIEnumerator(name: "OPT_Winvalid_pch", value: 117, isUnsigned: true)
!147 = !DIEnumerator(name: "OPT_Wjavadoc", value: 118, isUnsigned: true)
!148 = !DIEnumerator(name: "OPT_Wjump_misses_init", value: 119, isUnsigned: true)
!149 = !DIEnumerator(name: "OPT_Wlarger_than_", value: 120, isUnsigned: true)
!150 = !DIEnumerator(name: "OPT_Wlarger_than_eq", value: 121, isUnsigned: true)
!151 = !DIEnumerator(name: "OPT_Wline_truncation", value: 122, isUnsigned: true)
!152 = !DIEnumerator(name: "OPT_Wlocal_hiding", value: 123, isUnsigned: true)
!153 = !DIEnumerator(name: "OPT_Wlogical_op", value: 124, isUnsigned: true)
!154 = !DIEnumerator(name: "OPT_Wlong_long", value: 125, isUnsigned: true)
!155 = !DIEnumerator(name: "OPT_Wmain", value: 126, isUnsigned: true)
!156 = !DIEnumerator(name: "OPT_Wmasked_catch_block", value: 127, isUnsigned: true)
!157 = !DIEnumerator(name: "OPT_Wmissing_braces", value: 128, isUnsigned: true)
!158 = !DIEnumerator(name: "OPT_Wmissing_declarations", value: 129, isUnsigned: true)
!159 = !DIEnumerator(name: "OPT_Wmissing_field_initializers", value: 130, isUnsigned: true)
!160 = !DIEnumerator(name: "OPT_Wmissing_format_attribute", value: 131, isUnsigned: true)
!161 = !DIEnumerator(name: "OPT_Wmissing_include_dirs", value: 132, isUnsigned: true)
!162 = !DIEnumerator(name: "OPT_Wmissing_noreturn", value: 133, isUnsigned: true)
!163 = !DIEnumerator(name: "OPT_Wmissing_parameter_type", value: 134, isUnsigned: true)
!164 = !DIEnumerator(name: "OPT_Wmissing_prototypes", value: 135, isUnsigned: true)
!165 = !DIEnumerator(name: "OPT_Wmudflap", value: 136, isUnsigned: true)
!166 = !DIEnumerator(name: "OPT_Wmultichar", value: 137, isUnsigned: true)
!167 = !DIEnumerator(name: "OPT_Wnested_externs", value: 138, isUnsigned: true)
!168 = !DIEnumerator(name: "OPT_Wnls", value: 139, isUnsigned: true)
!169 = !DIEnumerator(name: "OPT_Wno_effect_assign", value: 140, isUnsigned: true)
!170 = !DIEnumerator(name: "OPT_Wnon_template_friend", value: 141, isUnsigned: true)
!171 = !DIEnumerator(name: "OPT_Wnon_virtual_dtor", value: 142, isUnsigned: true)
!172 = !DIEnumerator(name: "OPT_Wnonnull", value: 143, isUnsigned: true)
!173 = !DIEnumerator(name: "OPT_Wnormalized_", value: 144, isUnsigned: true)
!174 = !DIEnumerator(name: "OPT_Wnull", value: 145, isUnsigned: true)
!175 = !DIEnumerator(name: "OPT_Wold_style_cast", value: 146, isUnsigned: true)
!176 = !DIEnumerator(name: "OPT_Wold_style_declaration", value: 147, isUnsigned: true)
!177 = !DIEnumerator(name: "OPT_Wold_style_definition", value: 148, isUnsigned: true)
!178 = !DIEnumerator(name: "OPT_Wout_of_date", value: 149, isUnsigned: true)
!179 = !DIEnumerator(name: "OPT_Wover_ann", value: 150, isUnsigned: true)
!180 = !DIEnumerator(name: "OPT_Woverflow", value: 151, isUnsigned: true)
!181 = !DIEnumerator(name: "OPT_Woverlength_strings", value: 152, isUnsigned: true)
!182 = !DIEnumerator(name: "OPT_Woverloaded_virtual", value: 153, isUnsigned: true)
!183 = !DIEnumerator(name: "OPT_Woverride_init", value: 154, isUnsigned: true)
!184 = !DIEnumerator(name: "OPT_Wpacked", value: 155, isUnsigned: true)
!185 = !DIEnumerator(name: "OPT_Wpacked_bitfield_compat", value: 156, isUnsigned: true)
!186 = !DIEnumerator(name: "OPT_Wpadded", value: 157, isUnsigned: true)
!187 = !DIEnumerator(name: "OPT_Wparam_assign", value: 158, isUnsigned: true)
!188 = !DIEnumerator(name: "OPT_Wparentheses", value: 159, isUnsigned: true)
!189 = !DIEnumerator(name: "OPT_Wpkg_default_method", value: 160, isUnsigned: true)
!190 = !DIEnumerator(name: "OPT_Wpmf_conversions", value: 161, isUnsigned: true)
!191 = !DIEnumerator(name: "OPT_Wpointer_arith", value: 162, isUnsigned: true)
!192 = !DIEnumerator(name: "OPT_Wpointer_sign", value: 163, isUnsigned: true)
!193 = !DIEnumerator(name: "OPT_Wpointer_to_int_cast", value: 164, isUnsigned: true)
!194 = !DIEnumerator(name: "OPT_Wpragmas", value: 165, isUnsigned: true)
!195 = !DIEnumerator(name: "OPT_Wprotocol", value: 166, isUnsigned: true)
!196 = !DIEnumerator(name: "OPT_Wpsabi", value: 167, isUnsigned: true)
!197 = !DIEnumerator(name: "OPT_Wraw", value: 168, isUnsigned: true)
!198 = !DIEnumerator(name: "OPT_Wredundant_decls", value: 169, isUnsigned: true)
!199 = !DIEnumerator(name: "OPT_Wredundant_modifiers", value: 170, isUnsigned: true)
!200 = !DIEnumerator(name: "OPT_Wreorder", value: 171, isUnsigned: true)
!201 = !DIEnumerator(name: "OPT_Wreturn_type", value: 172, isUnsigned: true)
!202 = !DIEnumerator(name: "OPT_Wselector", value: 173, isUnsigned: true)
!203 = !DIEnumerator(name: "OPT_Wsequence_point", value: 174, isUnsigned: true)
!204 = !DIEnumerator(name: "OPT_Wserial", value: 175, isUnsigned: true)
!205 = !DIEnumerator(name: "OPT_Wshadow", value: 176, isUnsigned: true)
!206 = !DIEnumerator(name: "OPT_Wsign_compare", value: 177, isUnsigned: true)
!207 = !DIEnumerator(name: "OPT_Wsign_conversion", value: 178, isUnsigned: true)
!208 = !DIEnumerator(name: "OPT_Wsign_promo", value: 179, isUnsigned: true)
!209 = !DIEnumerator(name: "OPT_Wspecial_param_hiding", value: 180, isUnsigned: true)
!210 = !DIEnumerator(name: "OPT_Wstack_protector", value: 181, isUnsigned: true)
!211 = !DIEnumerator(name: "OPT_Wstatic_access", value: 182, isUnsigned: true)
!212 = !DIEnumerator(name: "OPT_Wstatic_receiver", value: 183, isUnsigned: true)
!213 = !DIEnumerator(name: "OPT_Wstrict_aliasing", value: 184, isUnsigned: true)
!214 = !DIEnumerator(name: "OPT_Wstrict_aliasing_", value: 185, isUnsigned: true)
!215 = !DIEnumerator(name: "OPT_Wstrict_null_sentinel", value: 186, isUnsigned: true)
!216 = !DIEnumerator(name: "OPT_Wstrict_overflow", value: 187, isUnsigned: true)
!217 = !DIEnumerator(name: "OPT_Wstrict_overflow_", value: 188, isUnsigned: true)
!218 = !DIEnumerator(name: "OPT_Wstrict_prototypes", value: 189, isUnsigned: true)
!219 = !DIEnumerator(name: "OPT_Wstrict_selector_match", value: 190, isUnsigned: true)
!220 = !DIEnumerator(name: "OPT_Wsuppress", value: 191, isUnsigned: true)
!221 = !DIEnumerator(name: "OPT_Wsurprising", value: 192, isUnsigned: true)
!222 = !DIEnumerator(name: "OPT_Wswitch", value: 193, isUnsigned: true)
!223 = !DIEnumerator(name: "OPT_Wswitch_default", value: 194, isUnsigned: true)
!224 = !DIEnumerator(name: "OPT_Wswitch_enum", value: 195, isUnsigned: true)
!225 = !DIEnumerator(name: "OPT_Wsync_nand", value: 196, isUnsigned: true)
!226 = !DIEnumerator(name: "OPT_Wsynth", value: 197, isUnsigned: true)
!227 = !DIEnumerator(name: "OPT_Wsynthetic_access", value: 198, isUnsigned: true)
!228 = !DIEnumerator(name: "OPT_Wsystem_headers", value: 199, isUnsigned: true)
!229 = !DIEnumerator(name: "OPT_Wtabs", value: 200, isUnsigned: true)
!230 = !DIEnumerator(name: "OPT_Wtasks", value: 201, isUnsigned: true)
!231 = !DIEnumerator(name: "OPT_Wtraditional", value: 202, isUnsigned: true)
!232 = !DIEnumerator(name: "OPT_Wtraditional_conversion", value: 203, isUnsigned: true)
!233 = !DIEnumerator(name: "OPT_Wtrigraphs", value: 204, isUnsigned: true)
!234 = !DIEnumerator(name: "OPT_Wtype_hiding", value: 205, isUnsigned: true)
!235 = !DIEnumerator(name: "OPT_Wtype_limits", value: 206, isUnsigned: true)
!236 = !DIEnumerator(name: "OPT_Wuncheck", value: 207, isUnsigned: true)
!237 = !DIEnumerator(name: "OPT_Wundeclared_selector", value: 208, isUnsigned: true)
!238 = !DIEnumerator(name: "OPT_Wundef", value: 209, isUnsigned: true)
!239 = !DIEnumerator(name: "OPT_Wunderflow", value: 210, isUnsigned: true)
!240 = !DIEnumerator(name: "OPT_Wuninitialized", value: 211, isUnsigned: true)
!241 = !DIEnumerator(name: "OPT_Wunknown_pragmas", value: 212, isUnsigned: true)
!242 = !DIEnumerator(name: "OPT_Wunnecessary_else", value: 213, isUnsigned: true)
!243 = !DIEnumerator(name: "OPT_Wunqualified_field", value: 214, isUnsigned: true)
!244 = !DIEnumerator(name: "OPT_Wunreachable_code", value: 215, isUnsigned: true)
!245 = !DIEnumerator(name: "OPT_Wunsafe_loop_optimizations", value: 216, isUnsigned: true)
!246 = !DIEnumerator(name: "OPT_Wunsuffixed_float_constants", value: 217, isUnsigned: true)
!247 = !DIEnumerator(name: "OPT_Wunused", value: 218, isUnsigned: true)
!248 = !DIEnumerator(name: "OPT_Wunused_argument", value: 219, isUnsigned: true)
!249 = !DIEnumerator(name: "OPT_Wunused_function", value: 220, isUnsigned: true)
!250 = !DIEnumerator(name: "OPT_Wunused_import", value: 221, isUnsigned: true)
!251 = !DIEnumerator(name: "OPT_Wunused_label", value: 222, isUnsigned: true)
!252 = !DIEnumerator(name: "OPT_Wunused_local", value: 223, isUnsigned: true)
!253 = !DIEnumerator(name: "OPT_Wunused_macros", value: 224, isUnsigned: true)
!254 = !DIEnumerator(name: "OPT_Wunused_parameter", value: 225, isUnsigned: true)
!255 = !DIEnumerator(name: "OPT_Wunused_private", value: 226, isUnsigned: true)
!256 = !DIEnumerator(name: "OPT_Wunused_result", value: 227, isUnsigned: true)
!257 = !DIEnumerator(name: "OPT_Wunused_thrown", value: 228, isUnsigned: true)
!258 = !DIEnumerator(name: "OPT_Wunused_value", value: 229, isUnsigned: true)
!259 = !DIEnumerator(name: "OPT_Wunused_variable", value: 230, isUnsigned: true)
!260 = !DIEnumerator(name: "OPT_Wuseless_type_check", value: 231, isUnsigned: true)
!261 = !DIEnumerator(name: "OPT_Wvarargs_cast", value: 232, isUnsigned: true)
!262 = !DIEnumerator(name: "OPT_Wvariadic_macros", value: 233, isUnsigned: true)
!263 = !DIEnumerator(name: "OPT_Wvla", value: 234, isUnsigned: true)
!264 = !DIEnumerator(name: "OPT_Wvolatile_register_var", value: 235, isUnsigned: true)
!265 = !DIEnumerator(name: "OPT_Wwarning_token", value: 236, isUnsigned: true)
!266 = !DIEnumerator(name: "OPT_Wwrite_strings", value: 237, isUnsigned: true)
!267 = !DIEnumerator(name: "OPT_ansi", value: 238, isUnsigned: true)
!268 = !DIEnumerator(name: "OPT_aux_info", value: 239, isUnsigned: true)
!269 = !DIEnumerator(name: "OPT_aux_info_", value: 240, isUnsigned: true)
!270 = !DIEnumerator(name: "OPT_auxbase", value: 241, isUnsigned: true)
!271 = !DIEnumerator(name: "OPT_auxbase_strip", value: 242, isUnsigned: true)
!272 = !DIEnumerator(name: "OPT_cpp", value: 243, isUnsigned: true)
!273 = !DIEnumerator(name: "OPT_d", value: 244, isUnsigned: true)
!274 = !DIEnumerator(name: "OPT_dumpbase", value: 245, isUnsigned: true)
!275 = !DIEnumerator(name: "OPT_dumpdir", value: 246, isUnsigned: true)
!276 = !DIEnumerator(name: "OPT_fCLASSPATH_", value: 247, isUnsigned: true)
!277 = !DIEnumerator(name: "OPT_fPIC", value: 248, isUnsigned: true)
!278 = !DIEnumerator(name: "OPT_fPIE", value: 249, isUnsigned: true)
!279 = !DIEnumerator(name: "OPT_fRTS_", value: 250, isUnsigned: true)
!280 = !DIEnumerator(name: "OPT_fabi_version_", value: 251, isUnsigned: true)
!281 = !DIEnumerator(name: "OPT_faccess_control", value: 252, isUnsigned: true)
!282 = !DIEnumerator(name: "OPT_falign_commons", value: 253, isUnsigned: true)
!283 = !DIEnumerator(name: "OPT_falign_functions", value: 254, isUnsigned: true)
!284 = !DIEnumerator(name: "OPT_falign_functions_", value: 255, isUnsigned: true)
!285 = !DIEnumerator(name: "OPT_falign_jumps", value: 256, isUnsigned: true)
!286 = !DIEnumerator(name: "OPT_falign_jumps_", value: 257, isUnsigned: true)
!287 = !DIEnumerator(name: "OPT_falign_labels", value: 258, isUnsigned: true)
!288 = !DIEnumerator(name: "OPT_falign_labels_", value: 259, isUnsigned: true)
!289 = !DIEnumerator(name: "OPT_falign_loops", value: 260, isUnsigned: true)
!290 = !DIEnumerator(name: "OPT_falign_loops_", value: 261, isUnsigned: true)
!291 = !DIEnumerator(name: "OPT_fall_intrinsics", value: 262, isUnsigned: true)
!292 = !DIEnumerator(name: "OPT_fall_virtual", value: 263, isUnsigned: true)
!293 = !DIEnumerator(name: "OPT_fallow_leading_underscore", value: 264, isUnsigned: true)
!294 = !DIEnumerator(name: "OPT_falt_external_templates", value: 265, isUnsigned: true)
!295 = !DIEnumerator(name: "OPT_fargument_alias", value: 266, isUnsigned: true)
!296 = !DIEnumerator(name: "OPT_fargument_noalias", value: 267, isUnsigned: true)
!297 = !DIEnumerator(name: "OPT_fargument_noalias_anything", value: 268, isUnsigned: true)
!298 = !DIEnumerator(name: "OPT_fargument_noalias_global", value: 269, isUnsigned: true)
!299 = !DIEnumerator(name: "OPT_fasm", value: 270, isUnsigned: true)
!300 = !DIEnumerator(name: "OPT_fassert", value: 271, isUnsigned: true)
!301 = !DIEnumerator(name: "OPT_fassociative_math", value: 272, isUnsigned: true)
!302 = !DIEnumerator(name: "OPT_fassume_compiled", value: 273, isUnsigned: true)
!303 = !DIEnumerator(name: "OPT_fassume_compiled_", value: 274, isUnsigned: true)
!304 = !DIEnumerator(name: "OPT_fasynchronous_unwind_tables", value: 275, isUnsigned: true)
!305 = !DIEnumerator(name: "OPT_fauto_inc_dec", value: 276, isUnsigned: true)
!306 = !DIEnumerator(name: "OPT_fautomatic", value: 277, isUnsigned: true)
!307 = !DIEnumerator(name: "OPT_faux_classpath", value: 278, isUnsigned: true)
!308 = !DIEnumerator(name: "OPT_fbackslash", value: 279, isUnsigned: true)
!309 = !DIEnumerator(name: "OPT_fbacktrace", value: 280, isUnsigned: true)
!310 = !DIEnumerator(name: "OPT_fblas_matmul_limit_", value: 281, isUnsigned: true)
!311 = !DIEnumerator(name: "OPT_fbootclasspath_", value: 282, isUnsigned: true)
!312 = !DIEnumerator(name: "OPT_fbootstrap_classes", value: 283, isUnsigned: true)
!313 = !DIEnumerator(name: "OPT_fbounds_check", value: 284, isUnsigned: true)
!314 = !DIEnumerator(name: "OPT_fbranch_count_reg", value: 285, isUnsigned: true)
!315 = !DIEnumerator(name: "OPT_fbranch_probabilities", value: 286, isUnsigned: true)
!316 = !DIEnumerator(name: "OPT_fbranch_target_load_optimize", value: 287, isUnsigned: true)
!317 = !DIEnumerator(name: "OPT_fbranch_target_load_optimize2", value: 288, isUnsigned: true)
!318 = !DIEnumerator(name: "OPT_fbtr_bb_exclusive", value: 289, isUnsigned: true)
!319 = !DIEnumerator(name: "OPT_fbuiltin", value: 290, isUnsigned: true)
!320 = !DIEnumerator(name: "OPT_fbuiltin_", value: 291, isUnsigned: true)
!321 = !DIEnumerator(name: "OPT_fcall_saved_", value: 292, isUnsigned: true)
!322 = !DIEnumerator(name: "OPT_fcall_used_", value: 293, isUnsigned: true)
!323 = !DIEnumerator(name: "OPT_fcaller_saves", value: 294, isUnsigned: true)
!324 = !DIEnumerator(name: "OPT_fcheck_array_temporaries", value: 295, isUnsigned: true)
!325 = !DIEnumerator(name: "OPT_fcheck_data_deps", value: 296, isUnsigned: true)
!326 = !DIEnumerator(name: "OPT_fcheck_new", value: 297, isUnsigned: true)
!327 = !DIEnumerator(name: "OPT_fcheck_references", value: 298, isUnsigned: true)
!328 = !DIEnumerator(name: "OPT_fcheck_", value: 299, isUnsigned: true)
!329 = !DIEnumerator(name: "OPT_fclasspath_", value: 300, isUnsigned: true)
!330 = !DIEnumerator(name: "OPT_fcommon", value: 301, isUnsigned: true)
!331 = !DIEnumerator(name: "OPT_fcompare_debug_second", value: 302, isUnsigned: true)
!332 = !DIEnumerator(name: "OPT_fcompare_debug_", value: 303, isUnsigned: true)
!333 = !DIEnumerator(name: "OPT_fcompile_resource_", value: 304, isUnsigned: true)
!334 = !DIEnumerator(name: "OPT_fcond_mismatch", value: 305, isUnsigned: true)
!335 = !DIEnumerator(name: "OPT_fconserve_space", value: 306, isUnsigned: true)
!336 = !DIEnumerator(name: "OPT_fconserve_stack", value: 307, isUnsigned: true)
!337 = !DIEnumerator(name: "OPT_fconstant_string_class_", value: 308, isUnsigned: true)
!338 = !DIEnumerator(name: "OPT_fconvert_big_endian", value: 309, isUnsigned: true)
!339 = !DIEnumerator(name: "OPT_fconvert_little_endian", value: 310, isUnsigned: true)
!340 = !DIEnumerator(name: "OPT_fconvert_native", value: 311, isUnsigned: true)
!341 = !DIEnumerator(name: "OPT_fconvert_swap", value: 312, isUnsigned: true)
!342 = !DIEnumerator(name: "OPT_fcprop_registers", value: 313, isUnsigned: true)
!343 = !DIEnumerator(name: "OPT_fcray_pointer", value: 314, isUnsigned: true)
!344 = !DIEnumerator(name: "OPT_fcrossjumping", value: 315, isUnsigned: true)
!345 = !DIEnumerator(name: "OPT_fcse_follow_jumps", value: 316, isUnsigned: true)
!346 = !DIEnumerator(name: "OPT_fcse_skip_blocks", value: 317, isUnsigned: true)
!347 = !DIEnumerator(name: "OPT_fcx_fortran_rules", value: 318, isUnsigned: true)
!348 = !DIEnumerator(name: "OPT_fcx_limited_range", value: 319, isUnsigned: true)
!349 = !DIEnumerator(name: "OPT_fd_lines_as_code", value: 320, isUnsigned: true)
!350 = !DIEnumerator(name: "OPT_fd_lines_as_comments", value: 321, isUnsigned: true)
!351 = !DIEnumerator(name: "OPT_fdata_sections", value: 322, isUnsigned: true)
!352 = !DIEnumerator(name: "OPT_fdbg_cnt_list", value: 323, isUnsigned: true)
!353 = !DIEnumerator(name: "OPT_fdbg_cnt_", value: 324, isUnsigned: true)
!354 = !DIEnumerator(name: "OPT_fdce", value: 325, isUnsigned: true)
!355 = !DIEnumerator(name: "OPT_fdebug_prefix_map_", value: 326, isUnsigned: true)
!356 = !DIEnumerator(name: "OPT_fdeduce_init_list", value: 327, isUnsigned: true)
!357 = !DIEnumerator(name: "OPT_fdefault_double_8", value: 328, isUnsigned: true)
!358 = !DIEnumerator(name: "OPT_fdefault_inline", value: 329, isUnsigned: true)
!359 = !DIEnumerator(name: "OPT_fdefault_integer_8", value: 330, isUnsigned: true)
!360 = !DIEnumerator(name: "OPT_fdefault_real_8", value: 331, isUnsigned: true)
!361 = !DIEnumerator(name: "OPT_fdefer_pop", value: 332, isUnsigned: true)
!362 = !DIEnumerator(name: "OPT_fdelayed_branch", value: 333, isUnsigned: true)
!363 = !DIEnumerator(name: "OPT_fdelete_null_pointer_checks", value: 334, isUnsigned: true)
!364 = !DIEnumerator(name: "OPT_fdiagnostics_show_location_", value: 335, isUnsigned: true)
!365 = !DIEnumerator(name: "OPT_fdiagnostics_show_option", value: 336, isUnsigned: true)
!366 = !DIEnumerator(name: "OPT_fdirectives_only", value: 337, isUnsigned: true)
!367 = !DIEnumerator(name: "OPT_fdisable_assertions", value: 338, isUnsigned: true)
!368 = !DIEnumerator(name: "OPT_fdisable_assertions_", value: 339, isUnsigned: true)
!369 = !DIEnumerator(name: "OPT_fdollar_ok", value: 340, isUnsigned: true)
!370 = !DIEnumerator(name: "OPT_fdollars_in_identifiers", value: 341, isUnsigned: true)
!371 = !DIEnumerator(name: "OPT_fdse", value: 342, isUnsigned: true)
!372 = !DIEnumerator(name: "OPT_fdump_", value: 343, isUnsigned: true)
!373 = !DIEnumerator(name: "OPT_fdump_core", value: 344, isUnsigned: true)
!374 = !DIEnumerator(name: "OPT_fdump_final_insns_", value: 345, isUnsigned: true)
!375 = !DIEnumerator(name: "OPT_fdump_noaddr", value: 346, isUnsigned: true)
!376 = !DIEnumerator(name: "OPT_fdump_parse_tree", value: 347, isUnsigned: true)
!377 = !DIEnumerator(name: "OPT_fdump_unnumbered", value: 348, isUnsigned: true)
!378 = !DIEnumerator(name: "OPT_fdump_unnumbered_links", value: 349, isUnsigned: true)
!379 = !DIEnumerator(name: "OPT_fdwarf2_cfi_asm", value: 350, isUnsigned: true)
!380 = !DIEnumerator(name: "OPT_fearly_inlining", value: 351, isUnsigned: true)
!381 = !DIEnumerator(name: "OPT_felide_constructors", value: 352, isUnsigned: true)
!382 = !DIEnumerator(name: "OPT_feliminate_dwarf2_dups", value: 353, isUnsigned: true)
!383 = !DIEnumerator(name: "OPT_feliminate_unused_debug_symbols", value: 354, isUnsigned: true)
!384 = !DIEnumerator(name: "OPT_feliminate_unused_debug_types", value: 355, isUnsigned: true)
!385 = !DIEnumerator(name: "OPT_femit_class_debug_always", value: 356, isUnsigned: true)
!386 = !DIEnumerator(name: "OPT_femit_class_file", value: 357, isUnsigned: true)
!387 = !DIEnumerator(name: "OPT_femit_class_files", value: 358, isUnsigned: true)
!388 = !DIEnumerator(name: "OPT_femit_struct_debug_baseonly", value: 359, isUnsigned: true)
!389 = !DIEnumerator(name: "OPT_femit_struct_debug_detailed_", value: 360, isUnsigned: true)
!390 = !DIEnumerator(name: "OPT_femit_struct_debug_reduced", value: 361, isUnsigned: true)
!391 = !DIEnumerator(name: "OPT_fenable_assertions", value: 362, isUnsigned: true)
!392 = !DIEnumerator(name: "OPT_fenable_assertions_", value: 363, isUnsigned: true)
!393 = !DIEnumerator(name: "OPT_fenable_icf_debug", value: 364, isUnsigned: true)
!394 = !DIEnumerator(name: "OPT_fencoding_", value: 365, isUnsigned: true)
!395 = !DIEnumerator(name: "OPT_fenforce_eh_specs", value: 366, isUnsigned: true)
!396 = !DIEnumerator(name: "OPT_fenum_int_equiv", value: 367, isUnsigned: true)
!397 = !DIEnumerator(name: "OPT_fexceptions", value: 368, isUnsigned: true)
!398 = !DIEnumerator(name: "OPT_fexcess_precision_", value: 369, isUnsigned: true)
!399 = !DIEnumerator(name: "OPT_fexec_charset_", value: 370, isUnsigned: true)
!400 = !DIEnumerator(name: "OPT_fexpensive_optimizations", value: 371, isUnsigned: true)
!401 = !DIEnumerator(name: "OPT_fextdirs_", value: 372, isUnsigned: true)
!402 = !DIEnumerator(name: "OPT_fextended_identifiers", value: 373, isUnsigned: true)
!403 = !DIEnumerator(name: "OPT_fexternal_blas", value: 374, isUnsigned: true)
!404 = !DIEnumerator(name: "OPT_fexternal_templates", value: 375, isUnsigned: true)
!405 = !DIEnumerator(name: "OPT_ff2c", value: 376, isUnsigned: true)
!406 = !DIEnumerator(name: "OPT_ffast_math", value: 377, isUnsigned: true)
!407 = !DIEnumerator(name: "OPT_ffilelist_file", value: 378, isUnsigned: true)
!408 = !DIEnumerator(name: "OPT_ffinite_math_only", value: 379, isUnsigned: true)
!409 = !DIEnumerator(name: "OPT_ffixed_", value: 380, isUnsigned: true)
!410 = !DIEnumerator(name: "OPT_ffixed_form", value: 381, isUnsigned: true)
!411 = !DIEnumerator(name: "OPT_ffixed_line_length_", value: 382, isUnsigned: true)
!412 = !DIEnumerator(name: "OPT_ffixed_line_length_none", value: 383, isUnsigned: true)
!413 = !DIEnumerator(name: "OPT_ffloat_store", value: 384, isUnsigned: true)
!414 = !DIEnumerator(name: "OPT_ffor_scope", value: 385, isUnsigned: true)
!415 = !DIEnumerator(name: "OPT_fforce_addr", value: 386, isUnsigned: true)
!416 = !DIEnumerator(name: "OPT_fforce_classes_archive_check", value: 387, isUnsigned: true)
!417 = !DIEnumerator(name: "OPT_fforward_propagate", value: 388, isUnsigned: true)
!418 = !DIEnumerator(name: "OPT_ffpe_trap_", value: 389, isUnsigned: true)
!419 = !DIEnumerator(name: "OPT_ffree_form", value: 390, isUnsigned: true)
!420 = !DIEnumerator(name: "OPT_ffree_line_length_", value: 391, isUnsigned: true)
!421 = !DIEnumerator(name: "OPT_ffree_line_length_none", value: 392, isUnsigned: true)
!422 = !DIEnumerator(name: "OPT_ffreestanding", value: 393, isUnsigned: true)
!423 = !DIEnumerator(name: "OPT_ffriend_injection", value: 394, isUnsigned: true)
!424 = !DIEnumerator(name: "OPT_ffunction_cse", value: 395, isUnsigned: true)
!425 = !DIEnumerator(name: "OPT_ffunction_sections", value: 396, isUnsigned: true)
!426 = !DIEnumerator(name: "OPT_fgcse", value: 397, isUnsigned: true)
!427 = !DIEnumerator(name: "OPT_fgcse_after_reload", value: 398, isUnsigned: true)
!428 = !DIEnumerator(name: "OPT_fgcse_las", value: 399, isUnsigned: true)
!429 = !DIEnumerator(name: "OPT_fgcse_lm", value: 400, isUnsigned: true)
!430 = !DIEnumerator(name: "OPT_fgcse_sm", value: 401, isUnsigned: true)
!431 = !DIEnumerator(name: "OPT_fgnu_keywords", value: 402, isUnsigned: true)
!432 = !DIEnumerator(name: "OPT_fgnu_runtime", value: 403, isUnsigned: true)
!433 = !DIEnumerator(name: "OPT_fgnu89_inline", value: 404, isUnsigned: true)
!434 = !DIEnumerator(name: "OPT_fgraphite", value: 405, isUnsigned: true)
!435 = !DIEnumerator(name: "OPT_fgraphite_identity", value: 406, isUnsigned: true)
!436 = !DIEnumerator(name: "OPT_fguess_branch_probability", value: 407, isUnsigned: true)
!437 = !DIEnumerator(name: "OPT_fguiding_decls", value: 408, isUnsigned: true)
!438 = !DIEnumerator(name: "OPT_fhandle_exceptions", value: 409, isUnsigned: true)
!439 = !DIEnumerator(name: "OPT_fhash_synchronization", value: 410, isUnsigned: true)
!440 = !DIEnumerator(name: "OPT_fhelp", value: 411, isUnsigned: true)
!441 = !DIEnumerator(name: "OPT_fhelp_", value: 412, isUnsigned: true)
!442 = !DIEnumerator(name: "OPT_fhonor_std", value: 413, isUnsigned: true)
!443 = !DIEnumerator(name: "OPT_fhosted", value: 414, isUnsigned: true)
!444 = !DIEnumerator(name: "OPT_fhuge_objects", value: 415, isUnsigned: true)
!445 = !DIEnumerator(name: "OPT_fident", value: 416, isUnsigned: true)
!446 = !DIEnumerator(name: "OPT_fif_conversion", value: 417, isUnsigned: true)
!447 = !DIEnumerator(name: "OPT_fif_conversion2", value: 418, isUnsigned: true)
!448 = !DIEnumerator(name: "OPT_fimplement_inlines", value: 419, isUnsigned: true)
!449 = !DIEnumerator(name: "OPT_fimplicit_inline_templates", value: 420, isUnsigned: true)
!450 = !DIEnumerator(name: "OPT_fimplicit_none", value: 421, isUnsigned: true)
!451 = !DIEnumerator(name: "OPT_fimplicit_templates", value: 422, isUnsigned: true)
!452 = !DIEnumerator(name: "OPT_findirect_classes", value: 423, isUnsigned: true)
!453 = !DIEnumerator(name: "OPT_findirect_dispatch", value: 424, isUnsigned: true)
!454 = !DIEnumerator(name: "OPT_findirect_inlining", value: 425, isUnsigned: true)
!455 = !DIEnumerator(name: "OPT_finhibit_size_directive", value: 426, isUnsigned: true)
!456 = !DIEnumerator(name: "OPT_finit_character_", value: 427, isUnsigned: true)
!457 = !DIEnumerator(name: "OPT_finit_integer_", value: 428, isUnsigned: true)
!458 = !DIEnumerator(name: "OPT_finit_local_zero", value: 429, isUnsigned: true)
!459 = !DIEnumerator(name: "OPT_finit_logical_", value: 430, isUnsigned: true)
!460 = !DIEnumerator(name: "OPT_finit_real_", value: 431, isUnsigned: true)
!461 = !DIEnumerator(name: "OPT_finline", value: 432, isUnsigned: true)
!462 = !DIEnumerator(name: "OPT_finline_functions", value: 433, isUnsigned: true)
!463 = !DIEnumerator(name: "OPT_finline_functions_called_once", value: 434, isUnsigned: true)
!464 = !DIEnumerator(name: "OPT_finline_limit_", value: 435, isUnsigned: true)
!465 = !DIEnumerator(name: "OPT_finline_limit_eq", value: 436, isUnsigned: true)
!466 = !DIEnumerator(name: "OPT_finline_small_functions", value: 437, isUnsigned: true)
!467 = !DIEnumerator(name: "OPT_finput_charset_", value: 438, isUnsigned: true)
!468 = !DIEnumerator(name: "OPT_finstrument_functions", value: 439, isUnsigned: true)
!469 = !DIEnumerator(name: "OPT_finstrument_functions_exclude_file_list_", value: 440, isUnsigned: true)
!470 = !DIEnumerator(name: "OPT_finstrument_functions_exclude_function_list_", value: 441, isUnsigned: true)
!471 = !DIEnumerator(name: "OPT_fintrinsic_modules_path", value: 442, isUnsigned: true)
!472 = !DIEnumerator(name: "OPT_fipa_cp", value: 443, isUnsigned: true)
!473 = !DIEnumerator(name: "OPT_fipa_cp_clone", value: 444, isUnsigned: true)
!474 = !DIEnumerator(name: "OPT_fipa_matrix_reorg", value: 445, isUnsigned: true)
!475 = !DIEnumerator(name: "OPT_fipa_pta", value: 446, isUnsigned: true)
!476 = !DIEnumerator(name: "OPT_fipa_pure_const", value: 447, isUnsigned: true)
!477 = !DIEnumerator(name: "OPT_fipa_reference", value: 448, isUnsigned: true)
!478 = !DIEnumerator(name: "OPT_fipa_sra", value: 449, isUnsigned: true)
!479 = !DIEnumerator(name: "OPT_fipa_struct_reorg", value: 450, isUnsigned: true)
!480 = !DIEnumerator(name: "OPT_fipa_type_escape", value: 451, isUnsigned: true)
!481 = !DIEnumerator(name: "OPT_fira_algorithm_", value: 452, isUnsigned: true)
!482 = !DIEnumerator(name: "OPT_fira_coalesce", value: 453, isUnsigned: true)
!483 = !DIEnumerator(name: "OPT_fira_loop_pressure", value: 454, isUnsigned: true)
!484 = !DIEnumerator(name: "OPT_fira_region_", value: 455, isUnsigned: true)
!485 = !DIEnumerator(name: "OPT_fira_share_save_slots", value: 456, isUnsigned: true)
!486 = !DIEnumerator(name: "OPT_fira_share_spill_slots", value: 457, isUnsigned: true)
!487 = !DIEnumerator(name: "OPT_fira_verbose_", value: 458, isUnsigned: true)
!488 = !DIEnumerator(name: "OPT_fivopts", value: 459, isUnsigned: true)
!489 = !DIEnumerator(name: "OPT_fjni", value: 460, isUnsigned: true)
!490 = !DIEnumerator(name: "OPT_fjump_tables", value: 461, isUnsigned: true)
!491 = !DIEnumerator(name: "OPT_fkeep_inline_functions", value: 462, isUnsigned: true)
!492 = !DIEnumerator(name: "OPT_fkeep_static_consts", value: 463, isUnsigned: true)
!493 = !DIEnumerator(name: "OPT_flabels_ok", value: 464, isUnsigned: true)
!494 = !DIEnumerator(name: "OPT_flax_vector_conversions", value: 465, isUnsigned: true)
!495 = !DIEnumerator(name: "OPT_fleading_underscore", value: 466, isUnsigned: true)
!496 = !DIEnumerator(name: "OPT_floop_block", value: 467, isUnsigned: true)
!497 = !DIEnumerator(name: "OPT_floop_interchange", value: 468, isUnsigned: true)
!498 = !DIEnumerator(name: "OPT_floop_optimize", value: 469, isUnsigned: true)
!499 = !DIEnumerator(name: "OPT_floop_parallelize_all", value: 470, isUnsigned: true)
!500 = !DIEnumerator(name: "OPT_floop_strip_mine", value: 471, isUnsigned: true)
!501 = !DIEnumerator(name: "OPT_flto", value: 472, isUnsigned: true)
!502 = !DIEnumerator(name: "OPT_flto_compression_level_", value: 473, isUnsigned: true)
!503 = !DIEnumerator(name: "OPT_flto_report", value: 474, isUnsigned: true)
!504 = !DIEnumerator(name: "OPT_fltrans", value: 475, isUnsigned: true)
!505 = !DIEnumerator(name: "OPT_fltrans_output_list_", value: 476, isUnsigned: true)
!506 = !DIEnumerator(name: "OPT_fmath_errno", value: 477, isUnsigned: true)
!507 = !DIEnumerator(name: "OPT_fmax_array_constructor_", value: 478, isUnsigned: true)
!508 = !DIEnumerator(name: "OPT_fmax_errors_", value: 479, isUnsigned: true)
!509 = !DIEnumerator(name: "OPT_fmax_identifier_length_", value: 480, isUnsigned: true)
!510 = !DIEnumerator(name: "OPT_fmax_stack_var_size_", value: 481, isUnsigned: true)
!511 = !DIEnumerator(name: "OPT_fmax_subrecord_length_", value: 482, isUnsigned: true)
!512 = !DIEnumerator(name: "OPT_fmem_report", value: 483, isUnsigned: true)
!513 = !DIEnumerator(name: "OPT_fmerge_all_constants", value: 484, isUnsigned: true)
!514 = !DIEnumerator(name: "OPT_fmerge_constants", value: 485, isUnsigned: true)
!515 = !DIEnumerator(name: "OPT_fmerge_debug_strings", value: 486, isUnsigned: true)
!516 = !DIEnumerator(name: "OPT_fmessage_length_", value: 487, isUnsigned: true)
!517 = !DIEnumerator(name: "OPT_fmodule_private", value: 488, isUnsigned: true)
!518 = !DIEnumerator(name: "OPT_fmodulo_sched", value: 489, isUnsigned: true)
!519 = !DIEnumerator(name: "OPT_fmodulo_sched_allow_regmoves", value: 490, isUnsigned: true)
!520 = !DIEnumerator(name: "OPT_fmove_loop_invariants", value: 491, isUnsigned: true)
!521 = !DIEnumerator(name: "OPT_fms_extensions", value: 492, isUnsigned: true)
!522 = !DIEnumerator(name: "OPT_fmudflap", value: 493, isUnsigned: true)
!523 = !DIEnumerator(name: "OPT_fmudflapir", value: 494, isUnsigned: true)
!524 = !DIEnumerator(name: "OPT_fmudflapth", value: 495, isUnsigned: true)
!525 = !DIEnumerator(name: "OPT_fname_mangling_version_", value: 496, isUnsigned: true)
!526 = !DIEnumerator(name: "OPT_fnew_abi", value: 497, isUnsigned: true)
!527 = !DIEnumerator(name: "OPT_fnext_runtime", value: 498, isUnsigned: true)
!528 = !DIEnumerator(name: "OPT_fnil_receivers", value: 499, isUnsigned: true)
!529 = !DIEnumerator(name: "OPT_fnon_call_exceptions", value: 500, isUnsigned: true)
!530 = !DIEnumerator(name: "OPT_fnonansi_builtins", value: 501, isUnsigned: true)
!531 = !DIEnumerator(name: "OPT_fnonnull_objects", value: 502, isUnsigned: true)
!532 = !DIEnumerator(name: "OPT_fobjc_call_cxx_cdtors", value: 503, isUnsigned: true)
!533 = !DIEnumerator(name: "OPT_fobjc_direct_dispatch", value: 504, isUnsigned: true)
!534 = !DIEnumerator(name: "OPT_fobjc_exceptions", value: 505, isUnsigned: true)
!535 = !DIEnumerator(name: "OPT_fobjc_gc", value: 506, isUnsigned: true)
!536 = !DIEnumerator(name: "OPT_fobjc_sjlj_exceptions", value: 507, isUnsigned: true)
!537 = !DIEnumerator(name: "OPT_fomit_frame_pointer", value: 508, isUnsigned: true)
!538 = !DIEnumerator(name: "OPT_fopenmp", value: 509, isUnsigned: true)
!539 = !DIEnumerator(name: "OPT_foperator_names", value: 510, isUnsigned: true)
!540 = !DIEnumerator(name: "OPT_foptimize_register_move", value: 511, isUnsigned: true)
!541 = !DIEnumerator(name: "OPT_foptimize_sibling_calls", value: 512, isUnsigned: true)
!542 = !DIEnumerator(name: "OPT_foptimize_static_class_initialization", value: 513, isUnsigned: true)
!543 = !DIEnumerator(name: "OPT_foptional_diags", value: 514, isUnsigned: true)
!544 = !DIEnumerator(name: "OPT_foutput_class_dir_", value: 515, isUnsigned: true)
!545 = !DIEnumerator(name: "OPT_fpack_derived", value: 516, isUnsigned: true)
!546 = !DIEnumerator(name: "OPT_fpack_struct", value: 517, isUnsigned: true)
!547 = !DIEnumerator(name: "OPT_fpack_struct_", value: 518, isUnsigned: true)
!548 = !DIEnumerator(name: "OPT_fpcc_struct_return", value: 519, isUnsigned: true)
!549 = !DIEnumerator(name: "OPT_fpch_deps", value: 520, isUnsigned: true)
!550 = !DIEnumerator(name: "OPT_fpch_preprocess", value: 521, isUnsigned: true)
!551 = !DIEnumerator(name: "OPT_fpeel_loops", value: 522, isUnsigned: true)
!552 = !DIEnumerator(name: "OPT_fpeephole", value: 523, isUnsigned: true)
!553 = !DIEnumerator(name: "OPT_fpeephole2", value: 524, isUnsigned: true)
!554 = !DIEnumerator(name: "OPT_fpermissive", value: 525, isUnsigned: true)
!555 = !DIEnumerator(name: "OPT_fpic", value: 526, isUnsigned: true)
!556 = !DIEnumerator(name: "OPT_fpie", value: 527, isUnsigned: true)
!557 = !DIEnumerator(name: "OPT_fplugin_arg_", value: 528, isUnsigned: true)
!558 = !DIEnumerator(name: "OPT_fplugin_", value: 529, isUnsigned: true)
!559 = !DIEnumerator(name: "OPT_fpost_ipa_mem_report", value: 530, isUnsigned: true)
!560 = !DIEnumerator(name: "OPT_fpre_ipa_mem_report", value: 531, isUnsigned: true)
!561 = !DIEnumerator(name: "OPT_fpredictive_commoning", value: 532, isUnsigned: true)
!562 = !DIEnumerator(name: "OPT_fprefetch_loop_arrays", value: 533, isUnsigned: true)
!563 = !DIEnumerator(name: "OPT_fpreprocessed", value: 534, isUnsigned: true)
!564 = !DIEnumerator(name: "OPT_fpretty_templates", value: 535, isUnsigned: true)
!565 = !DIEnumerator(name: "OPT_fprofile", value: 536, isUnsigned: true)
!566 = !DIEnumerator(name: "OPT_fprofile_arcs", value: 537, isUnsigned: true)
!567 = !DIEnumerator(name: "OPT_fprofile_correction", value: 538, isUnsigned: true)
!568 = !DIEnumerator(name: "OPT_fprofile_dir_", value: 539, isUnsigned: true)
!569 = !DIEnumerator(name: "OPT_fprofile_generate", value: 540, isUnsigned: true)
!570 = !DIEnumerator(name: "OPT_fprofile_generate_", value: 541, isUnsigned: true)
!571 = !DIEnumerator(name: "OPT_fprofile_use", value: 542, isUnsigned: true)
!572 = !DIEnumerator(name: "OPT_fprofile_use_", value: 543, isUnsigned: true)
!573 = !DIEnumerator(name: "OPT_fprofile_values", value: 544, isUnsigned: true)
!574 = !DIEnumerator(name: "OPT_fprotect_parens", value: 545, isUnsigned: true)
!575 = !DIEnumerator(name: "OPT_frandom_seed", value: 546, isUnsigned: true)
!576 = !DIEnumerator(name: "OPT_frandom_seed_", value: 547, isUnsigned: true)
!577 = !DIEnumerator(name: "OPT_frange_check", value: 548, isUnsigned: true)
!578 = !DIEnumerator(name: "OPT_freciprocal_math", value: 549, isUnsigned: true)
!579 = !DIEnumerator(name: "OPT_frecord_gcc_switches", value: 550, isUnsigned: true)
!580 = !DIEnumerator(name: "OPT_frecord_marker_4", value: 551, isUnsigned: true)
!581 = !DIEnumerator(name: "OPT_frecord_marker_8", value: 552, isUnsigned: true)
!582 = !DIEnumerator(name: "OPT_frecursive", value: 553, isUnsigned: true)
!583 = !DIEnumerator(name: "OPT_freduced_reflection", value: 554, isUnsigned: true)
!584 = !DIEnumerator(name: "OPT_freg_struct_return", value: 555, isUnsigned: true)
!585 = !DIEnumerator(name: "OPT_fregmove", value: 556, isUnsigned: true)
!586 = !DIEnumerator(name: "OPT_frename_registers", value: 557, isUnsigned: true)
!587 = !DIEnumerator(name: "OPT_freorder_blocks", value: 558, isUnsigned: true)
!588 = !DIEnumerator(name: "OPT_freorder_blocks_and_partition", value: 559, isUnsigned: true)
!589 = !DIEnumerator(name: "OPT_freorder_functions", value: 560, isUnsigned: true)
!590 = !DIEnumerator(name: "OPT_frepack_arrays", value: 561, isUnsigned: true)
!591 = !DIEnumerator(name: "OPT_freplace_objc_classes", value: 562, isUnsigned: true)
!592 = !DIEnumerator(name: "OPT_frepo", value: 563, isUnsigned: true)
!593 = !DIEnumerator(name: "OPT_frerun_cse_after_loop", value: 564, isUnsigned: true)
!594 = !DIEnumerator(name: "OPT_frerun_loop_opt", value: 565, isUnsigned: true)
!595 = !DIEnumerator(name: "OPT_freschedule_modulo_scheduled_loops", value: 566, isUnsigned: true)
!596 = !DIEnumerator(name: "OPT_fresolution", value: 567, isUnsigned: true)
!597 = !DIEnumerator(name: "OPT_frounding_math", value: 568, isUnsigned: true)
!598 = !DIEnumerator(name: "OPT_frtti", value: 569, isUnsigned: true)
!599 = !DIEnumerator(name: "OPT_fsaw_java_file", value: 570, isUnsigned: true)
!600 = !DIEnumerator(name: "OPT_fsched_critical_path_heuristic", value: 571, isUnsigned: true)
!601 = !DIEnumerator(name: "OPT_fsched_dep_count_heuristic", value: 572, isUnsigned: true)
!602 = !DIEnumerator(name: "OPT_fsched_group_heuristic", value: 573, isUnsigned: true)
!603 = !DIEnumerator(name: "OPT_fsched_interblock", value: 574, isUnsigned: true)
!604 = !DIEnumerator(name: "OPT_fsched_last_insn_heuristic", value: 575, isUnsigned: true)
!605 = !DIEnumerator(name: "OPT_fsched_pressure", value: 576, isUnsigned: true)
!606 = !DIEnumerator(name: "OPT_fsched_rank_heuristic", value: 577, isUnsigned: true)
!607 = !DIEnumerator(name: "OPT_fsched_spec", value: 578, isUnsigned: true)
!608 = !DIEnumerator(name: "OPT_fsched_spec_insn_heuristic", value: 579, isUnsigned: true)
!609 = !DIEnumerator(name: "OPT_fsched_spec_load", value: 580, isUnsigned: true)
!610 = !DIEnumerator(name: "OPT_fsched_spec_load_dangerous", value: 581, isUnsigned: true)
!611 = !DIEnumerator(name: "OPT_fsched_stalled_insns", value: 582, isUnsigned: true)
!612 = !DIEnumerator(name: "OPT_fsched_stalled_insns_dep", value: 583, isUnsigned: true)
!613 = !DIEnumerator(name: "OPT_fsched_stalled_insns_dep_", value: 584, isUnsigned: true)
!614 = !DIEnumerator(name: "OPT_fsched_stalled_insns_", value: 585, isUnsigned: true)
!615 = !DIEnumerator(name: "OPT_fsched_verbose_", value: 586, isUnsigned: true)
!616 = !DIEnumerator(name: "OPT_fsched2_use_superblocks", value: 587, isUnsigned: true)
!617 = !DIEnumerator(name: "OPT_fsched2_use_traces", value: 588, isUnsigned: true)
!618 = !DIEnumerator(name: "OPT_fschedule_insns", value: 589, isUnsigned: true)
!619 = !DIEnumerator(name: "OPT_fschedule_insns2", value: 590, isUnsigned: true)
!620 = !DIEnumerator(name: "OPT_fsecond_underscore", value: 591, isUnsigned: true)
!621 = !DIEnumerator(name: "OPT_fsection_anchors", value: 592, isUnsigned: true)
!622 = !DIEnumerator(name: "OPT_fsee", value: 593, isUnsigned: true)
!623 = !DIEnumerator(name: "OPT_fsel_sched_pipelining", value: 594, isUnsigned: true)
!624 = !DIEnumerator(name: "OPT_fsel_sched_pipelining_outer_loops", value: 595, isUnsigned: true)
!625 = !DIEnumerator(name: "OPT_fsel_sched_reschedule_pipelined", value: 596, isUnsigned: true)
!626 = !DIEnumerator(name: "OPT_fselective_scheduling", value: 597, isUnsigned: true)
!627 = !DIEnumerator(name: "OPT_fselective_scheduling2", value: 598, isUnsigned: true)
!628 = !DIEnumerator(name: "OPT_fshort_double", value: 599, isUnsigned: true)
!629 = !DIEnumerator(name: "OPT_fshort_enums", value: 600, isUnsigned: true)
!630 = !DIEnumerator(name: "OPT_fshort_wchar", value: 601, isUnsigned: true)
!631 = !DIEnumerator(name: "OPT_fshow_column", value: 602, isUnsigned: true)
!632 = !DIEnumerator(name: "OPT_fsign_zero", value: 603, isUnsigned: true)
!633 = !DIEnumerator(name: "OPT_fsignaling_nans", value: 604, isUnsigned: true)
!634 = !DIEnumerator(name: "OPT_fsigned_bitfields", value: 605, isUnsigned: true)
!635 = !DIEnumerator(name: "OPT_fsigned_char", value: 606, isUnsigned: true)
!636 = !DIEnumerator(name: "OPT_fsigned_zeros", value: 607, isUnsigned: true)
!637 = !DIEnumerator(name: "OPT_fsingle_precision_constant", value: 608, isUnsigned: true)
!638 = !DIEnumerator(name: "OPT_fsource_filename_", value: 609, isUnsigned: true)
!639 = !DIEnumerator(name: "OPT_fsource_", value: 610, isUnsigned: true)
!640 = !DIEnumerator(name: "OPT_fsplit_ivs_in_unroller", value: 611, isUnsigned: true)
!641 = !DIEnumerator(name: "OPT_fsplit_wide_types", value: 612, isUnsigned: true)
!642 = !DIEnumerator(name: "OPT_fsquangle", value: 613, isUnsigned: true)
!643 = !DIEnumerator(name: "OPT_fstack_check", value: 614, isUnsigned: true)
!644 = !DIEnumerator(name: "OPT_fstack_check_", value: 615, isUnsigned: true)
!645 = !DIEnumerator(name: "OPT_fstack_limit", value: 616, isUnsigned: true)
!646 = !DIEnumerator(name: "OPT_fstack_limit_register_", value: 617, isUnsigned: true)
!647 = !DIEnumerator(name: "OPT_fstack_limit_symbol_", value: 618, isUnsigned: true)
!648 = !DIEnumerator(name: "OPT_fstack_protector", value: 619, isUnsigned: true)
!649 = !DIEnumerator(name: "OPT_fstack_protector_all", value: 620, isUnsigned: true)
!650 = !DIEnumerator(name: "OPT_fstats", value: 621, isUnsigned: true)
!651 = !DIEnumerator(name: "OPT_fstore_check", value: 622, isUnsigned: true)
!652 = !DIEnumerator(name: "OPT_fstrength_reduce", value: 623, isUnsigned: true)
!653 = !DIEnumerator(name: "OPT_fstrict_aliasing", value: 624, isUnsigned: true)
!654 = !DIEnumerator(name: "OPT_fstrict_overflow", value: 625, isUnsigned: true)
!655 = !DIEnumerator(name: "OPT_fstrict_prototype", value: 626, isUnsigned: true)
!656 = !DIEnumerator(name: "OPT_fsyntax_only", value: 627, isUnsigned: true)
!657 = !DIEnumerator(name: "OPT_ftabstop_", value: 628, isUnsigned: true)
!658 = !DIEnumerator(name: "OPT_ftarget_help", value: 629, isUnsigned: true)
!659 = !DIEnumerator(name: "OPT_ftarget_", value: 630, isUnsigned: true)
!660 = !DIEnumerator(name: "OPT_ftemplate_depth_", value: 631, isUnsigned: true)
!661 = !DIEnumerator(name: "OPT_ftemplate_depth_eq", value: 632, isUnsigned: true)
!662 = !DIEnumerator(name: "OPT_ftest_coverage", value: 633, isUnsigned: true)
!663 = !DIEnumerator(name: "OPT_fthis_is_variable", value: 634, isUnsigned: true)
!664 = !DIEnumerator(name: "OPT_fthread_jumps", value: 635, isUnsigned: true)
!665 = !DIEnumerator(name: "OPT_fthreadsafe_statics", value: 636, isUnsigned: true)
!666 = !DIEnumerator(name: "OPT_ftime_report", value: 637, isUnsigned: true)
!667 = !DIEnumerator(name: "OPT_ftls_model_", value: 638, isUnsigned: true)
!668 = !DIEnumerator(name: "OPT_ftoplevel_reorder", value: 639, isUnsigned: true)
!669 = !DIEnumerator(name: "OPT_ftracer", value: 640, isUnsigned: true)
!670 = !DIEnumerator(name: "OPT_ftrapping_math", value: 641, isUnsigned: true)
!671 = !DIEnumerator(name: "OPT_ftrapv", value: 642, isUnsigned: true)
!672 = !DIEnumerator(name: "OPT_ftree_builtin_call_dce", value: 643, isUnsigned: true)
!673 = !DIEnumerator(name: "OPT_ftree_ccp", value: 644, isUnsigned: true)
!674 = !DIEnumerator(name: "OPT_ftree_ch", value: 645, isUnsigned: true)
!675 = !DIEnumerator(name: "OPT_ftree_copy_prop", value: 646, isUnsigned: true)
!676 = !DIEnumerator(name: "OPT_ftree_copyrename", value: 647, isUnsigned: true)
!677 = !DIEnumerator(name: "OPT_ftree_cselim", value: 648, isUnsigned: true)
!678 = !DIEnumerator(name: "OPT_ftree_dce", value: 649, isUnsigned: true)
!679 = !DIEnumerator(name: "OPT_ftree_dominator_opts", value: 650, isUnsigned: true)
!680 = !DIEnumerator(name: "OPT_ftree_dse", value: 651, isUnsigned: true)
!681 = !DIEnumerator(name: "OPT_ftree_forwprop", value: 652, isUnsigned: true)
!682 = !DIEnumerator(name: "OPT_ftree_fre", value: 653, isUnsigned: true)
!683 = !DIEnumerator(name: "OPT_ftree_loop_distribution", value: 654, isUnsigned: true)
!684 = !DIEnumerator(name: "OPT_ftree_loop_im", value: 655, isUnsigned: true)
!685 = !DIEnumerator(name: "OPT_ftree_loop_ivcanon", value: 656, isUnsigned: true)
!686 = !DIEnumerator(name: "OPT_ftree_loop_linear", value: 657, isUnsigned: true)
!687 = !DIEnumerator(name: "OPT_ftree_loop_optimize", value: 658, isUnsigned: true)
!688 = !DIEnumerator(name: "OPT_ftree_lrs", value: 659, isUnsigned: true)
!689 = !DIEnumerator(name: "OPT_ftree_parallelize_loops_", value: 660, isUnsigned: true)
!690 = !DIEnumerator(name: "OPT_ftree_phiprop", value: 661, isUnsigned: true)
!691 = !DIEnumerator(name: "OPT_ftree_pre", value: 662, isUnsigned: true)
!692 = !DIEnumerator(name: "OPT_ftree_pta", value: 663, isUnsigned: true)
!693 = !DIEnumerator(name: "OPT_ftree_reassoc", value: 664, isUnsigned: true)
!694 = !DIEnumerator(name: "OPT_ftree_salias", value: 665, isUnsigned: true)
!695 = !DIEnumerator(name: "OPT_ftree_scev_cprop", value: 666, isUnsigned: true)
!696 = !DIEnumerator(name: "OPT_ftree_sink", value: 667, isUnsigned: true)
!697 = !DIEnumerator(name: "OPT_ftree_slp_vectorize", value: 668, isUnsigned: true)
!698 = !DIEnumerator(name: "OPT_ftree_sra", value: 669, isUnsigned: true)
!699 = !DIEnumerator(name: "OPT_ftree_store_ccp", value: 670, isUnsigned: true)
!700 = !DIEnumerator(name: "OPT_ftree_store_copy_prop", value: 671, isUnsigned: true)
!701 = !DIEnumerator(name: "OPT_ftree_switch_conversion", value: 672, isUnsigned: true)
!702 = !DIEnumerator(name: "OPT_ftree_ter", value: 673, isUnsigned: true)
!703 = !DIEnumerator(name: "OPT_ftree_vect_loop_version", value: 674, isUnsigned: true)
!704 = !DIEnumerator(name: "OPT_ftree_vectorize", value: 675, isUnsigned: true)
!705 = !DIEnumerator(name: "OPT_ftree_vectorizer_verbose_", value: 676, isUnsigned: true)
!706 = !DIEnumerator(name: "OPT_ftree_vrp", value: 677, isUnsigned: true)
!707 = !DIEnumerator(name: "OPT_funderscoring", value: 678, isUnsigned: true)
!708 = !DIEnumerator(name: "OPT_funit_at_a_time", value: 679, isUnsigned: true)
!709 = !DIEnumerator(name: "OPT_funroll_all_loops", value: 680, isUnsigned: true)
!710 = !DIEnumerator(name: "OPT_funroll_loops", value: 681, isUnsigned: true)
!711 = !DIEnumerator(name: "OPT_funsafe_loop_optimizations", value: 682, isUnsigned: true)
!712 = !DIEnumerator(name: "OPT_funsafe_math_optimizations", value: 683, isUnsigned: true)
!713 = !DIEnumerator(name: "OPT_funsigned_bitfields", value: 684, isUnsigned: true)
!714 = !DIEnumerator(name: "OPT_funsigned_char", value: 685, isUnsigned: true)
!715 = !DIEnumerator(name: "OPT_funswitch_loops", value: 686, isUnsigned: true)
!716 = !DIEnumerator(name: "OPT_funwind_tables", value: 687, isUnsigned: true)
!717 = !DIEnumerator(name: "OPT_fuse_atomic_builtins", value: 688, isUnsigned: true)
!718 = !DIEnumerator(name: "OPT_fuse_boehm_gc", value: 689, isUnsigned: true)
!719 = !DIEnumerator(name: "OPT_fuse_cxa_atexit", value: 690, isUnsigned: true)
!720 = !DIEnumerator(name: "OPT_fuse_cxa_get_exception_ptr", value: 691, isUnsigned: true)
!721 = !DIEnumerator(name: "OPT_fuse_divide_subroutine", value: 692, isUnsigned: true)
!722 = !DIEnumerator(name: "OPT_fuse_linker_plugin", value: 693, isUnsigned: true)
!723 = !DIEnumerator(name: "OPT_fvar_tracking", value: 694, isUnsigned: true)
!724 = !DIEnumerator(name: "OPT_fvar_tracking_assignments", value: 695, isUnsigned: true)
!725 = !DIEnumerator(name: "OPT_fvar_tracking_assignments_toggle", value: 696, isUnsigned: true)
!726 = !DIEnumerator(name: "OPT_fvar_tracking_uninit", value: 697, isUnsigned: true)
!727 = !DIEnumerator(name: "OPT_fvariable_expansion_in_unroller", value: 698, isUnsigned: true)
!728 = !DIEnumerator(name: "OPT_fvect_cost_model", value: 699, isUnsigned: true)
!729 = !DIEnumerator(name: "OPT_fverbose_asm", value: 700, isUnsigned: true)
!730 = !DIEnumerator(name: "OPT_fversion", value: 701, isUnsigned: true)
!731 = !DIEnumerator(name: "OPT_fvisibility_inlines_hidden", value: 702, isUnsigned: true)
!732 = !DIEnumerator(name: "OPT_fvisibility_ms_compat", value: 703, isUnsigned: true)
!733 = !DIEnumerator(name: "OPT_fvisibility_", value: 704, isUnsigned: true)
!734 = !DIEnumerator(name: "OPT_fvpt", value: 705, isUnsigned: true)
!735 = !DIEnumerator(name: "OPT_fvtable_gc", value: 706, isUnsigned: true)
!736 = !DIEnumerator(name: "OPT_fvtable_thunks", value: 707, isUnsigned: true)
!737 = !DIEnumerator(name: "OPT_fweak", value: 708, isUnsigned: true)
!738 = !DIEnumerator(name: "OPT_fweb", value: 709, isUnsigned: true)
!739 = !DIEnumerator(name: "OPT_fwhole_file", value: 710, isUnsigned: true)
!740 = !DIEnumerator(name: "OPT_fwhole_program", value: 711, isUnsigned: true)
!741 = !DIEnumerator(name: "OPT_fwhopr", value: 712, isUnsigned: true)
!742 = !DIEnumerator(name: "OPT_fwide_exec_charset_", value: 713, isUnsigned: true)
!743 = !DIEnumerator(name: "OPT_fworking_directory", value: 714, isUnsigned: true)
!744 = !DIEnumerator(name: "OPT_fwpa", value: 715, isUnsigned: true)
!745 = !DIEnumerator(name: "OPT_fwrapv", value: 716, isUnsigned: true)
!746 = !DIEnumerator(name: "OPT_fxref", value: 717, isUnsigned: true)
!747 = !DIEnumerator(name: "OPT_fzero_initialized_in_bss", value: 718, isUnsigned: true)
!748 = !DIEnumerator(name: "OPT_fzero_link", value: 719, isUnsigned: true)
!749 = !DIEnumerator(name: "OPT_g", value: 720, isUnsigned: true)
!750 = !DIEnumerator(name: "OPT_gant", value: 721, isUnsigned: true)
!751 = !DIEnumerator(name: "OPT_gcoff", value: 722, isUnsigned: true)
!752 = !DIEnumerator(name: "OPT_gdwarfplus", value: 723, isUnsigned: true)
!753 = !DIEnumerator(name: "OPT_gdwarf_", value: 724, isUnsigned: true)
!754 = !DIEnumerator(name: "OPT_gen_decls", value: 725, isUnsigned: true)
!755 = !DIEnumerator(name: "OPT_ggdb", value: 726, isUnsigned: true)
!756 = !DIEnumerator(name: "OPT_gnat", value: 727, isUnsigned: true)
!757 = !DIEnumerator(name: "OPT_gnatO", value: 728, isUnsigned: true)
!758 = !DIEnumerator(name: "OPT_gno_strict_dwarf", value: 729, isUnsigned: true)
!759 = !DIEnumerator(name: "OPT_gstabs", value: 730, isUnsigned: true)
!760 = !DIEnumerator(name: "OPT_gstabs_", value: 731, isUnsigned: true)
!761 = !DIEnumerator(name: "OPT_gstrict_dwarf", value: 732, isUnsigned: true)
!762 = !DIEnumerator(name: "OPT_gtoggle", value: 733, isUnsigned: true)
!763 = !DIEnumerator(name: "OPT_gvms", value: 734, isUnsigned: true)
!764 = !DIEnumerator(name: "OPT_gxcoff", value: 735, isUnsigned: true)
!765 = !DIEnumerator(name: "OPT_gxcoff_", value: 736, isUnsigned: true)
!766 = !DIEnumerator(name: "OPT_idirafter", value: 737, isUnsigned: true)
!767 = !DIEnumerator(name: "OPT_imacros", value: 738, isUnsigned: true)
!768 = !DIEnumerator(name: "OPT_imultilib", value: 739, isUnsigned: true)
!769 = !DIEnumerator(name: "OPT_include", value: 740, isUnsigned: true)
!770 = !DIEnumerator(name: "OPT_iprefix", value: 741, isUnsigned: true)
!771 = !DIEnumerator(name: "OPT_iquote", value: 742, isUnsigned: true)
!772 = !DIEnumerator(name: "OPT_isysroot", value: 743, isUnsigned: true)
!773 = !DIEnumerator(name: "OPT_isystem", value: 744, isUnsigned: true)
!774 = !DIEnumerator(name: "OPT_iwithprefix", value: 745, isUnsigned: true)
!775 = !DIEnumerator(name: "OPT_iwithprefixbefore", value: 746, isUnsigned: true)
!776 = !DIEnumerator(name: "OPT_lang_asm", value: 747, isUnsigned: true)
!777 = !DIEnumerator(name: "OPT_lang_objc", value: 748, isUnsigned: true)
!778 = !DIEnumerator(name: "OPT_m128bit_long_double", value: 749, isUnsigned: true)
!779 = !DIEnumerator(name: "OPT_m32", value: 750, isUnsigned: true)
!780 = !DIEnumerator(name: "OPT_m3dnow", value: 751, isUnsigned: true)
!781 = !DIEnumerator(name: "OPT_m3dnowa", value: 752, isUnsigned: true)
!782 = !DIEnumerator(name: "OPT_m64", value: 753, isUnsigned: true)
!783 = !DIEnumerator(name: "OPT_m80387", value: 754, isUnsigned: true)
!784 = !DIEnumerator(name: "OPT_m96bit_long_double", value: 755, isUnsigned: true)
!785 = !DIEnumerator(name: "OPT_mabi_", value: 756, isUnsigned: true)
!786 = !DIEnumerator(name: "OPT_mabm", value: 757, isUnsigned: true)
!787 = !DIEnumerator(name: "OPT_maccumulate_outgoing_args", value: 758, isUnsigned: true)
!788 = !DIEnumerator(name: "OPT_maes", value: 759, isUnsigned: true)
!789 = !DIEnumerator(name: "OPT_malign_double", value: 760, isUnsigned: true)
!790 = !DIEnumerator(name: "OPT_malign_functions_", value: 761, isUnsigned: true)
!791 = !DIEnumerator(name: "OPT_malign_jumps_", value: 762, isUnsigned: true)
!792 = !DIEnumerator(name: "OPT_malign_loops_", value: 763, isUnsigned: true)
!793 = !DIEnumerator(name: "OPT_malign_stringops", value: 764, isUnsigned: true)
!794 = !DIEnumerator(name: "OPT_march_", value: 765, isUnsigned: true)
!795 = !DIEnumerator(name: "OPT_masm_", value: 766, isUnsigned: true)
!796 = !DIEnumerator(name: "OPT_mavx", value: 767, isUnsigned: true)
!797 = !DIEnumerator(name: "OPT_mbranch_cost_", value: 768, isUnsigned: true)
!798 = !DIEnumerator(name: "OPT_mcld", value: 769, isUnsigned: true)
!799 = !DIEnumerator(name: "OPT_mcmodel_", value: 770, isUnsigned: true)
!800 = !DIEnumerator(name: "OPT_mcrc32", value: 771, isUnsigned: true)
!801 = !DIEnumerator(name: "OPT_mcx16", value: 772, isUnsigned: true)
!802 = !DIEnumerator(name: "OPT_mfancy_math_387", value: 773, isUnsigned: true)
!803 = !DIEnumerator(name: "OPT_mfma", value: 774, isUnsigned: true)
!804 = !DIEnumerator(name: "OPT_mfma4", value: 775, isUnsigned: true)
!805 = !DIEnumerator(name: "OPT_mforce_drap", value: 776, isUnsigned: true)
!806 = !DIEnumerator(name: "OPT_mfp_ret_in_387", value: 777, isUnsigned: true)
!807 = !DIEnumerator(name: "OPT_mfpmath_", value: 778, isUnsigned: true)
!808 = !DIEnumerator(name: "OPT_mfused_madd", value: 779, isUnsigned: true)
!809 = !DIEnumerator(name: "OPT_mglibc", value: 780, isUnsigned: true)
!810 = !DIEnumerator(name: "OPT_mhard_float", value: 781, isUnsigned: true)
!811 = !DIEnumerator(name: "OPT_mieee_fp", value: 782, isUnsigned: true)
!812 = !DIEnumerator(name: "OPT_mincoming_stack_boundary_", value: 783, isUnsigned: true)
!813 = !DIEnumerator(name: "OPT_minline_all_stringops", value: 784, isUnsigned: true)
!814 = !DIEnumerator(name: "OPT_minline_stringops_dynamically", value: 785, isUnsigned: true)
!815 = !DIEnumerator(name: "OPT_mintel_syntax", value: 786, isUnsigned: true)
!816 = !DIEnumerator(name: "OPT_mlarge_data_threshold_", value: 787, isUnsigned: true)
!817 = !DIEnumerator(name: "OPT_mlwp", value: 788, isUnsigned: true)
!818 = !DIEnumerator(name: "OPT_mmmx", value: 789, isUnsigned: true)
!819 = !DIEnumerator(name: "OPT_mmovbe", value: 790, isUnsigned: true)
!820 = !DIEnumerator(name: "OPT_mms_bitfields", value: 791, isUnsigned: true)
!821 = !DIEnumerator(name: "OPT_mno_align_stringops", value: 792, isUnsigned: true)
!822 = !DIEnumerator(name: "OPT_mno_fancy_math_387", value: 793, isUnsigned: true)
!823 = !DIEnumerator(name: "OPT_mno_push_args", value: 794, isUnsigned: true)
!824 = !DIEnumerator(name: "OPT_mno_red_zone", value: 795, isUnsigned: true)
!825 = !DIEnumerator(name: "OPT_mno_sse4", value: 796, isUnsigned: true)
!826 = !DIEnumerator(name: "OPT_momit_leaf_frame_pointer", value: 797, isUnsigned: true)
!827 = !DIEnumerator(name: "OPT_mpc", value: 798, isUnsigned: true)
!828 = !DIEnumerator(name: "OPT_mpclmul", value: 799, isUnsigned: true)
!829 = !DIEnumerator(name: "OPT_mpopcnt", value: 800, isUnsigned: true)
!830 = !DIEnumerator(name: "OPT_mpreferred_stack_boundary_", value: 801, isUnsigned: true)
!831 = !DIEnumerator(name: "OPT_mpush_args", value: 802, isUnsigned: true)
!832 = !DIEnumerator(name: "OPT_mrecip", value: 803, isUnsigned: true)
!833 = !DIEnumerator(name: "OPT_mred_zone", value: 804, isUnsigned: true)
!834 = !DIEnumerator(name: "OPT_mregparm_", value: 805, isUnsigned: true)
!835 = !DIEnumerator(name: "OPT_mrtd", value: 806, isUnsigned: true)
!836 = !DIEnumerator(name: "OPT_msahf", value: 807, isUnsigned: true)
!837 = !DIEnumerator(name: "OPT_msoft_float", value: 808, isUnsigned: true)
!838 = !DIEnumerator(name: "OPT_msse", value: 809, isUnsigned: true)
!839 = !DIEnumerator(name: "OPT_msse2", value: 810, isUnsigned: true)
!840 = !DIEnumerator(name: "OPT_msse2avx", value: 811, isUnsigned: true)
!841 = !DIEnumerator(name: "OPT_msse3", value: 812, isUnsigned: true)
!842 = !DIEnumerator(name: "OPT_msse4", value: 813, isUnsigned: true)
!843 = !DIEnumerator(name: "OPT_msse4_1", value: 814, isUnsigned: true)
!844 = !DIEnumerator(name: "OPT_msse4_2", value: 815, isUnsigned: true)
!845 = !DIEnumerator(name: "OPT_msse4a", value: 816, isUnsigned: true)
!846 = !DIEnumerator(name: "OPT_msseregparm", value: 817, isUnsigned: true)
!847 = !DIEnumerator(name: "OPT_mssse3", value: 818, isUnsigned: true)
!848 = !DIEnumerator(name: "OPT_mstack_arg_probe", value: 819, isUnsigned: true)
!849 = !DIEnumerator(name: "OPT_mstackrealign", value: 820, isUnsigned: true)
!850 = !DIEnumerator(name: "OPT_mstringop_strategy_", value: 821, isUnsigned: true)
!851 = !DIEnumerator(name: "OPT_mtls_dialect_", value: 822, isUnsigned: true)
!852 = !DIEnumerator(name: "OPT_mtls_direct_seg_refs", value: 823, isUnsigned: true)
!853 = !DIEnumerator(name: "OPT_mtune_", value: 824, isUnsigned: true)
!854 = !DIEnumerator(name: "OPT_muclibc", value: 825, isUnsigned: true)
!855 = !DIEnumerator(name: "OPT_mveclibabi_", value: 826, isUnsigned: true)
!856 = !DIEnumerator(name: "OPT_mxop", value: 827, isUnsigned: true)
!857 = !DIEnumerator(name: "OPT_nocpp", value: 828, isUnsigned: true)
!858 = !DIEnumerator(name: "OPT_nostdinc", value: 829, isUnsigned: true)
!859 = !DIEnumerator(name: "OPT_nostdinc__", value: 830, isUnsigned: true)
!860 = !DIEnumerator(name: "OPT_nostdlib", value: 831, isUnsigned: true)
!861 = !DIEnumerator(name: "OPT_o", value: 832, isUnsigned: true)
!862 = !DIEnumerator(name: "OPT_p", value: 833, isUnsigned: true)
!863 = !DIEnumerator(name: "OPT_pedantic", value: 834, isUnsigned: true)
!864 = !DIEnumerator(name: "OPT_pedantic_errors", value: 835, isUnsigned: true)
!865 = !DIEnumerator(name: "OPT_pie", value: 836, isUnsigned: true)
!866 = !DIEnumerator(name: "OPT_print_objc_runtime_info", value: 837, isUnsigned: true)
!867 = !DIEnumerator(name: "OPT_print_pch_checksum", value: 838, isUnsigned: true)
!868 = !DIEnumerator(name: "OPT_quiet", value: 839, isUnsigned: true)
!869 = !DIEnumerator(name: "OPT_remap", value: 840, isUnsigned: true)
!870 = !DIEnumerator(name: "OPT_shared", value: 841, isUnsigned: true)
!871 = !DIEnumerator(name: "OPT_static_libgfortran", value: 842, isUnsigned: true)
!872 = !DIEnumerator(name: "OPT_std_c__0x", value: 843, isUnsigned: true)
!873 = !DIEnumerator(name: "OPT_std_c__98", value: 844, isUnsigned: true)
!874 = !DIEnumerator(name: "OPT_std_c89", value: 845, isUnsigned: true)
!875 = !DIEnumerator(name: "OPT_std_c90", value: 846, isUnsigned: true)
!876 = !DIEnumerator(name: "OPT_std_c99", value: 847, isUnsigned: true)
!877 = !DIEnumerator(name: "OPT_std_c9x", value: 848, isUnsigned: true)
!878 = !DIEnumerator(name: "OPT_std_f2003", value: 849, isUnsigned: true)
!879 = !DIEnumerator(name: "OPT_std_f2008", value: 850, isUnsigned: true)
!880 = !DIEnumerator(name: "OPT_std_f95", value: 851, isUnsigned: true)
!881 = !DIEnumerator(name: "OPT_std_gnu", value: 852, isUnsigned: true)
!882 = !DIEnumerator(name: "OPT_std_gnu__0x", value: 853, isUnsigned: true)
!883 = !DIEnumerator(name: "OPT_std_gnu__98", value: 854, isUnsigned: true)
!884 = !DIEnumerator(name: "OPT_std_gnu89", value: 855, isUnsigned: true)
!885 = !DIEnumerator(name: "OPT_std_gnu90", value: 856, isUnsigned: true)
!886 = !DIEnumerator(name: "OPT_std_gnu99", value: 857, isUnsigned: true)
!887 = !DIEnumerator(name: "OPT_std_gnu9x", value: 858, isUnsigned: true)
!888 = !DIEnumerator(name: "OPT_std_iso9899_1990", value: 859, isUnsigned: true)
!889 = !DIEnumerator(name: "OPT_std_iso9899_199409", value: 860, isUnsigned: true)
!890 = !DIEnumerator(name: "OPT_std_iso9899_1999", value: 861, isUnsigned: true)
!891 = !DIEnumerator(name: "OPT_std_iso9899_199x", value: 862, isUnsigned: true)
!892 = !DIEnumerator(name: "OPT_std_legacy", value: 863, isUnsigned: true)
!893 = !DIEnumerator(name: "OPT_traditional_cpp", value: 864, isUnsigned: true)
!894 = !DIEnumerator(name: "OPT_trigraphs", value: 865, isUnsigned: true)
!895 = !DIEnumerator(name: "OPT_undef", value: 866, isUnsigned: true)
!896 = !DIEnumerator(name: "OPT_v", value: 867, isUnsigned: true)
!897 = !DIEnumerator(name: "OPT_version", value: 868, isUnsigned: true)
!898 = !DIEnumerator(name: "OPT_w", value: 869, isUnsigned: true)
!899 = !DIEnumerator(name: "N_OPTS", value: 870, isUnsigned: true)
!900 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cl_var_type", file: !901, line: 25, baseType: !6, size: 32, elements: !902)
!901 = !DIFile(filename: "./opts.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!902 = !{!903, !904, !905, !906, !907}
!903 = !DIEnumerator(name: "CLVC_BOOLEAN", value: 0, isUnsigned: true)
!904 = !DIEnumerator(name: "CLVC_EQUAL", value: 1, isUnsigned: true)
!905 = !DIEnumerator(name: "CLVC_BIT_CLEAR", value: 2, isUnsigned: true)
!906 = !DIEnumerator(name: "CLVC_BIT_SET", value: 3, isUnsigned: true)
!907 = !DIEnumerator(name: "CLVC_STRING", value: 4, isUnsigned: true)
!908 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_lang", file: !14, line: 158, baseType: !6, size: 32, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918, !919}
!910 = !DIEnumerator(name: "CLK_GNUC89", value: 0, isUnsigned: true)
!911 = !DIEnumerator(name: "CLK_GNUC99", value: 1, isUnsigned: true)
!912 = !DIEnumerator(name: "CLK_STDC89", value: 2, isUnsigned: true)
!913 = !DIEnumerator(name: "CLK_STDC94", value: 3, isUnsigned: true)
!914 = !DIEnumerator(name: "CLK_STDC99", value: 4, isUnsigned: true)
!915 = !DIEnumerator(name: "CLK_GNUCXX", value: 5, isUnsigned: true)
!916 = !DIEnumerator(name: "CLK_CXX98", value: 6, isUnsigned: true)
!917 = !DIEnumerator(name: "CLK_GNUCXX0X", value: 7, isUnsigned: true)
!918 = !DIEnumerator(name: "CLK_CXX0X", value: 8, isUnsigned: true)
!919 = !DIEnumerator(name: "CLK_ASM", value: 9, isUnsigned: true)
!920 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_normalize_level", file: !14, line: 265, baseType: !6, size: 32, elements: !921)
!921 = !{!922, !923, !924, !925}
!922 = !DIEnumerator(name: "normalized_KC", value: 0, isUnsigned: true)
!923 = !DIEnumerator(name: "normalized_C", value: 1, isUnsigned: true)
!924 = !DIEnumerator(name: "normalized_identifier_C", value: 2, isUnsigned: true)
!925 = !DIEnumerator(name: "normalized_none", value: 3, isUnsigned: true)
!926 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_deps_style", file: !14, line: 262, baseType: !6, size: 32, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIEnumerator(name: "DEPS_NONE", value: 0, isUnsigned: true)
!929 = !DIEnumerator(name: "DEPS_USER", value: 1, isUnsigned: true)
!930 = !DIEnumerator(name: "DEPS_SYSTEM", value: 2, isUnsigned: true)
!931 = !{!932, !933, !934, !935, !937, !8, !938, !26, !7, !943, !936}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!934 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deferred_opt", file: !3, line: 131, size: 128, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !939, file: !3, line: 133, baseType: !26, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !939, file: !3, line: 134, baseType: !8, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !944, line: 44, baseType: !6)
!944 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!945 = !{!0, !946, !1015, !1017, !1019, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1091, !1093, !1095, !1097, !1099, !1101, !1103, !1105}
!946 = !DIGlobalVariableExpression(var: !947, expr: !DIExpression())
!947 = distinct !DIGlobalVariable(name: "cpp_opts", scope: !11, file: !3, line: 58, type: !948, isLocal: false, isDefinition: true)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_options", file: !14, line: 33, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !14, line: 279, size: 1024, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !1003, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !950, file: !14, line: 282, baseType: !6, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !950, file: !14, line: 285, baseType: !908, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !950, file: !14, line: 288, baseType: !933, size: 8, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !950, file: !14, line: 291, baseType: !933, size: 8, offset: 72)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !950, file: !14, line: 296, baseType: !933, size: 8, offset: 80)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !950, file: !14, line: 299, baseType: !933, size: 8, offset: 88)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !950, file: !14, line: 303, baseType: !933, size: 8, offset: 96)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !950, file: !14, line: 306, baseType: !933, size: 8, offset: 104)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !950, file: !14, line: 309, baseType: !933, size: 8, offset: 112)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !950, file: !14, line: 312, baseType: !933, size: 8, offset: 120)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !950, file: !14, line: 315, baseType: !933, size: 8, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !950, file: !14, line: 318, baseType: !933, size: 8, offset: 136)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !950, file: !14, line: 321, baseType: !933, size: 8, offset: 144)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !950, file: !14, line: 324, baseType: !933, size: 8, offset: 152)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !950, file: !14, line: 328, baseType: !933, size: 8, offset: 160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !950, file: !14, line: 331, baseType: !933, size: 8, offset: 168)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !950, file: !14, line: 334, baseType: !933, size: 8, offset: 176)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !950, file: !14, line: 338, baseType: !933, size: 8, offset: 184)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !950, file: !14, line: 341, baseType: !933, size: 8, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !950, file: !14, line: 344, baseType: !933, size: 8, offset: 200)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !950, file: !14, line: 348, baseType: !933, size: 8, offset: 208)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !950, file: !14, line: 352, baseType: !933, size: 8, offset: 216)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !950, file: !14, line: 356, baseType: !933, size: 8, offset: 224)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !950, file: !14, line: 360, baseType: !933, size: 8, offset: 232)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !950, file: !14, line: 363, baseType: !933, size: 8, offset: 240)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !950, file: !14, line: 366, baseType: !933, size: 8, offset: 248)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !950, file: !14, line: 370, baseType: !933, size: 8, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !950, file: !14, line: 373, baseType: !933, size: 8, offset: 264)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !950, file: !14, line: 376, baseType: !933, size: 8, offset: 272)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !950, file: !14, line: 379, baseType: !933, size: 8, offset: 280)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !950, file: !14, line: 382, baseType: !933, size: 8, offset: 288)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !950, file: !14, line: 385, baseType: !933, size: 8, offset: 296)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !950, file: !14, line: 389, baseType: !933, size: 8, offset: 304)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !950, file: !14, line: 392, baseType: !933, size: 8, offset: 312)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !950, file: !14, line: 395, baseType: !933, size: 8, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !950, file: !14, line: 398, baseType: !933, size: 8, offset: 328)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !950, file: !14, line: 401, baseType: !933, size: 8, offset: 336)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !950, file: !14, line: 404, baseType: !8, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !950, file: !14, line: 407, baseType: !8, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !950, file: !14, line: 410, baseType: !8, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !950, file: !14, line: 414, baseType: !920, size: 32, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !950, file: !14, line: 417, baseType: !933, size: 8, offset: 608)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !950, file: !14, line: 420, baseType: !933, size: 8, offset: 616)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !950, file: !14, line: 441, baseType: !996, size: 64, offset: 640)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !14, line: 423, size: 64, elements: !997)
!997 = !{!998, !999, !1000, !1001, !1002}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !996, file: !14, line: 426, baseType: !926, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !996, file: !14, line: 429, baseType: !933, size: 8, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !996, file: !14, line: 433, baseType: !933, size: 8, offset: 40)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !996, file: !14, line: 436, baseType: !933, size: 8, offset: 48)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !996, file: !14, line: 440, baseType: !933, size: 8, offset: 56)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !950, file: !14, line: 447, baseType: !1004, size: 64, offset: 704)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1005, line: 46, baseType: !1006)
!1005 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1006 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !950, file: !14, line: 447, baseType: !1004, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !950, file: !14, line: 447, baseType: !1004, size: 64, offset: 832)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !950, file: !14, line: 447, baseType: !1004, size: 64, offset: 896)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !950, file: !14, line: 450, baseType: !933, size: 8, offset: 960)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !950, file: !14, line: 450, baseType: !933, size: 8, offset: 968)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !950, file: !14, line: 454, baseType: !933, size: 8, offset: 976)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !950, file: !14, line: 457, baseType: !933, size: 8, offset: 984)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !950, file: !14, line: 460, baseType: !933, size: 8, offset: 992)
!1015 = !DIGlobalVariableExpression(var: !1016, expr: !DIExpression())
!1016 = distinct !DIGlobalVariable(name: "this_input_filename", scope: !11, file: !3, line: 61, type: !8, isLocal: true, isDefinition: true)
!1017 = !DIGlobalVariableExpression(var: !1018, expr: !DIExpression())
!1018 = distinct !DIGlobalVariable(name: "out_fname", scope: !11, file: !3, line: 64, type: !8, isLocal: true, isDefinition: true)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression())
!1020 = distinct !DIGlobalVariable(name: "out_stream", scope: !11, file: !3, line: 65, type: !1021, isLocal: true, isDefinition: true)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1023, line: 7, baseType: !1024)
!1023 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1025, line: 49, size: 1728, elements: !1026)
!1025 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1042, !1044, !1045, !1046, !1050, !1052, !1054, !1058, !1061, !1063, !1066, !1069, !1070, !1071, !1072, !1073}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1024, file: !1025, line: 51, baseType: !934, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1024, file: !1025, line: 54, baseType: !936, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1024, file: !1025, line: 55, baseType: !936, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1024, file: !1025, line: 56, baseType: !936, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1024, file: !1025, line: 57, baseType: !936, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1024, file: !1025, line: 58, baseType: !936, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1024, file: !1025, line: 59, baseType: !936, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1024, file: !1025, line: 60, baseType: !936, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1024, file: !1025, line: 61, baseType: !936, size: 64, offset: 512)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1024, file: !1025, line: 64, baseType: !936, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1024, file: !1025, line: 65, baseType: !936, size: 64, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1024, file: !1025, line: 66, baseType: !936, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1024, file: !1025, line: 68, baseType: !1040, size: 64, offset: 768)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1025, line: 36, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1024, file: !1025, line: 70, baseType: !1043, size: 64, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1024, file: !1025, line: 72, baseType: !934, size: 32, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1024, file: !1025, line: 73, baseType: !934, size: 32, offset: 928)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1024, file: !1025, line: 74, baseType: !1047, size: 64, offset: 960)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1048, line: 152, baseType: !1049)
!1048 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1049 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1024, file: !1025, line: 77, baseType: !1051, size: 16, offset: 1024)
!1051 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1024, file: !1025, line: 78, baseType: !1053, size: 8, offset: 1040)
!1053 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1024, file: !1025, line: 79, baseType: !1055, size: 8, offset: 1048)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 1)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1024, file: !1025, line: 81, baseType: !1059, size: 64, offset: 1088)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1025, line: 43, baseType: null)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1024, file: !1025, line: 89, baseType: !1062, size: 64, offset: 1152)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1048, line: 153, baseType: !1049)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1024, file: !1025, line: 91, baseType: !1064, size: 64, offset: 1216)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1025, line: 37, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1024, file: !1025, line: 92, baseType: !1067, size: 64, offset: 1280)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1025, line: 38, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1024, file: !1025, line: 93, baseType: !1043, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1024, file: !1025, line: 94, baseType: !937, size: 64, offset: 1408)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1024, file: !1025, line: 95, baseType: !1004, size: 64, offset: 1472)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1024, file: !1025, line: 96, baseType: !934, size: 32, offset: 1536)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1024, file: !1025, line: 98, baseType: !1074, size: 160, offset: 1568)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !1075)
!1075 = !{!1076}
!1076 = !DISubrange(count: 20)
!1077 = !DIGlobalVariableExpression(var: !1078, expr: !DIExpression())
!1078 = distinct !DIGlobalVariable(name: "deps_append", scope: !11, file: !3, line: 68, type: !933, isLocal: true, isDefinition: true)
!1079 = !DIGlobalVariableExpression(var: !1080, expr: !DIExpression())
!1080 = distinct !DIGlobalVariable(name: "deps_seen", scope: !11, file: !3, line: 71, type: !933, isLocal: true, isDefinition: true)
!1081 = !DIGlobalVariableExpression(var: !1082, expr: !DIExpression())
!1082 = distinct !DIGlobalVariable(name: "verbose", scope: !11, file: !3, line: 74, type: !933, isLocal: true, isDefinition: true)
!1083 = !DIGlobalVariableExpression(var: !1084, expr: !DIExpression())
!1084 = distinct !DIGlobalVariable(name: "deps_file", scope: !11, file: !3, line: 77, type: !8, isLocal: true, isDefinition: true)
!1085 = !DIGlobalVariableExpression(var: !1086, expr: !DIExpression())
!1086 = distinct !DIGlobalVariable(name: "iprefix", scope: !11, file: !3, line: 80, type: !8, isLocal: true, isDefinition: true)
!1087 = !DIGlobalVariableExpression(var: !1088, expr: !DIExpression())
!1088 = distinct !DIGlobalVariable(name: "imultilib", scope: !11, file: !3, line: 83, type: !8, isLocal: true, isDefinition: true)
!1089 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression())
!1090 = distinct !DIGlobalVariable(name: "quote_chain_split", scope: !11, file: !3, line: 95, type: !933, isLocal: true, isDefinition: true)
!1091 = !DIGlobalVariableExpression(var: !1092, expr: !DIExpression())
!1092 = distinct !DIGlobalVariable(name: "warn_unused_macros", scope: !11, file: !3, line: 98, type: !933, isLocal: true, isDefinition: true)
!1093 = !DIGlobalVariableExpression(var: !1094, expr: !DIExpression())
!1094 = distinct !DIGlobalVariable(name: "deferred_opts", scope: !11, file: !3, line: 135, type: !938, isLocal: true, isDefinition: true)
!1095 = !DIGlobalVariableExpression(var: !1096, expr: !DIExpression())
!1096 = distinct !DIGlobalVariable(name: "deferred_count", scope: !11, file: !3, line: 104, type: !1004, isLocal: true, isDefinition: true)
!1097 = !DIGlobalVariableExpression(var: !1098, expr: !DIExpression())
!1098 = distinct !DIGlobalVariable(name: "warn_variadic_macros", scope: !11, file: !3, line: 101, type: !933, isLocal: true, isDefinition: true)
!1099 = !DIGlobalVariableExpression(var: !1100, expr: !DIExpression())
!1100 = distinct !DIGlobalVariable(name: "sysroot", scope: !11, file: !3, line: 86, type: !8, isLocal: true, isDefinition: true)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression())
!1102 = distinct !DIGlobalVariable(name: "std_inc", scope: !11, file: !3, line: 89, type: !933, isLocal: true, isDefinition: true)
!1103 = !DIGlobalVariableExpression(var: !1104, expr: !DIExpression())
!1104 = distinct !DIGlobalVariable(name: "std_cxx_inc", scope: !11, file: !3, line: 92, type: !933, isLocal: true, isDefinition: true)
!1105 = !DIGlobalVariableExpression(var: !1106, expr: !DIExpression())
!1106 = distinct !DIGlobalVariable(name: "include_cursor", scope: !11, file: !3, line: 107, type: !1004, isLocal: true, isDefinition: true)
!1107 = !{!1108, !1109, !1110, !1111, !1112}
!1108 = !DILocalVariable(name: "argc", arg: 1, scope: !2, file: !3, line: 201, type: !6)
!1109 = !DILocalVariable(name: "argv", arg: 2, scope: !2, file: !3, line: 201, type: !7)
!1110 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 204, type: !6)
!1111 = !DILocalVariable(name: "result", scope: !2, file: !3, line: 204, type: !6)
!1112 = !DILocalVariable(name: "cb", scope: !2, file: !3, line: 205, type: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !14, line: 472, size: 1088, elements: !1115)
!1115 = !{!1116, !1182, !1198, !1202, !1207, !1211, !1212, !1219, !1223, !1227, !1231, !1260, !1264, !1281, !1282, !1283, !1287}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !1114, file: !14, line: 475, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !1120, !1124, !934}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !14, line: 31, baseType: !1122)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !1123, line: 91, flags: DIFlagFwdDecl)
!1123 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !14, line: 34, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !14, line: 212, size: 192, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !1127, file: !14, line: 213, baseType: !943, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1127, file: !14, line: 214, baseType: !6, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !14, line: 215, baseType: !1051, size: 16, offset: 48)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1127, file: !14, line: 237, baseType: !1133, size: 128, offset: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !14, line: 217, size: 128, elements: !1134)
!1134 = !{!1135, !1169, !1171, !1176, !1180, !1181}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1133, file: !14, line: 220, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !14, line: 201, size: 64, elements: !1137)
!1137 = !{!1138}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1136, file: !14, line: 207, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !14, line: 36, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !14, line: 644, size: 256, elements: !1142)
!1142 = !{!1143, !1152, !1153, !1154, !1155, !1156, !1157}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1141, file: !14, line: 645, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1145, line: 31, size: 128, elements: !1146)
!1145 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1146 = !{!1147, !1150, !1151}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1144, file: !1145, line: 32, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1144, file: !1145, line: 33, baseType: !6, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1144, file: !1145, line: 34, baseType: !6, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !1141, file: !14, line: 646, baseType: !6, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !1141, file: !14, line: 647, baseType: !6, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !1141, file: !14, line: 650, baseType: !933, size: 8, offset: 136)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1141, file: !14, line: 651, baseType: !6, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !14, line: 652, baseType: !6, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1141, file: !14, line: 654, baseType: !1158, size: 64, offset: 192)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !14, line: 633, size: 64, elements: !1159)
!1159 = !{!1160, !1164, !1167, !1168}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !1158, file: !14, line: 635, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !14, line: 37, baseType: !1163)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !14, line: 37, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !1158, file: !14, line: 637, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !14, line: 41, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !1158, file: !14, line: 639, baseType: !13, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !1158, file: !14, line: 641, baseType: !1051, size: 16)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1133, file: !14, line: 223, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1133, file: !14, line: 226, baseType: !1172, size: 128)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !14, line: 162, size: 128, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1172, file: !14, line: 163, baseType: !6, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !1172, file: !14, line: 164, baseType: !1148, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !1133, file: !14, line: 229, baseType: !1177, size: 32)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !14, line: 195, size: 32, elements: !1178)
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !1177, file: !14, line: 197, baseType: !6, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !1133, file: !14, line: 233, baseType: !6, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !1133, file: !14, line: 236, baseType: !6, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !1114, file: !14, line: 481, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !1120, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !944, line: 61, size: 192, elements: !1189)
!1189 = !{!1190, !1191, !1193, !1194, !1195, !1196, !1197}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !1188, file: !944, line: 62, baseType: !8, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !1188, file: !944, line: 63, baseType: !1192, size: 32, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !944, line: 39, baseType: !6)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !1188, file: !944, line: 64, baseType: !943, size: 32, offset: 96)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !1188, file: !944, line: 65, baseType: !934, size: 32, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1188, file: !944, line: 66, baseType: !6, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !1188, file: !944, line: 68, baseType: !933, size: 8, offset: 168)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !1188, file: !944, line: 70, baseType: !6, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !1114, file: !14, line: 483, baseType: !1199, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !1120, !8}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !1114, file: !14, line: 484, baseType: !1203, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1120, !6, !1148, !8, !934, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !1114, file: !14, line: 486, baseType: !1208, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !1120, !6, !1139}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !1114, file: !14, line: 487, baseType: !1208, size: 64, offset: 320)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1114, file: !14, line: 488, baseType: !1213, size: 64, offset: 384)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1120, !6, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !14, line: 35, baseType: !1172)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !1114, file: !14, line: 489, baseType: !1220, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1120, !6}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !1114, file: !14, line: 490, baseType: !1224, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!934, !1120, !8, !934}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !1114, file: !14, line: 491, baseType: !1228, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1120, !8, !934, !8}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !1114, file: !14, line: 492, baseType: !1232, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !14, line: 469, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!8, !1120, !8, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !14, line: 39, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !14, line: 523, size: 512, elements: !1240)
!1240 = !{!1241, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1253, !1257}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1239, file: !14, line: 526, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1239, file: !14, line: 529, baseType: !936, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1239, file: !14, line: 530, baseType: !6, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !1239, file: !14, line: 534, baseType: !933, size: 8, offset: 160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !1239, file: !14, line: 537, baseType: !933, size: 8, offset: 168)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !1239, file: !14, line: 541, baseType: !936, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !1239, file: !14, line: 545, baseType: !7, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !1239, file: !14, line: 551, baseType: !1250, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!936, !8, !1237}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1239, file: !14, line: 555, baseType: !1254, size: 64, offset: 384)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !1255, line: 47, baseType: !1256)
!1255 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1048, line: 148, baseType: !1006)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1239, file: !14, line: 556, baseType: !1258, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !1255, line: 59, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1048, line: 145, baseType: !1006)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !1114, file: !14, line: 496, baseType: !1261, size: 64, offset: 704)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!1139, !1120, !1124}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1114, file: !14, line: 500, baseType: !1265, size: 64, offset: 768)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!933, !1120, !934, !943, !6, !8, !1268}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1270, line: 52, baseType: !1271)
!1270 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1272, line: 32, baseType: !1273)
!1272 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 205, baseType: !1274)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1275, size: 192, elements: !1056)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1280}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1275, file: !3, baseType: !6, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1275, file: !3, baseType: !6, size: 32, offset: 32)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1275, file: !3, baseType: !937, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1275, file: !3, baseType: !937, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !1114, file: !14, line: 506, baseType: !1208, size: 64, offset: 832)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !1114, file: !14, line: 507, baseType: !1208, size: 64, offset: 896)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !1114, file: !14, line: 510, baseType: !1284, size: 64, offset: 960)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !1120}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1114, file: !14, line: 513, baseType: !1288, size: 64, offset: 1024)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1120, !943, !1139}
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1292, size: 128, elements: !1293)
!1292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1293 = !{!1294}
!1294 = !DISubrange(count: 4)
!1295 = !DIGlobalVariableExpression(var: !1090, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1296 = !DIGlobalVariableExpression(var: !1080, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1297 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!1298 = !DIGlobalVariableExpression(var: !1104, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!1299 = !DIGlobalVariableExpression(var: !1082, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1300 = !DIGlobalVariableExpression(var: !1078, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1301 = !{i32 2, !"Dwarf Version", i32 4}
!1302 = !{i32 2, !"Debug Info Version", i32 3}
!1303 = !{i32 1, !"wchar_size", i32 4}
!1304 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1305 = distinct !DISubprogram(name: "vprintf", scope: !1306, file: !1306, line: 39, type: !1307, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1311)
!1306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!934, !1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1311 = !{!1312, !1313}
!1312 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1305, file: !1306, line: 39, type: !1309)
!1313 = !DILocalVariable(name: "__arg", arg: 2, scope: !1305, file: !1306, line: 39, type: !1310)
!1314 = !DILocation(line: 0, scope: !1305)
!1315 = !DILocation(line: 41, column: 20, scope: !1305)
!1316 = !DILocation(line: 41, column: 10, scope: !1305)
!1317 = !DILocation(line: 41, column: 3, scope: !1305)
!1318 = distinct !DISubprogram(name: "getchar", scope: !1306, file: !1306, line: 47, type: !1319, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!934}
!1321 = !{}
!1322 = !DILocation(line: 49, column: 16, scope: !1318)
!1323 = !DILocation(line: 49, column: 10, scope: !1318)
!1324 = !DILocation(line: 49, column: 3, scope: !1318)
!1325 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1306, file: !1306, line: 56, type: !1326, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!934, !1021}
!1328 = !{!1329}
!1329 = !DILocalVariable(name: "__fp", arg: 1, scope: !1325, file: !1306, line: 56, type: !1021)
!1330 = !DILocation(line: 0, scope: !1325)
!1331 = !DILocation(line: 58, column: 10, scope: !1325)
!1332 = !DILocation(line: 58, column: 3, scope: !1325)
!1333 = distinct !DISubprogram(name: "getc_unlocked", scope: !1306, file: !1306, line: 66, type: !1326, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1334)
!1334 = !{!1335}
!1335 = !DILocalVariable(name: "__fp", arg: 1, scope: !1333, file: !1306, line: 66, type: !1021)
!1336 = !DILocation(line: 0, scope: !1333)
!1337 = !DILocation(line: 68, column: 10, scope: !1333)
!1338 = !DILocation(line: 68, column: 3, scope: !1333)
!1339 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1306, file: !1306, line: 73, type: !1319, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1321)
!1340 = !DILocation(line: 75, column: 10, scope: !1339)
!1341 = !DILocation(line: 75, column: 3, scope: !1339)
!1342 = distinct !DISubprogram(name: "putchar", scope: !1306, file: !1306, line: 82, type: !1343, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1345)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!934, !934}
!1345 = !{!1346}
!1346 = !DILocalVariable(name: "__c", arg: 1, scope: !1342, file: !1306, line: 82, type: !934)
!1347 = !DILocation(line: 0, scope: !1342)
!1348 = !DILocation(line: 84, column: 21, scope: !1342)
!1349 = !DILocation(line: 84, column: 10, scope: !1342)
!1350 = !DILocation(line: 84, column: 3, scope: !1342)
!1351 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1306, file: !1306, line: 91, type: !1352, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!934, !934, !1021}
!1354 = !{!1355, !1356}
!1355 = !DILocalVariable(name: "__c", arg: 1, scope: !1351, file: !1306, line: 91, type: !934)
!1356 = !DILocalVariable(name: "__stream", arg: 2, scope: !1351, file: !1306, line: 91, type: !1021)
!1357 = !DILocation(line: 0, scope: !1351)
!1358 = !DILocation(line: 93, column: 10, scope: !1351)
!1359 = !DILocation(line: 93, column: 3, scope: !1351)
!1360 = distinct !DISubprogram(name: "putc_unlocked", scope: !1306, file: !1306, line: 101, type: !1352, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1361)
!1361 = !{!1362, !1363}
!1362 = !DILocalVariable(name: "__c", arg: 1, scope: !1360, file: !1306, line: 101, type: !934)
!1363 = !DILocalVariable(name: "__stream", arg: 2, scope: !1360, file: !1306, line: 101, type: !1021)
!1364 = !DILocation(line: 0, scope: !1360)
!1365 = !DILocation(line: 103, column: 10, scope: !1360)
!1366 = !DILocation(line: 103, column: 3, scope: !1360)
!1367 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1306, file: !1306, line: 108, type: !1343, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1368)
!1368 = !{!1369}
!1369 = !DILocalVariable(name: "__c", arg: 1, scope: !1367, file: !1306, line: 108, type: !934)
!1370 = !DILocation(line: 0, scope: !1367)
!1371 = !DILocation(line: 110, column: 10, scope: !1367)
!1372 = !DILocation(line: 110, column: 3, scope: !1367)
!1373 = distinct !DISubprogram(name: "getline", scope: !1306, file: !1306, line: 118, type: !1374, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1378)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1376, !935, !1377, !1021}
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1048, line: 193, baseType: !1049)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1378 = !{!1379, !1380, !1381}
!1379 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1373, file: !1306, line: 118, type: !935)
!1380 = !DILocalVariable(name: "__n", arg: 2, scope: !1373, file: !1306, line: 118, type: !1377)
!1381 = !DILocalVariable(name: "__stream", arg: 3, scope: !1373, file: !1306, line: 118, type: !1021)
!1382 = !DILocation(line: 0, scope: !1373)
!1383 = !DILocation(line: 120, column: 10, scope: !1373)
!1384 = !DILocation(line: 120, column: 3, scope: !1373)
!1385 = distinct !DISubprogram(name: "feof_unlocked", scope: !1306, file: !1306, line: 128, type: !1326, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1386)
!1386 = !{!1387}
!1387 = !DILocalVariable(name: "__stream", arg: 1, scope: !1385, file: !1306, line: 128, type: !1021)
!1388 = !DILocation(line: 0, scope: !1385)
!1389 = !DILocation(line: 130, column: 10, scope: !1385)
!1390 = !DILocation(line: 130, column: 3, scope: !1385)
!1391 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1306, file: !1306, line: 135, type: !1326, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1392)
!1392 = !{!1393}
!1393 = !DILocalVariable(name: "__stream", arg: 1, scope: !1391, file: !1306, line: 135, type: !1021)
!1394 = !DILocation(line: 0, scope: !1391)
!1395 = !DILocation(line: 137, column: 10, scope: !1391)
!1396 = !DILocation(line: 137, column: 3, scope: !1391)
!1397 = distinct !DISubprogram(name: "tolower", scope: !1398, file: !1398, line: 207, type: !1343, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1399)
!1398 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1399 = !{!1400}
!1400 = !DILocalVariable(name: "__c", arg: 1, scope: !1397, file: !1398, line: 207, type: !934)
!1401 = !DILocation(line: 0, scope: !1397)
!1402 = !DILocation(line: 209, column: 22, scope: !1397)
!1403 = !DILocation(line: 209, column: 39, scope: !1397)
!1404 = !DILocation(line: 209, column: 38, scope: !1397)
!1405 = !DILocation(line: 209, column: 37, scope: !1397)
!1406 = !DILocation(line: 209, column: 10, scope: !1397)
!1407 = !DILocation(line: 209, column: 3, scope: !1397)
!1408 = distinct !DISubprogram(name: "toupper", scope: !1398, file: !1398, line: 213, type: !1343, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1409)
!1409 = !{!1410}
!1410 = !DILocalVariable(name: "__c", arg: 1, scope: !1408, file: !1398, line: 213, type: !934)
!1411 = !DILocation(line: 0, scope: !1408)
!1412 = !DILocation(line: 215, column: 22, scope: !1408)
!1413 = !DILocation(line: 215, column: 39, scope: !1408)
!1414 = !DILocation(line: 215, column: 38, scope: !1408)
!1415 = !DILocation(line: 215, column: 37, scope: !1408)
!1416 = !DILocation(line: 215, column: 10, scope: !1408)
!1417 = !DILocation(line: 215, column: 3, scope: !1408)
!1418 = distinct !DISubprogram(name: "atoi", scope: !1419, file: !1419, line: 361, type: !1420, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1422)
!1419 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!934, !8}
!1422 = !{!1423}
!1423 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1418, file: !1419, line: 361, type: !8)
!1424 = !DILocation(line: 0, scope: !1418)
!1425 = !DILocation(line: 363, column: 16, scope: !1418)
!1426 = !DILocation(line: 363, column: 10, scope: !1418)
!1427 = !DILocation(line: 363, column: 3, scope: !1418)
!1428 = distinct !DISubprogram(name: "atol", scope: !1419, file: !1419, line: 366, type: !1429, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1431)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1049, !8}
!1431 = !{!1432}
!1432 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1428, file: !1419, line: 366, type: !8)
!1433 = !DILocation(line: 0, scope: !1428)
!1434 = !DILocation(line: 368, column: 10, scope: !1428)
!1435 = !DILocation(line: 368, column: 3, scope: !1428)
!1436 = distinct !DISubprogram(name: "atoll", scope: !1419, file: !1419, line: 373, type: !1437, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1440)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !8}
!1439 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1440 = !{!1441}
!1441 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1436, file: !1419, line: 373, type: !8)
!1442 = !DILocation(line: 0, scope: !1436)
!1443 = !DILocation(line: 375, column: 10, scope: !1436)
!1444 = !DILocation(line: 375, column: 3, scope: !1436)
!1445 = distinct !DISubprogram(name: "bsearch", scope: !1446, file: !1446, line: 20, type: !1447, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1455)
!1446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!937, !1449, !1449, !1004, !1004, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1419, line: 808, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!934, !1449, !1449}
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465}
!1456 = !DILocalVariable(name: "__key", arg: 1, scope: !1445, file: !1446, line: 20, type: !1449)
!1457 = !DILocalVariable(name: "__base", arg: 2, scope: !1445, file: !1446, line: 20, type: !1449)
!1458 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1445, file: !1446, line: 20, type: !1004)
!1459 = !DILocalVariable(name: "__size", arg: 4, scope: !1445, file: !1446, line: 20, type: !1004)
!1460 = !DILocalVariable(name: "__compar", arg: 5, scope: !1445, file: !1446, line: 21, type: !1451)
!1461 = !DILocalVariable(name: "__l", scope: !1445, file: !1446, line: 23, type: !1004)
!1462 = !DILocalVariable(name: "__u", scope: !1445, file: !1446, line: 23, type: !1004)
!1463 = !DILocalVariable(name: "__idx", scope: !1445, file: !1446, line: 23, type: !1004)
!1464 = !DILocalVariable(name: "__p", scope: !1445, file: !1446, line: 24, type: !1449)
!1465 = !DILocalVariable(name: "__comparison", scope: !1445, file: !1446, line: 25, type: !934)
!1466 = !DILocation(line: 0, scope: !1445)
!1467 = !DILocation(line: 29, column: 3, scope: !1445)
!1468 = !DILocation(line: 27, column: 7, scope: !1445)
!1469 = !DILocation(line: 29, column: 14, scope: !1445)
!1470 = !DILocation(line: 31, column: 20, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1445, file: !1446, line: 30, column: 5)
!1472 = !DILocation(line: 31, column: 27, scope: !1471)
!1473 = !DILocation(line: 32, column: 56, scope: !1471)
!1474 = !DILocation(line: 32, column: 47, scope: !1471)
!1475 = !DILocation(line: 33, column: 22, scope: !1471)
!1476 = !DILocation(line: 34, column: 24, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1471, file: !1446, line: 34, column: 11)
!1478 = !DILocation(line: 34, column: 11, scope: !1471)
!1479 = !DILocation(line: 36, column: 29, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !1446, line: 36, column: 16)
!1481 = !DILocation(line: 36, column: 16, scope: !1477)
!1482 = !DILocation(line: 37, column: 14, scope: !1480)
!1483 = distinct !{!1483, !1467, !1484}
!1484 = !DILocation(line: 40, column: 5, scope: !1445)
!1485 = !DILocation(line: 43, column: 1, scope: !1445)
!1486 = distinct !DISubprogram(name: "atof", scope: !1487, file: !1487, line: 25, type: !1488, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1491)
!1487 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1490, !8}
!1490 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1491 = !{!1492}
!1492 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1486, file: !1487, line: 25, type: !8)
!1493 = !DILocation(line: 0, scope: !1486)
!1494 = !DILocation(line: 27, column: 10, scope: !1486)
!1495 = !DILocation(line: 27, column: 3, scope: !1486)
!1496 = distinct !DISubprogram(name: "strtoimax", scope: !1497, file: !1497, line: 324, type: !1498, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1504)
!1497 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1500, !1309, !1503, !934}
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1501, line: 101, baseType: !1502)
!1501 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1048, line: 72, baseType: !1049)
!1503 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !935)
!1504 = !{!1505, !1506, !1507}
!1505 = !DILocalVariable(name: "nptr", arg: 1, scope: !1496, file: !1497, line: 324, type: !1309)
!1506 = !DILocalVariable(name: "endptr", arg: 2, scope: !1496, file: !1497, line: 324, type: !1503)
!1507 = !DILocalVariable(name: "base", arg: 3, scope: !1496, file: !1497, line: 324, type: !934)
!1508 = !DILocation(line: 0, scope: !1496)
!1509 = !DILocation(line: 327, column: 10, scope: !1496)
!1510 = !DILocation(line: 327, column: 3, scope: !1496)
!1511 = distinct !DISubprogram(name: "strtoumax", scope: !1497, file: !1497, line: 336, type: !1512, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1516)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!1514, !1309, !1503, !934}
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1501, line: 102, baseType: !1515)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1048, line: 73, baseType: !1006)
!1516 = !{!1517, !1518, !1519}
!1517 = !DILocalVariable(name: "nptr", arg: 1, scope: !1511, file: !1497, line: 336, type: !1309)
!1518 = !DILocalVariable(name: "endptr", arg: 2, scope: !1511, file: !1497, line: 336, type: !1503)
!1519 = !DILocalVariable(name: "base", arg: 3, scope: !1511, file: !1497, line: 336, type: !934)
!1520 = !DILocation(line: 0, scope: !1511)
!1521 = !DILocation(line: 339, column: 10, scope: !1511)
!1522 = !DILocation(line: 339, column: 3, scope: !1511)
!1523 = distinct !DISubprogram(name: "wcstoimax", scope: !1497, file: !1497, line: 348, type: !1524, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1533)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!1500, !1526, !1530, !934}
!1526 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1497, line: 34, baseType: !934)
!1530 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1533 = !{!1534, !1535, !1536}
!1534 = !DILocalVariable(name: "nptr", arg: 1, scope: !1523, file: !1497, line: 348, type: !1526)
!1535 = !DILocalVariable(name: "endptr", arg: 2, scope: !1523, file: !1497, line: 348, type: !1530)
!1536 = !DILocalVariable(name: "base", arg: 3, scope: !1523, file: !1497, line: 348, type: !934)
!1537 = !DILocation(line: 0, scope: !1523)
!1538 = !DILocation(line: 351, column: 10, scope: !1523)
!1539 = !DILocation(line: 351, column: 3, scope: !1523)
!1540 = distinct !DISubprogram(name: "wcstoumax", scope: !1497, file: !1497, line: 362, type: !1541, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1543)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!1514, !1526, !1530, !934}
!1543 = !{!1544, !1545, !1546}
!1544 = !DILocalVariable(name: "nptr", arg: 1, scope: !1540, file: !1497, line: 362, type: !1526)
!1545 = !DILocalVariable(name: "endptr", arg: 2, scope: !1540, file: !1497, line: 362, type: !1530)
!1546 = !DILocalVariable(name: "base", arg: 3, scope: !1540, file: !1497, line: 362, type: !934)
!1547 = !DILocation(line: 0, scope: !1540)
!1548 = !DILocation(line: 365, column: 10, scope: !1540)
!1549 = !DILocation(line: 365, column: 3, scope: !1540)
!1550 = distinct !DISubprogram(name: "stat", scope: !1551, file: !1551, line: 453, type: !1552, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1589)
!1551 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!934, !8, !1554}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1556, line: 46, size: 1152, elements: !1557)
!1556 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1557 = !{!1558, !1559, !1560, !1562, !1564, !1566, !1568, !1569, !1570, !1571, !1573, !1575, !1583, !1584, !1585}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1555, file: !1556, line: 48, baseType: !1259, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1555, file: !1556, line: 53, baseType: !1256, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1555, file: !1556, line: 61, baseType: !1561, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1048, line: 151, baseType: !1006)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1555, file: !1556, line: 62, baseType: !1563, size: 32, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1048, line: 150, baseType: !6)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1555, file: !1556, line: 64, baseType: !1565, size: 32, offset: 224)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1048, line: 146, baseType: !6)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1555, file: !1556, line: 65, baseType: !1567, size: 32, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1048, line: 147, baseType: !6)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1555, file: !1556, line: 67, baseType: !934, size: 32, offset: 288)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1555, file: !1556, line: 69, baseType: !1259, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1555, file: !1556, line: 74, baseType: !1047, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1555, file: !1556, line: 78, baseType: !1572, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1048, line: 174, baseType: !1049)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1555, file: !1556, line: 80, baseType: !1574, size: 64, offset: 512)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1048, line: 179, baseType: !1049)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1555, file: !1556, line: 91, baseType: !1576, size: 128, offset: 576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1577, line: 10, size: 128, elements: !1578)
!1577 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1578 = !{!1579, !1581}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1576, file: !1577, line: 12, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1048, line: 160, baseType: !1049)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1576, file: !1577, line: 16, baseType: !1582, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1048, line: 196, baseType: !1049)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1555, file: !1556, line: 92, baseType: !1576, size: 128, offset: 704)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1555, file: !1556, line: 93, baseType: !1576, size: 128, offset: 832)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1555, file: !1556, line: 106, baseType: !1586, size: 192, offset: 960)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1582, size: 192, elements: !1587)
!1587 = !{!1588}
!1588 = !DISubrange(count: 3)
!1589 = !{!1590, !1591}
!1590 = !DILocalVariable(name: "__path", arg: 1, scope: !1550, file: !1551, line: 453, type: !8)
!1591 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1550, file: !1551, line: 453, type: !1554)
!1592 = !DILocation(line: 0, scope: !1550)
!1593 = !DILocation(line: 455, column: 10, scope: !1550)
!1594 = !DILocation(line: 455, column: 3, scope: !1550)
!1595 = distinct !DISubprogram(name: "lstat", scope: !1551, file: !1551, line: 460, type: !1552, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1596)
!1596 = !{!1597, !1598}
!1597 = !DILocalVariable(name: "__path", arg: 1, scope: !1595, file: !1551, line: 460, type: !8)
!1598 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1595, file: !1551, line: 460, type: !1554)
!1599 = !DILocation(line: 0, scope: !1595)
!1600 = !DILocation(line: 462, column: 10, scope: !1595)
!1601 = !DILocation(line: 462, column: 3, scope: !1595)
!1602 = distinct !DISubprogram(name: "fstat", scope: !1551, file: !1551, line: 467, type: !1603, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1605)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!934, !934, !1554}
!1605 = !{!1606, !1607}
!1606 = !DILocalVariable(name: "__fd", arg: 1, scope: !1602, file: !1551, line: 467, type: !934)
!1607 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1602, file: !1551, line: 467, type: !1554)
!1608 = !DILocation(line: 0, scope: !1602)
!1609 = !DILocation(line: 469, column: 10, scope: !1602)
!1610 = !DILocation(line: 469, column: 3, scope: !1602)
!1611 = distinct !DISubprogram(name: "fstatat", scope: !1551, file: !1551, line: 474, type: !1612, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!934, !934, !8, !1554, !934}
!1614 = !{!1615, !1616, !1617, !1618}
!1615 = !DILocalVariable(name: "__fd", arg: 1, scope: !1611, file: !1551, line: 474, type: !934)
!1616 = !DILocalVariable(name: "__filename", arg: 2, scope: !1611, file: !1551, line: 474, type: !8)
!1617 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1611, file: !1551, line: 474, type: !1554)
!1618 = !DILocalVariable(name: "__flag", arg: 4, scope: !1611, file: !1551, line: 474, type: !934)
!1619 = !DILocation(line: 0, scope: !1611)
!1620 = !DILocation(line: 477, column: 10, scope: !1611)
!1621 = !DILocation(line: 477, column: 3, scope: !1611)
!1622 = distinct !DISubprogram(name: "mknod", scope: !1551, file: !1551, line: 483, type: !1623, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1625)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!934, !8, !1563, !1259}
!1625 = !{!1626, !1627, !1628}
!1626 = !DILocalVariable(name: "__path", arg: 1, scope: !1622, file: !1551, line: 483, type: !8)
!1627 = !DILocalVariable(name: "__mode", arg: 2, scope: !1622, file: !1551, line: 483, type: !1563)
!1628 = !DILocalVariable(name: "__dev", arg: 3, scope: !1622, file: !1551, line: 483, type: !1259)
!1629 = !DILocation(line: 0, scope: !1622)
!1630 = !DILocation(line: 485, column: 10, scope: !1622)
!1631 = !DILocation(line: 485, column: 3, scope: !1622)
!1632 = distinct !DISubprogram(name: "mknodat", scope: !1551, file: !1551, line: 491, type: !1633, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1635)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!934, !934, !8, !1563, !1259}
!1635 = !{!1636, !1637, !1638, !1639}
!1636 = !DILocalVariable(name: "__fd", arg: 1, scope: !1632, file: !1551, line: 491, type: !934)
!1637 = !DILocalVariable(name: "__path", arg: 2, scope: !1632, file: !1551, line: 491, type: !8)
!1638 = !DILocalVariable(name: "__mode", arg: 3, scope: !1632, file: !1551, line: 491, type: !1563)
!1639 = !DILocalVariable(name: "__dev", arg: 4, scope: !1632, file: !1551, line: 491, type: !1259)
!1640 = !DILocation(line: 0, scope: !1632)
!1641 = !DILocation(line: 494, column: 10, scope: !1632)
!1642 = !DILocation(line: 494, column: 3, scope: !1632)
!1643 = distinct !DISubprogram(name: "stat64", scope: !1551, file: !1551, line: 502, type: !1644, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1666)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!934, !8, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1556, line: 119, size: 1152, elements: !1648)
!1648 = !{!1649, !1650, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1662, !1663, !1664, !1665}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1647, file: !1556, line: 121, baseType: !1259, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1647, file: !1556, line: 123, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1048, line: 149, baseType: !1006)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1647, file: !1556, line: 124, baseType: !1561, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1647, file: !1556, line: 125, baseType: !1563, size: 32, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1647, file: !1556, line: 132, baseType: !1565, size: 32, offset: 224)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1647, file: !1556, line: 133, baseType: !1567, size: 32, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1647, file: !1556, line: 135, baseType: !934, size: 32, offset: 288)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1647, file: !1556, line: 136, baseType: !1259, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1647, file: !1556, line: 137, baseType: !1047, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1647, file: !1556, line: 143, baseType: !1572, size: 64, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1647, file: !1556, line: 144, baseType: !1661, size: 64, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1048, line: 180, baseType: !1049)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1647, file: !1556, line: 152, baseType: !1576, size: 128, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1647, file: !1556, line: 153, baseType: !1576, size: 128, offset: 704)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1647, file: !1556, line: 154, baseType: !1576, size: 128, offset: 832)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1647, file: !1556, line: 164, baseType: !1586, size: 192, offset: 960)
!1666 = !{!1667, !1668}
!1667 = !DILocalVariable(name: "__path", arg: 1, scope: !1643, file: !1551, line: 502, type: !8)
!1668 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1643, file: !1551, line: 502, type: !1646)
!1669 = !DILocation(line: 0, scope: !1643)
!1670 = !DILocation(line: 504, column: 10, scope: !1643)
!1671 = !DILocation(line: 504, column: 3, scope: !1643)
!1672 = distinct !DISubprogram(name: "lstat64", scope: !1551, file: !1551, line: 509, type: !1644, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1673)
!1673 = !{!1674, !1675}
!1674 = !DILocalVariable(name: "__path", arg: 1, scope: !1672, file: !1551, line: 509, type: !8)
!1675 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1672, file: !1551, line: 509, type: !1646)
!1676 = !DILocation(line: 0, scope: !1672)
!1677 = !DILocation(line: 511, column: 10, scope: !1672)
!1678 = !DILocation(line: 511, column: 3, scope: !1672)
!1679 = distinct !DISubprogram(name: "fstat64", scope: !1551, file: !1551, line: 516, type: !1680, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!934, !934, !1646}
!1682 = !{!1683, !1684}
!1683 = !DILocalVariable(name: "__fd", arg: 1, scope: !1679, file: !1551, line: 516, type: !934)
!1684 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1679, file: !1551, line: 516, type: !1646)
!1685 = !DILocation(line: 0, scope: !1679)
!1686 = !DILocation(line: 518, column: 10, scope: !1679)
!1687 = !DILocation(line: 518, column: 3, scope: !1679)
!1688 = distinct !DISubprogram(name: "fstatat64", scope: !1551, file: !1551, line: 523, type: !1689, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!934, !934, !8, !1646, !934}
!1691 = !{!1692, !1693, !1694, !1695}
!1692 = !DILocalVariable(name: "__fd", arg: 1, scope: !1688, file: !1551, line: 523, type: !934)
!1693 = !DILocalVariable(name: "__filename", arg: 2, scope: !1688, file: !1551, line: 523, type: !8)
!1694 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1688, file: !1551, line: 523, type: !1646)
!1695 = !DILocalVariable(name: "__flag", arg: 4, scope: !1688, file: !1551, line: 523, type: !934)
!1696 = !DILocation(line: 0, scope: !1688)
!1697 = !DILocation(line: 526, column: 10, scope: !1688)
!1698 = !DILocation(line: 526, column: 3, scope: !1688)
!1699 = distinct !DISubprogram(name: "c_common_missing_argument", scope: !3, file: !3, line: 142, type: !1700, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!933, !8, !1004}
!1702 = !{!1703, !1704}
!1703 = !DILocalVariable(name: "opt", arg: 1, scope: !1699, file: !3, line: 142, type: !8)
!1704 = !DILocalVariable(name: "code", arg: 2, scope: !1699, file: !3, line: 142, type: !1004)
!1705 = !DILocation(line: 0, scope: !1699)
!1706 = !DILocation(line: 144, column: 3, scope: !1699)
!1707 = !DILocation(line: 151, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 145, column: 5)
!1709 = !DILocation(line: 152, column: 7, scope: !1708)
!1710 = !DILocation(line: 155, column: 7, scope: !1708)
!1711 = !DILocation(line: 156, column: 7, scope: !1708)
!1712 = !DILocation(line: 160, column: 7, scope: !1708)
!1713 = !DILocation(line: 161, column: 7, scope: !1708)
!1714 = !DILocation(line: 169, column: 7, scope: !1708)
!1715 = !DILocation(line: 170, column: 7, scope: !1708)
!1716 = !DILocation(line: 178, column: 7, scope: !1708)
!1717 = !DILocation(line: 179, column: 7, scope: !1708)
!1718 = !DILocation(line: 183, column: 7, scope: !1708)
!1719 = !DILocation(line: 184, column: 7, scope: !1708)
!1720 = !DILocation(line: 188, column: 1, scope: !1699)
!1721 = !DILocation(line: 0, scope: !2)
!1722 = !DILocation(line: 209, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !2, file: !3, line: 209, column: 7)
!1724 = !DILocation(line: 209, column: 7, scope: !2)
!1725 = !DILocation(line: 213, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 210, column: 5)
!1727 = !DILocation(line: 213, column: 42, scope: !1726)
!1728 = !DILocation(line: 216, column: 7, scope: !1726)
!1729 = !DILocation(line: 216, column: 45, scope: !1726)
!1730 = !DILocation(line: 217, column: 5, scope: !1726)
!1731 = !DILocation(line: 219, column: 33, scope: !2)
!1732 = !DILocation(line: 220, column: 5, scope: !2)
!1733 = !DILocation(line: 220, column: 17, scope: !2)
!1734 = !DILocation(line: 219, column: 14, scope: !2)
!1735 = !DILocation(line: 219, column: 12, scope: !2)
!1736 = !DILocation(line: 221, column: 8, scope: !2)
!1737 = !DILocation(line: 222, column: 7, scope: !2)
!1738 = !DILocation(line: 222, column: 13, scope: !2)
!1739 = !DILocation(line: 224, column: 31, scope: !2)
!1740 = !DILocation(line: 224, column: 14, scope: !2)
!1741 = !DILocation(line: 224, column: 12, scope: !2)
!1742 = !DILocation(line: 225, column: 13, scope: !2)
!1743 = !DILocation(line: 225, column: 30, scope: !2)
!1744 = !DILocation(line: 226, column: 20, scope: !2)
!1745 = !DILocation(line: 226, column: 13, scope: !2)
!1746 = !DILocation(line: 226, column: 18, scope: !2)
!1747 = !DILocation(line: 230, column: 13, scope: !2)
!1748 = !DILocation(line: 230, column: 26, scope: !2)
!1749 = !DILocation(line: 232, column: 21, scope: !2)
!1750 = !DILocation(line: 232, column: 19, scope: !2)
!1751 = !DILocation(line: 233, column: 22, scope: !2)
!1752 = !DILocation(line: 234, column: 22, scope: !2)
!1753 = !DILocation(line: 235, column: 27, scope: !2)
!1754 = !DILocation(line: 238, column: 23, scope: !2)
!1755 = !DILocation(line: 240, column: 19, scope: !2)
!1756 = !DILocation(line: 240, column: 17, scope: !2)
!1757 = !DILocation(line: 242, column: 23, scope: !2)
!1758 = !DILocation(line: 242, column: 12, scope: !2)
!1759 = !DILocation(line: 244, column: 18, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !2, file: !3, line: 244, column: 7)
!1761 = !DILocation(line: 244, column: 7, scope: !2)
!1762 = !DILocation(line: 248, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 248, column: 7)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 245, column: 5)
!1765 = !DILocation(line: 0, scope: !1763)
!1766 = !DILocation(line: 248, column: 21, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 248, column: 7)
!1768 = !DILocation(line: 249, column: 16, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 249, column: 6)
!1770 = !DILocation(line: 249, column: 8, scope: !1769)
!1771 = !DILocation(line: 249, column: 6, scope: !1767)
!1772 = !DILocation(line: 251, column: 13, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 250, column: 4)
!1774 = !DILocation(line: 252, column: 6, scope: !1773)
!1775 = !DILocation(line: 248, column: 30, scope: !1767)
!1776 = !DILocation(line: 248, column: 7, scope: !1767)
!1777 = distinct !{!1777, !1762, !1778}
!1778 = !DILocation(line: 253, column: 4, scope: !1763)
!1779 = !DILocation(line: 256, column: 3, scope: !2)
!1780 = distinct !DISubprogram(name: "c_common_handle_option", scope: !3, file: !3, line: 264, type: !1781, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!934, !1004, !8, !934}
!1783 = !{!1784, !1785, !1786, !1787, !1801, !1802, !1803}
!1784 = !DILocalVariable(name: "scode", arg: 1, scope: !1780, file: !3, line: 264, type: !1004)
!1785 = !DILocalVariable(name: "arg", arg: 2, scope: !1780, file: !3, line: 264, type: !8)
!1786 = !DILocalVariable(name: "value", arg: 3, scope: !1780, file: !3, line: 264, type: !934)
!1787 = !DILocalVariable(name: "option", scope: !1780, file: !3, line: 266, type: !1788)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_option", file: !901, line: 43, size: 384, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "opt_text", scope: !1790, file: !901, line: 45, baseType: !8, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "help", scope: !1790, file: !901, line: 46, baseType: !8, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "back_chain", scope: !1790, file: !901, line: 47, baseType: !1051, size: 16, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "opt_len", scope: !1790, file: !901, line: 48, baseType: !933, size: 8, offset: 144)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "neg_index", scope: !1790, file: !901, line: 49, baseType: !934, size: 32, offset: 160)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !901, line: 50, baseType: !6, size: 32, offset: 192)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var", scope: !1790, file: !901, line: 51, baseType: !937, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "var_type", scope: !1790, file: !901, line: 52, baseType: !900, size: 32, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "var_value", scope: !1790, file: !901, line: 53, baseType: !934, size: 32, offset: 352)
!1801 = !DILocalVariable(name: "code", scope: !1780, file: !3, line: 267, type: !26)
!1802 = !DILocalVariable(name: "result", scope: !1780, file: !3, line: 268, type: !934)
!1803 = !DILocalVariable(name: "preprocessing_asm_p", scope: !1780, file: !3, line: 272, type: !933)
!1804 = !DILocation(line: 0, scope: !1780)
!1805 = !DILocation(line: 267, column: 24, scope: !1780)
!1806 = !DILocation(line: 272, column: 48, scope: !1780)
!1807 = !DILocation(line: 272, column: 31, scope: !1780)
!1808 = !DILocation(line: 272, column: 59, scope: !1780)
!1809 = !DILocation(line: 272, column: 64, scope: !1780)
!1810 = !DILocation(line: 274, column: 3, scope: !1780)
!1811 = !DILocation(line: 277, column: 11, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 277, column: 11)
!1813 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 275, column: 5)
!1814 = !DILocation(line: 277, column: 28, scope: !1812)
!1815 = !DILocation(line: 277, column: 34, scope: !1812)
!1816 = !DILocation(line: 277, column: 11, scope: !1813)
!1817 = !DILocation(line: 279, column: 17, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 279, column: 8)
!1819 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 278, column: 2)
!1820 = !DILocation(line: 279, column: 23, scope: !1818)
!1821 = !DILocation(line: 280, column: 8, scope: !1818)
!1822 = !DILocation(line: 280, column: 22, scope: !1818)
!1823 = !DILocation(line: 280, column: 13, scope: !1818)
!1824 = !DILocation(line: 279, column: 8, scope: !1819)
!1825 = !DILocation(line: 288, column: 16, scope: !1813)
!1826 = !DILocation(line: 289, column: 7, scope: !1813)
!1827 = !DILocation(line: 292, column: 7, scope: !1813)
!1828 = !DILocation(line: 293, column: 7, scope: !1813)
!1829 = !DILocation(line: 296, column: 7, scope: !1813)
!1830 = !DILocation(line: 296, column: 17, scope: !1813)
!1831 = !DILocation(line: 296, column: 34, scope: !1813)
!1832 = !DILocation(line: 297, column: 7, scope: !1813)
!1833 = !DILocation(line: 300, column: 7, scope: !1813)
!1834 = !DILocation(line: 300, column: 17, scope: !1813)
!1835 = !DILocation(line: 300, column: 34, scope: !1813)
!1836 = !DILocation(line: 301, column: 17, scope: !1813)
!1837 = !DILocation(line: 301, column: 47, scope: !1813)
!1838 = !DILocation(line: 302, column: 7, scope: !1813)
!1839 = !DILocation(line: 305, column: 7, scope: !1813)
!1840 = !DILocation(line: 306, column: 7, scope: !1813)
!1841 = !DILocation(line: 309, column: 28, scope: !1813)
!1842 = !DILocation(line: 310, column: 7, scope: !1813)
!1843 = !DILocation(line: 313, column: 7, scope: !1813)
!1844 = !DILocation(line: 313, column: 17, scope: !1813)
!1845 = !DILocation(line: 313, column: 37, scope: !1813)
!1846 = !DILocation(line: 314, column: 7, scope: !1813)
!1847 = !DILocation(line: 321, column: 11, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 321, column: 11)
!1849 = !DILocation(line: 321, column: 11, scope: !1813)
!1850 = !DILocation(line: 322, column: 12, scope: !1848)
!1851 = !DILocation(line: 322, column: 2, scope: !1848)
!1852 = !DILocation(line: 325, column: 8, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 325, column: 8)
!1854 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 324, column: 2)
!1855 = !DILocation(line: 325, column: 8, scope: !1854)
!1856 = !DILocation(line: 326, column: 6, scope: !1853)
!1857 = !DILocation(line: 327, column: 22, scope: !1854)
!1858 = !DILocation(line: 328, column: 4, scope: !1854)
!1859 = !DILocation(line: 329, column: 12, scope: !1854)
!1860 = !DILocation(line: 329, column: 4, scope: !1854)
!1861 = !DILocation(line: 339, column: 36, scope: !1813)
!1862 = !DILocation(line: 339, column: 31, scope: !1813)
!1863 = !DILocation(line: 339, column: 7, scope: !1813)
!1864 = !DILocation(line: 339, column: 22, scope: !1813)
!1865 = !DILocation(line: 339, column: 28, scope: !1813)
!1866 = !DILocation(line: 340, column: 22, scope: !1813)
!1867 = !DILocation(line: 341, column: 7, scope: !1813)
!1868 = !DILocation(line: 345, column: 36, scope: !1813)
!1869 = !DILocation(line: 345, column: 31, scope: !1813)
!1870 = !DILocation(line: 345, column: 7, scope: !1813)
!1871 = !DILocation(line: 345, column: 22, scope: !1813)
!1872 = !DILocation(line: 345, column: 28, scope: !1813)
!1873 = !DILocation(line: 346, column: 22, scope: !1813)
!1874 = !DILocation(line: 346, column: 47, scope: !1813)
!1875 = !DILocation(line: 347, column: 17, scope: !1813)
!1876 = !DILocation(line: 348, column: 7, scope: !1813)
!1877 = !DILocation(line: 351, column: 17, scope: !1813)
!1878 = !DILocation(line: 352, column: 17, scope: !1813)
!1879 = !DILocation(line: 353, column: 7, scope: !1813)
!1880 = !DILocation(line: 356, column: 17, scope: !1813)
!1881 = !DILocation(line: 357, column: 7, scope: !1813)
!1882 = !DILocation(line: 357, column: 22, scope: !1813)
!1883 = !DILocation(line: 357, column: 36, scope: !1813)
!1884 = !DILocation(line: 358, column: 7, scope: !1813)
!1885 = !DILocation(line: 361, column: 17, scope: !1813)
!1886 = !DILocation(line: 362, column: 7, scope: !1813)
!1887 = !DILocation(line: 362, column: 22, scope: !1813)
!1888 = !DILocation(line: 362, column: 36, scope: !1813)
!1889 = !DILocation(line: 363, column: 7, scope: !1813)
!1890 = !DILocation(line: 367, column: 17, scope: !1813)
!1891 = !DILocation(line: 368, column: 7, scope: !1813)
!1892 = !DILocation(line: 369, column: 7, scope: !1813)
!1893 = !DILocation(line: 372, column: 29, scope: !1813)
!1894 = !DILocation(line: 373, column: 7, scope: !1813)
!1895 = !DILocation(line: 376, column: 30, scope: !1813)
!1896 = !DILocation(line: 377, column: 7, scope: !1813)
!1897 = !DILocation(line: 380, column: 7, scope: !1813)
!1898 = !DILocation(line: 381, column: 7, scope: !1813)
!1899 = !DILocation(line: 384, column: 19, scope: !1813)
!1900 = !DILocation(line: 385, column: 7, scope: !1813)
!1901 = !DILocation(line: 386, column: 7, scope: !1813)
!1902 = !DILocation(line: 387, column: 28, scope: !1813)
!1903 = !DILocation(line: 388, column: 27, scope: !1813)
!1904 = !DILocation(line: 389, column: 24, scope: !1813)
!1905 = !DILocation(line: 390, column: 24, scope: !1813)
!1906 = !DILocation(line: 391, column: 27, scope: !1813)
!1907 = !DILocation(line: 392, column: 19, scope: !1813)
!1908 = !DILocation(line: 393, column: 11, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 393, column: 11)
!1910 = !DILocation(line: 393, column: 32, scope: !1909)
!1911 = !DILocation(line: 393, column: 11, scope: !1813)
!1912 = !DILocation(line: 394, column: 2, scope: !1909)
!1913 = !DILocation(line: 395, column: 20, scope: !1813)
!1914 = !DILocation(line: 396, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 396, column: 11)
!1916 = !DILocation(line: 396, column: 32, scope: !1915)
!1917 = !DILocation(line: 396, column: 11, scope: !1813)
!1918 = !DILocation(line: 397, column: 23, scope: !1915)
!1919 = !DILocation(line: 397, column: 2, scope: !1915)
!1920 = !DILocation(line: 398, column: 25, scope: !1813)
!1921 = !DILocation(line: 399, column: 34, scope: !1813)
!1922 = !DILocation(line: 403, column: 28, scope: !1813)
!1923 = !DILocation(line: 405, column: 26, scope: !1813)
!1924 = !DILocation(line: 407, column: 12, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 407, column: 11)
!1926 = !DILocation(line: 407, column: 11, scope: !1813)
!1927 = !DILocation(line: 411, column: 8, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 411, column: 8)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 408, column: 2)
!1930 = !DILocation(line: 411, column: 18, scope: !1928)
!1931 = !DILocation(line: 411, column: 8, scope: !1929)
!1932 = !DILocation(line: 412, column: 19, scope: !1928)
!1933 = !DILocation(line: 412, column: 16, scope: !1928)
!1934 = !DILocation(line: 412, column: 6, scope: !1928)
!1935 = !DILocation(line: 417, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 417, column: 15)
!1937 = !DILocation(line: 417, column: 33, scope: !1936)
!1938 = !DILocation(line: 417, column: 15, scope: !1929)
!1939 = !DILocation(line: 418, column: 31, scope: !1936)
!1940 = !DILocation(line: 418, column: 13, scope: !1936)
!1941 = !DILocation(line: 423, column: 29, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 421, column: 2)
!1943 = !DILocation(line: 424, column: 17, scope: !1942)
!1944 = !DILocation(line: 425, column: 29, scope: !1942)
!1945 = !DILocation(line: 428, column: 34, scope: !1813)
!1946 = !DILocation(line: 428, column: 7, scope: !1813)
!1947 = !DILocation(line: 428, column: 17, scope: !1813)
!1948 = !DILocation(line: 428, column: 32, scope: !1813)
!1949 = !DILocation(line: 429, column: 17, scope: !1813)
!1950 = !DILocation(line: 429, column: 31, scope: !1813)
!1951 = !DILocation(line: 430, column: 17, scope: !1813)
!1952 = !DILocation(line: 430, column: 38, scope: !1813)
!1953 = !DILocation(line: 432, column: 11, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 432, column: 11)
!1955 = !DILocation(line: 432, column: 29, scope: !1954)
!1956 = !DILocation(line: 432, column: 11, scope: !1813)
!1957 = !DILocation(line: 433, column: 20, scope: !1954)
!1958 = !DILocation(line: 433, column: 2, scope: !1954)
!1959 = !DILocation(line: 437, column: 48, scope: !1813)
!1960 = !DILocation(line: 437, column: 7, scope: !1813)
!1961 = !DILocation(line: 437, column: 17, scope: !1813)
!1962 = !DILocation(line: 437, column: 46, scope: !1813)
!1963 = !DILocation(line: 438, column: 7, scope: !1813)
!1964 = !DILocation(line: 442, column: 33, scope: !1813)
!1965 = !DILocation(line: 442, column: 7, scope: !1813)
!1966 = !DILocation(line: 442, column: 17, scope: !1813)
!1967 = !DILocation(line: 442, column: 31, scope: !1813)
!1968 = !DILocation(line: 443, column: 7, scope: !1813)
!1969 = !DILocation(line: 448, column: 11, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 448, column: 11)
!1971 = !DILocation(line: 448, column: 29, scope: !1970)
!1972 = !DILocation(line: 448, column: 38, scope: !1970)
!1973 = !DILocation(line: 448, column: 35, scope: !1970)
!1974 = !DILocation(line: 449, column: 20, scope: !1970)
!1975 = !DILocation(line: 449, column: 2, scope: !1970)
!1976 = !DILocation(line: 452, column: 11, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 452, column: 11)
!1978 = !DILocation(line: 452, column: 33, scope: !1977)
!1979 = !DILocation(line: 452, column: 39, scope: !1977)
!1980 = !DILocation(line: 453, column: 24, scope: !1977)
!1981 = !DILocation(line: 453, column: 2, scope: !1977)
!1982 = !DILocation(line: 454, column: 43, scope: !1813)
!1983 = !DILocation(line: 454, column: 7, scope: !1813)
!1984 = !DILocation(line: 454, column: 17, scope: !1813)
!1985 = !DILocation(line: 454, column: 41, scope: !1813)
!1986 = !DILocation(line: 455, column: 7, scope: !1813)
!1987 = !DILocation(line: 458, column: 35, scope: !1813)
!1988 = !DILocation(line: 458, column: 7, scope: !1813)
!1989 = !DILocation(line: 458, column: 17, scope: !1813)
!1990 = !DILocation(line: 458, column: 33, scope: !1813)
!1991 = !DILocation(line: 459, column: 7, scope: !1813)
!1992 = !DILocation(line: 462, column: 37, scope: !1813)
!1993 = !DILocation(line: 462, column: 7, scope: !1813)
!1994 = !DILocation(line: 462, column: 17, scope: !1813)
!1995 = !DILocation(line: 462, column: 35, scope: !1813)
!1996 = !DILocation(line: 463, column: 7, scope: !1813)
!1997 = !DILocation(line: 466, column: 47, scope: !1813)
!1998 = !DILocation(line: 466, column: 7, scope: !1813)
!1999 = !DILocation(line: 466, column: 18, scope: !1813)
!2000 = !DILocation(line: 466, column: 45, scope: !1813)
!2001 = !DILocation(line: 467, column: 7, scope: !1813)
!2002 = !DILocation(line: 472, column: 7, scope: !1813)
!2003 = !DILocation(line: 473, column: 7, scope: !1813)
!2004 = !DILocation(line: 476, column: 7, scope: !1813)
!2005 = !DILocation(line: 477, column: 7, scope: !1813)
!2006 = !DILocation(line: 480, column: 20, scope: !1813)
!2007 = !DILocation(line: 480, column: 7, scope: !1813)
!2008 = !DILocation(line: 481, column: 7, scope: !1813)
!2009 = !DILocation(line: 484, column: 7, scope: !1813)
!2010 = !DILocation(line: 485, column: 7, scope: !1813)
!2011 = !DILocation(line: 492, column: 36, scope: !1813)
!2012 = !DILocation(line: 492, column: 7, scope: !1813)
!2013 = !DILocation(line: 492, column: 17, scope: !1813)
!2014 = !DILocation(line: 492, column: 34, scope: !1813)
!2015 = !DILocation(line: 493, column: 7, scope: !1813)
!2016 = !DILocation(line: 496, column: 45, scope: !1813)
!2017 = !DILocation(line: 496, column: 7, scope: !1813)
!2018 = !DILocation(line: 496, column: 17, scope: !1813)
!2019 = !DILocation(line: 496, column: 43, scope: !1813)
!2020 = !DILocation(line: 497, column: 7, scope: !1813)
!2021 = !DILocation(line: 500, column: 34, scope: !1813)
!2022 = !DILocation(line: 500, column: 7, scope: !1813)
!2023 = !DILocation(line: 500, column: 17, scope: !1813)
!2024 = !DILocation(line: 500, column: 32, scope: !1813)
!2025 = !DILocation(line: 501, column: 7, scope: !1813)
!2026 = !DILocation(line: 504, column: 12, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 504, column: 11)
!2028 = !DILocation(line: 504, column: 18, scope: !2027)
!2029 = !DILocation(line: 504, column: 26, scope: !2027)
!2030 = !DILocation(line: 504, column: 29, scope: !2027)
!2031 = !DILocation(line: 504, column: 54, scope: !2027)
!2032 = !DILocation(line: 504, column: 11, scope: !1813)
!2033 = !DILocation(line: 505, column: 2, scope: !2027)
!2034 = !DILocation(line: 505, column: 12, scope: !2027)
!2035 = !DILocation(line: 505, column: 27, scope: !2027)
!2036 = !DILocation(line: 506, column: 24, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 506, column: 16)
!2038 = !DILocation(line: 506, column: 49, scope: !2037)
!2039 = !DILocation(line: 506, column: 16, scope: !2027)
!2040 = !DILocation(line: 507, column: 2, scope: !2037)
!2041 = !DILocation(line: 507, column: 12, scope: !2037)
!2042 = !DILocation(line: 507, column: 27, scope: !2037)
!2043 = !DILocation(line: 508, column: 16, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 508, column: 16)
!2045 = !DILocation(line: 508, column: 39, scope: !2044)
!2046 = !DILocation(line: 508, column: 16, scope: !2037)
!2047 = !DILocation(line: 509, column: 2, scope: !2044)
!2048 = !DILocation(line: 509, column: 12, scope: !2044)
!2049 = !DILocation(line: 509, column: 27, scope: !2044)
!2050 = !DILocation(line: 510, column: 16, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 510, column: 16)
!2052 = !DILocation(line: 510, column: 40, scope: !2051)
!2053 = !DILocation(line: 510, column: 16, scope: !2044)
!2054 = !DILocation(line: 511, column: 2, scope: !2051)
!2055 = !DILocation(line: 511, column: 12, scope: !2051)
!2056 = !DILocation(line: 511, column: 27, scope: !2051)
!2057 = !DILocation(line: 513, column: 2, scope: !2051)
!2058 = !DILocation(line: 517, column: 24, scope: !1813)
!2059 = !DILocation(line: 518, column: 7, scope: !1813)
!2060 = !DILocation(line: 521, column: 33, scope: !1813)
!2061 = !DILocation(line: 522, column: 7, scope: !1813)
!2062 = !DILocation(line: 525, column: 36, scope: !1813)
!2063 = !DILocation(line: 525, column: 7, scope: !1813)
!2064 = !DILocation(line: 525, column: 17, scope: !1813)
!2065 = !DILocation(line: 525, column: 34, scope: !1813)
!2066 = !DILocation(line: 526, column: 7, scope: !1813)
!2067 = !DILocation(line: 529, column: 34, scope: !1813)
!2068 = !DILocation(line: 529, column: 7, scope: !1813)
!2069 = !DILocation(line: 529, column: 17, scope: !1813)
!2070 = !DILocation(line: 529, column: 32, scope: !1813)
!2071 = !DILocation(line: 530, column: 7, scope: !1813)
!2072 = !DILocation(line: 533, column: 30, scope: !1813)
!2073 = !DILocation(line: 533, column: 7, scope: !1813)
!2074 = !DILocation(line: 533, column: 17, scope: !1813)
!2075 = !DILocation(line: 533, column: 28, scope: !1813)
!2076 = !DILocation(line: 534, column: 7, scope: !1813)
!2077 = !DILocation(line: 539, column: 36, scope: !1813)
!2078 = !DILocation(line: 539, column: 28, scope: !1813)
!2079 = !DILocation(line: 540, column: 7, scope: !1813)
!2080 = !DILocation(line: 543, column: 28, scope: !1813)
!2081 = !DILocation(line: 543, column: 26, scope: !1813)
!2082 = !DILocation(line: 544, column: 7, scope: !1813)
!2083 = !DILocation(line: 547, column: 30, scope: !1813)
!2084 = !DILocation(line: 547, column: 28, scope: !1813)
!2085 = !DILocation(line: 548, column: 7, scope: !1813)
!2086 = !DILocation(line: 551, column: 26, scope: !1813)
!2087 = !DILocation(line: 552, column: 7, scope: !1813)
!2088 = !DILocation(line: 555, column: 17, scope: !1813)
!2089 = !DILocation(line: 556, column: 11, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 556, column: 11)
!2091 = !DILocation(line: 556, column: 11, scope: !1813)
!2092 = !DILocation(line: 557, column: 23, scope: !2090)
!2093 = !DILocation(line: 557, column: 9, scope: !2090)
!2094 = !DILocation(line: 561, column: 12, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 561, column: 11)
!2096 = !DILocation(line: 561, column: 11, scope: !1813)
!2097 = !DILocation(line: 562, column: 2, scope: !2095)
!2098 = !DILocation(line: 564, column: 2, scope: !2095)
!2099 = !DILocation(line: 568, column: 7, scope: !1813)
!2100 = !DILocation(line: 569, column: 7, scope: !1813)
!2101 = !DILocation(line: 572, column: 12, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 572, column: 11)
!2103 = !DILocation(line: 572, column: 11, scope: !1813)
!2104 = !DILocation(line: 574, column: 23, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 573, column: 2)
!2106 = !DILocation(line: 575, column: 4, scope: !2105)
!2107 = !DILocation(line: 596, column: 64, scope: !1813)
!2108 = !DILocation(line: 596, column: 7, scope: !1813)
!2109 = !DILocation(line: 597, column: 7, scope: !1813)
!2110 = !DILocation(line: 600, column: 27, scope: !1813)
!2111 = !DILocation(line: 601, column: 7, scope: !1813)
!2112 = !DILocation(line: 604, column: 21, scope: !1813)
!2113 = !DILocation(line: 604, column: 19, scope: !1813)
!2114 = !DILocation(line: 605, column: 7, scope: !1813)
!2115 = !DILocation(line: 608, column: 25, scope: !1813)
!2116 = !DILocation(line: 608, column: 23, scope: !1813)
!2117 = !DILocation(line: 609, column: 7, scope: !1813)
!2118 = !DILocation(line: 612, column: 11, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 612, column: 11)
!2120 = !DILocation(line: 612, column: 11, scope: !1813)
!2121 = !DILocation(line: 615, column: 2, scope: !2119)
!2122 = !DILocation(line: 619, column: 35, scope: !1813)
!2123 = !DILocation(line: 619, column: 7, scope: !1813)
!2124 = !DILocation(line: 619, column: 17, scope: !1813)
!2125 = !DILocation(line: 619, column: 33, scope: !1813)
!2126 = !DILocation(line: 620, column: 7, scope: !1813)
!2127 = !DILocation(line: 623, column: 36, scope: !1813)
!2128 = !DILocation(line: 623, column: 7, scope: !1813)
!2129 = !DILocation(line: 623, column: 17, scope: !1813)
!2130 = !DILocation(line: 623, column: 34, scope: !1813)
!2131 = !DILocation(line: 624, column: 7, scope: !1813)
!2132 = !DILocation(line: 627, column: 15, scope: !1813)
!2133 = !DILocation(line: 627, column: 7, scope: !1813)
!2134 = !DILocation(line: 630, column: 19, scope: !1813)
!2135 = !DILocation(line: 631, column: 25, scope: !1813)
!2136 = !DILocation(line: 631, column: 23, scope: !1813)
!2137 = !DILocation(line: 632, column: 7, scope: !1813)
!2138 = !DILocation(line: 635, column: 25, scope: !1813)
!2139 = !DILocation(line: 636, column: 7, scope: !1813)
!2140 = !DILocation(line: 639, column: 24, scope: !1813)
!2141 = !DILocation(line: 640, column: 7, scope: !1813)
!2142 = !DILocation(line: 643, column: 24, scope: !1813)
!2143 = !DILocation(line: 644, column: 7, scope: !1813)
!2144 = !DILocation(line: 647, column: 29, scope: !1813)
!2145 = !DILocation(line: 648, column: 7, scope: !1813)
!2146 = !DILocation(line: 651, column: 24, scope: !1813)
!2147 = !DILocation(line: 652, column: 7, scope: !1813)
!2148 = !DILocation(line: 655, column: 31, scope: !1813)
!2149 = !DILocation(line: 655, column: 29, scope: !1813)
!2150 = !DILocation(line: 656, column: 7, scope: !1813)
!2151 = !DILocation(line: 659, column: 26, scope: !1813)
!2152 = !DILocation(line: 659, column: 24, scope: !1813)
!2153 = !DILocation(line: 660, column: 7, scope: !1813)
!2154 = !DILocation(line: 663, column: 22, scope: !1813)
!2155 = !DILocation(line: 664, column: 7, scope: !1813)
!2156 = !DILocation(line: 667, column: 27, scope: !1813)
!2157 = !DILocation(line: 668, column: 7, scope: !1813)
!2158 = !DILocation(line: 671, column: 34, scope: !1813)
!2159 = !DILocation(line: 672, column: 7, scope: !1813)
!2160 = !DILocation(line: 675, column: 27, scope: !1813)
!2161 = !DILocation(line: 676, column: 7, scope: !1813)
!2162 = !DILocation(line: 679, column: 31, scope: !1813)
!2163 = !DILocation(line: 680, column: 7, scope: !1813)
!2164 = !DILocation(line: 683, column: 29, scope: !1813)
!2165 = !DILocation(line: 684, column: 7, scope: !1813)
!2166 = !DILocation(line: 687, column: 40, scope: !1813)
!2167 = !DILocation(line: 687, column: 7, scope: !1813)
!2168 = !DILocation(line: 687, column: 17, scope: !1813)
!2169 = !DILocation(line: 687, column: 38, scope: !1813)
!2170 = !DILocation(line: 688, column: 7, scope: !1813)
!2171 = !DILocation(line: 691, column: 26, scope: !1813)
!2172 = !DILocation(line: 692, column: 7, scope: !1813)
!2173 = !DILocation(line: 695, column: 30, scope: !1813)
!2174 = !DILocation(line: 695, column: 28, scope: !1813)
!2175 = !DILocation(line: 696, column: 7, scope: !1813)
!2176 = !DILocation(line: 699, column: 27, scope: !1813)
!2177 = !DILocation(line: 699, column: 25, scope: !1813)
!2178 = !DILocation(line: 700, column: 7, scope: !1813)
!2179 = !DILocation(line: 703, column: 7, scope: !1813)
!2180 = !DILocation(line: 704, column: 23, scope: !1813)
!2181 = !DILocation(line: 705, column: 7, scope: !1813)
!2182 = !DILocation(line: 708, column: 30, scope: !1813)
!2183 = !DILocation(line: 709, column: 7, scope: !1813)
!2184 = !DILocation(line: 712, column: 38, scope: !1813)
!2185 = !DILocation(line: 713, column: 7, scope: !1813)
!2186 = !DILocation(line: 716, column: 31, scope: !1813)
!2187 = !DILocation(line: 717, column: 7, scope: !1813)
!2188 = !DILocation(line: 720, column: 35, scope: !1813)
!2189 = !DILocation(line: 721, column: 7, scope: !1813)
!2190 = !DILocation(line: 724, column: 26, scope: !1813)
!2191 = !DILocation(line: 725, column: 7, scope: !1813)
!2192 = !DILocation(line: 728, column: 25, scope: !1813)
!2193 = !DILocation(line: 729, column: 7, scope: !1813)
!2194 = !DILocation(line: 732, column: 26, scope: !1813)
!2195 = !DILocation(line: 733, column: 7, scope: !1813)
!2196 = !DILocation(line: 736, column: 33, scope: !1813)
!2197 = !DILocation(line: 736, column: 31, scope: !1813)
!2198 = !DILocation(line: 737, column: 7, scope: !1813)
!2199 = !DILocation(line: 740, column: 34, scope: !1813)
!2200 = !DILocation(line: 740, column: 7, scope: !1813)
!2201 = !DILocation(line: 740, column: 17, scope: !1813)
!2202 = !DILocation(line: 740, column: 32, scope: !1813)
!2203 = !DILocation(line: 741, column: 7, scope: !1813)
!2204 = !DILocation(line: 744, column: 27, scope: !1813)
!2205 = !DILocation(line: 745, column: 7, scope: !1813)
!2206 = !DILocation(line: 748, column: 36, scope: !1813)
!2207 = !DILocation(line: 748, column: 7, scope: !1813)
!2208 = !DILocation(line: 748, column: 17, scope: !1813)
!2209 = !DILocation(line: 748, column: 34, scope: !1813)
!2210 = !DILocation(line: 749, column: 7, scope: !1813)
!2211 = !DILocation(line: 752, column: 29, scope: !1813)
!2212 = !DILocation(line: 752, column: 27, scope: !1813)
!2213 = !DILocation(line: 753, column: 7, scope: !1813)
!2214 = !DILocation(line: 756, column: 23, scope: !1813)
!2215 = !DILocation(line: 757, column: 7, scope: !1813)
!2216 = !DILocation(line: 760, column: 32, scope: !1813)
!2217 = !DILocation(line: 760, column: 7, scope: !1813)
!2218 = !DILocation(line: 760, column: 17, scope: !1813)
!2219 = !DILocation(line: 760, column: 30, scope: !1813)
!2220 = !DILocation(line: 761, column: 7, scope: !1813)
!2221 = !DILocation(line: 764, column: 33, scope: !1813)
!2222 = !DILocation(line: 765, column: 7, scope: !1813)
!2223 = !DILocation(line: 768, column: 27, scope: !1813)
!2224 = !DILocation(line: 769, column: 11, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 769, column: 11)
!2226 = !DILocation(line: 769, column: 11, scope: !1813)
!2227 = !DILocation(line: 770, column: 26, scope: !2225)
!2228 = !DILocation(line: 770, column: 2, scope: !2225)
!2229 = !DILocation(line: 774, column: 17, scope: !1813)
!2230 = !DILocation(line: 775, column: 7, scope: !1813)
!2231 = !DILocation(line: 778, column: 31, scope: !1813)
!2232 = !DILocation(line: 778, column: 7, scope: !1813)
!2233 = !DILocation(line: 778, column: 17, scope: !1813)
!2234 = !DILocation(line: 778, column: 29, scope: !1813)
!2235 = !DILocation(line: 779, column: 7, scope: !1813)
!2236 = !DILocation(line: 782, column: 32, scope: !1813)
!2237 = !DILocation(line: 783, column: 7, scope: !1813)
!2238 = !DILocation(line: 787, column: 22, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 787, column: 11)
!2240 = !DILocation(line: 788, column: 2, scope: !2239)
!2241 = !DILocation(line: 788, column: 12, scope: !2239)
!2242 = !DILocation(line: 788, column: 20, scope: !2239)
!2243 = !DILocation(line: 792, column: 7, scope: !1813)
!2244 = !DILocation(line: 792, column: 17, scope: !1813)
!2245 = !DILocation(line: 792, column: 32, scope: !1813)
!2246 = !DILocation(line: 793, column: 7, scope: !1813)
!2247 = !DILocation(line: 796, column: 7, scope: !1813)
!2248 = !DILocation(line: 796, column: 17, scope: !1813)
!2249 = !DILocation(line: 796, column: 30, scope: !1813)
!2250 = !DILocation(line: 797, column: 7, scope: !1813)
!2251 = !DILocation(line: 800, column: 7, scope: !1813)
!2252 = !DILocation(line: 800, column: 17, scope: !1813)
!2253 = !DILocation(line: 800, column: 31, scope: !1813)
!2254 = !DILocation(line: 801, column: 7, scope: !1813)
!2255 = !DILocation(line: 806, column: 23, scope: !1813)
!2256 = !DILocation(line: 807, column: 7, scope: !1813)
!2257 = !DILocation(line: 810, column: 27, scope: !1813)
!2258 = !DILocation(line: 811, column: 7, scope: !1813)
!2259 = !DILocation(line: 814, column: 38, scope: !1813)
!2260 = !DILocation(line: 815, column: 7, scope: !1813)
!2261 = !DILocation(line: 818, column: 41, scope: !1813)
!2262 = !DILocation(line: 819, column: 7, scope: !1813)
!2263 = !DILocation(line: 822, column: 17, scope: !1813)
!2264 = !DILocation(line: 823, column: 7, scope: !1813)
!2265 = !DILocation(line: 826, column: 31, scope: !1813)
!2266 = !DILocation(line: 827, column: 7, scope: !1813)
!2267 = !DILocation(line: 830, column: 29, scope: !1813)
!2268 = !DILocation(line: 831, column: 7, scope: !1813)
!2269 = !DILocation(line: 834, column: 22, scope: !1813)
!2270 = !DILocation(line: 835, column: 7, scope: !1813)
!2271 = !DILocation(line: 838, column: 28, scope: !1813)
!2272 = !DILocation(line: 839, column: 7, scope: !1813)
!2273 = !DILocation(line: 842, column: 7, scope: !1813)
!2274 = !DILocation(line: 843, column: 7, scope: !1813)
!2275 = !DILocation(line: 846, column: 7, scope: !1813)
!2276 = !DILocation(line: 847, column: 7, scope: !1813)
!2277 = !DILocation(line: 850, column: 7, scope: !1813)
!2278 = !DILocation(line: 851, column: 7, scope: !1813)
!2279 = !DILocation(line: 854, column: 17, scope: !1813)
!2280 = !DILocation(line: 854, column: 7, scope: !1813)
!2281 = !DILocation(line: 855, column: 7, scope: !1813)
!2282 = !DILocation(line: 859, column: 7, scope: !1813)
!2283 = !DILocation(line: 860, column: 7, scope: !1813)
!2284 = !DILocation(line: 863, column: 17, scope: !1813)
!2285 = !DILocation(line: 864, column: 7, scope: !1813)
!2286 = !DILocation(line: 867, column: 15, scope: !1813)
!2287 = !DILocation(line: 868, column: 7, scope: !1813)
!2288 = !DILocation(line: 871, column: 17, scope: !1813)
!2289 = !DILocation(line: 871, column: 7, scope: !1813)
!2290 = !DILocation(line: 872, column: 7, scope: !1813)
!2291 = !DILocation(line: 875, column: 15, scope: !1813)
!2292 = !DILocation(line: 876, column: 7, scope: !1813)
!2293 = !DILocation(line: 879, column: 17, scope: !1813)
!2294 = !DILocation(line: 879, column: 7, scope: !1813)
!2295 = !DILocation(line: 880, column: 7, scope: !1813)
!2296 = !DILocation(line: 883, column: 7, scope: !1813)
!2297 = !DILocation(line: 884, column: 7, scope: !1813)
!2298 = !DILocation(line: 887, column: 7, scope: !1813)
!2299 = !DILocation(line: 888, column: 7, scope: !1813)
!2300 = !DILocation(line: 891, column: 21, scope: !1813)
!2301 = !DILocation(line: 891, column: 7, scope: !1813)
!2302 = !DILocation(line: 892, column: 7, scope: !1813)
!2303 = !DILocation(line: 892, column: 17, scope: !1813)
!2304 = !DILocation(line: 892, column: 34, scope: !1813)
!2305 = !DILocation(line: 893, column: 7, scope: !1813)
!2306 = !DILocation(line: 896, column: 7, scope: !1813)
!2307 = !DILocation(line: 896, column: 17, scope: !1813)
!2308 = !DILocation(line: 896, column: 22, scope: !1813)
!2309 = !DILocation(line: 897, column: 7, scope: !1813)
!2310 = !DILocation(line: 900, column: 15, scope: !1813)
!2311 = !DILocation(line: 901, column: 7, scope: !1813)
!2312 = !DILocation(line: 904, column: 19, scope: !1813)
!2313 = !DILocation(line: 905, column: 7, scope: !1813)
!2314 = !DILocation(line: 908, column: 12, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 908, column: 11)
!2316 = !DILocation(line: 908, column: 11, scope: !1813)
!2317 = !DILocation(line: 909, column: 12, scope: !2315)
!2318 = !DILocation(line: 909, column: 2, scope: !2315)
!2319 = !DILocation(line: 911, column: 2, scope: !2315)
!2320 = !DILocation(line: 919, column: 7, scope: !1813)
!2321 = !DILocation(line: 919, column: 17, scope: !1813)
!2322 = !DILocation(line: 919, column: 26, scope: !1813)
!2323 = !DILocation(line: 920, column: 17, scope: !1813)
!2324 = !DILocation(line: 920, column: 35, scope: !1813)
!2325 = !DILocation(line: 921, column: 11, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 921, column: 11)
!2327 = !DILocation(line: 921, column: 29, scope: !2326)
!2328 = !DILocation(line: 921, column: 11, scope: !1813)
!2329 = !DILocation(line: 922, column: 20, scope: !2326)
!2330 = !DILocation(line: 922, column: 2, scope: !2326)
!2331 = !DILocation(line: 923, column: 11, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 923, column: 11)
!2333 = !DILocation(line: 923, column: 35, scope: !2332)
!2334 = !DILocation(line: 923, column: 11, scope: !1813)
!2335 = !DILocation(line: 924, column: 26, scope: !2332)
!2336 = !DILocation(line: 924, column: 2, scope: !2332)
!2337 = !DILocation(line: 925, column: 11, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 925, column: 11)
!2339 = !DILocation(line: 925, column: 21, scope: !2338)
!2340 = !DILocation(line: 925, column: 11, scope: !1813)
!2341 = !DILocation(line: 926, column: 12, scope: !2338)
!2342 = !DILocation(line: 926, column: 2, scope: !2338)
!2343 = !DILocation(line: 930, column: 27, scope: !1813)
!2344 = !DILocation(line: 931, column: 7, scope: !1813)
!2345 = !DILocation(line: 934, column: 36, scope: !1813)
!2346 = !DILocation(line: 934, column: 7, scope: !1813)
!2347 = !DILocation(line: 935, column: 26, scope: !1813)
!2348 = !DILocation(line: 936, column: 7, scope: !1813)
!2349 = !DILocation(line: 939, column: 7, scope: !1813)
!2350 = !DILocation(line: 939, column: 17, scope: !1813)
!2351 = !DILocation(line: 939, column: 23, scope: !1813)
!2352 = !DILocation(line: 940, column: 7, scope: !1813)
!2353 = !DILocation(line: 944, column: 11, scope: !1813)
!2354 = !DILocation(line: 945, column: 22, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 944, column: 11)
!2356 = !DILocation(line: 945, column: 2, scope: !2355)
!2357 = !DILocation(line: 950, column: 11, scope: !1813)
!2358 = !DILocation(line: 951, column: 22, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 950, column: 11)
!2360 = !DILocation(line: 951, column: 2, scope: !2359)
!2361 = !DILocation(line: 958, column: 11, scope: !1813)
!2362 = !DILocation(line: 959, column: 20, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 958, column: 11)
!2364 = !DILocation(line: 959, column: 2, scope: !2363)
!2365 = !DILocation(line: 964, column: 11, scope: !1813)
!2366 = !DILocation(line: 965, column: 2, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 964, column: 11)
!2368 = !DILocation(line: 972, column: 11, scope: !1813)
!2369 = !DILocation(line: 973, column: 2, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 972, column: 11)
!2371 = !DILocation(line: 978, column: 11, scope: !1813)
!2372 = !DILocation(line: 979, column: 2, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 978, column: 11)
!2374 = !DILocation(line: 983, column: 7, scope: !1813)
!2375 = !DILocation(line: 983, column: 17, scope: !1813)
!2376 = !DILocation(line: 983, column: 27, scope: !1813)
!2377 = !DILocation(line: 984, column: 7, scope: !1813)
!2378 = !DILocation(line: 987, column: 7, scope: !1813)
!2379 = !DILocation(line: 987, column: 17, scope: !1813)
!2380 = !DILocation(line: 987, column: 29, scope: !1813)
!2381 = !DILocation(line: 988, column: 7, scope: !1813)
!2382 = !DILocation(line: 991, column: 18, scope: !1813)
!2383 = !DILocation(line: 992, column: 7, scope: !1813)
!2384 = !DILocation(line: 995, column: 15, scope: !1813)
!2385 = !DILocation(line: 996, column: 7, scope: !1813)
!2386 = !DILocation(line: 999, column: 18, scope: !1813)
!2387 = !DILocation(line: 1000, column: 7, scope: !1813)
!2388 = !DILocation(line: 1003, column: 3, scope: !1780)
!2389 = distinct !DISubprogram(name: "defer_opt", scope: !3, file: !3, line: 192, type: !2390, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !26, !8}
!2392 = !{!2393, !2394}
!2393 = !DILocalVariable(name: "code", arg: 1, scope: !2389, file: !3, line: 192, type: !26)
!2394 = !DILocalVariable(name: "arg", arg: 2, scope: !2389, file: !3, line: 192, type: !8)
!2395 = !DILocation(line: 0, scope: !2389)
!2396 = !DILocation(line: 194, column: 3, scope: !2389)
!2397 = !DILocation(line: 194, column: 17, scope: !2389)
!2398 = !DILocation(line: 194, column: 33, scope: !2389)
!2399 = !DILocation(line: 194, column: 38, scope: !2389)
!2400 = !DILocation(line: 195, column: 3, scope: !2389)
!2401 = !DILocation(line: 195, column: 17, scope: !2389)
!2402 = !DILocation(line: 195, column: 33, scope: !2389)
!2403 = !DILocation(line: 195, column: 37, scope: !2389)
!2404 = !DILocation(line: 196, column: 17, scope: !2389)
!2405 = !DILocation(line: 197, column: 1, scope: !2389)
!2406 = distinct !DISubprogram(name: "set_Wimplicit", scope: !3, file: !3, line: 1658, type: !2407, scopeLine: 1659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2409)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !934}
!2409 = !{!2410}
!2410 = !DILocalVariable(name: "on", arg: 1, scope: !2406, file: !3, line: 1658, type: !934)
!2411 = !DILocation(line: 0, scope: !2406)
!2412 = !DILocation(line: 1660, column: 17, scope: !2406)
!2413 = !DILocation(line: 1661, column: 21, scope: !2406)
!2414 = !DILocation(line: 1662, column: 38, scope: !2406)
!2415 = !DILocation(line: 1663, column: 1, scope: !2406)
!2416 = distinct !DISubprogram(name: "set_std_c89", scope: !3, file: !3, line: 1611, type: !2417, scopeLine: 1612, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !934, !934}
!2419 = !{!2420, !2421}
!2420 = !DILocalVariable(name: "c94", arg: 1, scope: !2416, file: !3, line: 1611, type: !934)
!2421 = !DILocalVariable(name: "iso", arg: 2, scope: !2416, file: !3, line: 1611, type: !934)
!2422 = !DILocation(line: 0, scope: !2416)
!2423 = !DILocation(line: 1613, column: 17, scope: !2416)
!2424 = !DILocation(line: 1613, column: 27, scope: !2416)
!2425 = !DILocation(line: 1613, column: 45, scope: !2416)
!2426 = !DILocation(line: 1613, column: 3, scope: !2416)
!2427 = !DILocation(line: 1614, column: 12, scope: !2416)
!2428 = !DILocation(line: 1615, column: 15, scope: !2416)
!2429 = !DILocation(line: 1616, column: 24, scope: !2416)
!2430 = !DILocation(line: 1617, column: 27, scope: !2416)
!2431 = !DILocation(line: 1618, column: 15, scope: !2416)
!2432 = !DILocation(line: 1619, column: 15, scope: !2416)
!2433 = !DILocation(line: 1620, column: 1, scope: !2416)
!2434 = distinct !DISubprogram(name: "set_std_cxx98", scope: !3, file: !3, line: 1636, type: !2407, scopeLine: 1637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2435)
!2435 = !{!2436}
!2436 = !DILocalVariable(name: "iso", arg: 1, scope: !2434, file: !3, line: 1636, type: !934)
!2437 = !DILocation(line: 0, scope: !2434)
!2438 = !DILocation(line: 1638, column: 17, scope: !2434)
!2439 = !DILocation(line: 1638, column: 27, scope: !2434)
!2440 = !DILocation(line: 1638, column: 3, scope: !2434)
!2441 = !DILocation(line: 1639, column: 24, scope: !2434)
!2442 = !DILocation(line: 1640, column: 27, scope: !2434)
!2443 = !DILocation(line: 1641, column: 12, scope: !2434)
!2444 = !DILocation(line: 1642, column: 15, scope: !2434)
!2445 = !DILocation(line: 1643, column: 1, scope: !2434)
!2446 = distinct !DISubprogram(name: "handle_OPT_d", scope: !3, file: !3, line: 1668, type: !2447, scopeLine: 1669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !8}
!2449 = !{!2450, !2451}
!2450 = !DILocalVariable(name: "arg", arg: 1, scope: !2446, file: !3, line: 1668, type: !8)
!2451 = !DILocalVariable(name: "c", scope: !2446, file: !3, line: 1670, type: !10)
!2452 = !DILocation(line: 0, scope: !2446)
!2453 = !DILocation(line: 1672, column: 3, scope: !2446)
!2454 = !DILocation(line: 1672, column: 19, scope: !2446)
!2455 = !DILocation(line: 1672, column: 15, scope: !2446)
!2456 = !DILocation(line: 1672, column: 23, scope: !2446)
!2457 = !DILocation(line: 1673, column: 13, scope: !2446)
!2458 = !DILocation(line: 1673, column: 5, scope: !2446)
!2459 = !DILocation(line: 1679, column: 19, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1674, column: 7)
!2461 = !DILocation(line: 1680, column: 2, scope: !2460)
!2462 = !DILocation(line: 1683, column: 21, scope: !2460)
!2463 = !DILocation(line: 1684, column: 2, scope: !2460)
!2464 = distinct !{!2464, !2453, !2465}
!2465 = !DILocation(line: 1685, column: 7, scope: !2446)
!2466 = !DILocation(line: 1686, column: 1, scope: !2446)
!2467 = distinct !DISubprogram(name: "add_prefixed_path", scope: !3, file: !3, line: 1473, type: !2468, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !8, !1004}
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476}
!2471 = !DILocalVariable(name: "suffix", arg: 1, scope: !2467, file: !3, line: 1473, type: !8)
!2472 = !DILocalVariable(name: "chain", arg: 2, scope: !2467, file: !3, line: 1473, type: !1004)
!2473 = !DILocalVariable(name: "path", scope: !2467, file: !3, line: 1475, type: !936)
!2474 = !DILocalVariable(name: "prefix", scope: !2467, file: !3, line: 1476, type: !8)
!2475 = !DILocalVariable(name: "prefix_len", scope: !2467, file: !3, line: 1477, type: !1004)
!2476 = !DILocalVariable(name: "suffix_len", scope: !2467, file: !3, line: 1477, type: !1004)
!2477 = !DILocation(line: 0, scope: !2467)
!2478 = !DILocation(line: 1479, column: 16, scope: !2467)
!2479 = !DILocation(line: 1480, column: 16, scope: !2467)
!2480 = !DILocation(line: 1481, column: 16, scope: !2467)
!2481 = !DILocation(line: 1481, column: 26, scope: !2467)
!2482 = !DILocation(line: 1481, column: 45, scope: !2467)
!2483 = !DILocation(line: 1483, column: 39, scope: !2467)
!2484 = !DILocation(line: 1483, column: 52, scope: !2467)
!2485 = !DILocation(line: 1483, column: 19, scope: !2467)
!2486 = !DILocation(line: 1484, column: 3, scope: !2467)
!2487 = !DILocation(line: 1485, column: 16, scope: !2467)
!2488 = !DILocation(line: 1485, column: 3, scope: !2467)
!2489 = !DILocation(line: 1486, column: 3, scope: !2467)
!2490 = !DILocation(line: 1486, column: 33, scope: !2467)
!2491 = !DILocation(line: 1488, column: 19, scope: !2467)
!2492 = !DILocation(line: 1488, column: 3, scope: !2467)
!2493 = !DILocation(line: 1489, column: 1, scope: !2467)
!2494 = distinct !DISubprogram(name: "set_std_cxx0x", scope: !3, file: !3, line: 1647, type: !2407, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2495)
!2495 = !{!2496}
!2496 = !DILocalVariable(name: "iso", arg: 1, scope: !2494, file: !3, line: 1647, type: !934)
!2497 = !DILocation(line: 0, scope: !2494)
!2498 = !DILocation(line: 1649, column: 17, scope: !2494)
!2499 = !DILocation(line: 1649, column: 27, scope: !2494)
!2500 = !DILocation(line: 1649, column: 3, scope: !2494)
!2501 = !DILocation(line: 1650, column: 24, scope: !2494)
!2502 = !DILocation(line: 1651, column: 27, scope: !2494)
!2503 = !DILocation(line: 1652, column: 12, scope: !2494)
!2504 = !DILocation(line: 1653, column: 15, scope: !2494)
!2505 = !DILocation(line: 1654, column: 1, scope: !2494)
!2506 = distinct !DISubprogram(name: "set_std_c99", scope: !3, file: !3, line: 1624, type: !2407, scopeLine: 1625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2507)
!2507 = !{!2508}
!2508 = !DILocalVariable(name: "iso", arg: 1, scope: !2506, file: !3, line: 1624, type: !934)
!2509 = !DILocation(line: 0, scope: !2506)
!2510 = !DILocation(line: 1626, column: 17, scope: !2506)
!2511 = !DILocation(line: 1626, column: 27, scope: !2506)
!2512 = !DILocation(line: 1626, column: 3, scope: !2506)
!2513 = !DILocation(line: 1627, column: 15, scope: !2506)
!2514 = !DILocation(line: 1628, column: 27, scope: !2506)
!2515 = !DILocation(line: 1629, column: 12, scope: !2506)
!2516 = !DILocation(line: 1630, column: 15, scope: !2506)
!2517 = !DILocation(line: 1631, column: 15, scope: !2506)
!2518 = !DILocation(line: 1632, column: 1, scope: !2506)
!2519 = distinct !DISubprogram(name: "c_common_post_options", scope: !3, file: !3, line: 1008, type: !2520, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!933, !7}
!2522 = !{!2523, !2524}
!2523 = !DILocalVariable(name: "pfilename", arg: 1, scope: !2519, file: !3, line: 1008, type: !7)
!2524 = !DILocalVariable(name: "cb", scope: !2519, file: !3, line: 1010, type: !1113)
!2525 = !DILocation(line: 0, scope: !2519)
!2526 = !DILocation(line: 1013, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1013, column: 7)
!2528 = !DILocation(line: 1013, column: 17, scope: !2527)
!2529 = !DILocation(line: 1013, column: 7, scope: !2519)
!2530 = !DILocation(line: 1015, column: 19, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1014, column: 5)
!2532 = !DILocation(line: 1015, column: 17, scope: !2531)
!2533 = !DILocation(line: 1016, column: 7, scope: !2531)
!2534 = !DILocation(line: 1016, column: 20, scope: !2531)
!2535 = !DILocation(line: 1017, column: 5, scope: !2531)
!2536 = !DILocation(line: 1018, column: 20, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1018, column: 12)
!2538 = !DILocation(line: 1018, column: 12, scope: !2537)
!2539 = !DILocation(line: 1018, column: 39, scope: !2537)
!2540 = !DILocation(line: 1018, column: 12, scope: !2527)
!2541 = !DILocation(line: 1019, column: 5, scope: !2537)
!2542 = !DILocation(line: 1019, column: 18, scope: !2537)
!2543 = !DILocation(line: 1021, column: 7, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1021, column: 7)
!2545 = !DILocation(line: 1021, column: 17, scope: !2544)
!2546 = !DILocation(line: 1021, column: 25, scope: !2544)
!2547 = !DILocation(line: 1021, column: 29, scope: !2544)
!2548 = !DILocation(line: 1021, column: 7, scope: !2519)
!2549 = !DILocation(line: 1022, column: 15, scope: !2544)
!2550 = !DILocation(line: 1022, column: 5, scope: !2544)
!2551 = !DILocation(line: 1024, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1024, column: 7)
!2553 = !DILocation(line: 1024, column: 22, scope: !2552)
!2554 = !DILocation(line: 1024, column: 28, scope: !2552)
!2555 = !DILocation(line: 1024, column: 7, scope: !2519)
!2556 = !DILocation(line: 1025, column: 5, scope: !2552)
!2557 = !DILocation(line: 1027, column: 3, scope: !2519)
!2558 = !DILocation(line: 1029, column: 3, scope: !2519)
!2559 = !DILocation(line: 1031, column: 28, scope: !2519)
!2560 = !DILocation(line: 1031, column: 38, scope: !2519)
!2561 = !DILocation(line: 1031, column: 47, scope: !2519)
!2562 = !DILocation(line: 1031, column: 56, scope: !2519)
!2563 = !DILocation(line: 1032, column: 7, scope: !2519)
!2564 = !DILocation(line: 1032, column: 16, scope: !2519)
!2565 = !DILocation(line: 1032, column: 28, scope: !2519)
!2566 = !DILocation(line: 1032, column: 31, scope: !2519)
!2567 = !DILocation(line: 1032, column: 49, scope: !2519)
!2568 = !DILocation(line: 1031, column: 3, scope: !2519)
!2569 = !DILocation(line: 1042, column: 7, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1042, column: 7)
!2571 = !DILocation(line: 0, scope: !2570)
!2572 = !DILocation(line: 1042, column: 7, scope: !2519)
!2573 = !DILocation(line: 1044, column: 41, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1044, column: 11)
!2575 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1043, column: 5)
!2576 = !DILocation(line: 1044, column: 11, scope: !2575)
!2577 = !DILocation(line: 1046, column: 2, scope: !2574)
!2578 = !DILocation(line: 1047, column: 37, scope: !2575)
!2579 = !DILocation(line: 1048, column: 5, scope: !2575)
!2580 = !DILocation(line: 1049, column: 42, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1049, column: 12)
!2582 = !DILocation(line: 1049, column: 12, scope: !2570)
!2583 = !DILocation(line: 1050, column: 38, scope: !2581)
!2584 = !DILocation(line: 1050, column: 35, scope: !2581)
!2585 = !DILocation(line: 1050, column: 5, scope: !2581)
!2586 = !DILocation(line: 1056, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1056, column: 7)
!2588 = !DILocation(line: 1056, column: 25, scope: !2587)
!2589 = !DILocation(line: 1056, column: 7, scope: !2519)
!2590 = !DILocation(line: 1057, column: 26, scope: !2587)
!2591 = !DILocation(line: 1057, column: 25, scope: !2587)
!2592 = !DILocation(line: 1057, column: 23, scope: !2587)
!2593 = !DILocation(line: 1057, column: 5, scope: !2587)
!2594 = !DILocation(line: 1058, column: 35, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1058, column: 12)
!2596 = !DILocation(line: 1058, column: 31, scope: !2595)
!2597 = !DILocation(line: 1059, column: 5, scope: !2595)
!2598 = !DILocation(line: 1062, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1062, column: 7)
!2600 = !DILocation(line: 1062, column: 33, scope: !2599)
!2601 = !DILocation(line: 1062, column: 7, scope: !2519)
!2602 = !DILocation(line: 1063, column: 33, scope: !2599)
!2603 = !DILocation(line: 1063, column: 31, scope: !2599)
!2604 = !DILocation(line: 1063, column: 5, scope: !2599)
!2605 = !DILocation(line: 1064, column: 32, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1064, column: 7)
!2607 = !DILocation(line: 1064, column: 7, scope: !2606)
!2608 = !DILocation(line: 1064, column: 28, scope: !2606)
!2609 = !DILocation(line: 1065, column: 21, scope: !2606)
!2610 = !DILocation(line: 1065, column: 5, scope: !2606)
!2611 = !DILocation(line: 1069, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1069, column: 7)
!2613 = !DILocation(line: 1069, column: 24, scope: !2612)
!2614 = !DILocation(line: 1069, column: 7, scope: !2519)
!2615 = !DILocation(line: 1070, column: 24, scope: !2612)
!2616 = !DILocation(line: 1070, column: 22, scope: !2612)
!2617 = !DILocation(line: 1070, column: 5, scope: !2612)
!2618 = !DILocation(line: 1071, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1071, column: 7)
!2620 = !DILocation(line: 1071, column: 22, scope: !2619)
!2621 = !DILocation(line: 1071, column: 7, scope: !2519)
!2622 = !DILocation(line: 1072, column: 22, scope: !2619)
!2623 = !DILocation(line: 1072, column: 20, scope: !2619)
!2624 = !DILocation(line: 1072, column: 5, scope: !2619)
!2625 = !DILocation(line: 1073, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1073, column: 7)
!2627 = !DILocation(line: 1073, column: 23, scope: !2626)
!2628 = !DILocation(line: 1073, column: 7, scope: !2519)
!2629 = !DILocation(line: 1074, column: 23, scope: !2626)
!2630 = !DILocation(line: 1074, column: 21, scope: !2626)
!2631 = !DILocation(line: 1074, column: 5, scope: !2626)
!2632 = !DILocation(line: 1075, column: 7, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1075, column: 7)
!2634 = !DILocation(line: 1075, column: 25, scope: !2633)
!2635 = !DILocation(line: 1075, column: 7, scope: !2519)
!2636 = !DILocation(line: 1076, column: 25, scope: !2633)
!2637 = !DILocation(line: 1076, column: 23, scope: !2633)
!2638 = !DILocation(line: 1076, column: 5, scope: !2633)
!2639 = !DILocation(line: 1077, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1077, column: 7)
!2641 = !DILocation(line: 1077, column: 39, scope: !2640)
!2642 = !DILocation(line: 1077, column: 7, scope: !2519)
!2643 = !DILocation(line: 1078, column: 39, scope: !2640)
!2644 = !DILocation(line: 1078, column: 37, scope: !2640)
!2645 = !DILocation(line: 1078, column: 5, scope: !2640)
!2646 = !DILocation(line: 1079, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1079, column: 7)
!2648 = !DILocation(line: 1079, column: 35, scope: !2647)
!2649 = !DILocation(line: 1079, column: 7, scope: !2519)
!2650 = !DILocation(line: 1080, column: 35, scope: !2647)
!2651 = !DILocation(line: 1080, column: 33, scope: !2647)
!2652 = !DILocation(line: 1080, column: 5, scope: !2647)
!2653 = !DILocation(line: 1081, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1081, column: 7)
!2655 = !DILocation(line: 1081, column: 34, scope: !2654)
!2656 = !DILocation(line: 1081, column: 7, scope: !2519)
!2657 = !DILocation(line: 1082, column: 34, scope: !2654)
!2658 = !DILocation(line: 1082, column: 32, scope: !2654)
!2659 = !DILocation(line: 1082, column: 5, scope: !2654)
!2660 = !DILocation(line: 1083, column: 7, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1083, column: 7)
!2662 = !DILocation(line: 1083, column: 26, scope: !2661)
!2663 = !DILocation(line: 1083, column: 7, scope: !2519)
!2664 = !DILocation(line: 1084, column: 26, scope: !2661)
!2665 = !DILocation(line: 1084, column: 24, scope: !2661)
!2666 = !DILocation(line: 1084, column: 5, scope: !2661)
!2667 = !DILocation(line: 1085, column: 7, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1085, column: 7)
!2669 = !DILocation(line: 1085, column: 31, scope: !2668)
!2670 = !DILocation(line: 1085, column: 7, scope: !2519)
!2671 = !DILocation(line: 1086, column: 31, scope: !2668)
!2672 = !DILocation(line: 1086, column: 29, scope: !2668)
!2673 = !DILocation(line: 1086, column: 5, scope: !2668)
!2674 = !DILocation(line: 1090, column: 7, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1090, column: 7)
!2676 = !DILocation(line: 1090, column: 25, scope: !2675)
!2677 = !DILocation(line: 1090, column: 7, scope: !2519)
!2678 = !DILocation(line: 1091, column: 23, scope: !2675)
!2679 = !DILocation(line: 1091, column: 5, scope: !2675)
!2680 = !DILocation(line: 1093, column: 7, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1093, column: 7)
!2682 = !DILocation(line: 1093, column: 28, scope: !2681)
!2683 = !DILocation(line: 1093, column: 7, scope: !2519)
!2684 = !DILocation(line: 1094, column: 26, scope: !2681)
!2685 = !DILocation(line: 1094, column: 5, scope: !2681)
!2686 = !DILocation(line: 1095, column: 7, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1095, column: 7)
!2688 = !DILocation(line: 1095, column: 28, scope: !2687)
!2689 = !DILocation(line: 1095, column: 7, scope: !2519)
!2690 = !DILocation(line: 1096, column: 26, scope: !2687)
!2691 = !DILocation(line: 1096, column: 5, scope: !2687)
!2692 = !DILocation(line: 1097, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1097, column: 7)
!2694 = !DILocation(line: 1097, column: 29, scope: !2693)
!2695 = !DILocation(line: 1097, column: 7, scope: !2519)
!2696 = !DILocation(line: 1098, column: 27, scope: !2693)
!2697 = !DILocation(line: 1098, column: 5, scope: !2693)
!2698 = !DILocation(line: 1103, column: 7, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1103, column: 7)
!2700 = !DILocation(line: 1103, column: 31, scope: !2699)
!2701 = !DILocation(line: 1103, column: 37, scope: !2699)
!2702 = !DILocation(line: 1103, column: 40, scope: !2699)
!2703 = !DILocation(line: 1103, column: 7, scope: !2519)
!2704 = !DILocation(line: 1104, column: 29, scope: !2699)
!2705 = !DILocation(line: 1104, column: 5, scope: !2699)
!2706 = !DILocation(line: 1110, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1110, column: 7)
!2708 = !DILocation(line: 1110, column: 17, scope: !2707)
!2709 = !DILocation(line: 1110, column: 7, scope: !2519)
!2710 = !DILocation(line: 1111, column: 18, scope: !2707)
!2711 = !DILocation(line: 1111, column: 35, scope: !2707)
!2712 = !DILocation(line: 1111, column: 17, scope: !2707)
!2713 = !DILocation(line: 1111, column: 15, scope: !2707)
!2714 = !DILocation(line: 1111, column: 5, scope: !2707)
!2715 = !DILocation(line: 1112, column: 22, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 1112, column: 12)
!2717 = !DILocation(line: 1112, column: 12, scope: !2707)
!2718 = !DILocation(line: 1113, column: 17, scope: !2716)
!2719 = !DILocation(line: 1113, column: 15, scope: !2716)
!2720 = !DILocation(line: 1113, column: 5, scope: !2716)
!2721 = !DILocation(line: 1118, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1118, column: 7)
!2723 = !DILocation(line: 1118, column: 28, scope: !2722)
!2724 = !DILocation(line: 1118, column: 7, scope: !2519)
!2725 = !DILocation(line: 1119, column: 30, scope: !2722)
!2726 = !DILocation(line: 1119, column: 29, scope: !2722)
!2727 = !DILocation(line: 1119, column: 26, scope: !2722)
!2728 = !DILocation(line: 1119, column: 5, scope: !2722)
!2729 = !DILocation(line: 1124, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1124, column: 7)
!2731 = !DILocation(line: 1124, column: 25, scope: !2730)
!2732 = !DILocation(line: 1124, column: 7, scope: !2519)
!2733 = !DILocation(line: 1125, column: 25, scope: !2730)
!2734 = !DILocation(line: 1125, column: 23, scope: !2730)
!2735 = !DILocation(line: 1125, column: 5, scope: !2730)
!2736 = !DILocation(line: 1130, column: 7, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1130, column: 7)
!2738 = !DILocation(line: 1130, column: 35, scope: !2737)
!2739 = !DILocation(line: 1130, column: 7, scope: !2519)
!2740 = !DILocation(line: 1131, column: 33, scope: !2737)
!2741 = !DILocation(line: 1131, column: 5, scope: !2737)
!2742 = !DILocation(line: 1135, column: 8, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1135, column: 7)
!2744 = !DILocation(line: 1135, column: 7, scope: !2519)
!2745 = !DILocation(line: 1137, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 1136, column: 5)
!2747 = !DILocation(line: 1139, column: 7, scope: !2746)
!2748 = !DILocation(line: 1141, column: 7, scope: !2746)
!2749 = !DILocation(line: 1143, column: 7, scope: !2746)
!2750 = !DILocation(line: 1145, column: 7, scope: !2746)
!2751 = !DILocation(line: 1147, column: 7, scope: !2746)
!2752 = !DILocation(line: 1149, column: 5, scope: !2746)
!2753 = !DILocation(line: 1152, column: 7, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1152, column: 7)
!2755 = !DILocation(line: 1152, column: 42, scope: !2754)
!2756 = !DILocation(line: 1152, column: 7, scope: !2519)
!2757 = !DILocation(line: 1153, column: 42, scope: !2754)
!2758 = !DILocation(line: 1153, column: 40, scope: !2754)
!2759 = !DILocation(line: 1153, column: 5, scope: !2754)
!2760 = !DILocation(line: 1157, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1157, column: 7)
!2762 = !DILocation(line: 1157, column: 19, scope: !2761)
!2763 = !DILocation(line: 1157, column: 7, scope: !2519)
!2764 = !DILocation(line: 1158, column: 23, scope: !2761)
!2765 = !DILocation(line: 1158, column: 5, scope: !2761)
!2766 = !DILocation(line: 1160, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1160, column: 7)
!2768 = !DILocation(line: 1160, column: 7, scope: !2519)
!2769 = !DILocation(line: 1165, column: 11, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 1165, column: 11)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 1161, column: 5)
!2772 = !DILocation(line: 1165, column: 24, scope: !2770)
!2773 = !DILocation(line: 1165, column: 11, scope: !2771)
!2774 = !DILocation(line: 1166, column: 15, scope: !2770)
!2775 = !DILocation(line: 1166, column: 2, scope: !2770)
!2776 = !DILocation(line: 1168, column: 15, scope: !2770)
!2777 = !DILocation(line: 0, scope: !2770)
!2778 = !DILocation(line: 1170, column: 22, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 1170, column: 11)
!2780 = !DILocation(line: 1170, column: 11, scope: !2771)
!2781 = !DILocation(line: 1172, column: 47, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 1171, column: 2)
!2783 = !DILocation(line: 1172, column: 4, scope: !2782)
!2784 = !DILocation(line: 1173, column: 4, scope: !2782)
!2785 = !DILocation(line: 1176, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 1176, column: 11)
!2787 = !DILocation(line: 1176, column: 25, scope: !2786)
!2788 = !DILocation(line: 1176, column: 11, scope: !2771)
!2789 = !DILocation(line: 1178, column: 9, scope: !2786)
!2790 = !DILocation(line: 1177, column: 2, scope: !2786)
!2791 = !DILocation(line: 1180, column: 23, scope: !2771)
!2792 = !DILocation(line: 1180, column: 7, scope: !2771)
!2793 = !DILocation(line: 1181, column: 5, scope: !2771)
!2794 = !DILocation(line: 1184, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 1183, column: 5)
!2796 = !DILocation(line: 1187, column: 22, scope: !2795)
!2797 = !DILocation(line: 1190, column: 27, scope: !2519)
!2798 = !DILocation(line: 1190, column: 8, scope: !2519)
!2799 = !DILocation(line: 1191, column: 7, scope: !2519)
!2800 = !DILocation(line: 1191, column: 19, scope: !2519)
!2801 = !DILocation(line: 1192, column: 7, scope: !2519)
!2802 = !DILocation(line: 1192, column: 18, scope: !2519)
!2803 = !DILocation(line: 1193, column: 21, scope: !2519)
!2804 = !DILocation(line: 1193, column: 3, scope: !2519)
!2805 = !DILocation(line: 1195, column: 18, scope: !2519)
!2806 = !DILocation(line: 1198, column: 27, scope: !2519)
!2807 = !DILocation(line: 1198, column: 37, scope: !2519)
!2808 = !DILocation(line: 1198, column: 7, scope: !2519)
!2809 = !DILocation(line: 1198, column: 5, scope: !2519)
!2810 = !DILocation(line: 1197, column: 14, scope: !2519)
!2811 = !DILocation(line: 1200, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1200, column: 7)
!2813 = !DILocation(line: 1200, column: 27, scope: !2812)
!2814 = !DILocation(line: 1200, column: 7, scope: !2519)
!2815 = !DILocation(line: 1202, column: 7, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 1201, column: 5)
!2817 = !DILocation(line: 1202, column: 17, scope: !2816)
!2818 = !DILocation(line: 1203, column: 7, scope: !2816)
!2819 = !DILocation(line: 1206, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1206, column: 7)
!2821 = !DILocation(line: 1207, column: 10, scope: !2820)
!2822 = !DILocation(line: 1207, column: 7, scope: !2820)
!2823 = !DILocation(line: 1207, column: 35, scope: !2820)
!2824 = !DILocation(line: 1208, column: 20, scope: !2820)
!2825 = !DILocation(line: 1208, column: 30, scope: !2820)
!2826 = !DILocation(line: 1208, column: 5, scope: !2820)
!2827 = !DILocation(line: 1210, column: 10, scope: !2519)
!2828 = !DILocation(line: 1210, column: 3, scope: !2519)
!2829 = !DILocation(line: 1211, column: 1, scope: !2519)
!2830 = distinct !DISubprogram(name: "check_deps_environment_vars", scope: !3, file: !3, line: 1343, type: !2831, scopeLine: 1344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2833)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null}
!2833 = !{!2834, !2835}
!2834 = !DILocalVariable(name: "spec", scope: !2830, file: !3, line: 1345, type: !936)
!2835 = !DILocalVariable(name: "s", scope: !2836, file: !3, line: 1363, type: !936)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1361, column: 5)
!2837 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 1360, column: 7)
!2838 = !DILocation(line: 1347, column: 3, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 1347, column: 3)
!2840 = !DILocation(line: 0, scope: !2830)
!2841 = !DILocation(line: 1348, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 1348, column: 7)
!2843 = !DILocation(line: 1348, column: 7, scope: !2830)
!2844 = !DILocation(line: 1349, column: 5, scope: !2842)
!2845 = !DILocation(line: 1349, column: 20, scope: !2842)
!2846 = !DILocation(line: 1349, column: 26, scope: !2842)
!2847 = !DILocation(line: 1352, column: 7, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 1352, column: 7)
!2849 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1351, column: 5)
!2850 = !DILocation(line: 1353, column: 11, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 1353, column: 11)
!2852 = !DILocation(line: 1353, column: 11, scope: !2849)
!2853 = !DILocation(line: 1355, column: 4, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 1354, column: 2)
!2855 = !DILocation(line: 1355, column: 19, scope: !2854)
!2856 = !DILocation(line: 1355, column: 25, scope: !2854)
!2857 = !DILocation(line: 1356, column: 19, scope: !2854)
!2858 = !DILocation(line: 1356, column: 36, scope: !2854)
!2859 = !DILocation(line: 1357, column: 2, scope: !2854)
!2860 = !DILocation(line: 1360, column: 7, scope: !2837)
!2861 = !DILocation(line: 1360, column: 7, scope: !2830)
!2862 = !DILocation(line: 1363, column: 17, scope: !2836)
!2863 = !DILocation(line: 0, scope: !2836)
!2864 = !DILocation(line: 1364, column: 11, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 1364, column: 11)
!2866 = !DILocation(line: 1364, column: 11, scope: !2836)
!2867 = !DILocation(line: 1367, column: 25, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 1365, column: 2)
!2869 = !DILocation(line: 1367, column: 4, scope: !2868)
!2870 = !DILocation(line: 1368, column: 7, scope: !2868)
!2871 = !DILocation(line: 1369, column: 2, scope: !2868)
!2872 = !DILocation(line: 1372, column: 12, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 1372, column: 11)
!2874 = !DILocation(line: 1372, column: 11, scope: !2836)
!2875 = !DILocation(line: 1373, column: 12, scope: !2873)
!2876 = !DILocation(line: 1373, column: 2, scope: !2873)
!2877 = !DILocation(line: 1375, column: 19, scope: !2836)
!2878 = !DILocation(line: 1376, column: 17, scope: !2836)
!2879 = !DILocation(line: 1377, column: 5, scope: !2836)
!2880 = !DILocation(line: 1378, column: 1, scope: !2830)
!2881 = distinct !DISubprogram(name: "handle_deferred_opts", scope: !3, file: !3, line: 1382, type: !2831, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !2882)
!2882 = !{!2883, !2884, !2887}
!2883 = !DILocalVariable(name: "i", scope: !2881, file: !3, line: 1384, type: !1004)
!2884 = !DILocalVariable(name: "deps", scope: !2881, file: !3, line: 1385, type: !2885)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !14, line: 685, flags: DIFlagFwdDecl)
!2887 = !DILocalVariable(name: "opt", scope: !2888, file: !3, line: 1397, type: !938)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1396, column: 5)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1395, column: 3)
!2890 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1395, column: 3)
!2891 = !DILocation(line: 1390, column: 8, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1390, column: 7)
!2893 = !DILocation(line: 1390, column: 7, scope: !2881)
!2894 = !DILocation(line: 1393, column: 24, scope: !2881)
!2895 = !DILocation(line: 1393, column: 10, scope: !2881)
!2896 = !DILocation(line: 0, scope: !2881)
!2897 = !DILocation(line: 1395, column: 8, scope: !2890)
!2898 = !DILocation(line: 0, scope: !2890)
!2899 = !DILocation(line: 1395, column: 19, scope: !2889)
!2900 = !DILocation(line: 1395, column: 17, scope: !2889)
!2901 = !DILocation(line: 1395, column: 3, scope: !2890)
!2902 = !DILocation(line: 1397, column: 35, scope: !2888)
!2903 = !DILocation(line: 0, scope: !2888)
!2904 = !DILocation(line: 1399, column: 16, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1399, column: 11)
!2906 = !DILocation(line: 1399, column: 21, scope: !2905)
!2907 = !DILocation(line: 1399, column: 31, scope: !2905)
!2908 = !DILocation(line: 1399, column: 44, scope: !2905)
!2909 = !DILocation(line: 1399, column: 11, scope: !2888)
!2910 = !DILocation(line: 1400, column: 30, scope: !2905)
!2911 = !DILocation(line: 1400, column: 45, scope: !2905)
!2912 = !DILocation(line: 1400, column: 2, scope: !2905)
!2913 = !DILocation(line: 1395, column: 36, scope: !2889)
!2914 = !DILocation(line: 1395, column: 3, scope: !2889)
!2915 = distinct !{!2915, !2901, !2916}
!2916 = !DILocation(line: 1401, column: 5, scope: !2890)
!2917 = !DILocation(line: 1402, column: 1, scope: !2881)
!2918 = distinct !DISubprogram(name: "sanitize_cpp_opts", scope: !3, file: !3, line: 1407, type: !2831, scopeLine: 1408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1321)
!2919 = !DILocation(line: 1411, column: 7, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1411, column: 7)
!2921 = !DILocation(line: 1411, column: 17, scope: !2920)
!2922 = !DILocation(line: 1411, column: 20, scope: !2920)
!2923 = !DILocation(line: 1411, column: 35, scope: !2920)
!2924 = !DILocation(line: 1411, column: 41, scope: !2920)
!2925 = !DILocation(line: 1411, column: 7, scope: !2918)
!2926 = !DILocation(line: 1412, column: 5, scope: !2920)
!2927 = !DILocation(line: 1416, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1416, column: 7)
!2929 = !DILocation(line: 1416, column: 24, scope: !2928)
!2930 = !DILocation(line: 1416, column: 7, scope: !2918)
!2931 = !DILocation(line: 1417, column: 20, scope: !2928)
!2932 = !DILocation(line: 1417, column: 5, scope: !2928)
!2933 = !DILocation(line: 1421, column: 7, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1421, column: 7)
!2935 = !DILocation(line: 1421, column: 17, scope: !2934)
!2936 = !DILocation(line: 1421, column: 33, scope: !2934)
!2937 = !DILocation(line: 1421, column: 47, scope: !2934)
!2938 = !DILocation(line: 1421, column: 60, scope: !2934)
!2939 = !DILocation(line: 1422, column: 22, scope: !2934)
!2940 = !DILocation(line: 1422, column: 5, scope: !2934)
!2941 = !DILocation(line: 1427, column: 7, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1427, column: 7)
!2943 = !DILocation(line: 1427, column: 7, scope: !2918)
!2944 = !DILocation(line: 1429, column: 28, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1429, column: 11)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1428, column: 5)
!2947 = !DILocation(line: 1429, column: 11, scope: !2946)
!2948 = !DILocation(line: 1430, column: 19, scope: !2945)
!2949 = !DILocation(line: 1430, column: 2, scope: !2945)
!2950 = !DILocation(line: 1431, column: 26, scope: !2946)
!2951 = !DILocation(line: 1432, column: 29, scope: !2946)
!2952 = !DILocation(line: 1433, column: 5, scope: !2946)
!2953 = !DILocation(line: 1434, column: 27, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1434, column: 12)
!2955 = !DILocation(line: 1434, column: 12, scope: !2954)
!2956 = !DILocation(line: 1434, column: 12, scope: !2942)
!2957 = !DILocation(line: 1435, column: 5, scope: !2954)
!2958 = !DILocation(line: 1437, column: 3, scope: !2918)
!2959 = !DILocation(line: 1437, column: 30, scope: !2918)
!2960 = !DILocation(line: 1437, column: 29, scope: !2918)
!2961 = !DILocation(line: 1437, column: 13, scope: !2918)
!2962 = !DILocation(line: 1437, column: 27, scope: !2918)
!2963 = !DILocation(line: 1438, column: 13, scope: !2918)
!2964 = !DILocation(line: 1438, column: 38, scope: !2918)
!2965 = !DILocation(line: 1445, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1445, column: 7)
!2967 = !DILocation(line: 1445, column: 22, scope: !2966)
!2968 = !DILocation(line: 1445, column: 7, scope: !2918)
!2969 = !DILocation(line: 1446, column: 24, scope: !2966)
!2970 = !DILocation(line: 1446, column: 36, scope: !2966)
!2971 = !DILocation(line: 1446, column: 33, scope: !2966)
!2972 = !DILocation(line: 1447, column: 13, scope: !2966)
!2973 = !DILocation(line: 0, scope: !2966)
!2974 = !DILocation(line: 1446, column: 20, scope: !2966)
!2975 = !DILocation(line: 1446, column: 5, scope: !2966)
!2976 = !DILocation(line: 1448, column: 30, scope: !2918)
!2977 = !DILocation(line: 1448, column: 13, scope: !2918)
!2978 = !DILocation(line: 1448, column: 28, scope: !2918)
!2979 = !DILocation(line: 1453, column: 7, scope: !2918)
!2980 = !DILocation(line: 1453, column: 28, scope: !2918)
!2981 = !DILocation(line: 1453, column: 32, scope: !2918)
!2982 = !DILocation(line: 1453, column: 41, scope: !2918)
!2983 = !DILocation(line: 1452, column: 13, scope: !2918)
!2984 = !DILocation(line: 1453, column: 5, scope: !2918)
!2985 = !DILocation(line: 1459, column: 7, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1459, column: 7)
!2987 = !DILocation(line: 1459, column: 30, scope: !2986)
!2988 = !DILocation(line: 1459, column: 7, scope: !2918)
!2989 = !DILocation(line: 1460, column: 31, scope: !2986)
!2990 = !DILocation(line: 1460, column: 48, scope: !2986)
!2991 = !DILocation(line: 1460, column: 28, scope: !2986)
!2992 = !DILocation(line: 1460, column: 5, scope: !2986)
!2993 = !DILocation(line: 1462, column: 17, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 1462, column: 7)
!2995 = !DILocation(line: 1462, column: 7, scope: !2994)
!2996 = !DILocation(line: 1462, column: 7, scope: !2918)
!2997 = !DILocation(line: 1464, column: 11, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 1464, column: 11)
!2999 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1463, column: 5)
!3000 = !DILocation(line: 1464, column: 11, scope: !2999)
!3001 = !DILocation(line: 1465, column: 2, scope: !2998)
!3002 = !DILocation(line: 1466, column: 11, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 1466, column: 11)
!3004 = !DILocation(line: 1466, column: 21, scope: !3003)
!3005 = !DILocation(line: 1466, column: 11, scope: !2999)
!3006 = !DILocation(line: 1467, column: 2, scope: !3003)
!3007 = !DILocation(line: 1469, column: 1, scope: !2918)
!3008 = distinct !DISubprogram(name: "cb_file_change", scope: !3, file: !3, line: 1589, type: !1184, scopeLine: 1591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !3009)
!3009 = !{!3010, !3011}
!3010 = !DILocalVariable(name: "pfile", arg: 1, scope: !3008, file: !3, line: 1589, type: !1120)
!3011 = !DILocalVariable(name: "new_map", arg: 2, scope: !3008, file: !3, line: 1590, type: !1186)
!3012 = !DILocation(line: 0, scope: !3008)
!3013 = !DILocation(line: 1592, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1592, column: 7)
!3015 = !DILocation(line: 1592, column: 7, scope: !3008)
!3016 = !DILocation(line: 1593, column: 5, scope: !3014)
!3017 = !DILocation(line: 1595, column: 5, scope: !3014)
!3018 = !DILocation(line: 1597, column: 15, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1597, column: 7)
!3020 = !DILocation(line: 1597, column: 20, scope: !3019)
!3021 = !DILocation(line: 1597, column: 33, scope: !3019)
!3022 = !DILocation(line: 1597, column: 40, scope: !3019)
!3023 = !DILocation(line: 1597, column: 52, scope: !3019)
!3024 = !DILocation(line: 1597, column: 55, scope: !3019)
!3025 = !DILocation(line: 1597, column: 7, scope: !3008)
!3026 = !DILocation(line: 1598, column: 5, scope: !3019)
!3027 = !DILocation(line: 1599, column: 1, scope: !3008)
!3028 = distinct !DISubprogram(name: "cb_dir_change", scope: !3, file: !3, line: 1602, type: !1200, scopeLine: 1603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !3029)
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "pfile", arg: 1, scope: !3028, file: !3, line: 1602, type: !1120)
!3031 = !DILocalVariable(name: "dir", arg: 2, scope: !3028, file: !3, line: 1602, type: !8)
!3032 = !DILocation(line: 0, scope: !3028)
!3033 = !DILocation(line: 1604, column: 8, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1604, column: 7)
!3035 = !DILocation(line: 1604, column: 7, scope: !3028)
!3036 = !DILocation(line: 1605, column: 5, scope: !3034)
!3037 = !DILocation(line: 1606, column: 1, scope: !3028)
!3038 = distinct !DISubprogram(name: "c_common_init", scope: !3, file: !3, line: 1215, type: !3039, scopeLine: 1216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1321)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!933}
!3041 = !DILocation(line: 1219, column: 25, scope: !3038)
!3042 = !DILocation(line: 1219, column: 3, scope: !3038)
!3043 = !DILocation(line: 1219, column: 13, scope: !3038)
!3044 = !DILocation(line: 1219, column: 23, scope: !3038)
!3045 = !DILocation(line: 1220, column: 30, scope: !3038)
!3046 = !DILocation(line: 1220, column: 13, scope: !3038)
!3047 = !DILocation(line: 1220, column: 28, scope: !3038)
!3048 = !DILocation(line: 1221, column: 29, scope: !3038)
!3049 = !DILocation(line: 1221, column: 13, scope: !3038)
!3050 = !DILocation(line: 1221, column: 27, scope: !3038)
!3051 = !DILocation(line: 1222, column: 31, scope: !3038)
!3052 = !DILocation(line: 1222, column: 13, scope: !3038)
!3053 = !DILocation(line: 1222, column: 29, scope: !3038)
!3054 = !DILocation(line: 1223, column: 30, scope: !3038)
!3055 = !DILocation(line: 1223, column: 13, scope: !3038)
!3056 = !DILocation(line: 1223, column: 28, scope: !3038)
!3057 = !DILocation(line: 1224, column: 13, scope: !3038)
!3058 = !DILocation(line: 1224, column: 30, scope: !3038)
!3059 = !DILocation(line: 1228, column: 19, scope: !3038)
!3060 = !DILocation(line: 1228, column: 3, scope: !3038)
!3061 = !DILocation(line: 1230, column: 7, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1230, column: 7)
!3063 = !DILocation(line: 1230, column: 7, scope: !3038)
!3064 = !DILocation(line: 1231, column: 34, scope: !3062)
!3065 = !DILocation(line: 1231, column: 5, scope: !3062)
!3066 = !DILocation(line: 1234, column: 3, scope: !3038)
!3067 = !DILocation(line: 1236, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1236, column: 7)
!3069 = !DILocation(line: 1236, column: 7, scope: !3038)
!3070 = !DILocation(line: 1238, column: 7, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 1237, column: 5)
!3072 = !DILocation(line: 1239, column: 24, scope: !3071)
!3073 = !DILocation(line: 1239, column: 7, scope: !3071)
!3074 = !DILocation(line: 1240, column: 7, scope: !3071)
!3075 = !DILocation(line: 0, scope: !3038)
!3076 = !DILocation(line: 1244, column: 1, scope: !3038)
!3077 = distinct !DISubprogram(name: "finish_options", scope: !3, file: !3, line: 1493, type: !2831, scopeLine: 1494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !3078)
!3078 = !{!3079, !3082, !3086}
!3079 = !DILocalVariable(name: "i", scope: !3080, file: !3, line: 1497, type: !1004)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1496, column: 5)
!3081 = distinct !DILexicalBlock(scope: !3077, file: !3, line: 1495, column: 7)
!3082 = !DILocalVariable(name: "opt", scope: !3083, file: !3, line: 1523, type: !938)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 1522, column: 2)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 1521, column: 7)
!3085 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 1521, column: 7)
!3086 = !DILocalVariable(name: "opt", scope: !3087, file: !3, line: 1541, type: !938)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1540, column: 2)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 1539, column: 7)
!3089 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 1539, column: 7)
!3090 = !DILocation(line: 1495, column: 8, scope: !3081)
!3091 = !DILocation(line: 1495, column: 18, scope: !3081)
!3092 = !DILocation(line: 1495, column: 7, scope: !3077)
!3093 = !DILocation(line: 1499, column: 23, scope: !3080)
!3094 = !DILocation(line: 1500, column: 22, scope: !3080)
!3095 = !DILocation(line: 1500, column: 9, scope: !3080)
!3096 = !DILocation(line: 1499, column: 7, scope: !3080)
!3097 = !DILocation(line: 1503, column: 26, scope: !3080)
!3098 = !DILocation(line: 1503, column: 36, scope: !3080)
!3099 = !DILocation(line: 1503, column: 7, scope: !3080)
!3100 = !DILocation(line: 1504, column: 23, scope: !3080)
!3101 = !DILocation(line: 1504, column: 7, scope: !3080)
!3102 = !DILocation(line: 1515, column: 33, scope: !3080)
!3103 = !DILocation(line: 1515, column: 43, scope: !3080)
!3104 = !DILocation(line: 1515, column: 52, scope: !3080)
!3105 = !DILocation(line: 1515, column: 66, scope: !3080)
!3106 = !DILocation(line: 1515, column: 55, scope: !3080)
!3107 = !DILocation(line: 1515, column: 17, scope: !3080)
!3108 = !DILocation(line: 1515, column: 30, scope: !3080)
!3109 = !DILocation(line: 1517, column: 23, scope: !3080)
!3110 = !DILocation(line: 1518, column: 22, scope: !3080)
!3111 = !DILocation(line: 1518, column: 9, scope: !3080)
!3112 = !DILocation(line: 1517, column: 7, scope: !3080)
!3113 = !DILocation(line: 0, scope: !3080)
!3114 = !DILocation(line: 1521, column: 12, scope: !3085)
!3115 = !DILocation(line: 0, scope: !3085)
!3116 = !DILocation(line: 1521, column: 23, scope: !3084)
!3117 = !DILocation(line: 1521, column: 21, scope: !3084)
!3118 = !DILocation(line: 1521, column: 7, scope: !3085)
!3119 = !DILocation(line: 1539, column: 7, scope: !3089)
!3120 = !DILocation(line: 1523, column: 32, scope: !3083)
!3121 = !DILocation(line: 0, scope: !3083)
!3122 = !DILocation(line: 1525, column: 13, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 1525, column: 8)
!3124 = !DILocation(line: 1525, column: 18, scope: !3123)
!3125 = !DILocation(line: 1525, column: 8, scope: !3083)
!3126 = !DILocation(line: 1526, column: 18, scope: !3123)
!3127 = !DILocation(line: 1526, column: 33, scope: !3123)
!3128 = !DILocation(line: 1526, column: 6, scope: !3123)
!3129 = !DILocation(line: 1527, column: 23, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 1527, column: 13)
!3131 = !DILocation(line: 1527, column: 13, scope: !3123)
!3132 = !DILocation(line: 1528, column: 17, scope: !3130)
!3133 = !DILocation(line: 1528, column: 32, scope: !3130)
!3134 = !DILocation(line: 1528, column: 6, scope: !3130)
!3135 = !DILocation(line: 1529, column: 23, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 1529, column: 13)
!3137 = !DILocation(line: 1529, column: 13, scope: !3130)
!3138 = !DILocation(line: 1531, column: 17, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1531, column: 12)
!3140 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1530, column: 6)
!3141 = !DILocation(line: 1531, column: 12, scope: !3139)
!3142 = !DILocation(line: 1531, column: 24, scope: !3139)
!3143 = !DILocation(line: 0, scope: !3139)
!3144 = !DILocation(line: 1531, column: 12, scope: !3140)
!3145 = !DILocation(line: 1532, column: 36, scope: !3139)
!3146 = !DILocation(line: 1532, column: 3, scope: !3139)
!3147 = !DILocation(line: 1534, column: 3, scope: !3139)
!3148 = !DILocation(line: 1521, column: 40, scope: !3084)
!3149 = !DILocation(line: 1521, column: 7, scope: !3084)
!3150 = distinct !{!3150, !3118, !3151}
!3151 = !DILocation(line: 1536, column: 2, scope: !3085)
!3152 = !DILocation(line: 1539, column: 23, scope: !3088)
!3153 = !DILocation(line: 0, scope: !3089)
!3154 = !DILocation(line: 1539, column: 21, scope: !3088)
!3155 = !DILocation(line: 1541, column: 32, scope: !3087)
!3156 = !DILocation(line: 0, scope: !3087)
!3157 = !DILocation(line: 1543, column: 13, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 1543, column: 8)
!3159 = !DILocation(line: 1543, column: 18, scope: !3158)
!3160 = !DILocation(line: 1544, column: 8, scope: !3158)
!3161 = !DILocation(line: 1544, column: 29, scope: !3158)
!3162 = !DILocation(line: 1544, column: 44, scope: !3158)
!3163 = !DILocation(line: 1544, column: 11, scope: !3158)
!3164 = !DILocation(line: 1543, column: 8, scope: !3087)
!3165 = !DILocation(line: 1547, column: 25, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1545, column: 6)
!3167 = !DILocation(line: 1547, column: 40, scope: !3166)
!3168 = !DILocation(line: 1547, column: 23, scope: !3166)
!3169 = !DILocation(line: 1548, column: 27, scope: !3166)
!3170 = !DILocation(line: 1548, column: 8, scope: !3166)
!3171 = !DILocation(line: 1549, column: 6, scope: !3166)
!3172 = !DILocation(line: 1539, column: 40, scope: !3088)
!3173 = !DILocation(line: 1539, column: 7, scope: !3088)
!3174 = distinct !{!3174, !3119, !3175}
!3175 = !DILocation(line: 1550, column: 2, scope: !3089)
!3176 = !DILocation(line: 1552, column: 22, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1552, column: 12)
!3178 = !DILocation(line: 1552, column: 12, scope: !3177)
!3179 = !DILocation(line: 1552, column: 12, scope: !3081)
!3180 = !DILocation(line: 1553, column: 32, scope: !3177)
!3181 = !DILocation(line: 1553, column: 5, scope: !3177)
!3182 = !DILocation(line: 1555, column: 18, scope: !3077)
!3183 = !DILocation(line: 1556, column: 3, scope: !3077)
!3184 = !DILocation(line: 1557, column: 1, scope: !3077)
!3185 = distinct !DISubprogram(name: "c_common_parse_file", scope: !3, file: !3, line: 1249, type: !2407, scopeLine: 1250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !3186)
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "set_yydebug", arg: 1, scope: !3185, file: !3, line: 1249, type: !934)
!3188 = !DILocalVariable(name: "i", scope: !3185, file: !3, line: 1251, type: !6)
!3189 = !DILocation(line: 0, scope: !3185)
!3190 = !DILocation(line: 1253, column: 7, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 1253, column: 7)
!3192 = !DILocation(line: 1253, column: 7, scope: !3185)
!3193 = !DILocation(line: 1254, column: 13, scope: !3191)
!3194 = !DILocation(line: 1254, column: 5, scope: !3191)
!3195 = !DILocation(line: 1257, column: 2, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 1255, column: 7)
!3197 = !DILocation(line: 1258, column: 2, scope: !3196)
!3198 = !DILocation(line: 1260, column: 2, scope: !3196)
!3199 = !DILocation(line: 1262, column: 2, scope: !3196)
!3200 = !DILocation(line: 1264, column: 2, scope: !3196)
!3201 = !DILocation(line: 1265, column: 2, scope: !3196)
!3202 = !DILocation(line: 1267, column: 2, scope: !3196)
!3203 = !DILocation(line: 1269, column: 2, scope: !3196)
!3204 = !DILocation(line: 1271, column: 2, scope: !3196)
!3205 = !DILocation(line: 1272, column: 5, scope: !3196)
!3206 = !DILocation(line: 1275, column: 3, scope: !3185)
!3207 = !DILocation(line: 1278, column: 11, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 1278, column: 11)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1276, column: 5)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !3, line: 1275, column: 3)
!3211 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 1275, column: 3)
!3212 = !DILocation(line: 1278, column: 24, scope: !3208)
!3213 = !DILocation(line: 1278, column: 11, scope: !3209)
!3214 = !DILocation(line: 1279, column: 17, scope: !3208)
!3215 = !DILocation(line: 1279, column: 40, scope: !3208)
!3216 = !DILocation(line: 1279, column: 2, scope: !3208)
!3217 = !DILocation(line: 1280, column: 7, scope: !3209)
!3218 = !DILocation(line: 1281, column: 7, scope: !3209)
!3219 = !DILocation(line: 1282, column: 7, scope: !3209)
!3220 = !DILocation(line: 1283, column: 7, scope: !3209)
!3221 = !DILocation(line: 1284, column: 7, scope: !3209)
!3222 = !DILocation(line: 1285, column: 7, scope: !3209)
!3223 = !DILocation(line: 1287, column: 11, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 1287, column: 11)
!3225 = !DILocation(line: 1287, column: 24, scope: !3224)
!3226 = !DILocation(line: 1287, column: 11, scope: !3209)
!3227 = !DILocation(line: 1288, column: 17, scope: !3224)
!3228 = !DILocation(line: 1288, column: 2, scope: !3224)
!3229 = !DILocation(line: 1289, column: 11, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 1289, column: 11)
!3231 = !DILocation(line: 1289, column: 18, scope: !3230)
!3232 = !DILocation(line: 1289, column: 15, scope: !3230)
!3233 = !DILocation(line: 1289, column: 11, scope: !3209)
!3234 = !DILocation(line: 1291, column: 22, scope: !3209)
!3235 = !DILocation(line: 1291, column: 7, scope: !3209)
!3236 = !DILocation(line: 1292, column: 29, scope: !3209)
!3237 = !DILocation(line: 1292, column: 7, scope: !3209)
!3238 = !DILocation(line: 1294, column: 24, scope: !3209)
!3239 = !DILocation(line: 1294, column: 34, scope: !3209)
!3240 = !DILocation(line: 1294, column: 4, scope: !3209)
!3241 = !DILocation(line: 1294, column: 2, scope: !3209)
!3242 = !DILocation(line: 1297, column: 12, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 1297, column: 11)
!3244 = !DILocation(line: 1297, column: 11, scope: !3209)
!3245 = distinct !{!3245, !3246, !3247}
!3246 = !DILocation(line: 1275, column: 3, scope: !3211)
!3247 = !DILocation(line: 1299, column: 5, scope: !3211)
!3248 = !DILocation(line: 1300, column: 1, scope: !3185)
!3249 = distinct !DISubprogram(name: "c_common_finish", scope: !3, file: !3, line: 1304, type: !2831, scopeLine: 1305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !3250)
!3250 = !{!3251}
!3251 = !DILocalVariable(name: "deps_stream", scope: !3249, file: !3, line: 1306, type: !1021)
!3252 = !DILocation(line: 0, scope: !3249)
!3253 = !DILocation(line: 1309, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1309, column: 7)
!3255 = !DILocation(line: 1309, column: 22, scope: !3254)
!3256 = !DILocation(line: 1309, column: 28, scope: !3254)
!3257 = !DILocation(line: 1309, column: 41, scope: !3254)
!3258 = !DILocation(line: 1309, column: 44, scope: !3254)
!3259 = !DILocation(line: 1309, column: 55, scope: !3254)
!3260 = !DILocation(line: 1309, column: 7, scope: !3249)
!3261 = !DILocation(line: 1313, column: 12, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 1313, column: 11)
!3263 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 1310, column: 5)
!3264 = !DILocation(line: 1313, column: 11, scope: !3263)
!3265 = !DILocation(line: 1314, column: 16, scope: !3262)
!3266 = !DILocation(line: 1314, column: 2, scope: !3262)
!3267 = !DILocation(line: 1317, column: 18, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 1316, column: 2)
!3269 = !DILocation(line: 1318, column: 9, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 1318, column: 8)
!3271 = !DILocation(line: 1318, column: 8, scope: !3268)
!3272 = !DILocation(line: 1319, column: 53, scope: !3270)
!3273 = !DILocation(line: 1319, column: 6, scope: !3270)
!3274 = !DILocation(line: 1325, column: 15, scope: !3249)
!3275 = !DILocation(line: 1325, column: 3, scope: !3249)
!3276 = !DILocation(line: 1327, column: 7, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1327, column: 7)
!3278 = !DILocation(line: 1327, column: 37, scope: !3277)
!3279 = !DILocation(line: 1327, column: 34, scope: !3277)
!3280 = !DILocation(line: 1327, column: 19, scope: !3277)
!3281 = !DILocation(line: 1328, column: 11, scope: !3277)
!3282 = !DILocation(line: 1328, column: 32, scope: !3277)
!3283 = !DILocation(line: 1328, column: 35, scope: !3277)
!3284 = !DILocation(line: 1327, column: 7, scope: !3249)
!3285 = !DILocation(line: 1329, column: 52, scope: !3277)
!3286 = !DILocation(line: 1329, column: 5, scope: !3277)
!3287 = !DILocation(line: 1331, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1331, column: 7)
!3289 = !DILocation(line: 1331, column: 18, scope: !3288)
!3290 = !DILocation(line: 1331, column: 22, scope: !3288)
!3291 = !DILocation(line: 1331, column: 42, scope: !3288)
!3292 = !DILocation(line: 1331, column: 53, scope: !3288)
!3293 = !DILocation(line: 1331, column: 45, scope: !3288)
!3294 = !DILocation(line: 1331, column: 7, scope: !3249)
!3295 = !DILocation(line: 1332, column: 51, scope: !3288)
!3296 = !DILocation(line: 1332, column: 5, scope: !3288)
!3297 = !DILocation(line: 1333, column: 1, scope: !3249)
!3298 = distinct !DISubprogram(name: "push_command_line_include", scope: !3, file: !3, line: 1561, type: !2831, scopeLine: 1562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !3299)
!3299 = !{!3300}
!3300 = !DILocalVariable(name: "opt", scope: !3301, file: !3, line: 1565, type: !938)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 1564, column: 5)
!3302 = !DILocation(line: 1563, column: 3, scope: !3298)
!3303 = !DILocation(line: 1563, column: 10, scope: !3298)
!3304 = !DILocation(line: 1563, column: 27, scope: !3298)
!3305 = !DILocation(line: 1563, column: 25, scope: !3298)
!3306 = !DILocation(line: 1565, column: 35, scope: !3301)
!3307 = !DILocation(line: 1565, column: 63, scope: !3301)
!3308 = !DILocation(line: 0, scope: !3301)
!3309 = !DILocation(line: 1567, column: 12, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 1567, column: 11)
!3311 = !DILocation(line: 1567, column: 22, scope: !3310)
!3312 = !DILocation(line: 1567, column: 35, scope: !3310)
!3313 = !DILocation(line: 1567, column: 43, scope: !3310)
!3314 = !DILocation(line: 1567, column: 48, scope: !3310)
!3315 = !DILocation(line: 1568, column: 4, scope: !3310)
!3316 = !DILocation(line: 1568, column: 25, scope: !3310)
!3317 = !DILocation(line: 1568, column: 40, scope: !3310)
!3318 = !DILocation(line: 1568, column: 7, scope: !3310)
!3319 = !DILocation(line: 1567, column: 11, scope: !3301)
!3320 = !DILocation(line: 1570, column: 5, scope: !3298)
!3321 = distinct !{!3321, !3302, !3320}
!3322 = !DILocation(line: 1572, column: 22, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 1572, column: 7)
!3324 = !DILocation(line: 1572, column: 7, scope: !3298)
!3325 = !DILocation(line: 1574, column: 21, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 1573, column: 5)
!3327 = !DILocation(line: 1576, column: 38, scope: !3326)
!3328 = !DILocation(line: 1576, column: 7, scope: !3326)
!3329 = !DILocation(line: 1576, column: 17, scope: !3326)
!3330 = !DILocation(line: 1576, column: 36, scope: !3326)
!3331 = !DILocation(line: 1578, column: 22, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 1578, column: 11)
!3333 = !DILocation(line: 1578, column: 12, scope: !3332)
!3334 = !DILocation(line: 1578, column: 11, scope: !3326)
!3335 = !DILocation(line: 1579, column: 19, scope: !3332)
!3336 = !DILocation(line: 1579, column: 40, scope: !3332)
!3337 = !DILocation(line: 1579, column: 2, scope: !3332)
!3338 = !DILocation(line: 1583, column: 36, scope: !3326)
!3339 = !DILocation(line: 1583, column: 46, scope: !3326)
!3340 = !DILocation(line: 1583, column: 7, scope: !3326)
!3341 = !DILocation(line: 1583, column: 19, scope: !3326)
!3342 = !DILocation(line: 1583, column: 34, scope: !3326)
!3343 = !DILocation(line: 1584, column: 5, scope: !3326)
!3344 = !DILocation(line: 1585, column: 1, scope: !3298)
