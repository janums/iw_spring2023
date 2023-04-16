; ModuleID = 'c-cppbuiltin.bc'
source_filename = "c-cppbuiltin.c"
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
%struct.rtx_def = type opaque
%struct.function = type opaque
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
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
%struct.cpp_reader = type opaque
%struct.real_format = type { void (%struct.real_format*, i64*, %struct.real_value*)*, void (%struct.real_format*, %struct.real_value*, i64*)*, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_undef = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"__OPTIMIZE_SIZE__\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__OPTIMIZE__\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"__FAST_MATH__\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"__SUPPORT_SNAN__\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"__FINITE_MATH_ONLY__\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"__FINITE_MATH_ONLY__=1\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"__FINITE_MATH_ONLY__=0\00", align 1
@c_language = external dso_local local_unnamed_addr global i32, align 4
@flag_weak = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"__GXX_WEAK__=1\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"__GXX_WEAK__=0\00", align 1
@warn_deprecated = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"__DEPRECATED\00", align 1
@flag_rtti = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"__GXX_RTTI\00", align 1
@cxx_dialect = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"__GXX_EXPERIMENTAL_CXX0X__\00", align 1
@flag_exceptions = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"__EXCEPTIONS\00", align 1
@flag_abi_version = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"__GXX_ABI_VERSION\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"__SCHAR_MAX__\00", align 1
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@.str.15 = private unnamed_addr constant [13 x i8] c"__SHRT_MAX__\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"__INT_MAX__\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"__LONG_MAX__\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"__LONG_LONG_MAX__\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"__WCHAR_MIN__\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"__WCHAR_MAX__\00", align 1
@c_global_trees = external dso_local local_unnamed_addr global [55 x %union.tree_node*], align 16
@.str.21 = private unnamed_addr constant [13 x i8] c"__WINT_MIN__\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"__WINT_MAX__\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"__PTRDIFF_MAX__\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.24 = private unnamed_addr constant [13 x i8] c"__SIZE_MAX__\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"__CHAR_BIT__\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"__FLT_EVAL_METHOD__\00", align 1
@ix86_fpmath = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [20 x i8] c"__DEC_EVAL_METHOD__\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"FLT\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"DBL\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"((double)%s)\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"LDBL\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"DEC32\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"DF\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"DEC64\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"DD\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"DEC128\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"DL\00", align 1
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"SFRACT\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"HR\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"USFRACT\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"UHR\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"FRACT\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"UFRACT\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"UR\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"LFRACT\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"LR\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"ULFRACT\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"ULR\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"LLFRACT\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"LLR\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"ULLFRACT\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"ULLR\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"SACCUM\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"HK\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"USACCUM\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"UHK\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"UACCUM\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"UK\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"LACCUM\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"LK\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"ULACCUM\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"ULK\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"LLACCUM\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"LLK\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"ULLACCUM\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"ULLK\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"HQ\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"DQ\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"TQ\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"UQQ\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"UHQ\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"USQ\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"UDQ\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"UTQ\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"HA\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"UHA\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"USA\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"UDA\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"UTA\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"__REGISTER_PREFIX__\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"__USER_LABEL_PREFIX__\00", align 1
@user_label_prefix = external dso_local local_unnamed_addr global i8*, align 8
@.str.94 = private unnamed_addr constant [12 x i8] c"__VERSION__\00", align 1
@version_string = external dso_local constant [0 x i8], align 1
@flag_gnu89_inline = external dso_local local_unnamed_addr global i32, align 4
@.str.95 = private unnamed_addr constant [20 x i8] c"__GNUC_GNU_INLINE__\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"__GNUC_STDC_INLINE__\00", align 1
@optimize_size = external dso_local local_unnamed_addr global i32, align 4
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_no_inline = external dso_local local_unnamed_addr global i32, align 4
@.str.99 = private unnamed_addr constant [14 x i8] c"__NO_INLINE__\00", align 1
@flag_signaling_nans = external dso_local local_unnamed_addr global i32, align 4
@flag_finite_math_only = external dso_local local_unnamed_addr global i32, align 4
@flag_pic = external dso_local local_unnamed_addr global i32, align 4
@.str.100 = private unnamed_addr constant [8 x i8] c"__pic__\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"__PIC__\00", align 1
@flag_pie = external dso_local local_unnamed_addr global i32, align 4
@.str.102 = private unnamed_addr constant [8 x i8] c"__pie__\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"__PIE__\00", align 1
@flag_iso = external dso_local local_unnamed_addr global i32, align 4
@.str.104 = private unnamed_addr constant [16 x i8] c"__STRICT_ANSI__\00", align 1
@flag_signed_char = external dso_local local_unnamed_addr global i32, align 4
@.str.105 = private unnamed_addr constant [18 x i8] c"__CHAR_UNSIGNED__\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"__WCHAR_UNSIGNED__\00", align 1
@ix86_arch_features = external dso_local local_unnamed_addr global [5 x i8], align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4\00", align 1
@.str.110 = private unnamed_addr constant [35 x i8] c"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"__GCC_HAVE_DWARF2_CFI_ASM\00", align 1
@flag_next_runtime = external dso_local local_unnamed_addr global i32, align 4
@.str.112 = private unnamed_addr constant [17 x i8] c"__NEXT_RUNTIME__\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"__PRAGMA_REDEFINE_EXTNAME\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"__PRAGMA_EXTERN_PREFIX\00", align 1
@flag_stack_protect = external dso_local local_unnamed_addr global i32, align 4
@.str.115 = private unnamed_addr constant [14 x i8] c"__SSP_ALL__=2\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"__SSP__=1\00", align 1
@flag_openmp = external dso_local local_unnamed_addr global i32, align 4
@.str.117 = private unnamed_addr constant [15 x i8] c"_OPENMP=200805\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"__SIZEOF_INT__\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"__SIZEOF_LONG__\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"__SIZEOF_LONG_LONG__\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"__SIZEOF_SHORT__\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"__SIZEOF_FLOAT__\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"__SIZEOF_DOUBLE__\00", align 1
@.str.124 = private unnamed_addr constant [23 x i8] c"__SIZEOF_LONG_DOUBLE__\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"__SIZEOF_SIZE_T__\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"__SIZEOF_WCHAR_T__\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"__SIZEOF_WINT_T__\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"__SIZEOF_PTRDIFF_T__\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"__SIZEOF_POINTER__\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"__gnu_linux__\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"system=linux\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"system=unix\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"system=posix\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"__ELF__\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"__DECIMAL_BID_FORMAT__\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"__BIGGEST_ALIGNMENT__\00", align 1
@ix86_isa_flags = external dso_local local_unnamed_addr global i32, align 4
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@parse_in = external dso_local local_unnamed_addr global %struct.cpp_reader*, align 8
@.str.139 = private unnamed_addr constant [8 x i8] c"%s=\22%s\22\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"4.5.0\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"__GNUC__=%d\00", align 1
@.str.145 = private unnamed_addr constant [18 x i8] c"__GNUC_MINOR__=%d\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"__GNUC_PATCHLEVEL__=%d\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"__GNUG__=%d\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"__INTMAX_MAX__\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"__INTMAX_C\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"__UINTMAX_MAX__\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"__UINTMAX_C\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"__SIG_ATOMIC_MIN__\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"__SIG_ATOMIC_MAX__\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"__INT8_MAX__\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"__INT16_MAX__\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"__INT32_MAX__\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"__INT64_MAX__\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"__UINT8_MAX__\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"__UINT16_MAX__\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"__UINT32_MAX__\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"__UINT64_MAX__\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"__INT_LEAST8_MAX__\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"__INT8_C\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"__INT_LEAST16_MAX__\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"__INT16_C\00", align 1
@.str.166 = private unnamed_addr constant [20 x i8] c"__INT_LEAST32_MAX__\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"__INT32_C\00", align 1
@.str.168 = private unnamed_addr constant [20 x i8] c"__INT_LEAST64_MAX__\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"__INT64_C\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"__UINT_LEAST8_MAX__\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"__UINT8_C\00", align 1
@.str.172 = private unnamed_addr constant [21 x i8] c"__UINT_LEAST16_MAX__\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"__UINT16_C\00", align 1
@.str.174 = private unnamed_addr constant [21 x i8] c"__UINT_LEAST32_MAX__\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"__UINT32_C\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"__UINT_LEAST64_MAX__\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"__UINT64_C\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"__INT_FAST8_MAX__\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c"__INT_FAST16_MAX__\00", align 1
@.str.180 = private unnamed_addr constant [19 x i8] c"__INT_FAST32_MAX__\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"__INT_FAST64_MAX__\00", align 1
@.str.182 = private unnamed_addr constant [19 x i8] c"__UINT_FAST8_MAX__\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"__UINT_FAST16_MAX__\00", align 1
@.str.184 = private unnamed_addr constant [20 x i8] c"__UINT_FAST32_MAX__\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"__UINT_FAST64_MAX__\00", align 1
@.str.186 = private unnamed_addr constant [15 x i8] c"__INTPTR_MAX__\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"__UINTPTR_MAX__\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"%s(c)=c\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"%s(c)=c ## %s\00", align 1
@type_suffix.suffixes = internal unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.193, i32 0, i32 0)], align 16, !dbg !0
@.str.190 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"UL\00", align 1
@.str.192 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"ULL\00", align 1
@.str.194 = private unnamed_addr constant [15 x i8] c"c-cppbuiltin.c\00", align 1
@.str.195 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@real_format_for_mode = external dso_local local_unnamed_addr global [7 x %struct.real_format*], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str.196 = private unnamed_addr constant [14 x i8] c"__FLT_RADIX__\00", align 1
@.str.197 = private unnamed_addr constant [16 x i8] c"__%s_MANT_DIG__\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"__%s_DIG__\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"__%s_MIN_EXP__\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.201 = private unnamed_addr constant [18 x i8] c"__%s_MIN_10_EXP__\00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"__%s_MAX_EXP__\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"__%s_MAX_10_EXP__\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"__DECIMAL_DIG__\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"__%s_MAX__\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"__%s_MIN__\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"0x1p%d\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"__%s_EPSILON__\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"__%s_DENORM_MIN__\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"0.0%s\00", align 1
@.str.211 = private unnamed_addr constant [18 x i8] c"__%s_HAS_DENORM__\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.213 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.214 = private unnamed_addr constant [20 x i8] c"__%s_HAS_INFINITY__\00", align 1
@mode_inner = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str.215 = private unnamed_addr constant [21 x i8] c"__%s_HAS_QUIET_NAN__\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"1E%d%s\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"E%d%s\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"1E-%d%s\00", align 1
@.str.220 = private unnamed_addr constant [21 x i8] c"__%s_SUBNORMAL_MIN__\00", align 1
@.str.221 = private unnamed_addr constant [12 x i8] c"__%s_FBIT__\00", align 1
@mode_fbit = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str.222 = private unnamed_addr constant [12 x i8] c"__%s_IBIT__\00", align 1
@mode_ibit = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str.223 = private unnamed_addr constant [21 x i8] c"(-0X1P%d%s-0X1P%d%s)\00", align 1
@.str.224 = private unnamed_addr constant [15 x i8] c"(-0.5%s-0.5%s)\00", align 1
@.str.225 = private unnamed_addr constant [3 x i8] c"0X\00", align 1
@.str.226 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"P-%d%s\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"0x1P-%d%s\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@builtin_define_type_minmax.values = internal unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.239, i32 0, i32 0)], align 16, !dbg !1050
@.str.230 = private unnamed_addr constant [4 x i8] c"127\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"32767\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.234 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1
@.str.235 = private unnamed_addr constant [11 x i8] c"4294967295\00", align 1
@.str.236 = private unnamed_addr constant [20 x i8] c"9223372036854775807\00", align 1
@.str.237 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.238 = private unnamed_addr constant [40 x i8] c"170141183460469231731687303715884105727\00", align 1
@.str.239 = private unnamed_addr constant [40 x i8] c"340282366920938463463374607431768211455\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"%s=%s%s\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"%s=0%s\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"%s=(-%s - 1)\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1080 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1093, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1094, metadata !DIExpression()), !dbg !1095
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1096
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1097
  ret i32 %call, !dbg !1098
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1099 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1103
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1104
  ret i32 %call, !dbg !1105
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1106 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1160, metadata !DIExpression()), !dbg !1161
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1162
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1162
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1162
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1162
  %cmp = icmp uge i8* %0, %1, !dbg !1162
  %conv1 = zext i1 %cmp to i64, !dbg !1162
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1162
  %tobool = icmp eq i64 %expval, 0, !dbg !1162
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1162

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1162
  br label %cond.end, !dbg !1162

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1162
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1162
  %2 = load i8, i8* %0, align 1, !dbg !1162
  %conv3 = zext i8 %2 to i32, !dbg !1162
  br label %cond.end, !dbg !1162

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1162
  ret i32 %cond, !dbg !1163
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1164 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1166, metadata !DIExpression()), !dbg !1167
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1168
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1168
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1168
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1168
  %cmp = icmp uge i8* %0, %1, !dbg !1168
  %conv1 = zext i1 %cmp to i64, !dbg !1168
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1168
  %tobool = icmp eq i64 %expval, 0, !dbg !1168
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1168

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1168
  br label %cond.end, !dbg !1168

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1168
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1168
  %2 = load i8, i8* %0, align 1, !dbg !1168
  %conv3 = zext i8 %2 to i32, !dbg !1168
  br label %cond.end, !dbg !1168

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1168
  ret i32 %cond, !dbg !1169
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1170 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1171
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1171
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1171
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1171
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1171
  %cmp = icmp uge i8* %1, %2, !dbg !1171
  %conv1 = zext i1 %cmp to i64, !dbg !1171
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1171
  %tobool = icmp eq i64 %expval, 0, !dbg !1171
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1171

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1171
  br label %cond.end, !dbg !1171

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1171
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1171
  %3 = load i8, i8* %1, align 1, !dbg !1171
  %conv3 = zext i8 %3 to i32, !dbg !1171
  br label %cond.end, !dbg !1171

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1171
  ret i32 %cond, !dbg !1172
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1173 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1177, metadata !DIExpression()), !dbg !1178
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1179
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1180
  ret i32 %call, !dbg !1181
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1182 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1186, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1187, metadata !DIExpression()), !dbg !1188
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1189
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1189
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1189
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1189
  %cmp = icmp uge i8* %0, %1, !dbg !1189
  %conv1 = zext i1 %cmp to i64, !dbg !1189
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1189
  %tobool = icmp eq i64 %expval, 0, !dbg !1189
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1189

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1189
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1189
  br label %cond.end, !dbg !1189

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1189
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1189
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1189
  store i8 %conv2, i8* %0, align 1, !dbg !1189
  %conv6 = and i32 %__c, 255, !dbg !1189
  br label %cond.end, !dbg !1189

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1189
  ret i32 %cond, !dbg !1190
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1191 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1193, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1194, metadata !DIExpression()), !dbg !1195
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1196
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1196
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1196
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1196
  %cmp = icmp uge i8* %0, %1, !dbg !1196
  %conv1 = zext i1 %cmp to i64, !dbg !1196
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1196
  %tobool = icmp eq i64 %expval, 0, !dbg !1196
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1196

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1196
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1196
  br label %cond.end, !dbg !1196

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1196
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1196
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1196
  store i8 %conv2, i8* %0, align 1, !dbg !1196
  %conv6 = and i32 %__c, 255, !dbg !1196
  br label %cond.end, !dbg !1196

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1196
  ret i32 %cond, !dbg !1197
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1198 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1200, metadata !DIExpression()), !dbg !1201
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1202
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1202
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1202
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1202
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1202
  %cmp = icmp uge i8* %1, %2, !dbg !1202
  %conv1 = zext i1 %cmp to i64, !dbg !1202
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1202
  %tobool = icmp eq i64 %expval, 0, !dbg !1202
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1202

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1202
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1202
  br label %cond.end, !dbg !1202

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1202
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1202
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1202
  store i8 %conv4, i8* %1, align 1, !dbg !1202
  %conv6 = and i32 %__c, 255, !dbg !1202
  br label %cond.end, !dbg !1202

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1202
  ret i32 %cond, !dbg !1203
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1204 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1210, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1211, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1212, metadata !DIExpression()), !dbg !1213
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1214
  ret i64 %call, !dbg !1215
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1216 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1218, metadata !DIExpression()), !dbg !1219
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1220
  %0 = load i32, i32* %_flags, align 8, !dbg !1220
  %and = lshr i32 %0, 4, !dbg !1220
  %and.lobit = and i32 %and, 1, !dbg !1220
  ret i32 %and.lobit, !dbg !1221
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1222 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1224, metadata !DIExpression()), !dbg !1225
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1226
  %0 = load i32, i32* %_flags, align 8, !dbg !1226
  %and = lshr i32 %0, 5, !dbg !1226
  %and.lobit = and i32 %and, 1, !dbg !1226
  ret i32 %and.lobit, !dbg !1227
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1228 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1231, metadata !DIExpression()), !dbg !1232
  %__c.off = add i32 %__c, 128, !dbg !1233
  %0 = icmp ult i32 %__c.off, 384, !dbg !1233
  br i1 %0, label %cond.true, label %cond.end, !dbg !1233

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1234
  %1 = load i32*, i32** %call, align 8, !dbg !1235
  %idxprom = sext i32 %__c to i64, !dbg !1236
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1236
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1236
  br label %cond.end, !dbg !1237

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1237
  ret i32 %cond, !dbg !1238
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1239 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1241, metadata !DIExpression()), !dbg !1242
  %__c.off = add i32 %__c, 128, !dbg !1243
  %0 = icmp ult i32 %__c.off, 384, !dbg !1243
  br i1 %0, label %cond.true, label %cond.end, !dbg !1243

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1244
  %1 = load i32*, i32** %call, align 8, !dbg !1245
  %idxprom = sext i32 %__c to i64, !dbg !1246
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1246
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1246
  br label %cond.end, !dbg !1247

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1247
  ret i32 %cond, !dbg !1248
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1249 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1254, metadata !DIExpression()), !dbg !1255
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1256
  %conv = trunc i64 %call to i32, !dbg !1257
  ret i32 %conv, !dbg !1258
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1259 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1263, metadata !DIExpression()), !dbg !1264
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1265
  ret i64 %call, !dbg !1266
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1267 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1272, metadata !DIExpression()), !dbg !1273
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1274
  ret i64 %call, !dbg !1275
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1276 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1287, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1288, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1289, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1290, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1291, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 0, metadata !1292, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1293, metadata !DIExpression()), !dbg !1297
  br label %while.cond, !dbg !1298

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1299
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1297
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1293, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1292, metadata !DIExpression()), !dbg !1297
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1300
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1298

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1301
  %div = lshr i64 %add, 1, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %div, metadata !1294, metadata !DIExpression()), !dbg !1297
  %mul = mul i64 %div, %__size, !dbg !1304
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1305
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1295, metadata !DIExpression()), !dbg !1297
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %call, metadata !1296, metadata !DIExpression()), !dbg !1297
  %cmp1 = icmp slt i32 %call, 0, !dbg !1307
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1309

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1310
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1312

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1292, metadata !DIExpression()), !dbg !1297
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1297
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1297
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1293, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1292, metadata !DIExpression()), !dbg !1297
  br label %while.cond, !dbg !1298, !llvm.loop !1314

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1297
  ret i8* %retval.0, !dbg !1316
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1317 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1323, metadata !DIExpression()), !dbg !1324
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1325
  ret double %call, !dbg !1326
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1327 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1336, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1337, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i32 %base, metadata !1338, metadata !DIExpression()), !dbg !1339
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1340
  ret i64 %call, !dbg !1341
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1342 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1348, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1349, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i32 %base, metadata !1350, metadata !DIExpression()), !dbg !1351
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1352
  ret i64 %call, !dbg !1353
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1354 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1365, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1366, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %base, metadata !1367, metadata !DIExpression()), !dbg !1368
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1369
  ret i64 %call, !dbg !1370
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1371 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1375, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1376, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i32 %base, metadata !1377, metadata !DIExpression()), !dbg !1378
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1379
  ret i64 %call, !dbg !1380
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1381 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1421, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1422, metadata !DIExpression()), !dbg !1423
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1424
  ret i32 %call, !dbg !1425
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1426 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1428, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1429, metadata !DIExpression()), !dbg !1430
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1431
  ret i32 %call, !dbg !1432
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1433 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1437, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1438, metadata !DIExpression()), !dbg !1439
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1440
  ret i32 %call, !dbg !1441
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1442 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1446, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1447, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1448, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1449, metadata !DIExpression()), !dbg !1450
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1451
  ret i32 %call, !dbg !1452
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1453 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1457, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1458, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1459, metadata !DIExpression()), !dbg !1460
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1459, metadata !DIExpression(DW_OP_deref)), !dbg !1460
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1461
  ret i32 %call, !dbg !1462
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1463 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1467, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1468, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1469, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1470, metadata !DIExpression()), !dbg !1471
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1470, metadata !DIExpression(DW_OP_deref)), !dbg !1471
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1472
  ret i32 %call, !dbg !1473
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1474 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1498, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1499, metadata !DIExpression()), !dbg !1500
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1501
  ret i32 %call, !dbg !1502
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1503 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1505, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1506, metadata !DIExpression()), !dbg !1507
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1508
  ret i32 %call, !dbg !1509
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1510 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1514, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1515, metadata !DIExpression()), !dbg !1516
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1517
  ret i32 %call, !dbg !1518
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1519 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1523, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1524, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1525, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1526, metadata !DIExpression()), !dbg !1527
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1528
  ret i32 %call, !dbg !1529
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @c_cpp_builtins_optimize_pragma(%struct.cpp_reader* %pfile, %union.tree_node* %prev_tree, %union.tree_node* %cur_tree) local_unnamed_addr #5 !dbg !1530 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1538, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata %union.tree_node* %prev_tree, metadata !1539, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata %union.tree_node* %cur_tree, metadata !1540, metadata !DIExpression()), !dbg !1546
  %opts = getelementptr inbounds %union.tree_node, %union.tree_node* %prev_tree, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1547
  %0 = bitcast i32* %opts to %struct.cl_optimization*, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.cl_optimization* %0, metadata !1541, metadata !DIExpression()), !dbg !1546
  %opts2 = getelementptr inbounds %union.tree_node, %union.tree_node* %cur_tree, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1548
  %1 = bitcast i32* %opts2 to %struct.cl_optimization*, !dbg !1548
  call void @llvm.dbg.value(metadata %struct.cl_optimization* %1, metadata !1543, metadata !DIExpression()), !dbg !1546
  %2 = load i32, i32* @flag_undef, align 4, !dbg !1549
  %tobool = icmp eq i32 %2, 0, !dbg !1549
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !1551

if.end:                                           ; preds = %entry
  %optimize_size = getelementptr inbounds %struct.cl_optimization, %struct.cl_optimization* %0, i64 0, i32 7, !dbg !1552
  %3 = load i8, i8* %optimize_size, align 1, !dbg !1552
  %tobool3 = icmp eq i8 %3, 0, !dbg !1554
  br i1 %tobool3, label %land.lhs.true, label %if.else, !dbg !1555

land.lhs.true:                                    ; preds = %if.end
  %optimize_size4 = getelementptr inbounds %struct.cl_optimization, %struct.cl_optimization* %1, i64 0, i32 7, !dbg !1556
  %4 = load i8, i8* %optimize_size4, align 1, !dbg !1556
  %tobool5 = icmp eq i8 %4, 0, !dbg !1557
  br i1 %tobool5, label %if.else, label %if.then6, !dbg !1558

if.then6:                                         ; preds = %land.lhs.true
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1559
  br label %if.end15, !dbg !1559

if.else:                                          ; preds = %land.lhs.true, %if.end
  br i1 %tobool3, label %if.end15, label %land.lhs.true10, !dbg !1560

land.lhs.true10:                                  ; preds = %if.else
  %optimize_size11 = getelementptr inbounds %struct.cl_optimization, %struct.cl_optimization* %1, i64 0, i32 7, !dbg !1562
  %5 = load i8, i8* %optimize_size11, align 1, !dbg !1562
  %tobool12 = icmp eq i8 %5, 0, !dbg !1563
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !1564

if.then13:                                        ; preds = %land.lhs.true10
  tail call void @cpp_undef(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1565
  br label %if.end15, !dbg !1565

if.end15:                                         ; preds = %land.lhs.true10, %if.else, %if.then13, %if.then6
  %optimize = getelementptr inbounds i32, i32* %opts, i64 6, !dbg !1566
  %6 = bitcast i32* %optimize to i8*, !dbg !1566
  %7 = load i8, i8* %6, align 4, !dbg !1566
  %tobool16 = icmp eq i8 %7, 0, !dbg !1568
  br i1 %tobool16, label %land.lhs.true17, label %if.else22, !dbg !1569

land.lhs.true17:                                  ; preds = %if.end15
  %optimize18 = getelementptr inbounds i32, i32* %opts2, i64 6, !dbg !1570
  %8 = bitcast i32* %optimize18 to i8*, !dbg !1570
  %9 = load i8, i8* %8, align 4, !dbg !1570
  %tobool20 = icmp eq i8 %9, 0, !dbg !1571
  br i1 %tobool20, label %if.else22, label %if.then21, !dbg !1572

if.then21:                                        ; preds = %land.lhs.true17
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1573
  br label %if.end31, !dbg !1573

if.else22:                                        ; preds = %land.lhs.true17, %if.end15
  br i1 %tobool16, label %if.end31, label %land.lhs.true26, !dbg !1574

land.lhs.true26:                                  ; preds = %if.else22
  %optimize27 = getelementptr inbounds i32, i32* %opts2, i64 6, !dbg !1576
  %10 = bitcast i32* %optimize27 to i8*, !dbg !1576
  %11 = load i8, i8* %10, align 4, !dbg !1576
  %tobool28 = icmp eq i8 %11, 0, !dbg !1577
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !1578

if.then29:                                        ; preds = %land.lhs.true26
  tail call void @cpp_undef(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1579
  br label %if.end31, !dbg !1579

if.end31:                                         ; preds = %land.lhs.true26, %if.else22, %if.then29, %if.then21
  %call = tail call zeroext i8 @fast_math_flags_struct_set_p(%struct.cl_optimization* nonnull %0) #6, !dbg !1580
  call void @llvm.dbg.value(metadata i8 %call, metadata !1544, metadata !DIExpression()), !dbg !1546
  %call32 = tail call zeroext i8 @fast_math_flags_struct_set_p(%struct.cl_optimization* nonnull %1) #6, !dbg !1581
  call void @llvm.dbg.value(metadata i8 %call32, metadata !1545, metadata !DIExpression()), !dbg !1546
  %tobool33 = icmp eq i8 %call, 0, !dbg !1582
  %tobool36 = icmp ne i8 %call32, 0, !dbg !1584
  %or.cond = and i1 %tobool33, %tobool36, !dbg !1585
  br i1 %or.cond, label %if.then37, label %if.else38, !dbg !1585

if.then37:                                        ; preds = %if.end31
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1586
  br label %if.end45, !dbg !1586

if.else38:                                        ; preds = %if.end31
  %or.cond1 = or i1 %tobool33, %tobool36, !dbg !1587
  br i1 %or.cond1, label %if.end45, label %if.then43, !dbg !1587

if.then43:                                        ; preds = %if.else38
  tail call void @cpp_undef(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1589
  br label %if.end45, !dbg !1589

if.end45:                                         ; preds = %if.then43, %if.else38, %if.then37
  %flag_signaling_nans = getelementptr inbounds %struct.cl_optimization, %struct.cl_optimization* %0, i64 0, i32 105, !dbg !1590
  %12 = load i8, i8* %flag_signaling_nans, align 1, !dbg !1590
  %tobool46 = icmp eq i8 %12, 0, !dbg !1592
  br i1 %tobool46, label %land.lhs.true47, label %if.else52, !dbg !1593

land.lhs.true47:                                  ; preds = %if.end45
  %flag_signaling_nans48 = getelementptr inbounds %struct.cl_optimization, %struct.cl_optimization* %1, i64 0, i32 105, !dbg !1594
  %13 = load i8, i8* %flag_signaling_nans48, align 1, !dbg !1594
  %tobool50 = icmp eq i8 %13, 0, !dbg !1595
  br i1 %tobool50, label %if.else52, label %if.then51, !dbg !1596

if.then51:                                        ; preds = %land.lhs.true47
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1597
  br label %if.end61, !dbg !1597

if.else52:                                        ; preds = %land.lhs.true47, %if.end45
  br i1 %tobool46, label %if.end61, label %land.lhs.true56, !dbg !1598

land.lhs.true56:                                  ; preds = %if.else52
  %flag_signaling_nans57 = getelementptr inbounds %struct.cl_optimization, %struct.cl_optimization* %1, i64 0, i32 105, !dbg !1600
  %14 = load i8, i8* %flag_signaling_nans57, align 1, !dbg !1600
  %tobool58 = icmp eq i8 %14, 0, !dbg !1601
  br i1 %tobool58, label %if.then59, label %if.end61, !dbg !1602

if.then59:                                        ; preds = %land.lhs.true56
  tail call void @cpp_undef(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1603
  br label %if.end61, !dbg !1603

if.end61:                                         ; preds = %land.lhs.true56, %if.else52, %if.then59, %if.then51
  %flag_finite_math_only = getelementptr inbounds %struct.cl_optimization, %struct.cl_optimization* %0, i64 0, i32 32, !dbg !1604
  %15 = load i8, i8* %flag_finite_math_only, align 2, !dbg !1604
  %tobool62 = icmp eq i8 %15, 0, !dbg !1606
  br i1 %tobool62, label %land.lhs.true63, label %if.else68, !dbg !1607

land.lhs.true63:                                  ; preds = %if.end61
  %flag_finite_math_only64 = getelementptr inbounds %struct.cl_optimization, %struct.cl_optimization* %1, i64 0, i32 32, !dbg !1608
  %16 = load i8, i8* %flag_finite_math_only64, align 2, !dbg !1608
  %tobool66 = icmp eq i8 %16, 0, !dbg !1609
  br i1 %tobool66, label %if.else68, label %if.then67, !dbg !1610

if.then67:                                        ; preds = %land.lhs.true63
  tail call void @cpp_undef(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1611
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1613
  br label %cleanup.cont, !dbg !1614

if.else68:                                        ; preds = %land.lhs.true63, %if.end61
  br i1 %tobool62, label %land.lhs.true71, label %cleanup.cont, !dbg !1615

land.lhs.true71:                                  ; preds = %if.else68
  %flag_finite_math_only72 = getelementptr inbounds %struct.cl_optimization, %struct.cl_optimization* %1, i64 0, i32 32, !dbg !1617
  %17 = load i8, i8* %flag_finite_math_only72, align 2, !dbg !1617
  %tobool74 = icmp eq i8 %17, 0, !dbg !1618
  br i1 %tobool74, label %cleanup.cont, label %if.then75, !dbg !1619

if.then75:                                        ; preds = %land.lhs.true71
  tail call void @cpp_undef(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1620
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1622
  br label %cleanup.cont, !dbg !1623

cleanup.cont:                                     ; preds = %land.lhs.true71, %if.else68, %entry, %if.then75, %if.then67
  ret void, !dbg !1624
}

declare dso_local void @cpp_define(%struct.cpp_reader*, i8*) local_unnamed_addr #2

declare dso_local void @cpp_undef(%struct.cpp_reader*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @fast_math_flags_struct_set_p(%struct.cl_optimization*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @c_cpp_builtins(%struct.cpp_reader* %pfile) local_unnamed_addr #5 !dbg !1625 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1629, metadata !DIExpression()), !dbg !1630
  %0 = load i32, i32* @flag_undef, align 4, !dbg !1631
  %tobool = icmp eq i32 %0, 0, !dbg !1631
  br i1 %tobool, label %if.end, label %return, !dbg !1633

if.end:                                           ; preds = %entry
  tail call fastcc void @define__GNUC__() #7, !dbg !1634
  tail call void @c_stddef_cpp_builtins() #6, !dbg !1635
  %1 = load i32, i32* @c_language, align 4, !dbg !1636
  %and = and i32 %1, 2, !dbg !1636
  %cmp = icmp eq i32 %and, 0, !dbg !1636
  br i1 %cmp, label %if.end14, label %if.then1, !dbg !1638

if.then1:                                         ; preds = %if.end
  %2 = load i32, i32* @flag_weak, align 4, !dbg !1639
  %tobool2 = icmp eq i32 %2, 0, !dbg !1639
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !1642

if.then3:                                         ; preds = %if.then1
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1643
  br label %if.end4, !dbg !1643

if.else:                                          ; preds = %if.then1
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !1644
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %3 = load i32, i32* @warn_deprecated, align 4, !dbg !1645
  %tobool5 = icmp eq i32 %3, 0, !dbg !1645
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1647

if.then6:                                         ; preds = %if.end4
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !1648
  br label %if.end7, !dbg !1648

if.end7:                                          ; preds = %if.end4, %if.then6
  %4 = load i32, i32* @flag_rtti, align 4, !dbg !1649
  %tobool8 = icmp eq i32 %4, 0, !dbg !1649
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1651

if.then9:                                         ; preds = %if.end7
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1652
  br label %if.end10, !dbg !1652

if.end10:                                         ; preds = %if.end7, %if.then9
  %5 = load i32, i32* @cxx_dialect, align 4, !dbg !1653
  %cmp11 = icmp eq i32 %5, 1, !dbg !1655
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !1656

if.then12:                                        ; preds = %if.end10
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !1657
  br label %if.end14, !dbg !1657

if.end14:                                         ; preds = %if.end, %if.end10, %if.then12
  %6 = load i32, i32* @flag_exceptions, align 4, !dbg !1658
  %tobool15 = icmp eq i32 %6, 0, !dbg !1658
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1660

if.then16:                                        ; preds = %if.end14
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !1661
  br label %if.end17, !dbg !1661

if.end17:                                         ; preds = %if.end14, %if.then16
  %7 = load i32, i32* @flag_abi_version, align 4, !dbg !1662
  %cmp18 = icmp eq i32 %7, 0, !dbg !1664
  br i1 %cmp18, label %if.then19, label %if.else20, !dbg !1665

if.then19:                                        ; preds = %if.end17
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i64 999999) #7, !dbg !1666
  br label %if.end25, !dbg !1666

if.else20:                                        ; preds = %if.end17
  %cmp21 = icmp eq i32 %7, 1, !dbg !1667
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !1669

if.then22:                                        ; preds = %if.else20
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i64 102) #7, !dbg !1670
  br label %if.end25, !dbg !1670

if.else23:                                        ; preds = %if.else20
  %add = add nsw i32 %7, 1000, !dbg !1671
  %conv = sext i32 %add to i64, !dbg !1672
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i64 %conv) #7, !dbg !1673
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.else23, %if.then19
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 1), align 8, !dbg !1674
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), %union.tree_node* %8) #7, !dbg !1675
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 3), align 8, !dbg !1676
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), %union.tree_node* %9) #7, !dbg !1677
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !1678
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %union.tree_node* %10) #7, !dbg !1679
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 7), align 8, !dbg !1680
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), %union.tree_node* %11) #7, !dbg !1681
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 9), align 8, !dbg !1682
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), %union.tree_node* %12) #7, !dbg !1683
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 3), align 8, !dbg !1684
  tail call fastcc void @builtin_define_type_minmax(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), %union.tree_node* %13) #7, !dbg !1685
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 4), align 16, !dbg !1686
  tail call fastcc void @builtin_define_type_minmax(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %union.tree_node* %14) #7, !dbg !1687
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 43), align 8, !dbg !1688
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), %union.tree_node* %15) #7, !dbg !1689
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 41), align 8, !dbg !1690
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), %union.tree_node* %16) #7, !dbg !1691
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !1692
  tail call fastcc void @builtin_define_type_precision(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), %union.tree_node* %17) #7, !dbg !1693
  tail call fastcc void @builtin_define_stdint_macros() #7, !dbg !1694
  %18 = load i32, i32* @ix86_fpmath, align 4, !dbg !1695
  %and26 = and i32 %18, 3, !dbg !1695
  %cmp27 = icmp eq i32 %and26, 3, !dbg !1695
  br i1 %cmp27, label %cond.end, label %cond.false, !dbg !1695

cond.false:                                       ; preds = %if.end25
  %and29 = and i32 %18, 2, !dbg !1695
  %19 = xor i32 %and29, 2, !dbg !1695
  br label %cond.end, !dbg !1695

cond.end:                                         ; preds = %if.end25, %cond.false
  %cond32 = phi i32 [ %19, %cond.false ], [ -1, %if.end25 ], !dbg !1695
  %conv33 = sext i32 %cond32 to i64, !dbg !1695
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i64 %conv33) #7, !dbg !1696
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i64 2) #7, !dbg !1697
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31), align 8, !dbg !1698
  tail call fastcc void @builtin_define_float_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %union.tree_node* %20) #7, !dbg !1699
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 32), align 16, !dbg !1700
  tail call fastcc void @builtin_define_float_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), %union.tree_node* %21) #7, !dbg !1701
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 33), align 8, !dbg !1702
  tail call fastcc void @builtin_define_float_constants(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %union.tree_node* %22) #7, !dbg !1703
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 49), align 8, !dbg !1704
  tail call fastcc void @builtin_define_decimal_float_constants(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %union.tree_node* %23) #7, !dbg !1705
  %24 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 50), align 16, !dbg !1706
  tail call fastcc void @builtin_define_decimal_float_constants(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %union.tree_node* %24) #7, !dbg !1707
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 51), align 8, !dbg !1708
  tail call fastcc void @builtin_define_decimal_float_constants(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %union.tree_node* %25) #7, !dbg !1709
  %26 = load i8 ()*, i8 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 20), align 8, !dbg !1710
  %call = tail call zeroext i8 %26() #6, !dbg !1712
  %tobool34 = icmp eq i8 %call, 0, !dbg !1712
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !1713

if.then35:                                        ; preds = %cond.end
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 65), align 8, !dbg !1714
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %union.tree_node* %27) #7, !dbg !1716
  %28 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 69), align 8, !dbg !1717
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), %union.tree_node* %28) #7, !dbg !1718
  %29 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 66), align 16, !dbg !1719
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), %union.tree_node* %29) #7, !dbg !1720
  %30 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 70), align 16, !dbg !1721
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), %union.tree_node* %30) #7, !dbg !1722
  %31 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 67), align 8, !dbg !1723
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), %union.tree_node* %31) #7, !dbg !1724
  %32 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 71), align 8, !dbg !1725
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), %union.tree_node* %32) #7, !dbg !1726
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 68), align 16, !dbg !1727
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), %union.tree_node* %33) #7, !dbg !1728
  %34 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 72), align 16, !dbg !1729
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), %union.tree_node* %34) #7, !dbg !1730
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 81), align 8, !dbg !1731
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), %union.tree_node* %35) #7, !dbg !1732
  %36 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 85), align 8, !dbg !1733
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), %union.tree_node* %36) #7, !dbg !1734
  %37 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 82), align 16, !dbg !1735
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), %union.tree_node* %37) #7, !dbg !1736
  %38 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 86), align 16, !dbg !1737
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), %union.tree_node* %38) #7, !dbg !1738
  %39 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 83), align 8, !dbg !1739
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), %union.tree_node* %39) #7, !dbg !1740
  %40 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 87), align 8, !dbg !1741
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), %union.tree_node* %40) #7, !dbg !1742
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 84), align 16, !dbg !1743
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), %union.tree_node* %41) #7, !dbg !1744
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 88), align 16, !dbg !1745
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %union.tree_node* %42) #7, !dbg !1746
  %43 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 89), align 8, !dbg !1747
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %43) #7, !dbg !1748
  %44 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 90), align 16, !dbg !1749
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %44) #7, !dbg !1750
  %45 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 91), align 8, !dbg !1751
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %45) #7, !dbg !1752
  %46 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 92), align 16, !dbg !1753
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %46) #7, !dbg !1754
  %47 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 93), align 8, !dbg !1755
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %47) #7, !dbg !1756
  %48 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 94), align 16, !dbg !1757
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %48) #7, !dbg !1758
  %49 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 95), align 8, !dbg !1759
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %49) #7, !dbg !1760
  %50 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 96), align 16, !dbg !1761
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %50) #7, !dbg !1762
  %51 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 97), align 8, !dbg !1763
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %51) #7, !dbg !1764
  %52 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 98), align 16, !dbg !1765
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %52) #7, !dbg !1766
  %53 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 109), align 8, !dbg !1767
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %53) #7, !dbg !1768
  %54 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 110), align 16, !dbg !1769
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %54) #7, !dbg !1770
  %55 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 111), align 8, !dbg !1771
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %55) #7, !dbg !1772
  %56 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 112), align 16, !dbg !1773
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %56) #7, !dbg !1774
  %57 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 113), align 8, !dbg !1775
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %57) #7, !dbg !1776
  %58 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 114), align 16, !dbg !1777
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %58) #7, !dbg !1778
  %59 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 115), align 8, !dbg !1779
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %59) #7, !dbg !1780
  %60 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 116), align 16, !dbg !1781
  tail call fastcc void @builtin_define_fixed_point_constants(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), %union.tree_node* %60) #7, !dbg !1782
  br label %if.end36, !dbg !1783

if.end36:                                         ; preds = %cond.end, %if.then35
  tail call void @builtin_define_with_value(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0), i32 0) #7, !dbg !1784
  %61 = load i8*, i8** @user_label_prefix, align 8, !dbg !1785
  tail call void @builtin_define_with_value(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.93, i64 0, i64 0), i8* %61, i32 0) #7, !dbg !1786
  tail call void @builtin_define_with_value(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @version_string, i64 0, i64 0), i32 1) #7, !dbg !1787
  %62 = load i32, i32* @flag_gnu89_inline, align 4, !dbg !1788
  %tobool37 = icmp eq i32 %62, 0, !dbg !1788
  br i1 %tobool37, label %if.else39, label %if.then38, !dbg !1790

if.then38:                                        ; preds = %if.end36
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.95, i64 0, i64 0)) #6, !dbg !1791
  br label %if.end40, !dbg !1791

if.else39:                                        ; preds = %if.end36
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i64 0, i64 0)) #6, !dbg !1792
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then38
  %63 = load i32, i32* @optimize_size, align 4, !dbg !1793
  %tobool52 = icmp eq i32 %63, 0, !dbg !1793
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !1795

if.then53:                                        ; preds = %if.end40
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1796
  br label %if.end54, !dbg !1796

if.end54:                                         ; preds = %if.end40, %if.then53
  %64 = load i32, i32* @optimize, align 4, !dbg !1797
  %tobool55 = icmp eq i32 %64, 0, !dbg !1797
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !1799

if.then56:                                        ; preds = %if.end54
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1800
  br label %if.end57, !dbg !1800

if.end57:                                         ; preds = %if.end54, %if.then56
  %call58 = tail call zeroext i8 @fast_math_flags_set_p() #6, !dbg !1801
  %tobool59 = icmp eq i8 %call58, 0, !dbg !1801
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !1803

if.then60:                                        ; preds = %if.end57
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1804
  br label %if.end61, !dbg !1804

if.end61:                                         ; preds = %if.end57, %if.then60
  %65 = load i32, i32* @flag_no_inline, align 4, !dbg !1805
  %tobool62 = icmp eq i32 %65, 0, !dbg !1805
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !1807

if.then63:                                        ; preds = %if.end61
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i64 0, i64 0)) #6, !dbg !1808
  br label %if.end64, !dbg !1808

if.end64:                                         ; preds = %if.end61, %if.then63
  %66 = load i32, i32* @flag_signaling_nans, align 4, !dbg !1809
  %tobool65 = icmp eq i32 %66, 0, !dbg !1809
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !1811

if.then66:                                        ; preds = %if.end64
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1812
  br label %if.end67, !dbg !1812

if.end67:                                         ; preds = %if.end64, %if.then66
  %67 = load i32, i32* @flag_finite_math_only, align 4, !dbg !1813
  %tobool68 = icmp eq i32 %67, 0, !dbg !1813
  br i1 %tobool68, label %if.else70, label %if.then69, !dbg !1815

if.then69:                                        ; preds = %if.end67
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1816
  br label %if.end71, !dbg !1816

if.else70:                                        ; preds = %if.end67
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1817
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then69
  %68 = load i32, i32* @flag_pic, align 4, !dbg !1818
  %tobool72 = icmp eq i32 %68, 0, !dbg !1818
  br i1 %tobool72, label %if.end76, label %if.then73, !dbg !1820

if.then73:                                        ; preds = %if.end71
  %conv74 = sext i32 %68 to i64, !dbg !1821
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i64 0, i64 0), i64 %conv74) #7, !dbg !1823
  %69 = load i32, i32* @flag_pic, align 4, !dbg !1824
  %conv75 = sext i32 %69 to i64, !dbg !1824
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0), i64 %conv75) #7, !dbg !1825
  br label %if.end76, !dbg !1826

if.end76:                                         ; preds = %if.end71, %if.then73
  %70 = load i32, i32* @flag_pie, align 4, !dbg !1827
  %tobool77 = icmp eq i32 %70, 0, !dbg !1827
  br i1 %tobool77, label %if.end81, label %if.then78, !dbg !1829

if.then78:                                        ; preds = %if.end76
  %conv79 = sext i32 %70 to i64, !dbg !1830
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i64 0, i64 0), i64 %conv79) #7, !dbg !1832
  %71 = load i32, i32* @flag_pie, align 4, !dbg !1833
  %conv80 = sext i32 %71 to i64, !dbg !1833
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.103, i64 0, i64 0), i64 %conv80) #7, !dbg !1834
  br label %if.end81, !dbg !1835

if.end81:                                         ; preds = %if.end76, %if.then78
  %72 = load i32, i32* @flag_iso, align 4, !dbg !1836
  %tobool82 = icmp eq i32 %72, 0, !dbg !1836
  br i1 %tobool82, label %if.end84, label %if.then83, !dbg !1838

if.then83:                                        ; preds = %if.end81
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i64 0, i64 0)) #6, !dbg !1839
  br label %if.end84, !dbg !1839

if.end84:                                         ; preds = %if.end81, %if.then83
  %73 = load i32, i32* @flag_signed_char, align 4, !dbg !1840
  %tobool85 = icmp eq i32 %73, 0, !dbg !1840
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !1842

if.then86:                                        ; preds = %if.end84
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.105, i64 0, i64 0)) #6, !dbg !1843
  br label %if.end87, !dbg !1843

if.end87:                                         ; preds = %if.end84, %if.then86
  %74 = load i32, i32* @c_language, align 4, !dbg !1844
  %and88 = and i32 %74, 2, !dbg !1844
  %cmp89 = icmp eq i32 %and88, 0, !dbg !1844
  br i1 %cmp89, label %if.end96, label %land.lhs.true91, !dbg !1846

land.lhs.true91:                                  ; preds = %if.end87
  %75 = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 2) to i64**), align 16, !dbg !1847
  %bf.load92 = load i64, i64* %75, align 8, !dbg !1847
  %bf.cast1 = and i64 %bf.load92, 2097152, !dbg !1847
  %tobool94 = icmp eq i64 %bf.cast1, 0, !dbg !1847
  br i1 %tobool94, label %if.end96, label %if.then95, !dbg !1848

if.then95:                                        ; preds = %land.lhs.true91
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i64 0, i64 0)) #6, !dbg !1849
  br label %if.end96, !dbg !1849

if.end96:                                         ; preds = %land.lhs.true91, %if.end87, %if.then95
  %76 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ix86_arch_features, i64 0, i64 1), align 1, !dbg !1850
  %tobool97 = icmp eq i8 %76, 0, !dbg !1850
  br i1 %tobool97, label %if.end99, label %if.then98, !dbg !1852

if.then98:                                        ; preds = %if.end96
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.107, i64 0, i64 0)) #6, !dbg !1853
  %.pre = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ix86_arch_features, i64 0, i64 1), align 1, !dbg !1854
  %phitmp = icmp eq i8 %.pre, 0, !dbg !1853
  br label %if.end99, !dbg !1853

if.end99:                                         ; preds = %if.end96, %if.then98
  %77 = phi i1 [ true, %if.end96 ], [ %phitmp, %if.then98 ]
  br i1 %77, label %if.end102, label %if.then101, !dbg !1856

if.then101:                                       ; preds = %if.end99
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.108, i64 0, i64 0)) #6, !dbg !1857
  %.pre2 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ix86_arch_features, i64 0, i64 1), align 1, !dbg !1858
  %phitmp4 = icmp eq i8 %.pre2, 0, !dbg !1857
  br label %if.end102, !dbg !1857

if.end102:                                        ; preds = %if.end99, %if.then101
  %78 = phi i1 [ true, %if.end99 ], [ %phitmp4, %if.then101 ]
  br i1 %78, label %if.end105, label %if.then104, !dbg !1860

if.then104:                                       ; preds = %if.end102
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i64 0, i64 0)) #6, !dbg !1861
  %.pre3 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ix86_arch_features, i64 0, i64 1), align 1, !dbg !1862
  %phitmp5 = icmp eq i8 %.pre3, 0, !dbg !1861
  br label %if.end105, !dbg !1861

if.end105:                                        ; preds = %if.end102, %if.then104
  %79 = phi i1 [ true, %if.end102 ], [ %phitmp5, %if.then104 ]
  br i1 %79, label %if.end112, label %land.lhs.true108, !dbg !1862

land.lhs.true108:                                 ; preds = %if.end105
  %80 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ix86_arch_features, i64 0, i64 2), align 1, !dbg !1862
  %tobool110 = icmp eq i8 %80, 0, !dbg !1862
  br i1 %tobool110, label %if.end112, label %if.then111, !dbg !1864

if.then111:                                       ; preds = %land.lhs.true108
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.110, i64 0, i64 0)) #6, !dbg !1865
  br label %if.end112, !dbg !1865

if.end112:                                        ; preds = %land.lhs.true108, %if.end105, %if.then111
  %call113 = tail call i32 @dwarf2out_do_cfi_asm() #6, !dbg !1866
  %tobool114 = icmp eq i32 %call113, 0, !dbg !1866
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !1868

if.then115:                                       ; preds = %if.end112
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i64 0, i64 0)) #6, !dbg !1869
  br label %if.end116, !dbg !1869

if.end116:                                        ; preds = %if.end112, %if.then115
  %81 = load i32, i32* @c_language, align 4, !dbg !1870
  %and117 = and i32 %81, 1, !dbg !1870
  %cmp118 = icmp ne i32 %and117, 0, !dbg !1870
  %82 = load i32, i32* @flag_next_runtime, align 4, !dbg !1872
  %tobool121 = icmp ne i32 %82, 0, !dbg !1872
  %or.cond = and i1 %cmp118, %tobool121, !dbg !1873
  br i1 %or.cond, label %if.then122, label %if.end123, !dbg !1873

if.then122:                                       ; preds = %if.end116
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.112, i64 0, i64 0)) #6, !dbg !1874
  br label %if.end123, !dbg !1874

if.end123:                                        ; preds = %if.then122, %if.end116
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.113, i64 0, i64 0)) #6, !dbg !1875
  %83 = load i8, i8* getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 118), align 1, !dbg !1876
  %tobool124 = icmp eq i8 %83, 0, !dbg !1878
  br i1 %tobool124, label %if.end126, label %if.then125, !dbg !1879

if.then125:                                       ; preds = %if.end123
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.114, i64 0, i64 0)) #6, !dbg !1880
  br label %if.end126, !dbg !1880

if.end126:                                        ; preds = %if.end123, %if.then125
  %84 = load i32, i32* @flag_stack_protect, align 4, !dbg !1881
  %cmp127 = icmp eq i32 %84, 2, !dbg !1883
  br i1 %cmp127, label %if.then129, label %if.else130, !dbg !1884

if.then129:                                       ; preds = %if.end126
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i64 0, i64 0)) #6, !dbg !1885
  br label %if.end135, !dbg !1885

if.else130:                                       ; preds = %if.end126
  %cmp131 = icmp eq i32 %84, 1, !dbg !1886
  br i1 %cmp131, label %if.then133, label %if.end135, !dbg !1888

if.then133:                                       ; preds = %if.else130
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i64 0, i64 0)) #6, !dbg !1889
  br label %if.end135, !dbg !1889

if.end135:                                        ; preds = %if.else130, %if.then133, %if.then129
  %85 = load i32, i32* @flag_openmp, align 4, !dbg !1890
  %tobool136 = icmp eq i32 %85, 0, !dbg !1890
  br i1 %tobool136, label %if.end138, label %if.then137, !dbg !1892

if.then137:                                       ; preds = %if.end135
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.117, i64 0, i64 0)) #6, !dbg !1893
  br label %if.end138, !dbg !1893

if.end138:                                        ; preds = %if.end135, %if.then137
  %86 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !1894
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.118, i64 0, i64 0), %union.tree_node* %86) #7, !dbg !1895
  %87 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 7), align 8, !dbg !1896
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.119, i64 0, i64 0), %union.tree_node* %87) #7, !dbg !1897
  %88 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 9), align 8, !dbg !1898
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i64 0, i64 0), %union.tree_node* %88) #7, !dbg !1899
  %89 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 3), align 8, !dbg !1900
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.121, i64 0, i64 0), %union.tree_node* %89) #7, !dbg !1901
  %90 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31), align 8, !dbg !1902
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0), %union.tree_node* %90) #7, !dbg !1903
  %91 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 32), align 16, !dbg !1904
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.123, i64 0, i64 0), %union.tree_node* %91) #7, !dbg !1905
  %92 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 33), align 8, !dbg !1906
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.124, i64 0, i64 0), %union.tree_node* %92) #7, !dbg !1907
  %93 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 41), align 8, !dbg !1908
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.125, i64 0, i64 0), %union.tree_node* %93) #7, !dbg !1909
  %94 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 2), align 16, !dbg !1910
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.126, i64 0, i64 0), %union.tree_node* %94) #7, !dbg !1911
  %95 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 4), align 16, !dbg !1912
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.127, i64 0, i64 0), %union.tree_node* %95) #7, !dbg !1913
  %96 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 6), align 16, !dbg !1914
  tail call fastcc void @builtin_define_type_sizeof(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i64 0, i64 0), %union.tree_node* %96) #7, !dbg !1915
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.129, i64 0, i64 0), i64 4) #7, !dbg !1916
  tail call void @ix86_target_macros() #6, !dbg !1917
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i64 0, i64 0)) #6, !dbg !1918
  tail call void @builtin_define_std(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i64 0, i64 0)) #7, !dbg !1918
  tail call void @builtin_define_std(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.132, i64 0, i64 0)) #7, !dbg !1918
  tail call void @cpp_assert(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i64 0, i64 0)) #6, !dbg !1918
  tail call void @cpp_assert(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.134, i64 0, i64 0)) #6, !dbg !1918
  tail call void @cpp_assert(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i64 0, i64 0)) #6, !dbg !1918
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i64 0, i64 0)) #6, !dbg !1921
  tail call void @cpp_define(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.137, i64 0, i64 0)) #6, !dbg !1923
  %97 = load i32, i32* @ix86_isa_flags, align 4, !dbg !1925
  %and143 = and i32 %97, 32, !dbg !1925
  %cmp144 = icmp eq i32 %and143, 0, !dbg !1925
  %div = select i1 %cmp144, i64 16, i64 32, !dbg !1926
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.138, i64 0, i64 0), i64 %div) #7, !dbg !1927
  br label %return, !dbg !1928

return:                                           ; preds = %entry, %if.end138
  ret void, !dbg !1928
}

; Function Attrs: nounwind uwtable
define internal fastcc void @define__GNUC__() unnamed_addr #5 !dbg !1929 {
entry:
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  %patchlevel = alloca i32, align 4
  %0 = bitcast i32* %major to i8*, !dbg !1936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !1936
  %1 = bitcast i32* %minor to i8*, !dbg !1936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !1936
  %2 = bitcast i32* %patchlevel to i8*, !dbg !1936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !1936
  call void @llvm.dbg.value(metadata i32* %major, metadata !1933, metadata !DIExpression(DW_OP_deref)), !dbg !1937
  call void @llvm.dbg.value(metadata i32* %minor, metadata !1934, metadata !DIExpression(DW_OP_deref)), !dbg !1937
  call void @llvm.dbg.value(metadata i32* %patchlevel, metadata !1935, metadata !DIExpression(DW_OP_deref)), !dbg !1937
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i64 0, i64 0), i32* nonnull %major, i32* nonnull %minor, i32* nonnull %patchlevel) #6, !dbg !1938
  %cmp = icmp eq i32 %call, 3, !dbg !1940
  br i1 %cmp, label %if.end, label %if.then, !dbg !1941

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %major, metadata !1933, metadata !DIExpression(DW_OP_deref)), !dbg !1937
  call void @llvm.dbg.value(metadata i32* %minor, metadata !1934, metadata !DIExpression(DW_OP_deref)), !dbg !1937
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i64 0, i64 0), i32* nonnull %major, i32* nonnull %minor) #6, !dbg !1942
  call void @llvm.dbg.value(metadata i32 0, metadata !1935, metadata !DIExpression()), !dbg !1937
  store i32 0, i32* %patchlevel, align 4, !dbg !1944
  br label %if.end, !dbg !1945

if.end:                                           ; preds = %entry, %if.then
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1946
  %4 = load i32, i32* %major, align 4, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %4, metadata !1933, metadata !DIExpression()), !dbg !1937
  call void (%struct.cpp_reader*, i8*, ...) @cpp_define_formatted(%struct.cpp_reader* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i64 0, i64 0), i32 %4) #6, !dbg !1948
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1949
  %6 = load i32, i32* %minor, align 4, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %6, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void (%struct.cpp_reader*, i8*, ...) @cpp_define_formatted(%struct.cpp_reader* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.145, i64 0, i64 0), i32 %6) #6, !dbg !1951
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1952
  %8 = load i32, i32* %patchlevel, align 4, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %8, metadata !1935, metadata !DIExpression()), !dbg !1937
  call void (%struct.cpp_reader*, i8*, ...) @cpp_define_formatted(%struct.cpp_reader* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.146, i64 0, i64 0), i32 %8) #6, !dbg !1954
  %9 = load i32, i32* @c_language, align 4, !dbg !1955
  %and = and i32 %9, 2, !dbg !1955
  %cmp2 = icmp eq i32 %and, 0, !dbg !1955
  br i1 %cmp2, label %if.end4, label %if.then3, !dbg !1957

if.then3:                                         ; preds = %if.end
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1958
  %11 = load i32, i32* %major, align 4, !dbg !1959
  call void @llvm.dbg.value(metadata i32 %11, metadata !1933, metadata !DIExpression()), !dbg !1937
  call void (%struct.cpp_reader*, i8*, ...) @cpp_define_formatted(%struct.cpp_reader* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.147, i64 0, i64 0), i32 %11) #6, !dbg !1960
  br label %if.end4, !dbg !1960

if.end4:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !1961
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !1961
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !1961
  ret void, !dbg !1961
}

declare dso_local void @c_stddef_cpp_builtins() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_with_int_value(i8* %macro, i64 %value) unnamed_addr #5 !dbg !1962 {
entry:
  call void @llvm.dbg.value(metadata i8* %macro, metadata !1966, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 %value, metadata !1967, metadata !DIExpression()), !dbg !1972
  %call = tail call i64 @strlen(i8* %macro) #6, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %call, metadata !1969, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 18, metadata !1970, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i64 2, metadata !1971, metadata !DIExpression()), !dbg !1972
  %add1 = add i64 %call, 20, !dbg !1974
  %0 = alloca i8, i64 %add1, align 16, !dbg !1974
  call void @llvm.dbg.value(metadata i8* %0, metadata !1968, metadata !DIExpression()), !dbg !1972
  %call2 = call i8* @memcpy(i8* nonnull %0, i8* %macro, i64 %call) #6, !dbg !1975
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %call, !dbg !1976
  store i8 61, i8* %arrayidx, align 1, !dbg !1977
  %add.ptr3 = getelementptr inbounds i8, i8* %arrayidx, i64 1, !dbg !1978
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %add.ptr3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.229, i64 0, i64 0), i64 %value) #6, !dbg !1979
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1980
  call void @cpp_define(%struct.cpp_reader* %1, i8* nonnull %0) #6, !dbg !1981
  ret void, !dbg !1982
}

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_type_max(i8* %macro, %union.tree_node* %type) unnamed_addr #5 !dbg !1983 {
entry:
  call void @llvm.dbg.value(metadata i8* %macro, metadata !1987, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !1988, metadata !DIExpression()), !dbg !1989
  tail call fastcc void @builtin_define_type_minmax(i8* null, i8* %macro, %union.tree_node* %type) #7, !dbg !1990
  ret void, !dbg !1991
}

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_type_minmax(i8* %min_macro, i8* %max_macro, %union.tree_node* %type) unnamed_addr #5 !dbg !1052 {
entry:
  call void @llvm.dbg.value(metadata i8* %min_macro, metadata !1056, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8* %max_macro, metadata !1057, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !1058, metadata !DIExpression()), !dbg !1992
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !1993
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !1993
  %bf.load = load i32, i32* %precision, align 4, !dbg !1993
  %bf.clear = and i32 %bf.load, 1023, !dbg !1993
  switch i32 %bf.clear, label %sw.default [
    i32 8, label %sw.epilog
    i32 16, label %sw.bb2
    i32 32, label %sw.bb3
    i32 64, label %sw.bb4
    i32 128, label %sw.bb5
  ], !dbg !1994

sw.bb2:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 2, metadata !1062, metadata !DIExpression()), !dbg !1992
  br label %sw.epilog, !dbg !1995

sw.bb3:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 4, metadata !1062, metadata !DIExpression()), !dbg !1992
  br label %sw.epilog, !dbg !1997

sw.bb4:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 6, metadata !1062, metadata !DIExpression()), !dbg !1992
  br label %sw.epilog, !dbg !1998

sw.bb5:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 8, metadata !1062, metadata !DIExpression()), !dbg !1992
  br label %sw.epilog, !dbg !1999

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.194, i64 0, i64 0), i32 1066, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i64 0, i64 0)) #6, !dbg !2000
  br label %sw.epilog, !dbg !2001

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2
  %idx.0 = phi i64 [ undef, %sw.default ], [ 8, %sw.bb5 ], [ 6, %sw.bb4 ], [ 4, %sw.bb3 ], [ 2, %sw.bb2 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %idx.0, metadata !1062, metadata !DIExpression()), !dbg !1992
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2002
  %bf.load6 = load i64, i64* %0, align 8, !dbg !2002
  %bf.lshr = lshr i64 %bf.load6, 21, !dbg !2002
  %bf.cast = and i64 %bf.lshr, 1, !dbg !2002
  %add = add i64 %idx.0, %bf.cast, !dbg !2003
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @builtin_define_type_minmax.values, i64 0, i64 %add, !dbg !2004
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !2004
  call void @llvm.dbg.value(metadata i8* %1, metadata !1059, metadata !DIExpression()), !dbg !1992
  %call = tail call fastcc i8* @type_suffix(%union.tree_node* %type) #7, !dbg !2005
  call void @llvm.dbg.value(metadata i8* %call, metadata !1060, metadata !DIExpression()), !dbg !1992
  %call8 = tail call i64 @strlen(i8* %max_macro) #6, !dbg !2006
  %add9 = add i64 %call8, 1, !dbg !2006
  %call10 = tail call i64 @strlen(i8* %1) #6, !dbg !2006
  %add11 = add i64 %add9, %call10, !dbg !2006
  %call12 = tail call i64 @strlen(i8* %call) #6, !dbg !2006
  %add13 = add i64 %add11, %call12, !dbg !2006
  %add14 = add i64 %add13, 1, !dbg !2006
  %2 = alloca i8, i64 %add14, align 16, !dbg !2006
  call void @llvm.dbg.value(metadata i8* %2, metadata !1061, metadata !DIExpression()), !dbg !1992
  %call15 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.240, i64 0, i64 0), i8* %max_macro, i8* %1, i8* %call) #6, !dbg !2007
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2008
  call void @cpp_define(%struct.cpp_reader* %3, i8* nonnull %2) #6, !dbg !2009
  %tobool = icmp eq i8* %min_macro, null, !dbg !2010
  br i1 %tobool, label %if.end35, label %if.then, !dbg !2012

if.then:                                          ; preds = %sw.epilog
  %bf.load17 = load i64, i64* %0, align 8, !dbg !2013
  %bf.cast201 = and i64 %bf.load17, 2097152, !dbg !2013
  %tobool21 = icmp eq i64 %bf.cast201, 0, !dbg !2013
  %call23 = call i64 @strlen(i8* nonnull %min_macro) #6, !dbg !2016
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !2017

if.then22:                                        ; preds = %if.then
  %add24 = add i64 %call23, 2, !dbg !2018
  %call25 = call i64 @strlen(i8* %call) #6, !dbg !2018
  %add26 = add i64 %add24, %call25, !dbg !2018
  %add27 = add i64 %add26, 1, !dbg !2018
  %4 = alloca i8, i64 %add27, align 16, !dbg !2018
  call void @llvm.dbg.value(metadata i8* %4, metadata !1061, metadata !DIExpression()), !dbg !1992
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.241, i64 0, i64 0), i8* nonnull %min_macro, i8* %call) #6, !dbg !2020
  br label %if.end, !dbg !2021

if.else:                                          ; preds = %if.then
  %add30 = add i64 %call23, 3, !dbg !2022
  %call31 = call i64 @strlen(i8* %max_macro) #6, !dbg !2022
  %add32 = add i64 %add30, %call31, !dbg !2022
  %add33 = add i64 %add32, 6, !dbg !2022
  %5 = alloca i8, i64 %add33, align 16, !dbg !2022
  call void @llvm.dbg.value(metadata i8* %5, metadata !1061, metadata !DIExpression()), !dbg !1992
  %call34 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.242, i64 0, i64 0), i8* nonnull %min_macro, i8* %max_macro) #6, !dbg !2024
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then22
  %buf.0 = phi i8* [ %4, %if.then22 ], [ %5, %if.else ], !dbg !2016
  call void @llvm.dbg.value(metadata i8* %buf.0, metadata !1061, metadata !DIExpression()), !dbg !1992
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2025
  call void @cpp_define(%struct.cpp_reader* %6, i8* %buf.0) #6, !dbg !2026
  br label %if.end35, !dbg !2027

if.end35:                                         ; preds = %sw.epilog, %if.end
  ret void, !dbg !2028
}

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_type_precision(i8* %name, %union.tree_node* %type) unnamed_addr #5 !dbg !2029 {
entry:
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2032, metadata !DIExpression()), !dbg !2033
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2034
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !2034
  %bf.load = load i32, i32* %precision, align 4, !dbg !2034
  %bf.clear = and i32 %bf.load, 1023, !dbg !2034
  %conv = zext i32 %bf.clear to i64, !dbg !2034
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i64 %conv) #7, !dbg !2035
  ret void, !dbg !2036
}

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_stdint_macros() unnamed_addr #5 !dbg !2037 {
entry:
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 7), align 8, !dbg !2038
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.148, i64 0, i64 0), %union.tree_node* %0) #7, !dbg !2039
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 7), align 8, !dbg !2040
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i64 0, i64 0), %union.tree_node* %1) #7, !dbg !2041
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 8), align 16, !dbg !2042
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.150, i64 0, i64 0), %union.tree_node* %2) #7, !dbg !2043
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 8), align 16, !dbg !2044
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), %union.tree_node* %3) #7, !dbg !2045
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 11), align 8, !dbg !2046
  %tobool = icmp eq %union.tree_node* %4, null, !dbg !2046
  br i1 %tobool, label %if.end, label %if.then, !dbg !2048

if.then:                                          ; preds = %entry
  tail call fastcc void @builtin_define_type_minmax(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.152, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.153, i64 0, i64 0), %union.tree_node* nonnull %4) #7, !dbg !2049
  br label %if.end, !dbg !2049

if.end:                                           ; preds = %entry, %if.then
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 12), align 16, !dbg !2050
  %tobool1 = icmp eq %union.tree_node* %5, null, !dbg !2050
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2052

if.then2:                                         ; preds = %if.end
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i64 0, i64 0), %union.tree_node* nonnull %5) #7, !dbg !2053
  br label %if.end3, !dbg !2053

if.end3:                                          ; preds = %if.end, %if.then2
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 13), align 8, !dbg !2054
  %tobool4 = icmp eq %union.tree_node* %6, null, !dbg !2054
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2056

if.then5:                                         ; preds = %if.end3
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i64 0, i64 0), %union.tree_node* nonnull %6) #7, !dbg !2057
  br label %if.end6, !dbg !2057

if.end6:                                          ; preds = %if.end3, %if.then5
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 14), align 16, !dbg !2058
  %tobool7 = icmp eq %union.tree_node* %7, null, !dbg !2058
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2060

if.then8:                                         ; preds = %if.end6
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.156, i64 0, i64 0), %union.tree_node* nonnull %7) #7, !dbg !2061
  br label %if.end9, !dbg !2061

if.end9:                                          ; preds = %if.end6, %if.then8
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 15), align 8, !dbg !2062
  %tobool10 = icmp eq %union.tree_node* %8, null, !dbg !2062
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2064

if.then11:                                        ; preds = %if.end9
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.157, i64 0, i64 0), %union.tree_node* nonnull %8) #7, !dbg !2065
  br label %if.end12, !dbg !2065

if.end12:                                         ; preds = %if.end9, %if.then11
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 16), align 16, !dbg !2066
  %tobool13 = icmp eq %union.tree_node* %9, null, !dbg !2066
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2068

if.then14:                                        ; preds = %if.end12
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.158, i64 0, i64 0), %union.tree_node* nonnull %9) #7, !dbg !2069
  br label %if.end15, !dbg !2069

if.end15:                                         ; preds = %if.end12, %if.then14
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 17), align 8, !dbg !2070
  %tobool16 = icmp eq %union.tree_node* %10, null, !dbg !2070
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !2072

if.then17:                                        ; preds = %if.end15
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.159, i64 0, i64 0), %union.tree_node* nonnull %10) #7, !dbg !2073
  br label %if.end18, !dbg !2073

if.end18:                                         ; preds = %if.end15, %if.then17
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 18), align 16, !dbg !2074
  %tobool19 = icmp eq %union.tree_node* %11, null, !dbg !2074
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !2076

if.then20:                                        ; preds = %if.end18
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.160, i64 0, i64 0), %union.tree_node* nonnull %11) #7, !dbg !2077
  br label %if.end21, !dbg !2077

if.end21:                                         ; preds = %if.end18, %if.then20
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 19), align 8, !dbg !2078
  %tobool22 = icmp eq %union.tree_node* %12, null, !dbg !2078
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !2080

if.then23:                                        ; preds = %if.end21
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.161, i64 0, i64 0), %union.tree_node* nonnull %12) #7, !dbg !2081
  br label %if.end24, !dbg !2081

if.end24:                                         ; preds = %if.end21, %if.then23
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 20), align 16, !dbg !2082
  %tobool25 = icmp eq %union.tree_node* %13, null, !dbg !2082
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !2084

if.then26:                                        ; preds = %if.end24
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.162, i64 0, i64 0), %union.tree_node* nonnull %13) #7, !dbg !2085
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 20), align 16, !dbg !2087
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i64 0, i64 0), %union.tree_node* %14) #7, !dbg !2088
  br label %if.end27, !dbg !2089

if.end27:                                         ; preds = %if.end24, %if.then26
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 21), align 8, !dbg !2090
  %tobool28 = icmp eq %union.tree_node* %15, null, !dbg !2090
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !2092

if.then29:                                        ; preds = %if.end27
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i64 0, i64 0), %union.tree_node* nonnull %15) #7, !dbg !2093
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 21), align 8, !dbg !2095
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.165, i64 0, i64 0), %union.tree_node* %16) #7, !dbg !2096
  br label %if.end30, !dbg !2097

if.end30:                                         ; preds = %if.end27, %if.then29
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 22), align 16, !dbg !2098
  %tobool31 = icmp eq %union.tree_node* %17, null, !dbg !2098
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !2100

if.then32:                                        ; preds = %if.end30
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.166, i64 0, i64 0), %union.tree_node* nonnull %17) #7, !dbg !2101
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 22), align 16, !dbg !2103
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.167, i64 0, i64 0), %union.tree_node* %18) #7, !dbg !2104
  br label %if.end33, !dbg !2105

if.end33:                                         ; preds = %if.end30, %if.then32
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 23), align 8, !dbg !2106
  %tobool34 = icmp eq %union.tree_node* %19, null, !dbg !2106
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !2108

if.then35:                                        ; preds = %if.end33
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.168, i64 0, i64 0), %union.tree_node* nonnull %19) #7, !dbg !2109
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 23), align 8, !dbg !2111
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i64 0, i64 0), %union.tree_node* %20) #7, !dbg !2112
  br label %if.end36, !dbg !2113

if.end36:                                         ; preds = %if.end33, %if.then35
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 24), align 16, !dbg !2114
  %tobool37 = icmp eq %union.tree_node* %21, null, !dbg !2114
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !2116

if.then38:                                        ; preds = %if.end36
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.170, i64 0, i64 0), %union.tree_node* nonnull %21) #7, !dbg !2117
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 24), align 16, !dbg !2119
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.171, i64 0, i64 0), %union.tree_node* %22) #7, !dbg !2120
  br label %if.end39, !dbg !2121

if.end39:                                         ; preds = %if.end36, %if.then38
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 25), align 8, !dbg !2122
  %tobool40 = icmp eq %union.tree_node* %23, null, !dbg !2122
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !2124

if.then41:                                        ; preds = %if.end39
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.172, i64 0, i64 0), %union.tree_node* nonnull %23) #7, !dbg !2125
  %24 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 25), align 8, !dbg !2127
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.173, i64 0, i64 0), %union.tree_node* %24) #7, !dbg !2128
  br label %if.end42, !dbg !2129

if.end42:                                         ; preds = %if.end39, %if.then41
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 26), align 16, !dbg !2130
  %tobool43 = icmp eq %union.tree_node* %25, null, !dbg !2130
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !2132

if.then44:                                        ; preds = %if.end42
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.174, i64 0, i64 0), %union.tree_node* nonnull %25) #7, !dbg !2133
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 26), align 16, !dbg !2135
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0), %union.tree_node* %26) #7, !dbg !2136
  br label %if.end45, !dbg !2137

if.end45:                                         ; preds = %if.end42, %if.then44
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 27), align 8, !dbg !2138
  %tobool46 = icmp eq %union.tree_node* %27, null, !dbg !2138
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !2140

if.then47:                                        ; preds = %if.end45
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.176, i64 0, i64 0), %union.tree_node* nonnull %27) #7, !dbg !2141
  %28 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 27), align 8, !dbg !2143
  tail call fastcc void @builtin_define_constants(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i64 0, i64 0), %union.tree_node* %28) #7, !dbg !2144
  br label %if.end48, !dbg !2145

if.end48:                                         ; preds = %if.end45, %if.then47
  %29 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 28), align 16, !dbg !2146
  %tobool49 = icmp eq %union.tree_node* %29, null, !dbg !2146
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !2148

if.then50:                                        ; preds = %if.end48
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.178, i64 0, i64 0), %union.tree_node* nonnull %29) #7, !dbg !2149
  br label %if.end51, !dbg !2149

if.end51:                                         ; preds = %if.end48, %if.then50
  %30 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 29), align 8, !dbg !2150
  %tobool52 = icmp eq %union.tree_node* %30, null, !dbg !2150
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !2152

if.then53:                                        ; preds = %if.end51
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.179, i64 0, i64 0), %union.tree_node* nonnull %30) #7, !dbg !2153
  br label %if.end54, !dbg !2153

if.end54:                                         ; preds = %if.end51, %if.then53
  %31 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 30), align 16, !dbg !2154
  %tobool55 = icmp eq %union.tree_node* %31, null, !dbg !2154
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !2156

if.then56:                                        ; preds = %if.end54
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.180, i64 0, i64 0), %union.tree_node* nonnull %31) #7, !dbg !2157
  br label %if.end57, !dbg !2157

if.end57:                                         ; preds = %if.end54, %if.then56
  %32 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 31), align 8, !dbg !2158
  %tobool58 = icmp eq %union.tree_node* %32, null, !dbg !2158
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !2160

if.then59:                                        ; preds = %if.end57
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.181, i64 0, i64 0), %union.tree_node* nonnull %32) #7, !dbg !2161
  br label %if.end60, !dbg !2161

if.end60:                                         ; preds = %if.end57, %if.then59
  %33 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 32), align 16, !dbg !2162
  %tobool61 = icmp eq %union.tree_node* %33, null, !dbg !2162
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !2164

if.then62:                                        ; preds = %if.end60
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.182, i64 0, i64 0), %union.tree_node* nonnull %33) #7, !dbg !2165
  br label %if.end63, !dbg !2165

if.end63:                                         ; preds = %if.end60, %if.then62
  %34 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 33), align 8, !dbg !2166
  %tobool64 = icmp eq %union.tree_node* %34, null, !dbg !2166
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !2168

if.then65:                                        ; preds = %if.end63
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.183, i64 0, i64 0), %union.tree_node* nonnull %34) #7, !dbg !2169
  br label %if.end66, !dbg !2169

if.end66:                                         ; preds = %if.end63, %if.then65
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 34), align 16, !dbg !2170
  %tobool67 = icmp eq %union.tree_node* %35, null, !dbg !2170
  br i1 %tobool67, label %if.end69, label %if.then68, !dbg !2172

if.then68:                                        ; preds = %if.end66
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.184, i64 0, i64 0), %union.tree_node* nonnull %35) #7, !dbg !2173
  br label %if.end69, !dbg !2173

if.end69:                                         ; preds = %if.end66, %if.then68
  %36 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 35), align 8, !dbg !2174
  %tobool70 = icmp eq %union.tree_node* %36, null, !dbg !2174
  br i1 %tobool70, label %if.end72, label %if.then71, !dbg !2176

if.then71:                                        ; preds = %if.end69
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.185, i64 0, i64 0), %union.tree_node* nonnull %36) #7, !dbg !2177
  br label %if.end72, !dbg !2177

if.end72:                                         ; preds = %if.end69, %if.then71
  %37 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 36), align 16, !dbg !2178
  %tobool73 = icmp eq %union.tree_node* %37, null, !dbg !2178
  br i1 %tobool73, label %if.end75, label %if.then74, !dbg !2180

if.then74:                                        ; preds = %if.end72
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.186, i64 0, i64 0), %union.tree_node* nonnull %37) #7, !dbg !2181
  br label %if.end75, !dbg !2181

if.end75:                                         ; preds = %if.end72, %if.then74
  %38 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 37), align 8, !dbg !2182
  %tobool76 = icmp eq %union.tree_node* %38, null, !dbg !2182
  br i1 %tobool76, label %if.end78, label %if.then77, !dbg !2184

if.then77:                                        ; preds = %if.end75
  tail call fastcc void @builtin_define_type_max(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.187, i64 0, i64 0), %union.tree_node* nonnull %38) #7, !dbg !2185
  br label %if.end78, !dbg !2185

if.end78:                                         ; preds = %if.end75, %if.then77
  ret void, !dbg !2186
}

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_float_constants(i8* %name_prefix, i8* %fp_suffix, i8* %fp_cast, %union.tree_node* %type) unnamed_addr #5 !dbg !2187 {
entry:
  %name = alloca [64 x i8], align 16
  %buf = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %name_prefix, metadata !2191, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* %fp_suffix, metadata !2192, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* %fp_cast, metadata !2193, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2194, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata double 0x3FD34413509F79FF, metadata !2195, metadata !DIExpression()), !dbg !2246
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0, !dbg !2247
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2247
  call void @llvm.dbg.declare(metadata [64 x i8]* %name, metadata !2232, metadata !DIExpression()), !dbg !2248
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2247
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #8, !dbg !2247
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !2236, metadata !DIExpression()), !dbg !2249
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2250
  %bf.load = load i64, i64* %2, align 8, !dbg !2250
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2250
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !2250
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2250

cond.true:                                        ; preds = %entry
  %call = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2250
  %bf.load8.pre = load i64, i64* %2, align 8, !dbg !2250
  br label %cond.end, !dbg !2250

cond.false:                                       ; preds = %entry
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2250
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !2250
  %bf.load2 = load i32, i32* %mode, align 4, !dbg !2250
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !2250
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !2250
  br label %cond.end, !dbg !2250

cond.end:                                         ; preds = %cond.false, %cond.true
  %bf.load8 = phi i64 [ %bf.load8.pre, %cond.true ], [ %bf.load, %cond.false ], !dbg !2250
  %cond = phi i32 [ %call, %cond.true ], [ %bf.clear3, %cond.false ], !dbg !2250
  %idxprom = zext i32 %cond to i64, !dbg !2250
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2250
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2250
  %cmp4 = icmp eq i8 %3, 9, !dbg !2250
  %bf.cast102 = and i64 %bf.load8, 65535, !dbg !2250
  %cmp11 = icmp eq i64 %bf.cast102, 14, !dbg !2250
  br i1 %cmp4, label %cond.true6, label %cond.false23, !dbg !2250

cond.true6:                                       ; preds = %cond.end
  br i1 %cmp11, label %cond.true13, label %cond.false15, !dbg !2250

cond.true13:                                      ; preds = %cond.true6
  %call14 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2250
  br label %cond.end21, !dbg !2250

cond.false15:                                     ; preds = %cond.true6
  %type16 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2250
  %mode17 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i64 0, i32 6, !dbg !2250
  %bf.load18 = load i32, i32* %mode17, align 4, !dbg !2250
  %bf.lshr19 = lshr i32 %bf.load18, 16, !dbg !2250
  %bf.clear20 = and i32 %bf.lshr19, 255, !dbg !2250
  br label %cond.end21, !dbg !2250

cond.end21:                                       ; preds = %cond.false15, %cond.true13
  %cond22 = phi i32 [ %call14, %cond.true13 ], [ %bf.clear20, %cond.false15 ], !dbg !2250
  br label %cond.end41, !dbg !2250

cond.false23:                                     ; preds = %cond.end
  br i1 %cmp11, label %cond.true30, label %cond.false32, !dbg !2250

cond.true30:                                      ; preds = %cond.false23
  %call31 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2250
  br label %cond.end38, !dbg !2250

cond.false32:                                     ; preds = %cond.false23
  %type33 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2250
  %mode34 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type33, i64 0, i32 6, !dbg !2250
  %bf.load35 = load i32, i32* %mode34, align 4, !dbg !2250
  %bf.lshr36 = lshr i32 %bf.load35, 16, !dbg !2250
  %bf.clear37 = and i32 %bf.lshr36, 255, !dbg !2250
  br label %cond.end38, !dbg !2250

cond.end38:                                       ; preds = %cond.false32, %cond.true30
  %cond39 = phi i32 [ %call31, %cond.true30 ], [ %bf.clear37, %cond.false32 ], !dbg !2250
  br label %cond.end41, !dbg !2250

cond.end41:                                       ; preds = %cond.end38, %cond.end21
  %cond42.in = phi i32 [ %cond22, %cond.end21 ], [ %cond39, %cond.end38 ]
  %cond42 = add i32 %cond42.in, -38, !dbg !2250
  %idxprom43 = zext i32 %cond42 to i64, !dbg !2250
  %arrayidx44 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom43, !dbg !2250
  %4 = load %struct.real_format*, %struct.real_format** %arrayidx44, align 8, !dbg !2250
  call void @llvm.dbg.value(metadata %struct.real_format* %4, metadata !2198, metadata !DIExpression()), !dbg !2246
  %b = getelementptr inbounds %struct.real_format, %struct.real_format* %4, i64 0, i32 2, !dbg !2251
  %5 = load i32, i32* %b, align 8, !dbg !2251
  %cmp45 = icmp eq i32 %5, 10, !dbg !2251
  br i1 %cmp45, label %cond.true47, label %cond.end49, !dbg !2251

cond.true47:                                      ; preds = %cond.end41
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.194, i64 0, i64 0), i32 111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i64 0, i64 0)) #6, !dbg !2251
  br label %cond.end49, !dbg !2251

cond.end49:                                       ; preds = %cond.end41, %cond.true47
  %6 = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 33) to i64**), align 8, !dbg !2252
  %bf.load52 = load i64, i64* %6, align 8, !dbg !2252
  %bf.cast543 = and i64 %bf.load52, 65535, !dbg !2252
  %cmp55 = icmp eq i64 %bf.cast543, 14, !dbg !2252
  br i1 %cmp55, label %cond.true57, label %cond.false59, !dbg !2252

cond.true57:                                      ; preds = %cond.end49
  %.cast = bitcast i64* %6 to %union.tree_node*, !dbg !2252
  %call58 = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !2252
  %.pre = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 33) to i64**), align 8, !dbg !2252
  %bf.load74.pre = load i64, i64* %.pre, align 8, !dbg !2252
  br label %cond.end65, !dbg !2252

cond.false59:                                     ; preds = %cond.end49
  %type60 = bitcast i64* %6 to %struct.tree_type*, !dbg !2252
  %mode61 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type60, i64 0, i32 6, !dbg !2252
  %bf.load62 = load i32, i32* %mode61, align 4, !dbg !2252
  %bf.lshr63 = lshr i32 %bf.load62, 16, !dbg !2252
  %bf.clear64 = and i32 %bf.lshr63, 255, !dbg !2252
  br label %cond.end65, !dbg !2252

cond.end65:                                       ; preds = %cond.false59, %cond.true57
  %bf.load74 = phi i64 [ %bf.load74.pre, %cond.true57 ], [ %bf.load52, %cond.false59 ], !dbg !2252
  %7 = phi i64* [ %.pre, %cond.true57 ], [ %6, %cond.false59 ], !dbg !2252
  %cond66 = phi i32 [ %call58, %cond.true57 ], [ %bf.clear64, %cond.false59 ], !dbg !2252
  %idxprom67 = zext i32 %cond66 to i64, !dbg !2252
  %arrayidx68 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom67, !dbg !2252
  %8 = load i8, i8* %arrayidx68, align 1, !dbg !2252
  %cmp70 = icmp eq i8 %8, 9, !dbg !2252
  %bf.cast764 = and i64 %bf.load74, 65535, !dbg !2252
  %cmp77 = icmp eq i64 %bf.cast764, 14, !dbg !2252
  %.cast5 = bitcast i64* %7 to %union.tree_node*, !dbg !2252
  br i1 %cmp70, label %cond.true72, label %cond.false91, !dbg !2252

cond.true72:                                      ; preds = %cond.end65
  br i1 %cmp77, label %cond.true79, label %cond.false81, !dbg !2252

cond.true79:                                      ; preds = %cond.true72
  %call80 = tail call i32 @vector_type_mode(%union.tree_node* %.cast5) #6, !dbg !2252
  br label %cond.end87, !dbg !2252

cond.false81:                                     ; preds = %cond.true72
  %type82 = bitcast i64* %7 to %struct.tree_type*, !dbg !2252
  %mode83 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type82, i64 0, i32 6, !dbg !2252
  %bf.load84 = load i32, i32* %mode83, align 4, !dbg !2252
  %bf.lshr85 = lshr i32 %bf.load84, 16, !dbg !2252
  %bf.clear86 = and i32 %bf.lshr85, 255, !dbg !2252
  br label %cond.end87, !dbg !2252

cond.end87:                                       ; preds = %cond.false81, %cond.true79
  %cond88 = phi i32 [ %call80, %cond.true79 ], [ %bf.clear86, %cond.false81 ], !dbg !2252
  br label %cond.end109, !dbg !2252

cond.false91:                                     ; preds = %cond.end65
  br i1 %cmp77, label %cond.true98, label %cond.false100, !dbg !2252

cond.true98:                                      ; preds = %cond.false91
  %call99 = tail call i32 @vector_type_mode(%union.tree_node* %.cast5) #6, !dbg !2252
  br label %cond.end106, !dbg !2252

cond.false100:                                    ; preds = %cond.false91
  %type101 = bitcast i64* %7 to %struct.tree_type*, !dbg !2252
  %mode102 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type101, i64 0, i32 6, !dbg !2252
  %bf.load103 = load i32, i32* %mode102, align 4, !dbg !2252
  %bf.lshr104 = lshr i32 %bf.load103, 16, !dbg !2252
  %bf.clear105 = and i32 %bf.lshr104, 255, !dbg !2252
  br label %cond.end106, !dbg !2252

cond.end106:                                      ; preds = %cond.false100, %cond.true98
  %cond107 = phi i32 [ %call99, %cond.true98 ], [ %bf.clear105, %cond.false100 ], !dbg !2252
  br label %cond.end109, !dbg !2252

cond.end109:                                      ; preds = %cond.end106, %cond.end87
  %cond110.in = phi i32 [ %cond88, %cond.end87 ], [ %cond107, %cond.end106 ]
  %cond110 = add i32 %cond110.in, -38, !dbg !2252
  %idxprom111 = zext i32 %cond110 to i64, !dbg !2252
  %arrayidx112 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom111, !dbg !2252
  %9 = load %struct.real_format*, %struct.real_format** %arrayidx112, align 8, !dbg !2252
  call void @llvm.dbg.value(metadata %struct.real_format* %9, metadata !2231, metadata !DIExpression()), !dbg !2246
  %b113 = getelementptr inbounds %struct.real_format, %struct.real_format* %9, i64 0, i32 2, !dbg !2253
  %10 = load i32, i32* %b113, align 8, !dbg !2253
  %cmp114 = icmp eq i32 %10, 10, !dbg !2253
  br i1 %cmp114, label %cond.true116, label %cond.end118, !dbg !2253

cond.true116:                                     ; preds = %cond.end109
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.194, i64 0, i64 0), i32 113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i64 0, i64 0)) #6, !dbg !2253
  br label %cond.end118, !dbg !2253

cond.end118:                                      ; preds = %cond.end109, %cond.true116
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31), align 8, !dbg !2254
  %cmp120 = icmp eq %union.tree_node* %11, %type, !dbg !2256
  br i1 %cmp120, label %if.then, label %if.end, !dbg !2257

if.then:                                          ; preds = %cond.end118
  %12 = load i32, i32* %b, align 8, !dbg !2258
  %conv123 = sext i32 %12 to i64, !dbg !2259
  tail call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.196, i64 0, i64 0), i64 %conv123) #7, !dbg !2260
  br label %if.end, !dbg !2260

if.end:                                           ; preds = %if.then, %cond.end118
  call void @llvm.dbg.value(metadata double 0x3FD34413509F79FF, metadata !2197, metadata !DIExpression()), !dbg !2246
  %call124 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.197, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2261
  %p = getelementptr inbounds %struct.real_format, %struct.real_format* %4, i64 0, i32 3, !dbg !2262
  %13 = load i32, i32* %p, align 4, !dbg !2262
  %conv126 = sext i32 %13 to i64, !dbg !2263
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %conv126) #7, !dbg !2264
  %14 = load i32, i32* %p, align 4, !dbg !2265
  %sub128 = add nsw i32 %14, -1, !dbg !2266
  %conv129 = sitofp i32 %sub128 to double, !dbg !2267
  %mul = fmul double %conv129, 0x3FD34413509F79FF, !dbg !2268
  %conv130 = fptosi double %mul to i32, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %conv130, metadata !2240, metadata !DIExpression()), !dbg !2246
  %call132 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.198, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2269
  %conv134 = sext i32 %conv130 to i64, !dbg !2270
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %conv134) #7, !dbg !2271
  %call136 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.199, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2272
  %emin = getelementptr inbounds %struct.real_format, %struct.real_format* %4, i64 0, i32 5, !dbg !2273
  %15 = load i32, i32* %emin, align 4, !dbg !2273
  %call138 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.200, i64 0, i64 0), i32 %15) #6, !dbg !2274
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2275
  %16 = load i32, i32* %emin, align 4, !dbg !2276
  %sub142 = add nsw i32 %16, -1, !dbg !2277
  %conv143 = sitofp i32 %sub142 to double, !dbg !2278
  %mul144 = fmul double %conv143, 0x3FD34413509F79FF, !dbg !2279
  %conv145 = fptosi double %mul144 to i32, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %conv145, metadata !2241, metadata !DIExpression()), !dbg !2246
  %call147 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.201, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2280
  %call149 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.200, i64 0, i64 0), i32 %conv145) #6, !dbg !2281
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2282
  %call153 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.202, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2283
  %emax = getelementptr inbounds %struct.real_format, %struct.real_format* %4, i64 0, i32 6, !dbg !2284
  %17 = load i32, i32* %emax, align 8, !dbg !2284
  %conv155 = sext i32 %17 to i64, !dbg !2285
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %conv155) #7, !dbg !2286
  %18 = load i32, i32* %emax, align 8, !dbg !2287
  %conv157 = sitofp i32 %18 to double, !dbg !2288
  %mul158 = fmul double %conv157, 0x3FD34413509F79FF, !dbg !2289
  %conv159 = fptosi double %mul158 to i32, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %conv159, metadata !2242, metadata !DIExpression()), !dbg !2246
  %call161 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.203, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2290
  %conv163 = sext i32 %conv159 to i64, !dbg !2291
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %conv163) #7, !dbg !2292
  %19 = load i32, i32* %p, align 4, !dbg !2293
  %p165 = getelementptr inbounds %struct.real_format, %struct.real_format* %9, i64 0, i32 3, !dbg !2294
  %20 = load i32, i32* %p165, align 4, !dbg !2294
  %cmp166 = icmp slt i32 %19, %20, !dbg !2295
  br i1 %cmp166, label %cond.true168, label %cond.false170, !dbg !2296

cond.true168:                                     ; preds = %if.end
  br label %cond.end172, !dbg !2296

cond.false170:                                    ; preds = %if.end
  br label %cond.end172, !dbg !2296

cond.end172:                                      ; preds = %cond.false170, %cond.true168
  %cond173 = phi i32 [ %20, %cond.true168 ], [ %19, %cond.false170 ], !dbg !2296
  %conv174 = sitofp i32 %cond173 to double, !dbg !2297
  %mul175 = fmul double %conv174, 0x3FD34413509F79FF, !dbg !2298
  %add176 = fadd double %mul175, 1.000000e+00, !dbg !2299
  call void @llvm.dbg.value(metadata double %add176, metadata !2244, metadata !DIExpression()), !dbg !2300
  %conv177 = fptosi double %add176 to i32, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %conv177, metadata !2243, metadata !DIExpression()), !dbg !2246
  %conv178 = sitofp i32 %conv177 to double, !dbg !2302
  %cmp179 = fcmp ogt double %add176, %conv178, !dbg !2304
  %inc = zext i1 %cmp179 to i32, !dbg !2305
  %decimal_dig.0 = add nsw i32 %inc, %conv177, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %decimal_dig.0, metadata !2243, metadata !DIExpression()), !dbg !2246
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 33), align 8, !dbg !2306
  %cmp183 = icmp eq %union.tree_node* %21, %type, !dbg !2308
  br i1 %cmp183, label %if.then185, label %if.end187, !dbg !2309

if.then185:                                       ; preds = %cond.end172
  %conv186 = sext i32 %decimal_dig.0 to i64, !dbg !2310
  call fastcc void @builtin_define_with_int_value(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.204, i64 0, i64 0), i64 %conv186) #7, !dbg !2311
  br label %if.end187, !dbg !2311

if.end187:                                        ; preds = %if.then185, %cond.end172
  call void @get_max_float(%struct.real_format* %4, i8* nonnull %1, i64 128) #6, !dbg !2312
  %call190 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.205, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2313
  call fastcc void @builtin_define_with_hex_fp_value(i8* nonnull %0, %union.tree_node* %type, i32 %decimal_dig.0, i8* nonnull %1, i8* %fp_suffix, i8* %fp_cast) #7, !dbg !2314
  %call194 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.206, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2315
  %22 = load i32, i32* %emin, align 4, !dbg !2316
  %sub197 = add nsw i32 %22, -1, !dbg !2317
  %call198 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i64 0, i64 0), i32 %sub197) #6, !dbg !2318
  call fastcc void @builtin_define_with_hex_fp_value(i8* nonnull %0, %union.tree_node* %type, i32 %decimal_dig.0, i8* nonnull %1, i8* %fp_suffix, i8* %fp_cast) #7, !dbg !2319
  %call202 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.208, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2320
  %pnan = getelementptr inbounds %struct.real_format, %struct.real_format* %4, i64 0, i32 4, !dbg !2321
  %23 = load i32, i32* %pnan, align 8, !dbg !2321
  %24 = load i32, i32* %p, align 4, !dbg !2323
  %cmp204 = icmp slt i32 %23, %24, !dbg !2324
  br i1 %cmp204, label %if.then206, label %if.else, !dbg !2325

if.then206:                                       ; preds = %if.end187
  %25 = load i32, i32* %emin, align 4, !dbg !2326
  %sub210 = sub nsw i32 %25, %24, !dbg !2327
  %call211 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i64 0, i64 0), i32 %sub210) #6, !dbg !2328
  br label %if.end216, !dbg !2328

if.else:                                          ; preds = %if.end187
  %sub214 = sub nsw i32 1, %24, !dbg !2329
  %call215 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i64 0, i64 0), i32 %sub214) #6, !dbg !2330
  br label %if.end216

if.end216:                                        ; preds = %if.else, %if.then206
  call fastcc void @builtin_define_with_hex_fp_value(i8* nonnull %0, %union.tree_node* %type, i32 %decimal_dig.0, i8* nonnull %1, i8* %fp_suffix, i8* %fp_cast) #7, !dbg !2331
  %call220 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.209, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2332
  %has_denorm = getelementptr inbounds %struct.real_format, %struct.real_format* %4, i64 0, i32 13, !dbg !2333
  %26 = load i8, i8* %has_denorm, align 8, !dbg !2333
  %tobool = icmp eq i8 %26, 0, !dbg !2335
  br i1 %tobool, label %if.else229, label %if.then221, !dbg !2336

if.then221:                                       ; preds = %if.end216
  %27 = load i32, i32* %emin, align 4, !dbg !2337
  %28 = load i32, i32* %p, align 4, !dbg !2339
  %sub225 = sub nsw i32 %27, %28, !dbg !2340
  %call226 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i64 0, i64 0), i32 %sub225) #6, !dbg !2341
  call fastcc void @builtin_define_with_hex_fp_value(i8* nonnull %0, %union.tree_node* %type, i32 %decimal_dig.0, i8* nonnull %1, i8* %fp_suffix, i8* %fp_cast) #7, !dbg !2342
  br label %if.end234, !dbg !2343

if.else229:                                       ; preds = %if.end216
  %call231 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.210, i64 0, i64 0), i8* %fp_suffix) #6, !dbg !2344
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2346
  br label %if.end234

if.end234:                                        ; preds = %if.else229, %if.then221
  %call236 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.211, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2347
  %29 = load i8, i8* %has_denorm, align 8, !dbg !2348
  %tobool240 = icmp eq i8 %29, 0, !dbg !2349
  %cond241 = select i1 %tobool240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.213, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.212, i64 0, i64 0), !dbg !2349
  call void @builtin_define_with_value(i8* nonnull %0, i8* %cond241, i32 0) #7, !dbg !2350
  %call243 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.214, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2351
  %bf.load246 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast2486 = and i64 %bf.load246, 65535, !dbg !2352
  %cmp249 = icmp eq i64 %bf.cast2486, 14, !dbg !2352
  br i1 %cmp249, label %cond.true251, label %cond.false253, !dbg !2352

cond.true251:                                     ; preds = %if.end234
  %call252 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end259, !dbg !2352

cond.false253:                                    ; preds = %if.end234
  %type254 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode255 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type254, i64 0, i32 6, !dbg !2352
  %bf.load256 = load i32, i32* %mode255, align 4, !dbg !2352
  %bf.lshr257 = lshr i32 %bf.load256, 16, !dbg !2352
  %bf.clear258 = and i32 %bf.lshr257, 255, !dbg !2352
  br label %cond.end259, !dbg !2352

cond.end259:                                      ; preds = %cond.false253, %cond.true251
  %cond260 = phi i32 [ %call252, %cond.true251 ], [ %bf.clear258, %cond.false253 ], !dbg !2352
  %idxprom261 = zext i32 %cond260 to i64, !dbg !2352
  %arrayidx262 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom261, !dbg !2352
  %30 = load i8, i8* %arrayidx262, align 1, !dbg !2352
  %cmp264 = icmp eq i8 %30, 8, !dbg !2352
  br i1 %cmp264, label %land.rhs, label %lor.lhs.false, !dbg !2352

lor.lhs.false:                                    ; preds = %cond.end259
  %bf.load267 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast2697 = and i64 %bf.load267, 65535, !dbg !2352
  %cmp270 = icmp eq i64 %bf.cast2697, 14, !dbg !2352
  br i1 %cmp270, label %cond.true272, label %cond.false274, !dbg !2352

cond.true272:                                     ; preds = %lor.lhs.false
  %call273 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end280, !dbg !2352

cond.false274:                                    ; preds = %lor.lhs.false
  %type275 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode276 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type275, i64 0, i32 6, !dbg !2352
  %bf.load277 = load i32, i32* %mode276, align 4, !dbg !2352
  %bf.lshr278 = lshr i32 %bf.load277, 16, !dbg !2352
  %bf.clear279 = and i32 %bf.lshr278, 255, !dbg !2352
  br label %cond.end280, !dbg !2352

cond.end280:                                      ; preds = %cond.false274, %cond.true272
  %cond281 = phi i32 [ %call273, %cond.true272 ], [ %bf.clear279, %cond.false274 ], !dbg !2352
  %idxprom282 = zext i32 %cond281 to i64, !dbg !2352
  %arrayidx283 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom282, !dbg !2352
  %31 = load i8, i8* %arrayidx283, align 1, !dbg !2352
  %cmp285 = icmp eq i8 %31, 9, !dbg !2352
  br i1 %cmp285, label %land.rhs, label %lor.lhs.false287, !dbg !2352

lor.lhs.false287:                                 ; preds = %cond.end280
  %bf.load289 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast2918 = and i64 %bf.load289, 65535, !dbg !2352
  %cmp292 = icmp eq i64 %bf.cast2918, 14, !dbg !2352
  br i1 %cmp292, label %cond.true294, label %cond.false296, !dbg !2352

cond.true294:                                     ; preds = %lor.lhs.false287
  %call295 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end302, !dbg !2352

cond.false296:                                    ; preds = %lor.lhs.false287
  %type297 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode298 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type297, i64 0, i32 6, !dbg !2352
  %bf.load299 = load i32, i32* %mode298, align 4, !dbg !2352
  %bf.lshr300 = lshr i32 %bf.load299, 16, !dbg !2352
  %bf.clear301 = and i32 %bf.lshr300, 255, !dbg !2352
  br label %cond.end302, !dbg !2352

cond.end302:                                      ; preds = %cond.false296, %cond.true294
  %cond303 = phi i32 [ %call295, %cond.true294 ], [ %bf.clear301, %cond.false296 ], !dbg !2352
  %idxprom304 = zext i32 %cond303 to i64, !dbg !2352
  %arrayidx305 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom304, !dbg !2352
  %32 = load i8, i8* %arrayidx305, align 1, !dbg !2352
  %cmp307 = icmp eq i8 %32, 11, !dbg !2352
  br i1 %cmp307, label %land.rhs, label %lor.lhs.false309, !dbg !2352

lor.lhs.false309:                                 ; preds = %cond.end302
  %bf.load311 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast3139 = and i64 %bf.load311, 65535, !dbg !2352
  %cmp314 = icmp eq i64 %bf.cast3139, 14, !dbg !2352
  br i1 %cmp314, label %cond.true316, label %cond.false318, !dbg !2352

cond.true316:                                     ; preds = %lor.lhs.false309
  %call317 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end324, !dbg !2352

cond.false318:                                    ; preds = %lor.lhs.false309
  %type319 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode320 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type319, i64 0, i32 6, !dbg !2352
  %bf.load321 = load i32, i32* %mode320, align 4, !dbg !2352
  %bf.lshr322 = lshr i32 %bf.load321, 16, !dbg !2352
  %bf.clear323 = and i32 %bf.lshr322, 255, !dbg !2352
  br label %cond.end324, !dbg !2352

cond.end324:                                      ; preds = %cond.false318, %cond.true316
  %cond325 = phi i32 [ %call317, %cond.true316 ], [ %bf.clear323, %cond.false318 ], !dbg !2352
  %idxprom326 = zext i32 %cond325 to i64, !dbg !2352
  %arrayidx327 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom326, !dbg !2352
  %33 = load i8, i8* %arrayidx327, align 1, !dbg !2352
  %cmp329 = icmp eq i8 %33, 17, !dbg !2352
  br i1 %cmp329, label %land.rhs, label %land.end, !dbg !2352

land.rhs:                                         ; preds = %cond.end324, %cond.end302, %cond.end280, %cond.end259
  %bf.load332 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast33426 = and i64 %bf.load332, 65535, !dbg !2352
  %cmp335 = icmp eq i64 %bf.cast33426, 14, !dbg !2352
  br i1 %cmp335, label %cond.true337, label %cond.false339, !dbg !2352

cond.true337:                                     ; preds = %land.rhs
  %call338 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end345, !dbg !2352

cond.false339:                                    ; preds = %land.rhs
  %type340 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode341 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type340, i64 0, i32 6, !dbg !2352
  %bf.load342 = load i32, i32* %mode341, align 4, !dbg !2352
  %bf.lshr343 = lshr i32 %bf.load342, 16, !dbg !2352
  %bf.clear344 = and i32 %bf.lshr343, 255, !dbg !2352
  br label %cond.end345, !dbg !2352

cond.end345:                                      ; preds = %cond.false339, %cond.true337
  %cond346 = phi i32 [ %call338, %cond.true337 ], [ %bf.clear344, %cond.false339 ], !dbg !2352
  %idxprom347 = zext i32 %cond346 to i64, !dbg !2352
  %arrayidx348 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom347, !dbg !2352
  %34 = load i8, i8* %arrayidx348, align 1, !dbg !2352
  %cmp350 = icmp eq i8 %34, 8, !dbg !2352
  br i1 %cmp350, label %cond.true374, label %lor.lhs.false352, !dbg !2352

lor.lhs.false352:                                 ; preds = %cond.end345
  %bf.load354 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast35627 = and i64 %bf.load354, 65535, !dbg !2352
  %cmp357 = icmp eq i64 %bf.cast35627, 14, !dbg !2352
  br i1 %cmp357, label %cond.true359, label %cond.false361, !dbg !2352

cond.true359:                                     ; preds = %lor.lhs.false352
  %call360 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end367, !dbg !2352

cond.false361:                                    ; preds = %lor.lhs.false352
  %type362 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode363 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type362, i64 0, i32 6, !dbg !2352
  %bf.load364 = load i32, i32* %mode363, align 4, !dbg !2352
  %bf.lshr365 = lshr i32 %bf.load364, 16, !dbg !2352
  %bf.clear366 = and i32 %bf.lshr365, 255, !dbg !2352
  br label %cond.end367, !dbg !2352

cond.end367:                                      ; preds = %cond.false361, %cond.true359
  %cond368 = phi i32 [ %call360, %cond.true359 ], [ %bf.clear366, %cond.false361 ], !dbg !2352
  %idxprom369 = zext i32 %cond368 to i64, !dbg !2352
  %arrayidx370 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom369, !dbg !2352
  %35 = load i8, i8* %arrayidx370, align 1, !dbg !2352
  %cmp372 = icmp eq i8 %35, 9, !dbg !2352
  br i1 %cmp372, label %cond.true374, label %cond.false391, !dbg !2352

cond.true374:                                     ; preds = %cond.end367, %cond.end345
  %bf.load376 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast37836 = and i64 %bf.load376, 65535, !dbg !2352
  %cmp379 = icmp eq i64 %bf.cast37836, 14, !dbg !2352
  br i1 %cmp379, label %cond.true381, label %cond.false383, !dbg !2352

cond.true381:                                     ; preds = %cond.true374
  %call382 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end411, !dbg !2352

cond.false383:                                    ; preds = %cond.true374
  %type384 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode385 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type384, i64 0, i32 6, !dbg !2352
  %bf.load386 = load i32, i32* %mode385, align 4, !dbg !2352
  %bf.lshr387 = lshr i32 %bf.load386, 16, !dbg !2352
  %bf.clear388 = and i32 %bf.lshr387, 255, !dbg !2352
  br label %cond.end411, !dbg !2352

cond.false391:                                    ; preds = %cond.end367
  %bf.load393 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast39528 = and i64 %bf.load393, 65535, !dbg !2352
  %cmp396 = icmp eq i64 %bf.cast39528, 14, !dbg !2352
  br i1 %cmp396, label %cond.true398, label %cond.false400, !dbg !2352

cond.true398:                                     ; preds = %cond.false391
  %call399 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end406, !dbg !2352

cond.false400:                                    ; preds = %cond.false391
  %type401 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode402 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type401, i64 0, i32 6, !dbg !2352
  %bf.load403 = load i32, i32* %mode402, align 4, !dbg !2352
  %bf.lshr404 = lshr i32 %bf.load403, 16, !dbg !2352
  %bf.clear405 = and i32 %bf.lshr404, 255, !dbg !2352
  br label %cond.end406, !dbg !2352

cond.end406:                                      ; preds = %cond.false400, %cond.true398
  %cond407 = phi i32 [ %call399, %cond.true398 ], [ %bf.clear405, %cond.false400 ], !dbg !2352
  %idxprom408 = zext i32 %cond407 to i64, !dbg !2352
  %arrayidx409 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom408, !dbg !2352
  %36 = load i8, i8* %arrayidx409, align 1, !dbg !2352
  %conv410 = zext i8 %36 to i32, !dbg !2352
  br label %cond.end411, !dbg !2352

cond.end411:                                      ; preds = %cond.true381, %cond.false383, %cond.end406
  %cond412 = phi i32 [ %conv410, %cond.end406 ], [ %call382, %cond.true381 ], [ %bf.clear388, %cond.false383 ], !dbg !2352
  %idxprom413 = zext i32 %cond412 to i64, !dbg !2352
  %arrayidx414 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom413, !dbg !2352
  %37 = load i8, i8* %arrayidx414, align 1, !dbg !2352
  %cmp416 = icmp eq i8 %37, 9, !dbg !2352
  %bf.load420 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast42229 = and i64 %bf.load420, 65535, !dbg !2352
  %cmp423 = icmp eq i64 %bf.cast42229, 14, !dbg !2352
  br i1 %cmp416, label %cond.true418, label %cond.false503, !dbg !2352

cond.true418:                                     ; preds = %cond.end411
  br i1 %cmp423, label %cond.true425, label %cond.false427, !dbg !2352

cond.true425:                                     ; preds = %cond.true418
  %call426 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end433, !dbg !2352

cond.false427:                                    ; preds = %cond.true418
  %type428 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode429 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type428, i64 0, i32 6, !dbg !2352
  %bf.load430 = load i32, i32* %mode429, align 4, !dbg !2352
  %bf.lshr431 = lshr i32 %bf.load430, 16, !dbg !2352
  %bf.clear432 = and i32 %bf.lshr431, 255, !dbg !2352
  br label %cond.end433, !dbg !2352

cond.end433:                                      ; preds = %cond.false427, %cond.true425
  %cond434 = phi i32 [ %call426, %cond.true425 ], [ %bf.clear432, %cond.false427 ], !dbg !2352
  %idxprom435 = zext i32 %cond434 to i64, !dbg !2352
  %arrayidx436 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom435, !dbg !2352
  %38 = load i8, i8* %arrayidx436, align 1, !dbg !2352
  %cmp438 = icmp eq i8 %38, 8, !dbg !2352
  br i1 %cmp438, label %cond.true462, label %lor.lhs.false440, !dbg !2352

lor.lhs.false440:                                 ; preds = %cond.end433
  %bf.load442 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast44433 = and i64 %bf.load442, 65535, !dbg !2352
  %cmp445 = icmp eq i64 %bf.cast44433, 14, !dbg !2352
  br i1 %cmp445, label %cond.true447, label %cond.false449, !dbg !2352

cond.true447:                                     ; preds = %lor.lhs.false440
  %call448 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end455, !dbg !2352

cond.false449:                                    ; preds = %lor.lhs.false440
  %type450 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode451 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type450, i64 0, i32 6, !dbg !2352
  %bf.load452 = load i32, i32* %mode451, align 4, !dbg !2352
  %bf.lshr453 = lshr i32 %bf.load452, 16, !dbg !2352
  %bf.clear454 = and i32 %bf.lshr453, 255, !dbg !2352
  br label %cond.end455, !dbg !2352

cond.end455:                                      ; preds = %cond.false449, %cond.true447
  %cond456 = phi i32 [ %call448, %cond.true447 ], [ %bf.clear454, %cond.false449 ], !dbg !2352
  %idxprom457 = zext i32 %cond456 to i64, !dbg !2352
  %arrayidx458 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom457, !dbg !2352
  %39 = load i8, i8* %arrayidx458, align 1, !dbg !2352
  %cmp460 = icmp eq i8 %39, 9, !dbg !2352
  br i1 %cmp460, label %cond.true462, label %cond.false479, !dbg !2352

cond.true462:                                     ; preds = %cond.end455, %cond.end433
  %bf.load464 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast46635 = and i64 %bf.load464, 65535, !dbg !2352
  %cmp467 = icmp eq i64 %bf.cast46635, 14, !dbg !2352
  br i1 %cmp467, label %cond.true469, label %cond.false471, !dbg !2352

cond.true469:                                     ; preds = %cond.true462
  %call470 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end499, !dbg !2352

cond.false471:                                    ; preds = %cond.true462
  %type472 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode473 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type472, i64 0, i32 6, !dbg !2352
  %bf.load474 = load i32, i32* %mode473, align 4, !dbg !2352
  %bf.lshr475 = lshr i32 %bf.load474, 16, !dbg !2352
  %bf.clear476 = and i32 %bf.lshr475, 255, !dbg !2352
  br label %cond.end499, !dbg !2352

cond.false479:                                    ; preds = %cond.end455
  %bf.load481 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast48334 = and i64 %bf.load481, 65535, !dbg !2352
  %cmp484 = icmp eq i64 %bf.cast48334, 14, !dbg !2352
  br i1 %cmp484, label %cond.true486, label %cond.false488, !dbg !2352

cond.true486:                                     ; preds = %cond.false479
  %call487 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end494, !dbg !2352

cond.false488:                                    ; preds = %cond.false479
  %type489 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode490 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type489, i64 0, i32 6, !dbg !2352
  %bf.load491 = load i32, i32* %mode490, align 4, !dbg !2352
  %bf.lshr492 = lshr i32 %bf.load491, 16, !dbg !2352
  %bf.clear493 = and i32 %bf.lshr492, 255, !dbg !2352
  br label %cond.end494, !dbg !2352

cond.end494:                                      ; preds = %cond.false488, %cond.true486
  %cond495 = phi i32 [ %call487, %cond.true486 ], [ %bf.clear493, %cond.false488 ], !dbg !2352
  %idxprom496 = zext i32 %cond495 to i64, !dbg !2352
  %arrayidx497 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom496, !dbg !2352
  %40 = load i8, i8* %arrayidx497, align 1, !dbg !2352
  %conv498 = zext i8 %40 to i32, !dbg !2352
  br label %cond.end499, !dbg !2352

cond.end499:                                      ; preds = %cond.true469, %cond.false471, %cond.end494
  %cond500 = phi i32 [ %conv498, %cond.end494 ], [ %call470, %cond.true469 ], [ %bf.clear476, %cond.false471 ], !dbg !2352
  br label %cond.end587, !dbg !2352

cond.false503:                                    ; preds = %cond.end411
  br i1 %cmp423, label %cond.true510, label %cond.false512, !dbg !2352

cond.true510:                                     ; preds = %cond.false503
  %call511 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end518, !dbg !2352

cond.false512:                                    ; preds = %cond.false503
  %type513 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode514 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type513, i64 0, i32 6, !dbg !2352
  %bf.load515 = load i32, i32* %mode514, align 4, !dbg !2352
  %bf.lshr516 = lshr i32 %bf.load515, 16, !dbg !2352
  %bf.clear517 = and i32 %bf.lshr516, 255, !dbg !2352
  br label %cond.end518, !dbg !2352

cond.end518:                                      ; preds = %cond.false512, %cond.true510
  %cond519 = phi i32 [ %call511, %cond.true510 ], [ %bf.clear517, %cond.false512 ], !dbg !2352
  %idxprom520 = zext i32 %cond519 to i64, !dbg !2352
  %arrayidx521 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom520, !dbg !2352
  %41 = load i8, i8* %arrayidx521, align 1, !dbg !2352
  %cmp523 = icmp eq i8 %41, 8, !dbg !2352
  br i1 %cmp523, label %cond.true547, label %lor.lhs.false525, !dbg !2352

lor.lhs.false525:                                 ; preds = %cond.end518
  %bf.load527 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast52930 = and i64 %bf.load527, 65535, !dbg !2352
  %cmp530 = icmp eq i64 %bf.cast52930, 14, !dbg !2352
  br i1 %cmp530, label %cond.true532, label %cond.false534, !dbg !2352

cond.true532:                                     ; preds = %lor.lhs.false525
  %call533 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end540, !dbg !2352

cond.false534:                                    ; preds = %lor.lhs.false525
  %type535 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode536 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type535, i64 0, i32 6, !dbg !2352
  %bf.load537 = load i32, i32* %mode536, align 4, !dbg !2352
  %bf.lshr538 = lshr i32 %bf.load537, 16, !dbg !2352
  %bf.clear539 = and i32 %bf.lshr538, 255, !dbg !2352
  br label %cond.end540, !dbg !2352

cond.end540:                                      ; preds = %cond.false534, %cond.true532
  %cond541 = phi i32 [ %call533, %cond.true532 ], [ %bf.clear539, %cond.false534 ], !dbg !2352
  %idxprom542 = zext i32 %cond541 to i64, !dbg !2352
  %arrayidx543 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom542, !dbg !2352
  %42 = load i8, i8* %arrayidx543, align 1, !dbg !2352
  %cmp545 = icmp eq i8 %42, 9, !dbg !2352
  br i1 %cmp545, label %cond.true547, label %cond.false564, !dbg !2352

cond.true547:                                     ; preds = %cond.end540, %cond.end518
  %bf.load549 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast55132 = and i64 %bf.load549, 65535, !dbg !2352
  %cmp552 = icmp eq i64 %bf.cast55132, 14, !dbg !2352
  br i1 %cmp552, label %cond.true554, label %cond.false556, !dbg !2352

cond.true554:                                     ; preds = %cond.true547
  %call555 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end584, !dbg !2352

cond.false556:                                    ; preds = %cond.true547
  %type557 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode558 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type557, i64 0, i32 6, !dbg !2352
  %bf.load559 = load i32, i32* %mode558, align 4, !dbg !2352
  %bf.lshr560 = lshr i32 %bf.load559, 16, !dbg !2352
  %bf.clear561 = and i32 %bf.lshr560, 255, !dbg !2352
  br label %cond.end584, !dbg !2352

cond.false564:                                    ; preds = %cond.end540
  %bf.load566 = load i64, i64* %2, align 8, !dbg !2352
  %bf.cast56831 = and i64 %bf.load566, 65535, !dbg !2352
  %cmp569 = icmp eq i64 %bf.cast56831, 14, !dbg !2352
  br i1 %cmp569, label %cond.true571, label %cond.false573, !dbg !2352

cond.true571:                                     ; preds = %cond.false564
  %call572 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2352
  br label %cond.end579, !dbg !2352

cond.false573:                                    ; preds = %cond.false564
  %type574 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2352
  %mode575 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type574, i64 0, i32 6, !dbg !2352
  %bf.load576 = load i32, i32* %mode575, align 4, !dbg !2352
  %bf.lshr577 = lshr i32 %bf.load576, 16, !dbg !2352
  %bf.clear578 = and i32 %bf.lshr577, 255, !dbg !2352
  br label %cond.end579, !dbg !2352

cond.end579:                                      ; preds = %cond.false573, %cond.true571
  %cond580 = phi i32 [ %call572, %cond.true571 ], [ %bf.clear578, %cond.false573 ], !dbg !2352
  %idxprom581 = zext i32 %cond580 to i64, !dbg !2352
  %arrayidx582 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom581, !dbg !2352
  %43 = load i8, i8* %arrayidx582, align 1, !dbg !2352
  %conv583 = zext i8 %43 to i32, !dbg !2352
  br label %cond.end584, !dbg !2352

cond.end584:                                      ; preds = %cond.true554, %cond.false556, %cond.end579
  %cond585 = phi i32 [ %conv583, %cond.end579 ], [ %call555, %cond.true554 ], [ %bf.clear561, %cond.false556 ], !dbg !2352
  br label %cond.end587, !dbg !2352

cond.end587:                                      ; preds = %cond.end584, %cond.end499
  %cond588.in = phi i32 [ %cond500, %cond.end499 ], [ %cond585, %cond.end584 ]
  %cond588 = add i32 %cond588.in, -38, !dbg !2352
  %idxprom589 = zext i32 %cond588 to i64, !dbg !2352
  %arrayidx590 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom589, !dbg !2352
  %44 = load %struct.real_format*, %struct.real_format** %arrayidx590, align 8, !dbg !2352
  %has_inf = getelementptr inbounds %struct.real_format, %struct.real_format* %44, i64 0, i32 12, !dbg !2352
  %45 = load i8, i8* %has_inf, align 1, !dbg !2352
  %tobool592 = icmp ne i8 %45, 0, !dbg !2352
  br label %land.end

land.end:                                         ; preds = %cond.end587, %cond.end324
  %46 = phi i1 [ false, %cond.end324 ], [ %tobool592, %cond.end587 ], !dbg !2246
  %conv593 = zext i1 %46 to i64, !dbg !2352
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %conv593) #7, !dbg !2353
  %call595 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.215, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2354
  %bf.load598 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast60010 = and i64 %bf.load598, 65535, !dbg !2355
  %cmp601 = icmp eq i64 %bf.cast60010, 14, !dbg !2355
  br i1 %cmp601, label %cond.true603, label %cond.false605, !dbg !2355

cond.true603:                                     ; preds = %land.end
  %call604 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end611, !dbg !2355

cond.false605:                                    ; preds = %land.end
  %type606 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode607 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type606, i64 0, i32 6, !dbg !2355
  %bf.load608 = load i32, i32* %mode607, align 4, !dbg !2355
  %bf.lshr609 = lshr i32 %bf.load608, 16, !dbg !2355
  %bf.clear610 = and i32 %bf.lshr609, 255, !dbg !2355
  br label %cond.end611, !dbg !2355

cond.end611:                                      ; preds = %cond.false605, %cond.true603
  %cond612 = phi i32 [ %call604, %cond.true603 ], [ %bf.clear610, %cond.false605 ], !dbg !2355
  %idxprom613 = zext i32 %cond612 to i64, !dbg !2355
  %arrayidx614 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom613, !dbg !2355
  %47 = load i8, i8* %arrayidx614, align 1, !dbg !2355
  %cmp616 = icmp eq i8 %47, 8, !dbg !2355
  br i1 %cmp616, label %land.rhs684, label %lor.lhs.false618, !dbg !2355

lor.lhs.false618:                                 ; preds = %cond.end611
  %bf.load620 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast62211 = and i64 %bf.load620, 65535, !dbg !2355
  %cmp623 = icmp eq i64 %bf.cast62211, 14, !dbg !2355
  br i1 %cmp623, label %cond.true625, label %cond.false627, !dbg !2355

cond.true625:                                     ; preds = %lor.lhs.false618
  %call626 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end633, !dbg !2355

cond.false627:                                    ; preds = %lor.lhs.false618
  %type628 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode629 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type628, i64 0, i32 6, !dbg !2355
  %bf.load630 = load i32, i32* %mode629, align 4, !dbg !2355
  %bf.lshr631 = lshr i32 %bf.load630, 16, !dbg !2355
  %bf.clear632 = and i32 %bf.lshr631, 255, !dbg !2355
  br label %cond.end633, !dbg !2355

cond.end633:                                      ; preds = %cond.false627, %cond.true625
  %cond634 = phi i32 [ %call626, %cond.true625 ], [ %bf.clear632, %cond.false627 ], !dbg !2355
  %idxprom635 = zext i32 %cond634 to i64, !dbg !2355
  %arrayidx636 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom635, !dbg !2355
  %48 = load i8, i8* %arrayidx636, align 1, !dbg !2355
  %cmp638 = icmp eq i8 %48, 9, !dbg !2355
  br i1 %cmp638, label %land.rhs684, label %lor.lhs.false640, !dbg !2355

lor.lhs.false640:                                 ; preds = %cond.end633
  %bf.load642 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast64412 = and i64 %bf.load642, 65535, !dbg !2355
  %cmp645 = icmp eq i64 %bf.cast64412, 14, !dbg !2355
  br i1 %cmp645, label %cond.true647, label %cond.false649, !dbg !2355

cond.true647:                                     ; preds = %lor.lhs.false640
  %call648 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end655, !dbg !2355

cond.false649:                                    ; preds = %lor.lhs.false640
  %type650 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode651 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type650, i64 0, i32 6, !dbg !2355
  %bf.load652 = load i32, i32* %mode651, align 4, !dbg !2355
  %bf.lshr653 = lshr i32 %bf.load652, 16, !dbg !2355
  %bf.clear654 = and i32 %bf.lshr653, 255, !dbg !2355
  br label %cond.end655, !dbg !2355

cond.end655:                                      ; preds = %cond.false649, %cond.true647
  %cond656 = phi i32 [ %call648, %cond.true647 ], [ %bf.clear654, %cond.false649 ], !dbg !2355
  %idxprom657 = zext i32 %cond656 to i64, !dbg !2355
  %arrayidx658 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom657, !dbg !2355
  %49 = load i8, i8* %arrayidx658, align 1, !dbg !2355
  %cmp660 = icmp eq i8 %49, 11, !dbg !2355
  br i1 %cmp660, label %land.rhs684, label %lor.lhs.false662, !dbg !2355

lor.lhs.false662:                                 ; preds = %cond.end655
  %bf.load664 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast66613 = and i64 %bf.load664, 65535, !dbg !2355
  %cmp667 = icmp eq i64 %bf.cast66613, 14, !dbg !2355
  br i1 %cmp667, label %cond.true669, label %cond.false671, !dbg !2355

cond.true669:                                     ; preds = %lor.lhs.false662
  %call670 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end677, !dbg !2355

cond.false671:                                    ; preds = %lor.lhs.false662
  %type672 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode673 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type672, i64 0, i32 6, !dbg !2355
  %bf.load674 = load i32, i32* %mode673, align 4, !dbg !2355
  %bf.lshr675 = lshr i32 %bf.load674, 16, !dbg !2355
  %bf.clear676 = and i32 %bf.lshr675, 255, !dbg !2355
  br label %cond.end677, !dbg !2355

cond.end677:                                      ; preds = %cond.false671, %cond.true669
  %cond678 = phi i32 [ %call670, %cond.true669 ], [ %bf.clear676, %cond.false671 ], !dbg !2355
  %idxprom679 = zext i32 %cond678 to i64, !dbg !2355
  %arrayidx680 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom679, !dbg !2355
  %50 = load i8, i8* %arrayidx680, align 1, !dbg !2355
  %cmp682 = icmp eq i8 %50, 17, !dbg !2355
  br i1 %cmp682, label %land.rhs684, label %land.end947, !dbg !2355

land.rhs684:                                      ; preds = %cond.end677, %cond.end655, %cond.end633, %cond.end611
  %bf.load686 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast68815 = and i64 %bf.load686, 65535, !dbg !2355
  %cmp689 = icmp eq i64 %bf.cast68815, 14, !dbg !2355
  br i1 %cmp689, label %cond.true691, label %cond.false693, !dbg !2355

cond.true691:                                     ; preds = %land.rhs684
  %call692 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end699, !dbg !2355

cond.false693:                                    ; preds = %land.rhs684
  %type694 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode695 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type694, i64 0, i32 6, !dbg !2355
  %bf.load696 = load i32, i32* %mode695, align 4, !dbg !2355
  %bf.lshr697 = lshr i32 %bf.load696, 16, !dbg !2355
  %bf.clear698 = and i32 %bf.lshr697, 255, !dbg !2355
  br label %cond.end699, !dbg !2355

cond.end699:                                      ; preds = %cond.false693, %cond.true691
  %cond700 = phi i32 [ %call692, %cond.true691 ], [ %bf.clear698, %cond.false693 ], !dbg !2355
  %idxprom701 = zext i32 %cond700 to i64, !dbg !2355
  %arrayidx702 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom701, !dbg !2355
  %51 = load i8, i8* %arrayidx702, align 1, !dbg !2355
  %cmp704 = icmp eq i8 %51, 8, !dbg !2355
  br i1 %cmp704, label %cond.true728, label %lor.lhs.false706, !dbg !2355

lor.lhs.false706:                                 ; preds = %cond.end699
  %bf.load708 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast71016 = and i64 %bf.load708, 65535, !dbg !2355
  %cmp711 = icmp eq i64 %bf.cast71016, 14, !dbg !2355
  br i1 %cmp711, label %cond.true713, label %cond.false715, !dbg !2355

cond.true713:                                     ; preds = %lor.lhs.false706
  %call714 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end721, !dbg !2355

cond.false715:                                    ; preds = %lor.lhs.false706
  %type716 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode717 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type716, i64 0, i32 6, !dbg !2355
  %bf.load718 = load i32, i32* %mode717, align 4, !dbg !2355
  %bf.lshr719 = lshr i32 %bf.load718, 16, !dbg !2355
  %bf.clear720 = and i32 %bf.lshr719, 255, !dbg !2355
  br label %cond.end721, !dbg !2355

cond.end721:                                      ; preds = %cond.false715, %cond.true713
  %cond722 = phi i32 [ %call714, %cond.true713 ], [ %bf.clear720, %cond.false715 ], !dbg !2355
  %idxprom723 = zext i32 %cond722 to i64, !dbg !2355
  %arrayidx724 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom723, !dbg !2355
  %52 = load i8, i8* %arrayidx724, align 1, !dbg !2355
  %cmp726 = icmp eq i8 %52, 9, !dbg !2355
  br i1 %cmp726, label %cond.true728, label %cond.false745, !dbg !2355

cond.true728:                                     ; preds = %cond.end721, %cond.end699
  %bf.load730 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast73225 = and i64 %bf.load730, 65535, !dbg !2355
  %cmp733 = icmp eq i64 %bf.cast73225, 14, !dbg !2355
  br i1 %cmp733, label %cond.true735, label %cond.false737, !dbg !2355

cond.true735:                                     ; preds = %cond.true728
  %call736 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end765, !dbg !2355

cond.false737:                                    ; preds = %cond.true728
  %type738 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode739 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type738, i64 0, i32 6, !dbg !2355
  %bf.load740 = load i32, i32* %mode739, align 4, !dbg !2355
  %bf.lshr741 = lshr i32 %bf.load740, 16, !dbg !2355
  %bf.clear742 = and i32 %bf.lshr741, 255, !dbg !2355
  br label %cond.end765, !dbg !2355

cond.false745:                                    ; preds = %cond.end721
  %bf.load747 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast74917 = and i64 %bf.load747, 65535, !dbg !2355
  %cmp750 = icmp eq i64 %bf.cast74917, 14, !dbg !2355
  br i1 %cmp750, label %cond.true752, label %cond.false754, !dbg !2355

cond.true752:                                     ; preds = %cond.false745
  %call753 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end760, !dbg !2355

cond.false754:                                    ; preds = %cond.false745
  %type755 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode756 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type755, i64 0, i32 6, !dbg !2355
  %bf.load757 = load i32, i32* %mode756, align 4, !dbg !2355
  %bf.lshr758 = lshr i32 %bf.load757, 16, !dbg !2355
  %bf.clear759 = and i32 %bf.lshr758, 255, !dbg !2355
  br label %cond.end760, !dbg !2355

cond.end760:                                      ; preds = %cond.false754, %cond.true752
  %cond761 = phi i32 [ %call753, %cond.true752 ], [ %bf.clear759, %cond.false754 ], !dbg !2355
  %idxprom762 = zext i32 %cond761 to i64, !dbg !2355
  %arrayidx763 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom762, !dbg !2355
  %53 = load i8, i8* %arrayidx763, align 1, !dbg !2355
  %conv764 = zext i8 %53 to i32, !dbg !2355
  br label %cond.end765, !dbg !2355

cond.end765:                                      ; preds = %cond.true735, %cond.false737, %cond.end760
  %cond766 = phi i32 [ %conv764, %cond.end760 ], [ %call736, %cond.true735 ], [ %bf.clear742, %cond.false737 ], !dbg !2355
  %idxprom767 = zext i32 %cond766 to i64, !dbg !2355
  %arrayidx768 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom767, !dbg !2355
  %54 = load i8, i8* %arrayidx768, align 1, !dbg !2355
  %cmp770 = icmp eq i8 %54, 9, !dbg !2355
  %bf.load774 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast77618 = and i64 %bf.load774, 65535, !dbg !2355
  %cmp777 = icmp eq i64 %bf.cast77618, 14, !dbg !2355
  br i1 %cmp770, label %cond.true772, label %cond.false857, !dbg !2355

cond.true772:                                     ; preds = %cond.end765
  br i1 %cmp777, label %cond.true779, label %cond.false781, !dbg !2355

cond.true779:                                     ; preds = %cond.true772
  %call780 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end787, !dbg !2355

cond.false781:                                    ; preds = %cond.true772
  %type782 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode783 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type782, i64 0, i32 6, !dbg !2355
  %bf.load784 = load i32, i32* %mode783, align 4, !dbg !2355
  %bf.lshr785 = lshr i32 %bf.load784, 16, !dbg !2355
  %bf.clear786 = and i32 %bf.lshr785, 255, !dbg !2355
  br label %cond.end787, !dbg !2355

cond.end787:                                      ; preds = %cond.false781, %cond.true779
  %cond788 = phi i32 [ %call780, %cond.true779 ], [ %bf.clear786, %cond.false781 ], !dbg !2355
  %idxprom789 = zext i32 %cond788 to i64, !dbg !2355
  %arrayidx790 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom789, !dbg !2355
  %55 = load i8, i8* %arrayidx790, align 1, !dbg !2355
  %cmp792 = icmp eq i8 %55, 8, !dbg !2355
  br i1 %cmp792, label %cond.true816, label %lor.lhs.false794, !dbg !2355

lor.lhs.false794:                                 ; preds = %cond.end787
  %bf.load796 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast79822 = and i64 %bf.load796, 65535, !dbg !2355
  %cmp799 = icmp eq i64 %bf.cast79822, 14, !dbg !2355
  br i1 %cmp799, label %cond.true801, label %cond.false803, !dbg !2355

cond.true801:                                     ; preds = %lor.lhs.false794
  %call802 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end809, !dbg !2355

cond.false803:                                    ; preds = %lor.lhs.false794
  %type804 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode805 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type804, i64 0, i32 6, !dbg !2355
  %bf.load806 = load i32, i32* %mode805, align 4, !dbg !2355
  %bf.lshr807 = lshr i32 %bf.load806, 16, !dbg !2355
  %bf.clear808 = and i32 %bf.lshr807, 255, !dbg !2355
  br label %cond.end809, !dbg !2355

cond.end809:                                      ; preds = %cond.false803, %cond.true801
  %cond810 = phi i32 [ %call802, %cond.true801 ], [ %bf.clear808, %cond.false803 ], !dbg !2355
  %idxprom811 = zext i32 %cond810 to i64, !dbg !2355
  %arrayidx812 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom811, !dbg !2355
  %56 = load i8, i8* %arrayidx812, align 1, !dbg !2355
  %cmp814 = icmp eq i8 %56, 9, !dbg !2355
  br i1 %cmp814, label %cond.true816, label %cond.false833, !dbg !2355

cond.true816:                                     ; preds = %cond.end809, %cond.end787
  %bf.load818 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast82024 = and i64 %bf.load818, 65535, !dbg !2355
  %cmp821 = icmp eq i64 %bf.cast82024, 14, !dbg !2355
  br i1 %cmp821, label %cond.true823, label %cond.false825, !dbg !2355

cond.true823:                                     ; preds = %cond.true816
  %call824 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end853, !dbg !2355

cond.false825:                                    ; preds = %cond.true816
  %type826 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode827 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type826, i64 0, i32 6, !dbg !2355
  %bf.load828 = load i32, i32* %mode827, align 4, !dbg !2355
  %bf.lshr829 = lshr i32 %bf.load828, 16, !dbg !2355
  %bf.clear830 = and i32 %bf.lshr829, 255, !dbg !2355
  br label %cond.end853, !dbg !2355

cond.false833:                                    ; preds = %cond.end809
  %bf.load835 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast83723 = and i64 %bf.load835, 65535, !dbg !2355
  %cmp838 = icmp eq i64 %bf.cast83723, 14, !dbg !2355
  br i1 %cmp838, label %cond.true840, label %cond.false842, !dbg !2355

cond.true840:                                     ; preds = %cond.false833
  %call841 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end848, !dbg !2355

cond.false842:                                    ; preds = %cond.false833
  %type843 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode844 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type843, i64 0, i32 6, !dbg !2355
  %bf.load845 = load i32, i32* %mode844, align 4, !dbg !2355
  %bf.lshr846 = lshr i32 %bf.load845, 16, !dbg !2355
  %bf.clear847 = and i32 %bf.lshr846, 255, !dbg !2355
  br label %cond.end848, !dbg !2355

cond.end848:                                      ; preds = %cond.false842, %cond.true840
  %cond849 = phi i32 [ %call841, %cond.true840 ], [ %bf.clear847, %cond.false842 ], !dbg !2355
  %idxprom850 = zext i32 %cond849 to i64, !dbg !2355
  %arrayidx851 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom850, !dbg !2355
  %57 = load i8, i8* %arrayidx851, align 1, !dbg !2355
  %conv852 = zext i8 %57 to i32, !dbg !2355
  br label %cond.end853, !dbg !2355

cond.end853:                                      ; preds = %cond.true823, %cond.false825, %cond.end848
  %cond854 = phi i32 [ %conv852, %cond.end848 ], [ %call824, %cond.true823 ], [ %bf.clear830, %cond.false825 ], !dbg !2355
  br label %cond.end941, !dbg !2355

cond.false857:                                    ; preds = %cond.end765
  br i1 %cmp777, label %cond.true864, label %cond.false866, !dbg !2355

cond.true864:                                     ; preds = %cond.false857
  %call865 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end872, !dbg !2355

cond.false866:                                    ; preds = %cond.false857
  %type867 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode868 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type867, i64 0, i32 6, !dbg !2355
  %bf.load869 = load i32, i32* %mode868, align 4, !dbg !2355
  %bf.lshr870 = lshr i32 %bf.load869, 16, !dbg !2355
  %bf.clear871 = and i32 %bf.lshr870, 255, !dbg !2355
  br label %cond.end872, !dbg !2355

cond.end872:                                      ; preds = %cond.false866, %cond.true864
  %cond873 = phi i32 [ %call865, %cond.true864 ], [ %bf.clear871, %cond.false866 ], !dbg !2355
  %idxprom874 = zext i32 %cond873 to i64, !dbg !2355
  %arrayidx875 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom874, !dbg !2355
  %58 = load i8, i8* %arrayidx875, align 1, !dbg !2355
  %cmp877 = icmp eq i8 %58, 8, !dbg !2355
  br i1 %cmp877, label %cond.true901, label %lor.lhs.false879, !dbg !2355

lor.lhs.false879:                                 ; preds = %cond.end872
  %bf.load881 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast88319 = and i64 %bf.load881, 65535, !dbg !2355
  %cmp884 = icmp eq i64 %bf.cast88319, 14, !dbg !2355
  br i1 %cmp884, label %cond.true886, label %cond.false888, !dbg !2355

cond.true886:                                     ; preds = %lor.lhs.false879
  %call887 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end894, !dbg !2355

cond.false888:                                    ; preds = %lor.lhs.false879
  %type889 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode890 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type889, i64 0, i32 6, !dbg !2355
  %bf.load891 = load i32, i32* %mode890, align 4, !dbg !2355
  %bf.lshr892 = lshr i32 %bf.load891, 16, !dbg !2355
  %bf.clear893 = and i32 %bf.lshr892, 255, !dbg !2355
  br label %cond.end894, !dbg !2355

cond.end894:                                      ; preds = %cond.false888, %cond.true886
  %cond895 = phi i32 [ %call887, %cond.true886 ], [ %bf.clear893, %cond.false888 ], !dbg !2355
  %idxprom896 = zext i32 %cond895 to i64, !dbg !2355
  %arrayidx897 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom896, !dbg !2355
  %59 = load i8, i8* %arrayidx897, align 1, !dbg !2355
  %cmp899 = icmp eq i8 %59, 9, !dbg !2355
  br i1 %cmp899, label %cond.true901, label %cond.false918, !dbg !2355

cond.true901:                                     ; preds = %cond.end894, %cond.end872
  %bf.load903 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast90521 = and i64 %bf.load903, 65535, !dbg !2355
  %cmp906 = icmp eq i64 %bf.cast90521, 14, !dbg !2355
  br i1 %cmp906, label %cond.true908, label %cond.false910, !dbg !2355

cond.true908:                                     ; preds = %cond.true901
  %call909 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end938, !dbg !2355

cond.false910:                                    ; preds = %cond.true901
  %type911 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode912 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type911, i64 0, i32 6, !dbg !2355
  %bf.load913 = load i32, i32* %mode912, align 4, !dbg !2355
  %bf.lshr914 = lshr i32 %bf.load913, 16, !dbg !2355
  %bf.clear915 = and i32 %bf.lshr914, 255, !dbg !2355
  br label %cond.end938, !dbg !2355

cond.false918:                                    ; preds = %cond.end894
  %bf.load920 = load i64, i64* %2, align 8, !dbg !2355
  %bf.cast92220 = and i64 %bf.load920, 65535, !dbg !2355
  %cmp923 = icmp eq i64 %bf.cast92220, 14, !dbg !2355
  br i1 %cmp923, label %cond.true925, label %cond.false927, !dbg !2355

cond.true925:                                     ; preds = %cond.false918
  %call926 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2355
  br label %cond.end933, !dbg !2355

cond.false927:                                    ; preds = %cond.false918
  %type928 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2355
  %mode929 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type928, i64 0, i32 6, !dbg !2355
  %bf.load930 = load i32, i32* %mode929, align 4, !dbg !2355
  %bf.lshr931 = lshr i32 %bf.load930, 16, !dbg !2355
  %bf.clear932 = and i32 %bf.lshr931, 255, !dbg !2355
  br label %cond.end933, !dbg !2355

cond.end933:                                      ; preds = %cond.false927, %cond.true925
  %cond934 = phi i32 [ %call926, %cond.true925 ], [ %bf.clear932, %cond.false927 ], !dbg !2355
  %idxprom935 = zext i32 %cond934 to i64, !dbg !2355
  %arrayidx936 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom935, !dbg !2355
  %60 = load i8, i8* %arrayidx936, align 1, !dbg !2355
  %conv937 = zext i8 %60 to i32, !dbg !2355
  br label %cond.end938, !dbg !2355

cond.end938:                                      ; preds = %cond.true908, %cond.false910, %cond.end933
  %cond939 = phi i32 [ %conv937, %cond.end933 ], [ %call909, %cond.true908 ], [ %bf.clear915, %cond.false910 ], !dbg !2355
  br label %cond.end941, !dbg !2355

cond.end941:                                      ; preds = %cond.end938, %cond.end853
  %cond942.in = phi i32 [ %cond854, %cond.end853 ], [ %cond939, %cond.end938 ]
  %cond942 = add i32 %cond942.in, -38, !dbg !2355
  %idxprom943 = zext i32 %cond942 to i64, !dbg !2355
  %arrayidx944 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom943, !dbg !2355
  %61 = load %struct.real_format*, %struct.real_format** %arrayidx944, align 8, !dbg !2355
  %has_nans = getelementptr inbounds %struct.real_format, %struct.real_format* %61, i64 0, i32 11, !dbg !2355
  %62 = load i8, i8* %has_nans, align 2, !dbg !2355
  %tobool946 = icmp ne i8 %62, 0, !dbg !2355
  %phitmp14 = zext i1 %tobool946 to i64
  br label %land.end947

land.end947:                                      ; preds = %cond.end941, %cond.end677
  %63 = phi i64 [ 0, %cond.end677 ], [ %phitmp14, %cond.end941 ]
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %63) #7, !dbg !2356
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #8, !dbg !2357
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2357
  ret void, !dbg !2357
}

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_decimal_float_constants(i8* %name_prefix, i8* %suffix, %union.tree_node* %type) unnamed_addr #5 !dbg !2358 {
entry:
  %name = alloca [64 x i8], align 16
  %buf = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %name_prefix, metadata !2360, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8* %suffix, metadata !2361, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2362, metadata !DIExpression()), !dbg !2368
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0, !dbg !2369
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2369
  call void @llvm.dbg.declare(metadata [64 x i8]* %name, metadata !2364, metadata !DIExpression()), !dbg !2370
  %1 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !2369
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #8, !dbg !2369
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !2365, metadata !DIExpression()), !dbg !2371
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2372
  %bf.load = load i64, i64* %2, align 8, !dbg !2372
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2372
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !2372
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2372

cond.true:                                        ; preds = %entry
  %call = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2372
  %bf.load8.pre = load i64, i64* %2, align 8, !dbg !2372
  br label %cond.end, !dbg !2372

cond.false:                                       ; preds = %entry
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2372
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !2372
  %bf.load2 = load i32, i32* %mode, align 4, !dbg !2372
  %bf.lshr = lshr i32 %bf.load2, 16, !dbg !2372
  %bf.clear3 = and i32 %bf.lshr, 255, !dbg !2372
  br label %cond.end, !dbg !2372

cond.end:                                         ; preds = %cond.false, %cond.true
  %bf.load8 = phi i64 [ %bf.load8.pre, %cond.true ], [ %bf.load, %cond.false ], !dbg !2372
  %cond = phi i32 [ %call, %cond.true ], [ %bf.clear3, %cond.false ], !dbg !2372
  %idxprom = zext i32 %cond to i64, !dbg !2372
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2372
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2372
  %cmp4 = icmp eq i8 %3, 9, !dbg !2372
  %bf.cast102 = and i64 %bf.load8, 65535, !dbg !2372
  %cmp11 = icmp eq i64 %bf.cast102, 14, !dbg !2372
  br i1 %cmp4, label %cond.true6, label %cond.false23, !dbg !2372

cond.true6:                                       ; preds = %cond.end
  br i1 %cmp11, label %cond.true13, label %cond.false15, !dbg !2372

cond.true13:                                      ; preds = %cond.true6
  %call14 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2372
  br label %cond.end21, !dbg !2372

cond.false15:                                     ; preds = %cond.true6
  %type16 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2372
  %mode17 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i64 0, i32 6, !dbg !2372
  %bf.load18 = load i32, i32* %mode17, align 4, !dbg !2372
  %bf.lshr19 = lshr i32 %bf.load18, 16, !dbg !2372
  %bf.clear20 = and i32 %bf.lshr19, 255, !dbg !2372
  br label %cond.end21, !dbg !2372

cond.end21:                                       ; preds = %cond.false15, %cond.true13
  %cond22 = phi i32 [ %call14, %cond.true13 ], [ %bf.clear20, %cond.false15 ], !dbg !2372
  br label %cond.end41, !dbg !2372

cond.false23:                                     ; preds = %cond.end
  br i1 %cmp11, label %cond.true30, label %cond.false32, !dbg !2372

cond.true30:                                      ; preds = %cond.false23
  %call31 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2372
  br label %cond.end38, !dbg !2372

cond.false32:                                     ; preds = %cond.false23
  %type33 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2372
  %mode34 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type33, i64 0, i32 6, !dbg !2372
  %bf.load35 = load i32, i32* %mode34, align 4, !dbg !2372
  %bf.lshr36 = lshr i32 %bf.load35, 16, !dbg !2372
  %bf.clear37 = and i32 %bf.lshr36, 255, !dbg !2372
  br label %cond.end38, !dbg !2372

cond.end38:                                       ; preds = %cond.false32, %cond.true30
  %cond39 = phi i32 [ %call31, %cond.true30 ], [ %bf.clear37, %cond.false32 ], !dbg !2372
  br label %cond.end41, !dbg !2372

cond.end41:                                       ; preds = %cond.end38, %cond.end21
  %cond42.in = phi i32 [ %cond22, %cond.end21 ], [ %cond39, %cond.end38 ]
  %cond42 = add i32 %cond42.in, -38, !dbg !2372
  %idxprom43 = zext i32 %cond42 to i64, !dbg !2372
  %arrayidx44 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom43, !dbg !2372
  %4 = load %struct.real_format*, %struct.real_format** %arrayidx44, align 8, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.real_format* %4, metadata !2363, metadata !DIExpression()), !dbg !2368
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.197, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2373
  %p47 = getelementptr inbounds %struct.real_format, %struct.real_format* %4, i64 0, i32 3, !dbg !2374
  %5 = load i32, i32* %p47, align 4, !dbg !2374
  %conv48 = sext i32 %5 to i64, !dbg !2375
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %conv48) #7, !dbg !2376
  %call50 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.199, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2377
  %emin = getelementptr inbounds %struct.real_format, %struct.real_format* %4, i64 0, i32 5, !dbg !2378
  %6 = load i32, i32* %emin, align 4, !dbg !2378
  %call52 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.200, i64 0, i64 0), i32 %6) #6, !dbg !2379
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2380
  %call56 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.202, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2381
  %emax = getelementptr inbounds %struct.real_format, %struct.real_format* %4, i64 0, i32 6, !dbg !2382
  %7 = load i32, i32* %emax, align 8, !dbg !2382
  %conv58 = sext i32 %7 to i64, !dbg !2383
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %conv58) #7, !dbg !2384
  %call60 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.206, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2385
  %8 = load i32, i32* %emin, align 4, !dbg !2386
  %sub63 = add nsw i32 %8, -1, !dbg !2387
  %call64 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.217, i64 0, i64 0), i32 %sub63, i8* %suffix) #6, !dbg !2388
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2389
  %call68 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.205, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %1, metadata !2366, metadata !DIExpression()), !dbg !2368
  %9 = load i32, i32* %p47, align 4, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %9, metadata !2367, metadata !DIExpression()), !dbg !2368
  br label %for.cond, !dbg !2393

for.cond:                                         ; preds = %for.inc, %cond.end41
  %p.0 = phi i8* [ %1, %cond.end41 ], [ %p.1, %for.inc ], !dbg !2368
  %digits.0 = phi i32 [ %9, %cond.end41 ], [ %dec, %for.inc ], !dbg !2394
  call void @llvm.dbg.value(metadata i32 %digits.0, metadata !2367, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2366, metadata !DIExpression()), !dbg !2368
  %tobool = icmp eq i32 %digits.0, 0, !dbg !2395
  br i1 %tobool, label %for.end, label %for.body, !dbg !2395

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !2396
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2366, metadata !DIExpression()), !dbg !2368
  store i8 57, i8* %p.0, align 1, !dbg !2399
  %10 = load i32, i32* %p47, align 4, !dbg !2400
  %cmp72 = icmp eq i32 %digits.0, %10, !dbg !2402
  br i1 %cmp72, label %if.then, label %for.inc, !dbg !2403

if.then:                                          ; preds = %for.body
  %incdec.ptr74 = getelementptr inbounds i8, i8* %p.0, i64 2, !dbg !2404
  call void @llvm.dbg.value(metadata i8* %incdec.ptr74, metadata !2366, metadata !DIExpression()), !dbg !2368
  store i8 46, i8* %incdec.ptr, align 1, !dbg !2405
  br label %for.inc, !dbg !2406

for.inc:                                          ; preds = %for.body, %if.then
  %p.1 = phi i8* [ %incdec.ptr74, %if.then ], [ %incdec.ptr, %for.body ], !dbg !2407
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !2366, metadata !DIExpression()), !dbg !2368
  %dec = add nsw i32 %digits.0, -1, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2367, metadata !DIExpression()), !dbg !2368
  br label %for.cond, !dbg !2409, !llvm.loop !2410

for.end:                                          ; preds = %for.cond
  %p.0.lcssa = phi i8* [ %p.0, %for.cond ], !dbg !2368
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2366, metadata !DIExpression()), !dbg !2368
  store i8 0, i8* %p.0.lcssa, align 1, !dbg !2412
  %11 = load i32, i32* %p47, align 4, !dbg !2413
  %add76 = add nsw i32 %11, 1, !dbg !2414
  %idxprom77 = sext i32 %add76 to i64, !dbg !2415
  %arrayidx78 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 %idxprom77, !dbg !2415
  %12 = load i32, i32* %emax, align 8, !dbg !2416
  %sub80 = add nsw i32 %12, -1, !dbg !2417
  %call81 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arrayidx78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.218, i64 0, i64 0), i32 %sub80, i8* %suffix) #6, !dbg !2418
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2419
  %call85 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.208, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2420
  %13 = load i32, i32* %p47, align 4, !dbg !2421
  %sub88 = add nsw i32 %13, -1, !dbg !2422
  %call89 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.219, i64 0, i64 0), i32 %sub88, i8* %suffix) #6, !dbg !2423
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2424
  %call93 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.220, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %1, metadata !2366, metadata !DIExpression()), !dbg !2368
  %14 = load i32, i32* %p47, align 4, !dbg !2426
  call void @llvm.dbg.value(metadata i32 %14, metadata !2367, metadata !DIExpression()), !dbg !2368
  br label %for.cond96, !dbg !2428

for.cond96:                                       ; preds = %for.inc107, %for.end
  %p.2 = phi i8* [ %1, %for.end ], [ %p.3, %for.inc107 ], !dbg !2368
  %digits.1 = phi i32 [ %14, %for.end ], [ %dec108, %for.inc107 ], !dbg !2429
  call void @llvm.dbg.value(metadata i32 %digits.1, metadata !2367, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !2366, metadata !DIExpression()), !dbg !2368
  %cmp97 = icmp sgt i32 %digits.1, 1, !dbg !2430
  br i1 %cmp97, label %for.body99, label %for.end109, !dbg !2432

for.body99:                                       ; preds = %for.cond96
  %incdec.ptr100 = getelementptr inbounds i8, i8* %p.2, i64 1, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %incdec.ptr100, metadata !2366, metadata !DIExpression()), !dbg !2368
  store i8 48, i8* %p.2, align 1, !dbg !2435
  %15 = load i32, i32* %p47, align 4, !dbg !2436
  %cmp102 = icmp eq i32 %digits.1, %15, !dbg !2438
  br i1 %cmp102, label %if.then104, label %for.inc107, !dbg !2439

if.then104:                                       ; preds = %for.body99
  %incdec.ptr105 = getelementptr inbounds i8, i8* %p.2, i64 2, !dbg !2440
  call void @llvm.dbg.value(metadata i8* %incdec.ptr105, metadata !2366, metadata !DIExpression()), !dbg !2368
  store i8 46, i8* %incdec.ptr100, align 1, !dbg !2441
  br label %for.inc107, !dbg !2442

for.inc107:                                       ; preds = %for.body99, %if.then104
  %p.3 = phi i8* [ %incdec.ptr105, %if.then104 ], [ %incdec.ptr100, %for.body99 ], !dbg !2443
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !2366, metadata !DIExpression()), !dbg !2368
  %dec108 = add nsw i32 %digits.1, -1, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %dec108, metadata !2367, metadata !DIExpression()), !dbg !2368
  br label %for.cond96, !dbg !2445, !llvm.loop !2446

for.end109:                                       ; preds = %for.cond96
  %p.2.lcssa = phi i8* [ %p.2, %for.cond96 ], !dbg !2368
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !2366, metadata !DIExpression()), !dbg !2368
  store i8 0, i8* %p.2.lcssa, align 1, !dbg !2448
  %16 = load i32, i32* %p47, align 4, !dbg !2449
  %idxprom111 = sext i32 %16 to i64, !dbg !2450
  %arrayidx112 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 %idxprom111, !dbg !2450
  %17 = load i32, i32* %emin, align 4, !dbg !2451
  %sub114 = add nsw i32 %17, -1, !dbg !2452
  %call115 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arrayidx112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.217, i64 0, i64 0), i32 %sub114, i8* %suffix) #6, !dbg !2453
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2454
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #8, !dbg !2455
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2455
  ret void, !dbg !2455
}

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_fixed_point_constants(i8* %name_prefix, i8* %suffix, %union.tree_node* %type) unnamed_addr #5 !dbg !2456 {
entry:
  %name = alloca [64 x i8], align 16
  %buf = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %name_prefix, metadata !2458, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %suffix, metadata !2459, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2460, metadata !DIExpression()), !dbg !2469
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0, !dbg !2470
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2470
  call void @llvm.dbg.declare(metadata [64 x i8]* %name, metadata !2461, metadata !DIExpression()), !dbg !2471
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0, !dbg !2470
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #8, !dbg !2470
  call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !2462, metadata !DIExpression()), !dbg !2472
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.221, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2473
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2474
  %bf.load = load i64, i64* %2, align 8, !dbg !2474
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2474
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !2474
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2474

cond.true:                                        ; preds = %entry
  %call2 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2474
  br label %cond.end, !dbg !2474

cond.false:                                       ; preds = %entry
  %type3 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2474
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i64 0, i32 6, !dbg !2474
  %bf.load4 = load i32, i32* %mode, align 4, !dbg !2474
  %bf.lshr = lshr i32 %bf.load4, 16, !dbg !2474
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !2474
  br label %cond.end, !dbg !2474

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ %bf.clear5, %cond.false ], !dbg !2474
  %idxprom = zext i32 %cond to i64, !dbg !2474
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom, !dbg !2474
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2474
  %conv = zext i8 %3 to i64, !dbg !2474
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %conv) #7, !dbg !2475
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.222, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2476
  %bf.load10 = load i64, i64* %2, align 8, !dbg !2477
  %bf.cast122 = and i64 %bf.load10, 65535, !dbg !2477
  %cmp13 = icmp eq i64 %bf.cast122, 14, !dbg !2477
  br i1 %cmp13, label %cond.true15, label %cond.false17, !dbg !2477

cond.true15:                                      ; preds = %cond.end
  %call16 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2477
  br label %cond.end23, !dbg !2477

cond.false17:                                     ; preds = %cond.end
  %type18 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2477
  %mode19 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type18, i64 0, i32 6, !dbg !2477
  %bf.load20 = load i32, i32* %mode19, align 4, !dbg !2477
  %bf.lshr21 = lshr i32 %bf.load20, 16, !dbg !2477
  %bf.clear22 = and i32 %bf.lshr21, 255, !dbg !2477
  br label %cond.end23, !dbg !2477

cond.end23:                                       ; preds = %cond.false17, %cond.true15
  %cond24 = phi i32 [ %call16, %cond.true15 ], [ %bf.clear22, %cond.false17 ], !dbg !2477
  %idxprom25 = zext i32 %cond24 to i64, !dbg !2477
  %arrayidx26 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom25, !dbg !2477
  %4 = load i8, i8* %arrayidx26, align 1, !dbg !2477
  %conv27 = zext i8 %4 to i64, !dbg !2477
  call fastcc void @builtin_define_with_int_value(i8* nonnull %0, i64 %conv27) #7, !dbg !2478
  %call28 = call i32 @strcmp(i8* %suffix, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !2479
  %cmp29 = icmp eq i32 %call28, 0, !dbg !2481
  br i1 %cmp29, label %cleanup, label %if.end, !dbg !2482

if.end:                                           ; preds = %cond.end23
  %bf.load32 = load i64, i64* %2, align 8, !dbg !2483
  %bf.cast353 = and i64 %bf.load32, 2097152, !dbg !2483
  %tobool = icmp eq i64 %bf.cast353, 0, !dbg !2483
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.206, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2485
  br i1 %tobool, label %if.else, label %if.then36, !dbg !2486

if.then36:                                        ; preds = %if.end
  %call40 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.210, i64 0, i64 0), i8* %suffix) #6, !dbg !2487
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2489
  br label %if.end179, !dbg !2490

if.else:                                          ; preds = %if.end
  %bf.load46 = load i64, i64* %2, align 8, !dbg !2491
  %bf.cast484 = and i64 %bf.load46, 65535, !dbg !2491
  %cmp49 = icmp eq i64 %bf.cast484, 14, !dbg !2491
  br i1 %cmp49, label %cond.true51, label %cond.false53, !dbg !2491

cond.true51:                                      ; preds = %if.else
  %call52 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2491
  br label %cond.end59, !dbg !2491

cond.false53:                                     ; preds = %if.else
  %type54 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2491
  %mode55 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type54, i64 0, i32 6, !dbg !2491
  %bf.load56 = load i32, i32* %mode55, align 4, !dbg !2491
  %bf.lshr57 = lshr i32 %bf.load56, 16, !dbg !2491
  %bf.clear58 = and i32 %bf.lshr57, 255, !dbg !2491
  br label %cond.end59, !dbg !2491

cond.end59:                                       ; preds = %cond.false53, %cond.true51
  %cond60 = phi i32 [ %call52, %cond.true51 ], [ %bf.clear58, %cond.false53 ], !dbg !2491
  %idxprom61 = zext i32 %cond60 to i64, !dbg !2491
  %arrayidx62 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom61, !dbg !2491
  %5 = load i8, i8* %arrayidx62, align 1, !dbg !2491
  %cmp64 = icmp eq i8 %5, 6, !dbg !2491
  br i1 %cmp64, label %if.then131, label %lor.lhs.false, !dbg !2491

lor.lhs.false:                                    ; preds = %cond.end59
  %bf.load67 = load i64, i64* %2, align 8, !dbg !2491
  %bf.cast695 = and i64 %bf.load67, 65535, !dbg !2491
  %cmp70 = icmp eq i64 %bf.cast695, 14, !dbg !2491
  br i1 %cmp70, label %cond.true72, label %cond.false74, !dbg !2491

cond.true72:                                      ; preds = %lor.lhs.false
  %call73 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2491
  br label %cond.end80, !dbg !2491

cond.false74:                                     ; preds = %lor.lhs.false
  %type75 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2491
  %mode76 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type75, i64 0, i32 6, !dbg !2491
  %bf.load77 = load i32, i32* %mode76, align 4, !dbg !2491
  %bf.lshr78 = lshr i32 %bf.load77, 16, !dbg !2491
  %bf.clear79 = and i32 %bf.lshr78, 255, !dbg !2491
  br label %cond.end80, !dbg !2491

cond.end80:                                       ; preds = %cond.false74, %cond.true72
  %cond81 = phi i32 [ %call73, %cond.true72 ], [ %bf.clear79, %cond.false74 ], !dbg !2491
  %idxprom82 = zext i32 %cond81 to i64, !dbg !2491
  %arrayidx83 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom82, !dbg !2491
  %6 = load i8, i8* %arrayidx83, align 1, !dbg !2491
  %cmp85 = icmp eq i8 %6, 15, !dbg !2491
  br i1 %cmp85, label %if.then131, label %lor.lhs.false87, !dbg !2491

lor.lhs.false87:                                  ; preds = %cond.end80
  %bf.load89 = load i64, i64* %2, align 8, !dbg !2491
  %bf.cast916 = and i64 %bf.load89, 65535, !dbg !2491
  %cmp92 = icmp eq i64 %bf.cast916, 14, !dbg !2491
  br i1 %cmp92, label %cond.true94, label %cond.false96, !dbg !2491

cond.true94:                                      ; preds = %lor.lhs.false87
  %call95 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2491
  br label %cond.end102, !dbg !2491

cond.false96:                                     ; preds = %lor.lhs.false87
  %type97 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2491
  %mode98 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type97, i64 0, i32 6, !dbg !2491
  %bf.load99 = load i32, i32* %mode98, align 4, !dbg !2491
  %bf.lshr100 = lshr i32 %bf.load99, 16, !dbg !2491
  %bf.clear101 = and i32 %bf.lshr100, 255, !dbg !2491
  br label %cond.end102, !dbg !2491

cond.end102:                                      ; preds = %cond.false96, %cond.true94
  %cond103 = phi i32 [ %call95, %cond.true94 ], [ %bf.clear101, %cond.false96 ], !dbg !2491
  %idxprom104 = zext i32 %cond103 to i64, !dbg !2491
  %arrayidx105 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom104, !dbg !2491
  %7 = load i8, i8* %arrayidx105, align 1, !dbg !2491
  %cmp107 = icmp eq i8 %7, 7, !dbg !2491
  br i1 %cmp107, label %if.then131, label %lor.lhs.false109, !dbg !2491

lor.lhs.false109:                                 ; preds = %cond.end102
  %bf.load111 = load i64, i64* %2, align 8, !dbg !2491
  %bf.cast1137 = and i64 %bf.load111, 65535, !dbg !2491
  %cmp114 = icmp eq i64 %bf.cast1137, 14, !dbg !2491
  br i1 %cmp114, label %cond.true116, label %cond.false118, !dbg !2491

cond.true116:                                     ; preds = %lor.lhs.false109
  %call117 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2491
  br label %cond.end124, !dbg !2491

cond.false118:                                    ; preds = %lor.lhs.false109
  %type119 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2491
  %mode120 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type119, i64 0, i32 6, !dbg !2491
  %bf.load121 = load i32, i32* %mode120, align 4, !dbg !2491
  %bf.lshr122 = lshr i32 %bf.load121, 16, !dbg !2491
  %bf.clear123 = and i32 %bf.lshr122, 255, !dbg !2491
  br label %cond.end124, !dbg !2491

cond.end124:                                      ; preds = %cond.false118, %cond.true116
  %cond125 = phi i32 [ %call117, %cond.true116 ], [ %bf.clear123, %cond.false118 ], !dbg !2491
  %idxprom126 = zext i32 %cond125 to i64, !dbg !2491
  %arrayidx127 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom126, !dbg !2491
  %8 = load i8, i8* %arrayidx127, align 1, !dbg !2491
  %cmp129 = icmp eq i8 %8, 16, !dbg !2491
  br i1 %cmp129, label %if.then131, label %if.else173, !dbg !2494

if.then131:                                       ; preds = %cond.end124, %cond.end102, %cond.end80, %cond.end59
  %bf.load134 = load i64, i64* %2, align 8, !dbg !2495
  %bf.cast13614 = and i64 %bf.load134, 65535, !dbg !2495
  %cmp137 = icmp eq i64 %bf.cast13614, 14, !dbg !2495
  br i1 %cmp137, label %cond.true139, label %cond.false141, !dbg !2495

cond.true139:                                     ; preds = %if.then131
  %call140 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2495
  %bf.load153.pre = load i64, i64* %2, align 8, !dbg !2496
  br label %cond.end147, !dbg !2495

cond.false141:                                    ; preds = %if.then131
  %type142 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2495
  %mode143 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type142, i64 0, i32 6, !dbg !2495
  %bf.load144 = load i32, i32* %mode143, align 4, !dbg !2495
  %bf.lshr145 = lshr i32 %bf.load144, 16, !dbg !2495
  %bf.clear146 = and i32 %bf.lshr145, 255, !dbg !2495
  br label %cond.end147, !dbg !2495

cond.end147:                                      ; preds = %cond.false141, %cond.true139
  %bf.load153 = phi i64 [ %bf.load153.pre, %cond.true139 ], [ %bf.load134, %cond.false141 ], !dbg !2496
  %cond148 = phi i32 [ %call140, %cond.true139 ], [ %bf.clear146, %cond.false141 ], !dbg !2495
  %idxprom149 = zext i32 %cond148 to i64, !dbg !2495
  %arrayidx150 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom149, !dbg !2495
  %9 = load i8, i8* %arrayidx150, align 1, !dbg !2495
  %conv151 = zext i8 %9 to i32, !dbg !2495
  %sub = add nsw i32 %conv151, -1, !dbg !2497
  %bf.cast15515 = and i64 %bf.load153, 65535, !dbg !2496
  %cmp156 = icmp eq i64 %bf.cast15515, 14, !dbg !2496
  br i1 %cmp156, label %cond.true158, label %cond.false160, !dbg !2496

cond.true158:                                     ; preds = %cond.end147
  %call159 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2496
  br label %cond.end166, !dbg !2496

cond.false160:                                    ; preds = %cond.end147
  %type161 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2496
  %mode162 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type161, i64 0, i32 6, !dbg !2496
  %bf.load163 = load i32, i32* %mode162, align 4, !dbg !2496
  %bf.lshr164 = lshr i32 %bf.load163, 16, !dbg !2496
  %bf.clear165 = and i32 %bf.lshr164, 255, !dbg !2496
  br label %cond.end166, !dbg !2496

cond.end166:                                      ; preds = %cond.false160, %cond.true158
  %cond167 = phi i32 [ %call159, %cond.true158 ], [ %bf.clear165, %cond.false160 ], !dbg !2496
  %idxprom168 = zext i32 %cond167 to i64, !dbg !2496
  %arrayidx169 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom168, !dbg !2496
  %10 = load i8, i8* %arrayidx169, align 1, !dbg !2496
  %conv170 = zext i8 %10 to i32, !dbg !2496
  %sub171 = add nsw i32 %conv170, -1, !dbg !2498
  %call172 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.223, i64 0, i64 0), i32 %sub, i8* %suffix, i32 %sub171, i8* %suffix) #6, !dbg !2499
  br label %if.end176, !dbg !2499

if.else173:                                       ; preds = %cond.end124
  %call175 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.224, i64 0, i64 0), i8* %suffix, i8* %suffix) #6, !dbg !2500
  br label %if.end176

if.end176:                                        ; preds = %if.else173, %cond.end166
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2501
  br label %if.end179

if.end179:                                        ; preds = %if.end176, %if.then36
  %call181 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.205, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2502
  %call183 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.225, i64 0, i64 0)) #6, !dbg !2503
  %add.ptr = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 2, !dbg !2504
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2466, metadata !DIExpression()), !dbg !2469
  %bf.load186 = load i64, i64* %2, align 8, !dbg !2505
  %bf.cast1888 = and i64 %bf.load186, 65535, !dbg !2505
  %cmp189 = icmp eq i64 %bf.cast1888, 14, !dbg !2505
  br i1 %cmp189, label %cond.true191, label %cond.false193, !dbg !2505

cond.true191:                                     ; preds = %if.end179
  %call192 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2505
  %bf.load205.pre = load i64, i64* %2, align 8, !dbg !2506
  br label %cond.end199, !dbg !2505

cond.false193:                                    ; preds = %if.end179
  %type194 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2505
  %mode195 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type194, i64 0, i32 6, !dbg !2505
  %bf.load196 = load i32, i32* %mode195, align 4, !dbg !2505
  %bf.lshr197 = lshr i32 %bf.load196, 16, !dbg !2505
  %bf.clear198 = and i32 %bf.lshr197, 255, !dbg !2505
  br label %cond.end199, !dbg !2505

cond.end199:                                      ; preds = %cond.false193, %cond.true191
  %bf.load205 = phi i64 [ %bf.load205.pre, %cond.true191 ], [ %bf.load186, %cond.false193 ], !dbg !2506
  %cond200 = phi i32 [ %call192, %cond.true191 ], [ %bf.clear198, %cond.false193 ], !dbg !2505
  %idxprom201 = zext i32 %cond200 to i64, !dbg !2505
  %arrayidx202 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom201, !dbg !2505
  %11 = load i8, i8* %arrayidx202, align 1, !dbg !2505
  %conv203 = zext i8 %11 to i32, !dbg !2505
  %bf.cast2079 = and i64 %bf.load205, 65535, !dbg !2506
  %cmp208 = icmp eq i64 %bf.cast2079, 14, !dbg !2506
  br i1 %cmp208, label %cond.true210, label %cond.false212, !dbg !2506

cond.true210:                                     ; preds = %cond.end199
  %call211 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2506
  br label %cond.end218, !dbg !2506

cond.false212:                                    ; preds = %cond.end199
  %type213 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2506
  %mode214 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type213, i64 0, i32 6, !dbg !2506
  %bf.load215 = load i32, i32* %mode214, align 4, !dbg !2506
  %bf.lshr216 = lshr i32 %bf.load215, 16, !dbg !2506
  %bf.clear217 = and i32 %bf.lshr216, 255, !dbg !2506
  br label %cond.end218, !dbg !2506

cond.end218:                                      ; preds = %cond.false212, %cond.true210
  %cond219 = phi i32 [ %call211, %cond.true210 ], [ %bf.clear217, %cond.false212 ], !dbg !2506
  %idxprom220 = zext i32 %cond219 to i64, !dbg !2506
  %arrayidx221 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom220, !dbg !2506
  %12 = load i8, i8* %arrayidx221, align 1, !dbg !2506
  %conv222 = zext i8 %12 to i32, !dbg !2506
  %add = add nuw nsw i32 %conv203, %conv222, !dbg !2507
  %rem = and i32 %add, 3, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %rem, metadata !2468, metadata !DIExpression()), !dbg !2469
  %tobool223 = icmp eq i32 %rem, 0, !dbg !2509
  br i1 %tobool223, label %if.end227, label %if.then224, !dbg !2511

if.then224:                                       ; preds = %cond.end218
  %incdec.ptr = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 3, !dbg !2512
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2466, metadata !DIExpression()), !dbg !2469
  %notmask = shl nsw i32 -1, %rem, !dbg !2513
  %sub225 = xor i32 %notmask, -1, !dbg !2513
  %call226 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %add.ptr, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.226, i64 0, i64 0), i32 %sub225) #6, !dbg !2514
  br label %if.end227, !dbg !2514

if.end227:                                        ; preds = %cond.end218, %if.then224
  %new_buf.0 = phi i8* [ %incdec.ptr, %if.then224 ], [ %add.ptr, %cond.end218 ], !dbg !2469
  call void @llvm.dbg.value(metadata i8* %new_buf.0, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 0, metadata !2467, metadata !DIExpression()), !dbg !2469
  %type237 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2515
  %mode238 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type237, i64 0, i32 6, !dbg !2515
  br label %for.cond, !dbg !2518

for.cond:                                         ; preds = %for.body, %if.end227
  %new_buf.1 = phi i8* [ %new_buf.0, %if.end227 ], [ %incdec.ptr269, %for.body ], !dbg !2469
  %i.0 = phi i32 [ 0, %if.end227 ], [ %inc, %for.body ], !dbg !2519
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %new_buf.1, metadata !2466, metadata !DIExpression()), !dbg !2469
  %bf.load229 = load i64, i64* %2, align 8, !dbg !2520
  %bf.cast23110 = and i64 %bf.load229, 65535, !dbg !2520
  %cmp232 = icmp eq i64 %bf.cast23110, 14, !dbg !2520
  br i1 %cmp232, label %cond.true234, label %cond.false236, !dbg !2520

cond.true234:                                     ; preds = %for.cond
  %call235 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2520
  %bf.load248.pre = load i64, i64* %2, align 8, !dbg !2521
  br label %cond.end242, !dbg !2520

cond.false236:                                    ; preds = %for.cond
  %bf.load239 = load i32, i32* %mode238, align 4, !dbg !2520
  %bf.lshr240 = lshr i32 %bf.load239, 16, !dbg !2520
  %bf.clear241 = and i32 %bf.lshr240, 255, !dbg !2520
  br label %cond.end242, !dbg !2520

cond.end242:                                      ; preds = %cond.false236, %cond.true234
  %bf.load248 = phi i64 [ %bf.load248.pre, %cond.true234 ], [ %bf.load229, %cond.false236 ], !dbg !2521
  %cond243 = phi i32 [ %call235, %cond.true234 ], [ %bf.clear241, %cond.false236 ], !dbg !2520
  %idxprom244 = zext i32 %cond243 to i64, !dbg !2520
  %arrayidx245 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom244, !dbg !2520
  %13 = load i8, i8* %arrayidx245, align 1, !dbg !2520
  %conv246 = zext i8 %13 to i32, !dbg !2520
  %bf.cast25011 = and i64 %bf.load248, 65535, !dbg !2521
  %cmp251 = icmp eq i64 %bf.cast25011, 14, !dbg !2521
  br i1 %cmp251, label %cond.true253, label %cond.false255, !dbg !2521

cond.true253:                                     ; preds = %cond.end242
  %call254 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2521
  br label %cond.end261, !dbg !2521

cond.false255:                                    ; preds = %cond.end242
  %bf.load258 = load i32, i32* %mode238, align 4, !dbg !2521
  %bf.lshr259 = lshr i32 %bf.load258, 16, !dbg !2521
  %bf.clear260 = and i32 %bf.lshr259, 255, !dbg !2521
  br label %cond.end261, !dbg !2521

cond.end261:                                      ; preds = %cond.false255, %cond.true253
  %cond262 = phi i32 [ %call254, %cond.true253 ], [ %bf.clear260, %cond.false255 ], !dbg !2521
  %idxprom263 = zext i32 %cond262 to i64, !dbg !2521
  %arrayidx264 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_ibit, i64 0, i64 %idxprom263, !dbg !2521
  %14 = load i8, i8* %arrayidx264, align 1, !dbg !2521
  %conv265 = zext i8 %14 to i32, !dbg !2521
  %add266 = add nuw nsw i32 %conv246, %conv265, !dbg !2522
  %div = lshr i32 %add266, 2, !dbg !2523
  %cmp267 = icmp ult i32 %i.0, %div, !dbg !2524
  br i1 %cmp267, label %for.body, label %for.end, !dbg !2525

for.body:                                         ; preds = %cond.end261
  %incdec.ptr269 = getelementptr inbounds i8, i8* %new_buf.1, i64 1, !dbg !2526
  call void @llvm.dbg.value(metadata i8* %incdec.ptr269, metadata !2466, metadata !DIExpression()), !dbg !2469
  %call270 = call i32 (i8*, i8*, ...) @sprintf(i8* %new_buf.1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !2527
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2467, metadata !DIExpression()), !dbg !2469
  br label %for.cond, !dbg !2529, !llvm.loop !2530

for.end:                                          ; preds = %cond.end261
  %new_buf.1.lcssa = phi i8* [ %new_buf.1, %cond.end261 ], !dbg !2469
  call void @llvm.dbg.value(metadata i8* %new_buf.1.lcssa, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %new_buf.1.lcssa, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %new_buf.1.lcssa, metadata !2466, metadata !DIExpression()), !dbg !2469
  %bf.load272 = load i64, i64* %2, align 8, !dbg !2532
  %bf.cast27412 = and i64 %bf.load272, 65535, !dbg !2532
  %cmp275 = icmp eq i64 %bf.cast27412, 14, !dbg !2532
  br i1 %cmp275, label %cond.true277, label %cond.false279, !dbg !2532

cond.true277:                                     ; preds = %for.end
  %call278 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2532
  br label %cond.end285, !dbg !2532

cond.false279:                                    ; preds = %for.end
  %bf.load282 = load i32, i32* %mode238, align 4, !dbg !2532
  %bf.lshr283 = lshr i32 %bf.load282, 16, !dbg !2532
  %bf.clear284 = and i32 %bf.lshr283, 255, !dbg !2532
  br label %cond.end285, !dbg !2532

cond.end285:                                      ; preds = %cond.false279, %cond.true277
  %cond286 = phi i32 [ %call278, %cond.true277 ], [ %bf.clear284, %cond.false279 ], !dbg !2532
  %idxprom287 = zext i32 %cond286 to i64, !dbg !2532
  %arrayidx288 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom287, !dbg !2532
  %15 = load i8, i8* %arrayidx288, align 1, !dbg !2532
  %conv289 = zext i8 %15 to i32, !dbg !2532
  %call290 = call i32 (i8*, i8*, ...) @sprintf(i8* %new_buf.1.lcssa, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.227, i64 0, i64 0), i32 %conv289, i8* %suffix) #6, !dbg !2533
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2534
  %call294 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.208, i64 0, i64 0), i8* %name_prefix) #6, !dbg !2535
  %bf.load297 = load i64, i64* %2, align 8, !dbg !2536
  %bf.cast29913 = and i64 %bf.load297, 65535, !dbg !2536
  %cmp300 = icmp eq i64 %bf.cast29913, 14, !dbg !2536
  br i1 %cmp300, label %cond.true302, label %cond.false304, !dbg !2536

cond.true302:                                     ; preds = %cond.end285
  %call303 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2536
  br label %cond.end310, !dbg !2536

cond.false304:                                    ; preds = %cond.end285
  %bf.load307 = load i32, i32* %mode238, align 4, !dbg !2536
  %bf.lshr308 = lshr i32 %bf.load307, 16, !dbg !2536
  %bf.clear309 = and i32 %bf.lshr308, 255, !dbg !2536
  br label %cond.end310, !dbg !2536

cond.end310:                                      ; preds = %cond.false304, %cond.true302
  %cond311 = phi i32 [ %call303, %cond.true302 ], [ %bf.clear309, %cond.false304 ], !dbg !2536
  %idxprom312 = zext i32 %cond311 to i64, !dbg !2536
  %arrayidx313 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_fbit, i64 0, i64 %idxprom312, !dbg !2536
  %16 = load i8, i8* %arrayidx313, align 1, !dbg !2536
  %conv314 = zext i8 %16 to i32, !dbg !2536
  %call315 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.228, i64 0, i64 0), i32 %conv314, i8* %suffix) #6, !dbg !2537
  call void @builtin_define_with_value(i8* nonnull %0, i8* nonnull %1, i32 0) #7, !dbg !2538
  br label %cleanup, !dbg !2539

cleanup:                                          ; preds = %cond.end23, %cond.end310
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #8, !dbg !2539
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2539
  ret void, !dbg !2539
}

; Function Attrs: nounwind uwtable
define dso_local void @builtin_define_with_value(i8* %macro, i8* %expansion, i32 %is_str) local_unnamed_addr #5 !dbg !2540 {
entry:
  call void @llvm.dbg.value(metadata i8* %macro, metadata !2544, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %expansion, metadata !2545, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %is_str, metadata !2546, metadata !DIExpression()), !dbg !2551
  %call = tail call i64 @strlen(i8* %macro) #6, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %call, metadata !2548, metadata !DIExpression()), !dbg !2551
  %call1 = tail call i64 @strlen(i8* %expansion) #6, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %call1, metadata !2549, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i64 2, metadata !2550, metadata !DIExpression()), !dbg !2551
  %tobool = icmp eq i32 %is_str, 0, !dbg !2554
  %spec.select = select i1 %tobool, i64 2, i64 4, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2550, metadata !DIExpression()), !dbg !2551
  %add2 = add i64 %call, %call1, !dbg !2557
  %add3 = add i64 %add2, %spec.select, !dbg !2557
  %0 = alloca i8, i64 %add3, align 16, !dbg !2557
  call void @llvm.dbg.value(metadata i8* %0, metadata !2547, metadata !DIExpression()), !dbg !2551
  br i1 %tobool, label %if.else, label %if.then5, !dbg !2558

if.then5:                                         ; preds = %entry
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.139, i64 0, i64 0), i8* %macro, i8* %expansion) #6, !dbg !2559
  br label %if.end8, !dbg !2559

if.else:                                          ; preds = %entry
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0), i8* %macro, i8* %expansion) #6, !dbg !2561
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2562
  call void @cpp_define(%struct.cpp_reader* %1, i8* nonnull %0) #6, !dbg !2563
  ret void, !dbg !2564
}

declare dso_local zeroext i8 @fast_math_flags_set_p() local_unnamed_addr #2

declare dso_local i32 @dwarf2out_do_cfi_asm() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_type_sizeof(i8* %name, %union.tree_node* %type) unnamed_addr #5 !dbg !2565 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !2567, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2568, metadata !DIExpression()), !dbg !2569
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2570
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2570
  %call = tail call i64 @tree_low_cst(%union.tree_node* %1, i32 1) #6, !dbg !2571
  tail call fastcc void @builtin_define_with_int_value(i8* %name, i64 %call) #7, !dbg !2572
  ret void, !dbg !2573
}

declare dso_local void @ix86_target_macros() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @builtin_define_std(i8* %macro) local_unnamed_addr #5 !dbg !2574 {
entry:
  call void @llvm.dbg.value(metadata i8* %macro, metadata !2578, metadata !DIExpression()), !dbg !2583
  %call = tail call i64 @strlen(i8* %macro) #6, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %call, metadata !2579, metadata !DIExpression()), !dbg !2583
  %add = add i64 %call, 5, !dbg !2585
  %0 = alloca i8, i64 %add, align 16, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %0, metadata !2580, metadata !DIExpression()), !dbg !2583
  %add.ptr.ptr = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %add.ptr.ptr, metadata !2581, metadata !DIExpression()), !dbg !2583
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr.ptr, i64 %call, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %add.ptr1, metadata !2582, metadata !DIExpression()), !dbg !2583
  %add2 = add i64 %call, 1, !dbg !2587
  %call3 = call i8* @memcpy(i8* nonnull %add.ptr.ptr, i8* %macro, i64 %add2) #6, !dbg !2588
  %1 = load i8, i8* %add.ptr.ptr, align 2, !dbg !2589
  %cmp = icmp eq i8 %1, 95, !dbg !2591
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !2592

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2593
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2593
  %cmp6 = icmp eq i8 %2, 95, !dbg !2594
  br i1 %cmp6, label %if.end24, label %lor.lhs.false, !dbg !2595

lor.lhs.false:                                    ; preds = %land.lhs.true
  %idxprom = zext i8 %2 to i64, !dbg !2596
  %arrayidx10 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2596
  %3 = load i16, i16* %arrayidx10, align 2, !dbg !2596
  %4 = trunc i16 %3 to i8, !dbg !2596
  %tobool = icmp slt i8 %4, 0, !dbg !2596
  br i1 %tobool, label %if.end24, label %if.then, !dbg !2597

if.then:                                          ; preds = %lor.lhs.false, %entry
  br i1 %cmp, label %if.end, label %if.then16, !dbg !2598

if.then16:                                        ; preds = %if.then
  %incdec.ptr.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.ptr, metadata !2581, metadata !DIExpression()), !dbg !2583
  store i8 95, i8* %incdec.ptr.ptr, align 1, !dbg !2600
  br label %if.end, !dbg !2602

if.end:                                           ; preds = %if.then, %if.then16
  %p.0.idx = phi i64 [ 1, %if.then16 ], [ 2, %if.then ]
  %p.0.ptr = getelementptr inbounds i8, i8* %0, i64 %p.0.idx, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %p.0.ptr, metadata !2581, metadata !DIExpression()), !dbg !2583
  %arrayidx17 = getelementptr inbounds i8, i8* %p.0.ptr, i64 1, !dbg !2603
  %5 = load i8, i8* %arrayidx17, align 1, !dbg !2603
  %cmp19 = icmp eq i8 %5, 95, !dbg !2605
  br i1 %cmp19, label %if.end24, label %if.then21, !dbg !2606

if.then21:                                        ; preds = %if.end
  %p.0.add = add nsw i64 %p.0.idx, -1, !dbg !2607
  %incdec.ptr22.ptr = getelementptr inbounds i8, i8* %0, i64 %p.0.add, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %incdec.ptr22.ptr, metadata !2581, metadata !DIExpression()), !dbg !2583
  store i8 95, i8* %incdec.ptr22.ptr, align 1, !dbg !2608
  br label %if.end24, !dbg !2609

if.end24:                                         ; preds = %if.end, %if.then21, %lor.lhs.false, %land.lhs.true
  %p.2.idx = phi i64 [ 2, %land.lhs.true ], [ 2, %lor.lhs.false ], [ %p.0.add, %if.then21 ], [ %p.0.idx, %if.end ]
  %p.2.ptr = getelementptr inbounds i8, i8* %0, i64 %p.2.idx, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %p.2.ptr, metadata !2581, metadata !DIExpression()), !dbg !2583
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2610
  call void @cpp_define(%struct.cpp_reader* %6, i8* nonnull %p.2.ptr) #6, !dbg !2611
  %cmp26 = icmp eq i64 %p.2.idx, 2, !dbg !2612
  br i1 %cmp26, label %if.end46, label %if.then28, !dbg !2614

if.then28:                                        ; preds = %if.end24
  %arrayidx29 = getelementptr inbounds i8, i8* %add.ptr1, i64 -1, !dbg !2615
  %7 = load i8, i8* %arrayidx29, align 1, !dbg !2615
  %cmp31 = icmp eq i8 %7, 95, !dbg !2618
  br i1 %cmp31, label %if.end35, label %if.then33, !dbg !2619

if.then33:                                        ; preds = %if.then28
  %incdec.ptr34 = getelementptr inbounds i8, i8* %add.ptr1, i64 1, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %incdec.ptr34, metadata !2582, metadata !DIExpression()), !dbg !2583
  store i8 95, i8* %add.ptr1, align 1, !dbg !2621
  br label %if.end35, !dbg !2622

if.end35:                                         ; preds = %if.then28, %if.then33
  %q.0 = phi i8* [ %incdec.ptr34, %if.then33 ], [ %add.ptr1, %if.then28 ], !dbg !2583
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !2582, metadata !DIExpression()), !dbg !2583
  %arrayidx36 = getelementptr inbounds i8, i8* %q.0, i64 -2, !dbg !2623
  %8 = load i8, i8* %arrayidx36, align 1, !dbg !2623
  %cmp38 = icmp eq i8 %8, 95, !dbg !2625
  br i1 %cmp38, label %if.end42, label %if.then40, !dbg !2626

if.then40:                                        ; preds = %if.end35
  %incdec.ptr41 = getelementptr inbounds i8, i8* %q.0, i64 1, !dbg !2627
  call void @llvm.dbg.value(metadata i8* %incdec.ptr41, metadata !2582, metadata !DIExpression()), !dbg !2583
  store i8 95, i8* %q.0, align 1, !dbg !2628
  br label %if.end42, !dbg !2629

if.end42:                                         ; preds = %if.end35, %if.then40
  %q.1 = phi i8* [ %incdec.ptr41, %if.then40 ], [ %q.0, %if.end35 ], !dbg !2630
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !2582, metadata !DIExpression()), !dbg !2583
  store i8 0, i8* %q.1, align 1, !dbg !2631
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2632
  call void @cpp_define(%struct.cpp_reader* %9, i8* nonnull %p.2.ptr) #6, !dbg !2633
  %10 = load i32, i32* @flag_iso, align 4, !dbg !2634
  %tobool43 = icmp eq i32 %10, 0, !dbg !2634
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !2636

if.then44:                                        ; preds = %if.end42
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2637
  call void @cpp_define(%struct.cpp_reader* %11, i8* %macro) #6, !dbg !2638
  br label %if.end46, !dbg !2638

if.end46:                                         ; preds = %if.end42, %if.end24, %if.then44
  ret void, !dbg !2639
}

declare dso_local void @cpp_assert(%struct.cpp_reader*, i8*) local_unnamed_addr #2

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local void @cpp_define_formatted(%struct.cpp_reader*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_constants(i8* %macro, %union.tree_node* %type) unnamed_addr #5 !dbg !2640 {
entry:
  call void @llvm.dbg.value(metadata i8* %macro, metadata !2642, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2643, metadata !DIExpression()), !dbg !2646
  %call = tail call fastcc i8* @type_suffix(%union.tree_node* %type) #7, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %call, metadata !2644, metadata !DIExpression()), !dbg !2646
  %0 = load i8, i8* %call, align 1, !dbg !2648
  %cmp = icmp eq i8 %0, 0, !dbg !2650
  %call2 = tail call i64 @strlen(i8* %macro) #6, !dbg !2651
  br i1 %cmp, label %if.then, label %if.else, !dbg !2652

if.then:                                          ; preds = %entry
  %add = add i64 %call2, 6, !dbg !2653
  %1 = alloca i8, i64 %add, align 16, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %1, metadata !2645, metadata !DIExpression()), !dbg !2646
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.188, i64 0, i64 0), i8* %macro) #6, !dbg !2655
  br label %if.end, !dbg !2656

if.else:                                          ; preds = %entry
  %add5 = add i64 %call2, 9, !dbg !2657
  %call6 = tail call i64 @strlen(i8* %call) #6, !dbg !2657
  %add7 = add i64 %add5, %call6, !dbg !2657
  %add8 = add i64 %add7, 1, !dbg !2657
  %2 = alloca i8, i64 %add8, align 16, !dbg !2657
  call void @llvm.dbg.value(metadata i8* %2, metadata !2645, metadata !DIExpression()), !dbg !2646
  %call9 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.189, i64 0, i64 0), i8* %macro, i8* %call) #6, !dbg !2659
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %buf.0 = phi i8* [ %1, %if.then ], [ %2, %if.else ], !dbg !2651
  call void @llvm.dbg.value(metadata i8* %buf.0, metadata !2645, metadata !DIExpression()), !dbg !2646
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2660
  call void @cpp_define(%struct.cpp_reader* %3, i8* %buf.0) #6, !dbg !2661
  ret void, !dbg !2662
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @type_suffix(%union.tree_node* %type) unnamed_addr #5 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !1070, metadata !DIExpression()), !dbg !2663
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 9), align 8, !dbg !2664
  %cmp = icmp eq %union.tree_node* %0, %type, !dbg !2666
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 10), align 16, !dbg !2667
  %cmp1 = icmp eq %union.tree_node* %1, %type, !dbg !2668
  %or.cond = or i1 %cmp, %cmp1, !dbg !2669
  br i1 %or.cond, label %if.end23, label %if.else, !dbg !2669

if.else:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 7), align 8, !dbg !2670
  %cmp2 = icmp eq %union.tree_node* %2, %type, !dbg !2672
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 8), align 16, !dbg !2673
  %cmp4 = icmp eq %union.tree_node* %3, %type, !dbg !2674
  %or.cond1 = or i1 %cmp2, %cmp4, !dbg !2675
  br i1 %or.cond1, label %if.end23, label %if.else6, !dbg !2675

if.else6:                                         ; preds = %if.else
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2676
  %cmp7 = icmp eq %union.tree_node* %4, %type, !dbg !2678
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 6), align 16, !dbg !2679
  %cmp9 = icmp eq %union.tree_node* %5, %type, !dbg !2680
  %or.cond2 = or i1 %cmp7, %cmp9, !dbg !2681
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 3), align 8, !dbg !2682
  %cmp11 = icmp eq %union.tree_node* %6, %type, !dbg !2683
  %or.cond3 = or i1 %or.cond2, %cmp11, !dbg !2681
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 4), align 16, !dbg !2684
  %cmp13 = icmp eq %union.tree_node* %7, %type, !dbg !2685
  %or.cond4 = or i1 %or.cond3, %cmp13, !dbg !2681
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 1), align 8, !dbg !2686
  %cmp15 = icmp eq %union.tree_node* %8, %type, !dbg !2687
  %or.cond5 = or i1 %or.cond4, %cmp15, !dbg !2681
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 2), align 16, !dbg !2688
  %cmp17 = icmp eq %union.tree_node* %9, %type, !dbg !2689
  %or.cond6 = or i1 %or.cond5, %cmp17, !dbg !2681
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !2690
  %cmp19 = icmp eq %union.tree_node* %10, %type, !dbg !2691
  %or.cond7 = or i1 %or.cond6, %cmp19, !dbg !2681
  br i1 %or.cond7, label %if.end23, label %if.else21, !dbg !2681

if.else21:                                        ; preds = %if.else6
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.194, i64 0, i64 0), i32 998, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i64 0, i64 0)) #6, !dbg !2692
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.else6, %if.else21, %entry
  %is_long.2 = phi i64 [ 4, %entry ], [ 2, %if.else ], [ 0, %if.else6 ], [ 0, %if.else21 ], !dbg !2693
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2694
  %bf.load = load i64, i64* %11, align 8, !dbg !2694
  %bf.lshr = lshr i64 %bf.load, 21, !dbg !2694
  %bf.cast = and i64 %bf.lshr, 1, !dbg !2694
  %type24 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2695
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type24, i64 0, i32 6, !dbg !2695
  %bf.load25 = load i32, i32* %precision, align 4, !dbg !2695
  %bf.clear26 = and i32 %bf.load25, 1023, !dbg !2695
  %12 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5) to %struct.tree_type**), align 8, !dbg !2697
  %precision28 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %12, i64 0, i32 6, !dbg !2697
  %bf.load29 = load i32, i32* %precision28, align 4, !dbg !2697
  %bf.clear30 = and i32 %bf.load29, 1023, !dbg !2697
  %cmp31 = icmp ult i32 %bf.clear26, %bf.clear30, !dbg !2698
  %spec.select = select i1 %cmp31, i64 0, i64 %bf.cast, !dbg !2699
  %add = or i64 %is_long.2, %spec.select, !dbg !2700
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @type_suffix.suffixes, i64 0, i64 %add, !dbg !2701
  %13 = load i8*, i8** %arrayidx, align 8, !dbg !2701
  ret i8* %13, !dbg !2702
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @get_max_float(%struct.real_format*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_with_hex_fp_value(i8* %macro, %union.tree_node* %type, i32 %digits, i8* %hex_str, i8* %fp_suffix, i8* %fp_cast) unnamed_addr #5 !dbg !2703 {
entry:
  %real = alloca %struct.real_value, align 8
  %dec_str = alloca [64 x i8], align 16
  %buf1 = alloca [256 x i8], align 16
  %buf2 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %macro, metadata !2707, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2708, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 %digits, metadata !2709, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %hex_str, metadata !2710, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %fp_suffix, metadata !2711, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %fp_cast, metadata !2712, metadata !DIExpression()), !dbg !2717
  %0 = bitcast %struct.real_value* %real to i8*, !dbg !2718
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2718
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %dec_str, i64 0, i64 0, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #8, !dbg !2719
  call void @llvm.dbg.declare(metadata [64 x i8]* %dec_str, metadata !2714, metadata !DIExpression()), !dbg !2720
  %2 = getelementptr inbounds [256 x i8], [256 x i8]* %buf1, i64 0, i64 0, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %2) #8, !dbg !2719
  call void @llvm.dbg.declare(metadata [256 x i8]* %buf1, metadata !2715, metadata !DIExpression()), !dbg !2721
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* %buf2, i64 0, i64 0, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #8, !dbg !2719
  call void @llvm.dbg.declare(metadata [256 x i8]* %buf2, metadata !2716, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata %struct.real_value* %real, metadata !2713, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  %call = call i32 @real_from_string(%struct.real_value* nonnull %real, i8* %hex_str) #6, !dbg !2723
  %conv = sext i32 %digits to i64, !dbg !2724
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2725
  %bf.load = load i64, i64* %4, align 8, !dbg !2725
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2725
  %cmp = icmp eq i64 %bf.cast1, 14, !dbg !2725
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2725

cond.true:                                        ; preds = %entry
  %call2 = call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2725
  br label %cond.end, !dbg !2725

cond.false:                                       ; preds = %entry
  %type3 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2725
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i64 0, i32 6, !dbg !2725
  %bf.load4 = load i32, i32* %mode, align 4, !dbg !2725
  %bf.lshr = lshr i32 %bf.load4, 16, !dbg !2725
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !2725
  br label %cond.end, !dbg !2725

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ %bf.clear5, %cond.false ], !dbg !2725
  call void @llvm.dbg.value(metadata %struct.real_value* %real, metadata !2713, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  call void @real_to_decimal_for_mode(i8* nonnull %1, %struct.real_value* nonnull %real, i64 64, i64 %conv, i32 0, i32 %cond) #6, !dbg !2726
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.216, i64 0, i64 0), i8* nonnull %1, i8* %fp_suffix) #6, !dbg !2727
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %3, i8* %fp_cast, i8* nonnull %2) #6, !dbg !2728
  %call14 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0), i8* %macro, i8* nonnull %3) #6, !dbg !2729
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !2730
  call void @cpp_define(%struct.cpp_reader* %5, i8* nonnull %2) #6, !dbg !2731
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #8, !dbg !2732
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %2) #8, !dbg !2732
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #8, !dbg !2732
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2732
  ret void, !dbg !2732
}

declare dso_local i32 @real_from_string(%struct.real_value*, i8*) local_unnamed_addr #2

declare dso_local void @real_to_decimal_for_mode(i8*, %struct.real_value*, i64, i64, i32, i32) local_unnamed_addr #2

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

declare dso_local i64 @tree_low_cst(%union.tree_node*, i32) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!891}
!llvm.module.flags = !{!1076, !1077, !1078}
!llvm.ident = !{!1079}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "suffixes", scope: !2, file: !3, line: 976, type: !1073, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "type_suffix", scope: !3, file: !3, line: 974, type: !4, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1069)
!3 = !DIFile(filename: "c-cppbuiltin.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !10, line: 56, baseType: !11)
!10 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !13, line: 3371, size: 1792, elements: !14)
!13 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!14 = !{!15, !49, !55, !68, !87, !94, !99, !109, !115, !129, !141, !179, !187, !215, !223, !224, !229, !238, !244, !249, !253, !257, !286, !335, !341, !348, !355, !381, !406, !423, !435, !457, !701, !873}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !12, file: !13, line: 3372, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !13, line: 360, size: 64, elements: !17)
!17 = !{!18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !16, file: !13, line: 361, baseType: !19, size: 16, flags: DIFlagBitField, extraData: i64 0)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !16, file: !13, line: 363, baseType: !19, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !16, file: !13, line: 364, baseType: !19, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !16, file: !13, line: 365, baseType: !19, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !16, file: !13, line: 366, baseType: !19, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !16, file: !13, line: 367, baseType: !19, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !16, file: !13, line: 368, baseType: !19, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !16, file: !13, line: 369, baseType: !19, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !16, file: !13, line: 370, baseType: !19, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !16, file: !13, line: 372, baseType: !19, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !16, file: !13, line: 373, baseType: !19, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !16, file: !13, line: 374, baseType: !19, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !16, file: !13, line: 375, baseType: !19, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !16, file: !13, line: 376, baseType: !19, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !16, file: !13, line: 377, baseType: !19, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !16, file: !13, line: 378, baseType: !19, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !16, file: !13, line: 379, baseType: !19, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !16, file: !13, line: 381, baseType: !19, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !16, file: !13, line: 382, baseType: !19, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !16, file: !13, line: 383, baseType: !19, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !16, file: !13, line: 384, baseType: !19, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !16, file: !13, line: 385, baseType: !19, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !16, file: !13, line: 386, baseType: !19, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !16, file: !13, line: 387, baseType: !19, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !16, file: !13, line: 388, baseType: !19, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !16, file: !13, line: 390, baseType: !19, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !16, file: !13, line: 391, baseType: !19, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !16, file: !13, line: 392, baseType: !19, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !16, file: !13, line: 394, baseType: !19, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !16, file: !13, line: 399, baseType: !19, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !12, file: !13, line: 3373, baseType: !50, size: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !13, line: 402, size: 192, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !50, file: !13, line: 403, baseType: !16, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !50, file: !13, line: 404, baseType: !9, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !13, line: 405, baseType: !9, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !12, file: !13, line: 3374, baseType: !56, size: 320)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !13, line: 1384, size: 320, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !56, file: !13, line: 1385, baseType: !50, size: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !56, file: !13, line: 1386, baseType: !60, size: 128, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !61, line: 58, baseType: !62)
!61 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 54, size: 128, elements: !63)
!63 = !{!64, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !62, file: !61, line: 56, baseType: !65, size: 64)
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !62, file: !61, line: 57, baseType: !67, size: 64, offset: 64)
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !12, file: !13, line: 3375, baseType: !69, size: 256)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !13, line: 1397, size: 256, elements: !70)
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !69, file: !13, line: 1398, baseType: !50, size: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !69, file: !13, line: 1399, baseType: !73, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !75, line: 52, size: 256, elements: !76)
!75 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!76 = !{!77, !78, !79, !80, !81, !82, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !74, file: !75, line: 56, baseType: !19, size: 2, flags: DIFlagBitField, extraData: i64 0)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !74, file: !75, line: 57, baseType: !19, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !74, file: !75, line: 58, baseType: !19, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !74, file: !75, line: 59, baseType: !19, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !74, file: !75, line: 60, baseType: !19, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !74, file: !75, line: 61, baseType: !19, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !74, file: !75, line: 62, baseType: !84, size: 192, offset: 64)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 3)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !12, file: !13, line: 3376, baseType: !88, size: 256)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !13, line: 1408, size: 256, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !88, file: !13, line: 1409, baseType: !50, size: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !88, file: !13, line: 1410, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !13, line: 1403, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !12, file: !13, line: 3377, baseType: !95, size: 256)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !13, line: 1437, size: 256, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !95, file: !13, line: 1438, baseType: !50, size: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !95, file: !13, line: 1439, baseType: !9, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !12, file: !13, line: 3378, baseType: !100, size: 256)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !13, line: 1418, size: 256, elements: !101)
!101 = !{!102, !103, !105}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !100, file: !13, line: 1419, baseType: !50, size: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !100, file: !13, line: 1420, baseType: !104, size: 32, offset: 192)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !100, file: !13, line: 1421, baseType: !106, size: 8, offset: 224)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !12, file: !13, line: 3379, baseType: !110, size: 320)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !13, line: 1428, size: 320, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !110, file: !13, line: 1429, baseType: !50, size: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !110, file: !13, line: 1430, baseType: !9, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !110, file: !13, line: 1431, baseType: !9, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !12, file: !13, line: 3380, baseType: !116, size: 320)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !13, line: 1460, size: 320, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !116, file: !13, line: 1461, baseType: !50, size: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !116, file: !13, line: 1462, baseType: !120, size: 128, offset: 192)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !121, line: 31, size: 128, elements: !122)
!121 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!122 = !{!123, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !120, file: !121, line: 32, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !120, file: !121, line: 33, baseType: !19, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !120, file: !121, line: 34, baseType: !19, size: 32, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !12, file: !13, line: 3381, baseType: !130, size: 384)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !13, line: 2507, size: 384, elements: !131)
!131 = !{!132, !133, !138, !139, !140}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !130, file: !13, line: 2508, baseType: !50, size: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !130, file: !13, line: 2509, baseType: !134, size: 32, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !135, line: 58, baseType: !136)
!135 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !137, line: 44, baseType: !19)
!137 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !130, file: !13, line: 2510, baseType: !19, size: 32, offset: 224)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !13, line: 2511, baseType: !9, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !130, file: !13, line: 2512, baseType: !9, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !12, file: !13, line: 3382, baseType: !142, size: 896)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !13, line: 2652, size: 896, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !142, file: !13, line: 2653, baseType: !130, size: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !142, file: !13, line: 2654, baseType: !9, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !142, file: !13, line: 2656, baseType: !19, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !142, file: !13, line: 2658, baseType: !19, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !142, file: !13, line: 2659, baseType: !19, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !142, file: !13, line: 2660, baseType: !19, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !142, file: !13, line: 2661, baseType: !19, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !142, file: !13, line: 2662, baseType: !19, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !142, file: !13, line: 2663, baseType: !19, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !142, file: !13, line: 2664, baseType: !19, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !142, file: !13, line: 2666, baseType: !19, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !142, file: !13, line: 2667, baseType: !19, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !142, file: !13, line: 2668, baseType: !19, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !142, file: !13, line: 2669, baseType: !19, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !142, file: !13, line: 2670, baseType: !19, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !142, file: !13, line: 2671, baseType: !19, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !142, file: !13, line: 2672, baseType: !19, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !142, file: !13, line: 2673, baseType: !19, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !142, file: !13, line: 2674, baseType: !19, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !142, file: !13, line: 2678, baseType: !19, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !142, file: !13, line: 2682, baseType: !19, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !142, file: !13, line: 2685, baseType: !19, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !142, file: !13, line: 2688, baseType: !19, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !142, file: !13, line: 2690, baseType: !19, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !142, file: !13, line: 2692, baseType: !19, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !142, file: !13, line: 2695, baseType: !19, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !142, file: !13, line: 2698, baseType: !19, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !142, file: !13, line: 2703, baseType: !19, size: 32, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !142, file: !13, line: 2705, baseType: !9, size: 64, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !142, file: !13, line: 2706, baseType: !9, size: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !142, file: !13, line: 2707, baseType: !9, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !142, file: !13, line: 2708, baseType: !9, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !142, file: !13, line: 2711, baseType: !177, size: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !13, line: 2711, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !12, file: !13, line: 3383, baseType: !180, size: 960)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !13, line: 2756, size: 960, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !180, file: !13, line: 2757, baseType: !142, size: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !180, file: !13, line: 2758, baseType: !184, size: 64, offset: 896)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !10, line: 50, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !10, line: 49, flags: DIFlagFwdDecl)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !12, file: !13, line: 3384, baseType: !188, size: 1472)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !13, line: 3114, size: 1472, elements: !189)
!189 = !{!190, !211, !212, !213, !214}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !188, file: !13, line: 3115, baseType: !191, size: 1216)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !13, line: 2984, size: 1216, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !191, file: !13, line: 2985, baseType: !180, size: 960)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !191, file: !13, line: 2986, baseType: !9, size: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !191, file: !13, line: 2987, baseType: !9, size: 64, offset: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !191, file: !13, line: 2988, baseType: !9, size: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !191, file: !13, line: 2991, baseType: !19, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !191, file: !13, line: 2992, baseType: !19, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !191, file: !13, line: 2993, baseType: !19, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !191, file: !13, line: 2994, baseType: !19, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !191, file: !13, line: 2995, baseType: !19, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !191, file: !13, line: 2996, baseType: !19, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !191, file: !13, line: 2998, baseType: !19, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !191, file: !13, line: 3000, baseType: !19, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !191, file: !13, line: 3002, baseType: !19, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !191, file: !13, line: 3003, baseType: !19, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !191, file: !13, line: 3004, baseType: !19, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !191, file: !13, line: 3005, baseType: !19, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !191, file: !13, line: 3007, baseType: !19, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !191, file: !13, line: 3010, baseType: !19, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !188, file: !13, line: 3117, baseType: !9, size: 64, offset: 1216)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !188, file: !13, line: 3119, baseType: !9, size: 64, offset: 1280)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !188, file: !13, line: 3121, baseType: !9, size: 64, offset: 1344)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !188, file: !13, line: 3123, baseType: !9, size: 64, offset: 1408)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !12, file: !13, line: 3385, baseType: !216, size: 1088)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !13, line: 2874, size: 1088, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !216, file: !13, line: 2875, baseType: !180, size: 960)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !216, file: !13, line: 2876, baseType: !184, size: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !216, file: !13, line: 2877, baseType: !221, size: 64, offset: 1024)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !13, line: 2856, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !12, file: !13, line: 3386, baseType: !191, size: 1216)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !12, file: !13, line: 3387, baseType: !225, size: 1280)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !13, line: 3093, size: 1280, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !225, file: !13, line: 3094, baseType: !191, size: 1216)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !225, file: !13, line: 3095, baseType: !221, size: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !12, file: !13, line: 3388, baseType: !230, size: 1216)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !13, line: 2824, size: 1216, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !230, file: !13, line: 2825, baseType: !142, size: 896)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !230, file: !13, line: 2827, baseType: !9, size: 64, offset: 896)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !230, file: !13, line: 2828, baseType: !9, size: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !230, file: !13, line: 2829, baseType: !9, size: 64, offset: 1024)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !230, file: !13, line: 2830, baseType: !9, size: 64, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !230, file: !13, line: 2831, baseType: !9, size: 64, offset: 1152)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !12, file: !13, line: 3389, baseType: !239, size: 1024)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !13, line: 2850, size: 1024, elements: !240)
!240 = !{!241, !242, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !239, file: !13, line: 2851, baseType: !180, size: 960)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !239, file: !13, line: 2852, baseType: !104, size: 32, offset: 960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !239, file: !13, line: 2853, baseType: !104, size: 32, offset: 992)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !12, file: !13, line: 3390, baseType: !245, size: 1024)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !13, line: 2857, size: 1024, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !245, file: !13, line: 2858, baseType: !180, size: 960)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !245, file: !13, line: 2859, baseType: !221, size: 64, offset: 960)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !12, file: !13, line: 3391, baseType: !250, size: 960)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !13, line: 2862, size: 960, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !250, file: !13, line: 2863, baseType: !180, size: 960)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !12, file: !13, line: 3392, baseType: !254, size: 1472)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !13, line: 3304, size: 1472, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !254, file: !13, line: 3305, baseType: !188, size: 1472)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !12, file: !13, line: 3393, baseType: !258, size: 1792)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !13, line: 3248, size: 1792, elements: !259)
!259 = !{!260, !261, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !258, file: !13, line: 3249, baseType: !188, size: 1472)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !258, file: !13, line: 3251, baseType: !262, size: 64, offset: 1472)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !264, line: 41, flags: DIFlagFwdDecl)
!264 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!265 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !258, file: !13, line: 3254, baseType: !9, size: 64, offset: 1536)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !258, file: !13, line: 3257, baseType: !9, size: 64, offset: 1600)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !258, file: !13, line: 3258, baseType: !9, size: 64, offset: 1664)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !258, file: !13, line: 3264, baseType: !19, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !258, file: !13, line: 3265, baseType: !19, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !258, file: !13, line: 3267, baseType: !19, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !258, file: !13, line: 3268, baseType: !19, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !258, file: !13, line: 3269, baseType: !19, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !258, file: !13, line: 3271, baseType: !19, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !258, file: !13, line: 3272, baseType: !19, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !258, file: !13, line: 3273, baseType: !19, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !258, file: !13, line: 3274, baseType: !19, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !258, file: !13, line: 3275, baseType: !19, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !258, file: !13, line: 3276, baseType: !19, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !258, file: !13, line: 3277, baseType: !19, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !258, file: !13, line: 3279, baseType: !19, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !258, file: !13, line: 3280, baseType: !19, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !258, file: !13, line: 3281, baseType: !19, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !258, file: !13, line: 3282, baseType: !19, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !258, file: !13, line: 3283, baseType: !19, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !258, file: !13, line: 3284, baseType: !19, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !13, line: 3394, baseType: !287, size: 1344)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !13, line: 2279, size: 1344, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !314, !315, !316, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !287, file: !13, line: 2280, baseType: !50, size: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !287, file: !13, line: 2281, baseType: !9, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !287, file: !13, line: 2282, baseType: !9, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !287, file: !13, line: 2283, baseType: !9, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !287, file: !13, line: 2284, baseType: !9, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !287, file: !13, line: 2285, baseType: !19, size: 32, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !287, file: !13, line: 2287, baseType: !19, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !287, file: !13, line: 2288, baseType: !19, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !287, file: !13, line: 2289, baseType: !19, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !287, file: !13, line: 2290, baseType: !19, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !287, file: !13, line: 2291, baseType: !19, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !287, file: !13, line: 2292, baseType: !19, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !287, file: !13, line: 2294, baseType: !19, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !287, file: !13, line: 2296, baseType: !19, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !287, file: !13, line: 2297, baseType: !19, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !287, file: !13, line: 2298, baseType: !19, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !287, file: !13, line: 2299, baseType: !19, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !287, file: !13, line: 2300, baseType: !19, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !287, file: !13, line: 2301, baseType: !19, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !287, file: !13, line: 2302, baseType: !19, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !287, file: !13, line: 2303, baseType: !19, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !287, file: !13, line: 2305, baseType: !19, size: 32, offset: 512)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !287, file: !13, line: 2306, baseType: !312, size: 32, offset: 544)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !313, line: 31, baseType: !104)
!313 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!314 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !287, file: !13, line: 2307, baseType: !9, size: 64, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !287, file: !13, line: 2308, baseType: !9, size: 64, offset: 640)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !287, file: !13, line: 2314, baseType: !317, size: 64, offset: 704)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !13, line: 2309, size: 64, elements: !318)
!318 = !{!319, !320, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !317, file: !13, line: 2310, baseType: !104, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !317, file: !13, line: 2311, baseType: !6, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !317, file: !13, line: 2312, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !13, line: 2277, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !13, line: 2315, baseType: !9, size: 64, offset: 768)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !287, file: !13, line: 2316, baseType: !9, size: 64, offset: 832)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !287, file: !13, line: 2317, baseType: !9, size: 64, offset: 896)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !287, file: !13, line: 2318, baseType: !9, size: 64, offset: 960)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !287, file: !13, line: 2319, baseType: !9, size: 64, offset: 1024)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !287, file: !13, line: 2320, baseType: !9, size: 64, offset: 1088)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !287, file: !13, line: 2321, baseType: !9, size: 64, offset: 1152)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !287, file: !13, line: 2322, baseType: !9, size: 64, offset: 1216)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !287, file: !13, line: 2324, baseType: !333, size: 64, offset: 1280)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !13, line: 2324, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !12, file: !13, line: 3395, baseType: !336, size: 320)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !13, line: 1469, size: 320, elements: !337)
!337 = !{!338, !339, !340}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !336, file: !13, line: 1470, baseType: !50, size: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !336, file: !13, line: 1471, baseType: !9, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !13, line: 1472, baseType: !9, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !12, file: !13, line: 3396, baseType: !342, size: 320)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !13, line: 1482, size: 320, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !342, file: !13, line: 1483, baseType: !50, size: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !342, file: !13, line: 1484, baseType: !104, size: 32, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !342, file: !13, line: 1485, baseType: !347, size: 64, offset: 256)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !107)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !12, file: !13, line: 3397, baseType: !349, size: 384)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !13, line: 1829, size: 384, elements: !350)
!350 = !{!351, !352, !353, !354}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !349, file: !13, line: 1830, baseType: !50, size: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !349, file: !13, line: 1831, baseType: !134, size: 32, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !349, file: !13, line: 1832, baseType: !9, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !349, file: !13, line: 1835, baseType: !347, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !12, file: !13, line: 3398, baseType: !356, size: 704)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !13, line: 1898, size: 704, elements: !357)
!357 = !{!358, !359, !360, !364, !365, !368}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !356, file: !13, line: 1899, baseType: !50, size: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !356, file: !13, line: 1902, baseType: !9, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !356, file: !13, line: 1905, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !10, line: 58, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !10, line: 57, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !356, file: !13, line: 1908, baseType: !19, size: 32, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !356, file: !13, line: 1911, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !13, line: 1876, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !356, file: !13, line: 1914, baseType: !369, size: 256, offset: 448)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !13, line: 1883, size: 256, elements: !370)
!370 = !{!371, !373, !374, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !369, file: !13, line: 1884, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !13, line: 1885, baseType: !372, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !369, file: !13, line: 1891, baseType: !375, size: 64, offset: 128)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !13, line: 1891, size: 64, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !375, file: !13, line: 1891, baseType: !361, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !375, file: !13, line: 1891, baseType: !9, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !369, file: !13, line: 1892, baseType: !380, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !12, file: !13, line: 3399, baseType: !382, size: 704)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !13, line: 2008, size: 704, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !401, !402, !403, !404, !405}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !382, file: !13, line: 2009, baseType: !50, size: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !382, file: !13, line: 2011, baseType: !19, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !382, file: !13, line: 2012, baseType: !19, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !382, file: !13, line: 2014, baseType: !134, size: 32, offset: 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !382, file: !13, line: 2016, baseType: !9, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !382, file: !13, line: 2017, baseType: !390, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !13, line: 183, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !13, line: 183, size: 128, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !392, file: !13, line: 183, baseType: !395, size: 128)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !13, line: 182, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !13, line: 182, size: 128, elements: !397)
!397 = !{!398, !399, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !396, file: !13, line: 182, baseType: !19, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !396, file: !13, line: 182, baseType: !19, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !396, file: !13, line: 182, baseType: !347, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !382, file: !13, line: 2019, baseType: !9, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !382, file: !13, line: 2020, baseType: !9, size: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !382, file: !13, line: 2021, baseType: !9, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !382, file: !13, line: 2022, baseType: !9, size: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !382, file: !13, line: 2023, baseType: !9, size: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !12, file: !13, line: 3400, baseType: !407, size: 832)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !13, line: 2430, size: 832, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !407, file: !13, line: 2431, baseType: !50, size: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !407, file: !13, line: 2433, baseType: !9, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !407, file: !13, line: 2434, baseType: !9, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !407, file: !13, line: 2435, baseType: !9, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !407, file: !13, line: 2436, baseType: !9, size: 64, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !407, file: !13, line: 2437, baseType: !390, size: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !407, file: !13, line: 2438, baseType: !9, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !407, file: !13, line: 2440, baseType: !9, size: 64, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !407, file: !13, line: 2441, baseType: !9, size: 64, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !407, file: !13, line: 2443, baseType: !419, size: 128, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !13, line: 182, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !13, line: 182, size: 128, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !420, file: !13, line: 182, baseType: !395, size: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !12, file: !13, line: 3401, baseType: !424, size: 320)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !13, line: 3327, size: 320, elements: !425)
!425 = !{!426, !427, !434}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !424, file: !13, line: 3329, baseType: !50, size: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !424, file: !13, line: 3330, baseType: !428, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !13, line: 3320, size: 192, elements: !430)
!430 = !{!431, !432, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !429, file: !13, line: 3322, baseType: !428, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !429, file: !13, line: 3323, baseType: !428, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !429, file: !13, line: 3324, baseType: !9, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !424, file: !13, line: 3331, baseType: !428, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !12, file: !13, line: 3402, baseType: !436, size: 256)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !13, line: 1540, size: 256, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !436, file: !13, line: 1541, baseType: !50, size: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !436, file: !13, line: 1542, baseType: !440, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !13, line: 1538, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !13, line: 1538, size: 192, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !442, file: !13, line: 1538, baseType: !445, size: 192)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !13, line: 1537, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !13, line: 1537, size: 192, elements: !447)
!447 = !{!448, !449, !450}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !446, file: !13, line: 1537, baseType: !19, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !446, file: !13, line: 1537, baseType: !19, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !446, file: !13, line: 1537, baseType: !451, size: 128, offset: 64)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 128, elements: !107)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !13, line: 1535, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !13, line: 1532, size: 128, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !453, file: !13, line: 1533, baseType: !9, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !453, file: !13, line: 1534, baseType: !9, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !12, file: !13, line: 3403, baseType: !458, size: 512)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !13, line: 1938, size: 512, elements: !459)
!459 = !{!460, !461, !462, !481, !695, !699, !700}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !458, file: !13, line: 1939, baseType: !50, size: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !458, file: !13, line: 1940, baseType: !134, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !458, file: !13, line: 1941, baseType: !463, size: 32, offset: 224)
!463 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !13, line: 280, baseType: !19, size: 32, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!465 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!466 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!467 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!468 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!469 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!470 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!471 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!472 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!473 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!474 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!475 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!476 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!477 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!478 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!479 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!480 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !458, file: !13, line: 1946, baseType: !482, size: 32, offset: 256)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !13, line: 1942, size: 32, elements: !483)
!483 = !{!484, !492, !500}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !482, file: !13, line: 1943, baseType: !485, size: 32)
!485 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !13, line: 1817, baseType: !19, size: 32, elements: !486)
!486 = !{!487, !488, !489, !490, !491}
!487 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!488 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!489 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!490 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!491 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !482, file: !13, line: 1944, baseType: !493, size: 32)
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !13, line: 1805, baseType: !19, size: 32, elements: !494)
!494 = !{!495, !496, !497, !498, !499}
!495 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!496 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!497 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!498 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!499 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !482, file: !13, line: 1945, baseType: !501, size: 32)
!501 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !13, line: 39, baseType: !19, size: 32, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!503 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!504 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!505 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!506 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!507 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!508 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!509 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!510 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!511 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!512 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!513 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!514 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!515 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!516 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!517 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!518 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!519 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!520 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!521 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!522 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!523 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!524 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!525 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!526 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!527 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!528 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!529 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!530 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!531 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!532 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!533 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!534 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!535 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!536 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!537 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!538 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!539 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!540 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!541 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!542 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!543 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!544 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!545 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!546 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!547 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!548 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!549 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!550 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!551 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!552 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!553 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!554 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!555 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!556 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!557 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!558 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!559 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!560 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!561 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!562 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!563 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!564 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!565 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!566 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!567 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!568 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!569 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!570 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!571 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!572 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!573 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!574 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!575 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!576 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!577 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!578 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!579 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!580 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!581 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!582 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!583 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!584 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!585 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!586 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!587 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!588 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!589 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!590 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!591 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!592 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!593 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!594 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!595 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!596 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!597 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!598 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!599 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!600 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!601 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!602 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!603 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!604 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!605 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!606 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!607 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!608 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!609 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!610 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!611 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!612 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!613 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!614 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!615 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!616 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!617 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!618 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!619 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!620 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!621 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!622 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!623 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!624 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!625 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!626 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!627 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!628 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!629 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!630 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!631 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!632 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!633 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!634 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!635 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!636 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!637 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!638 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!639 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!640 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!641 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!642 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!643 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!644 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!645 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!646 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!647 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!648 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!649 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!650 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!651 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!652 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!653 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!654 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!655 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!656 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!657 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!658 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!659 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!660 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!661 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!662 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!663 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!664 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!665 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!666 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!667 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!668 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!669 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!670 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!671 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!672 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!673 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!674 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!675 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!676 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!677 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!678 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!679 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!680 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!681 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!682 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!683 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!684 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!685 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!686 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!687 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!688 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!689 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!690 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!691 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!692 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!693 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!694 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !458, file: !13, line: 1950, baseType: !696, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !10, line: 66, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !10, line: 65, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !458, file: !13, line: 1951, baseType: !696, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !458, file: !13, line: 1953, baseType: !347, size: 64, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !12, file: !13, line: 3404, baseType: !702, size: 1664)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !13, line: 3337, size: 1664, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !702, file: !13, line: 3338, baseType: !50, size: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !702, file: !13, line: 3341, baseType: !706, size: 1472, offset: 192)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !707, line: 410, size: 1472, elements: !708)
!707 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !706, file: !707, line: 412, baseType: !104, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !706, file: !707, line: 413, baseType: !104, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !706, file: !707, line: 414, baseType: !104, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !706, file: !707, line: 415, baseType: !104, size: 32, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !706, file: !707, line: 416, baseType: !104, size: 32, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !706, file: !707, line: 417, baseType: !104, size: 32, offset: 160)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !706, file: !707, line: 418, baseType: !126, size: 8, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !706, file: !707, line: 419, baseType: !126, size: 8, offset: 200)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !706, file: !707, line: 420, baseType: !718, size: 8, offset: 208)
!718 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !706, file: !707, line: 421, baseType: !718, size: 8, offset: 216)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !706, file: !707, line: 422, baseType: !718, size: 8, offset: 224)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !706, file: !707, line: 423, baseType: !718, size: 8, offset: 232)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !706, file: !707, line: 424, baseType: !718, size: 8, offset: 240)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !706, file: !707, line: 425, baseType: !718, size: 8, offset: 248)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !706, file: !707, line: 426, baseType: !718, size: 8, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !706, file: !707, line: 427, baseType: !718, size: 8, offset: 264)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !706, file: !707, line: 428, baseType: !718, size: 8, offset: 272)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !706, file: !707, line: 429, baseType: !718, size: 8, offset: 280)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !706, file: !707, line: 430, baseType: !718, size: 8, offset: 288)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !706, file: !707, line: 431, baseType: !718, size: 8, offset: 296)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !706, file: !707, line: 432, baseType: !718, size: 8, offset: 304)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !706, file: !707, line: 433, baseType: !718, size: 8, offset: 312)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !706, file: !707, line: 434, baseType: !718, size: 8, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !706, file: !707, line: 435, baseType: !718, size: 8, offset: 328)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !706, file: !707, line: 436, baseType: !718, size: 8, offset: 336)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !706, file: !707, line: 437, baseType: !718, size: 8, offset: 344)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !706, file: !707, line: 438, baseType: !718, size: 8, offset: 352)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !706, file: !707, line: 439, baseType: !718, size: 8, offset: 360)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !706, file: !707, line: 440, baseType: !718, size: 8, offset: 368)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !706, file: !707, line: 441, baseType: !718, size: 8, offset: 376)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !706, file: !707, line: 442, baseType: !718, size: 8, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !706, file: !707, line: 443, baseType: !718, size: 8, offset: 392)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !706, file: !707, line: 444, baseType: !718, size: 8, offset: 400)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !706, file: !707, line: 445, baseType: !718, size: 8, offset: 408)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !706, file: !707, line: 446, baseType: !718, size: 8, offset: 416)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !706, file: !707, line: 447, baseType: !718, size: 8, offset: 424)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !706, file: !707, line: 448, baseType: !718, size: 8, offset: 432)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !706, file: !707, line: 449, baseType: !718, size: 8, offset: 440)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !706, file: !707, line: 450, baseType: !718, size: 8, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !706, file: !707, line: 451, baseType: !718, size: 8, offset: 456)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !706, file: !707, line: 452, baseType: !718, size: 8, offset: 464)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !706, file: !707, line: 453, baseType: !718, size: 8, offset: 472)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !706, file: !707, line: 454, baseType: !718, size: 8, offset: 480)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !706, file: !707, line: 455, baseType: !718, size: 8, offset: 488)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !706, file: !707, line: 456, baseType: !718, size: 8, offset: 496)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !706, file: !707, line: 457, baseType: !718, size: 8, offset: 504)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !706, file: !707, line: 458, baseType: !718, size: 8, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !706, file: !707, line: 459, baseType: !718, size: 8, offset: 520)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !706, file: !707, line: 460, baseType: !718, size: 8, offset: 528)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !706, file: !707, line: 461, baseType: !718, size: 8, offset: 536)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !706, file: !707, line: 462, baseType: !718, size: 8, offset: 544)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !706, file: !707, line: 463, baseType: !718, size: 8, offset: 552)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !706, file: !707, line: 464, baseType: !718, size: 8, offset: 560)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !706, file: !707, line: 465, baseType: !718, size: 8, offset: 568)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !706, file: !707, line: 466, baseType: !718, size: 8, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !706, file: !707, line: 467, baseType: !718, size: 8, offset: 584)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !706, file: !707, line: 468, baseType: !718, size: 8, offset: 592)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !706, file: !707, line: 469, baseType: !718, size: 8, offset: 600)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !706, file: !707, line: 470, baseType: !718, size: 8, offset: 608)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !706, file: !707, line: 471, baseType: !718, size: 8, offset: 616)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !706, file: !707, line: 472, baseType: !718, size: 8, offset: 624)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !706, file: !707, line: 473, baseType: !718, size: 8, offset: 632)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !706, file: !707, line: 474, baseType: !718, size: 8, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !706, file: !707, line: 475, baseType: !718, size: 8, offset: 648)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !706, file: !707, line: 476, baseType: !718, size: 8, offset: 656)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !706, file: !707, line: 477, baseType: !718, size: 8, offset: 664)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !706, file: !707, line: 478, baseType: !718, size: 8, offset: 672)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !706, file: !707, line: 479, baseType: !718, size: 8, offset: 680)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !706, file: !707, line: 480, baseType: !718, size: 8, offset: 688)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !706, file: !707, line: 481, baseType: !718, size: 8, offset: 696)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !706, file: !707, line: 482, baseType: !718, size: 8, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !706, file: !707, line: 483, baseType: !718, size: 8, offset: 712)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !706, file: !707, line: 484, baseType: !718, size: 8, offset: 720)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !706, file: !707, line: 485, baseType: !718, size: 8, offset: 728)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !706, file: !707, line: 486, baseType: !718, size: 8, offset: 736)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !706, file: !707, line: 487, baseType: !718, size: 8, offset: 744)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !706, file: !707, line: 488, baseType: !718, size: 8, offset: 752)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !706, file: !707, line: 489, baseType: !718, size: 8, offset: 760)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !706, file: !707, line: 490, baseType: !718, size: 8, offset: 768)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !706, file: !707, line: 491, baseType: !718, size: 8, offset: 776)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !706, file: !707, line: 492, baseType: !718, size: 8, offset: 784)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !706, file: !707, line: 493, baseType: !718, size: 8, offset: 792)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !706, file: !707, line: 494, baseType: !718, size: 8, offset: 800)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !706, file: !707, line: 495, baseType: !718, size: 8, offset: 808)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !706, file: !707, line: 496, baseType: !718, size: 8, offset: 816)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !706, file: !707, line: 497, baseType: !718, size: 8, offset: 824)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !706, file: !707, line: 498, baseType: !718, size: 8, offset: 832)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !706, file: !707, line: 499, baseType: !718, size: 8, offset: 840)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !706, file: !707, line: 500, baseType: !718, size: 8, offset: 848)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !706, file: !707, line: 501, baseType: !718, size: 8, offset: 856)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !706, file: !707, line: 502, baseType: !718, size: 8, offset: 864)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !706, file: !707, line: 503, baseType: !718, size: 8, offset: 872)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !706, file: !707, line: 504, baseType: !718, size: 8, offset: 880)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !706, file: !707, line: 505, baseType: !718, size: 8, offset: 888)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !706, file: !707, line: 506, baseType: !718, size: 8, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !706, file: !707, line: 507, baseType: !718, size: 8, offset: 904)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !706, file: !707, line: 508, baseType: !718, size: 8, offset: 912)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !706, file: !707, line: 509, baseType: !718, size: 8, offset: 920)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !706, file: !707, line: 510, baseType: !718, size: 8, offset: 928)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !706, file: !707, line: 511, baseType: !718, size: 8, offset: 936)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !706, file: !707, line: 512, baseType: !718, size: 8, offset: 944)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !706, file: !707, line: 513, baseType: !718, size: 8, offset: 952)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !706, file: !707, line: 514, baseType: !718, size: 8, offset: 960)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !706, file: !707, line: 515, baseType: !718, size: 8, offset: 968)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !706, file: !707, line: 516, baseType: !718, size: 8, offset: 976)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !706, file: !707, line: 517, baseType: !718, size: 8, offset: 984)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !706, file: !707, line: 518, baseType: !718, size: 8, offset: 992)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !706, file: !707, line: 519, baseType: !718, size: 8, offset: 1000)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !706, file: !707, line: 520, baseType: !718, size: 8, offset: 1008)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !706, file: !707, line: 521, baseType: !718, size: 8, offset: 1016)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !706, file: !707, line: 522, baseType: !718, size: 8, offset: 1024)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !706, file: !707, line: 523, baseType: !718, size: 8, offset: 1032)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !706, file: !707, line: 524, baseType: !718, size: 8, offset: 1040)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !706, file: !707, line: 525, baseType: !718, size: 8, offset: 1048)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !706, file: !707, line: 526, baseType: !718, size: 8, offset: 1056)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !706, file: !707, line: 527, baseType: !718, size: 8, offset: 1064)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !706, file: !707, line: 528, baseType: !718, size: 8, offset: 1072)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !706, file: !707, line: 529, baseType: !718, size: 8, offset: 1080)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !706, file: !707, line: 530, baseType: !718, size: 8, offset: 1088)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !706, file: !707, line: 531, baseType: !718, size: 8, offset: 1096)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !706, file: !707, line: 532, baseType: !718, size: 8, offset: 1104)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !706, file: !707, line: 533, baseType: !718, size: 8, offset: 1112)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !706, file: !707, line: 534, baseType: !718, size: 8, offset: 1120)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !706, file: !707, line: 535, baseType: !718, size: 8, offset: 1128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !706, file: !707, line: 536, baseType: !718, size: 8, offset: 1136)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !706, file: !707, line: 537, baseType: !718, size: 8, offset: 1144)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !706, file: !707, line: 538, baseType: !718, size: 8, offset: 1152)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !706, file: !707, line: 539, baseType: !718, size: 8, offset: 1160)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !706, file: !707, line: 540, baseType: !718, size: 8, offset: 1168)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !706, file: !707, line: 541, baseType: !718, size: 8, offset: 1176)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !706, file: !707, line: 542, baseType: !718, size: 8, offset: 1184)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !706, file: !707, line: 543, baseType: !718, size: 8, offset: 1192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !706, file: !707, line: 544, baseType: !718, size: 8, offset: 1200)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !706, file: !707, line: 545, baseType: !718, size: 8, offset: 1208)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !706, file: !707, line: 546, baseType: !718, size: 8, offset: 1216)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !706, file: !707, line: 547, baseType: !718, size: 8, offset: 1224)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !706, file: !707, line: 548, baseType: !718, size: 8, offset: 1232)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !706, file: !707, line: 549, baseType: !718, size: 8, offset: 1240)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !706, file: !707, line: 550, baseType: !718, size: 8, offset: 1248)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !706, file: !707, line: 551, baseType: !718, size: 8, offset: 1256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !706, file: !707, line: 552, baseType: !718, size: 8, offset: 1264)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !706, file: !707, line: 553, baseType: !718, size: 8, offset: 1272)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !706, file: !707, line: 554, baseType: !718, size: 8, offset: 1280)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !706, file: !707, line: 555, baseType: !718, size: 8, offset: 1288)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !706, file: !707, line: 556, baseType: !718, size: 8, offset: 1296)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !706, file: !707, line: 557, baseType: !718, size: 8, offset: 1304)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !706, file: !707, line: 558, baseType: !718, size: 8, offset: 1312)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !706, file: !707, line: 559, baseType: !718, size: 8, offset: 1320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !706, file: !707, line: 560, baseType: !718, size: 8, offset: 1328)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !706, file: !707, line: 561, baseType: !718, size: 8, offset: 1336)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !706, file: !707, line: 562, baseType: !718, size: 8, offset: 1344)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !706, file: !707, line: 563, baseType: !718, size: 8, offset: 1352)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !706, file: !707, line: 564, baseType: !718, size: 8, offset: 1360)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !706, file: !707, line: 565, baseType: !718, size: 8, offset: 1368)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !706, file: !707, line: 566, baseType: !718, size: 8, offset: 1376)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !706, file: !707, line: 567, baseType: !718, size: 8, offset: 1384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !706, file: !707, line: 568, baseType: !718, size: 8, offset: 1392)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !706, file: !707, line: 569, baseType: !718, size: 8, offset: 1400)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !706, file: !707, line: 570, baseType: !718, size: 8, offset: 1408)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !706, file: !707, line: 571, baseType: !718, size: 8, offset: 1416)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !706, file: !707, line: 572, baseType: !718, size: 8, offset: 1424)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !706, file: !707, line: 573, baseType: !718, size: 8, offset: 1432)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !706, file: !707, line: 574, baseType: !718, size: 8, offset: 1440)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !12, file: !13, line: 3405, baseType: !874, size: 384)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !13, line: 3352, size: 384, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !874, file: !13, line: 3353, baseType: !50, size: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !874, file: !13, line: 3356, baseType: !878, size: 192, offset: 192)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !707, line: 578, size: 192, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !878, file: !707, line: 580, baseType: !104, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !878, file: !707, line: 581, baseType: !104, size: 32, offset: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !878, file: !707, line: 582, baseType: !104, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !878, file: !707, line: 583, baseType: !104, size: 32, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !878, file: !707, line: 584, baseType: !126, size: 8, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !878, file: !707, line: 585, baseType: !126, size: 8, offset: 136)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !878, file: !707, line: 586, baseType: !126, size: 8, offset: 144)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !878, file: !707, line: 587, baseType: !126, size: 8, offset: 152)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !878, file: !707, line: 588, baseType: !126, size: 8, offset: 160)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !878, file: !707, line: 589, baseType: !126, size: 8, offset: 168)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !878, file: !707, line: 590, baseType: !126, size: 8, offset: 176)
!891 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !892, retainedTypes: !1043, globals: !1049, nameTableKind: None)
!892 = !{!463, !485, !493, !501, !893, !915}
!893 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !894, line: 36, baseType: !19, size: 32, elements: !895)
!894 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914}
!896 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!897 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!898 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!899 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!900 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!901 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!902 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!903 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!904 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!905 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!906 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!907 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!908 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!909 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!910 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!911 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!912 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!913 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!914 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!915 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !916, line: 7, baseType: !19, size: 32, elements: !917)
!916 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!918 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!919 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!920 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!921 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!922 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!923 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!924 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!925 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!926 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!927 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!928 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!929 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!930 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!931 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!932 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!933 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!934 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!935 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!936 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!937 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!938 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!939 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!940 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!941 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!942 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!943 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!944 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!945 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!946 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!947 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!948 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!949 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!950 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!951 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!952 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!953 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!954 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!955 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!956 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!957 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!958 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!959 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!960 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!961 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!962 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!963 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!964 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!965 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!966 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!967 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!968 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!969 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!970 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!971 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!972 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!973 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!974 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!975 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!976 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!977 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!978 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!979 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!980 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!981 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!982 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!983 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!984 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!985 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!986 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!987 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!988 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!989 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!990 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!991 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!992 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!993 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!994 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!995 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!996 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!997 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!998 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!999 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!1000 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!1001 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!1002 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!1003 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!1004 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!1005 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!1006 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!1007 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!1008 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!1009 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!1010 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!1011 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!1012 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!1013 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!1014 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!1015 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!1016 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!1017 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!1018 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!1019 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!1020 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!1021 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!1022 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!1023 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!1024 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!1025 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!1026 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!1027 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!1028 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!1029 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!1030 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!1031 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!1032 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!1033 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!1034 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!1035 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!1036 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!1037 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!1038 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!1039 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!1040 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!1041 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!1042 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!1043 = !{!1044, !126, !104, !1045, !1047, !6, !1046, !1048, !893, !501, !915}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1048 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1049 = !{!0, !1050}
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(name: "values", scope: !1052, file: !3, line: 1044, type: !1065, isLocal: true, isDefinition: true)
!1052 = distinct !DISubprogram(name: "builtin_define_type_minmax", scope: !3, file: !3, line: 1041, type: !1053, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !6, !6, !9}
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1056 = !DILocalVariable(name: "min_macro", arg: 1, scope: !1052, file: !3, line: 1041, type: !6)
!1057 = !DILocalVariable(name: "max_macro", arg: 2, scope: !1052, file: !3, line: 1041, type: !6)
!1058 = !DILocalVariable(name: "type", arg: 3, scope: !1052, file: !3, line: 1042, type: !9)
!1059 = !DILocalVariable(name: "value", scope: !1052, file: !3, line: 1052, type: !6)
!1060 = !DILocalVariable(name: "suffix", scope: !1052, file: !3, line: 1052, type: !6)
!1061 = !DILocalVariable(name: "buf", scope: !1052, file: !3, line: 1053, type: !1046)
!1062 = !DILocalVariable(name: "idx", scope: !1052, file: !3, line: 1054, type: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1064, line: 46, baseType: !65)
!1064 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 640, elements: !1067)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1067 = !{!1068}
!1068 = !DISubrange(count: 10)
!1069 = !{!1070, !1071, !1072}
!1070 = !DILocalVariable(name: "type", arg: 1, scope: !2, file: !3, line: 974, type: !9)
!1071 = !DILocalVariable(name: "unsigned_suffix", scope: !2, file: !3, line: 977, type: !104)
!1072 = !DILocalVariable(name: "is_long", scope: !2, file: !3, line: 978, type: !104)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 384, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 6)
!1076 = !{i32 2, !"Dwarf Version", i32 4}
!1077 = !{i32 2, !"Debug Info Version", i32 3}
!1078 = !{i32 1, !"wchar_size", i32 4}
!1079 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1080 = distinct !DISubprogram(name: "vprintf", scope: !1081, file: !1081, line: 39, type: !1082, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1092)
!1081 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!104, !1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1086, file: !3, baseType: !19, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1086, file: !3, baseType: !19, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1086, file: !3, baseType: !1047, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1086, file: !3, baseType: !1047, size: 64, offset: 128)
!1092 = !{!1093, !1094}
!1093 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1080, file: !1081, line: 39, type: !1084)
!1094 = !DILocalVariable(name: "__arg", arg: 2, scope: !1080, file: !1081, line: 39, type: !1085)
!1095 = !DILocation(line: 0, scope: !1080)
!1096 = !DILocation(line: 41, column: 20, scope: !1080)
!1097 = !DILocation(line: 41, column: 10, scope: !1080)
!1098 = !DILocation(line: 41, column: 3, scope: !1080)
!1099 = distinct !DISubprogram(name: "getchar", scope: !1081, file: !1081, line: 47, type: !1100, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!104}
!1102 = !{}
!1103 = !DILocation(line: 49, column: 16, scope: !1099)
!1104 = !DILocation(line: 49, column: 10, scope: !1099)
!1105 = !DILocation(line: 49, column: 3, scope: !1099)
!1106 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1081, file: !1081, line: 56, type: !1107, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1159)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!104, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1111, line: 7, baseType: !1112)
!1111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1113, line: 49, size: 1728, elements: !1114)
!1113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1130, !1132, !1133, !1134, !1137, !1138, !1139, !1140, !1143, !1145, !1148, !1151, !1152, !1153, !1154, !1155}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1112, file: !1113, line: 51, baseType: !104, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1112, file: !1113, line: 54, baseType: !1046, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1112, file: !1113, line: 55, baseType: !1046, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1112, file: !1113, line: 56, baseType: !1046, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1112, file: !1113, line: 57, baseType: !1046, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1112, file: !1113, line: 58, baseType: !1046, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1112, file: !1113, line: 59, baseType: !1046, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1112, file: !1113, line: 60, baseType: !1046, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1112, file: !1113, line: 61, baseType: !1046, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1112, file: !1113, line: 64, baseType: !1046, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1112, file: !1113, line: 65, baseType: !1046, size: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1112, file: !1113, line: 66, baseType: !1046, size: 64, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1112, file: !1113, line: 68, baseType: !1128, size: 64, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1113, line: 36, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1112, file: !1113, line: 70, baseType: !1131, size: 64, offset: 832)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1112, file: !1113, line: 72, baseType: !104, size: 32, offset: 896)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1112, file: !1113, line: 73, baseType: !104, size: 32, offset: 928)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1112, file: !1113, line: 74, baseType: !1135, size: 64, offset: 960)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1136, line: 152, baseType: !67)
!1136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1112, file: !1113, line: 77, baseType: !1048, size: 16, offset: 1024)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1112, file: !1113, line: 78, baseType: !718, size: 8, offset: 1040)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1112, file: !1113, line: 79, baseType: !106, size: 8, offset: 1048)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1112, file: !1113, line: 81, baseType: !1141, size: 64, offset: 1088)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1113, line: 43, baseType: null)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1112, file: !1113, line: 89, baseType: !1144, size: 64, offset: 1152)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1136, line: 153, baseType: !67)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1112, file: !1113, line: 91, baseType: !1146, size: 64, offset: 1216)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1113, line: 37, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1112, file: !1113, line: 92, baseType: !1149, size: 64, offset: 1280)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1113, line: 38, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1112, file: !1113, line: 93, baseType: !1131, size: 64, offset: 1344)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1112, file: !1113, line: 94, baseType: !1047, size: 64, offset: 1408)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1112, file: !1113, line: 95, baseType: !1063, size: 64, offset: 1472)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1112, file: !1113, line: 96, baseType: !104, size: 32, offset: 1536)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1112, file: !1113, line: 98, baseType: !1156, size: 160, offset: 1568)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !1157)
!1157 = !{!1158}
!1158 = !DISubrange(count: 20)
!1159 = !{!1160}
!1160 = !DILocalVariable(name: "__fp", arg: 1, scope: !1106, file: !1081, line: 56, type: !1109)
!1161 = !DILocation(line: 0, scope: !1106)
!1162 = !DILocation(line: 58, column: 10, scope: !1106)
!1163 = !DILocation(line: 58, column: 3, scope: !1106)
!1164 = distinct !DISubprogram(name: "getc_unlocked", scope: !1081, file: !1081, line: 66, type: !1107, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1165)
!1165 = !{!1166}
!1166 = !DILocalVariable(name: "__fp", arg: 1, scope: !1164, file: !1081, line: 66, type: !1109)
!1167 = !DILocation(line: 0, scope: !1164)
!1168 = !DILocation(line: 68, column: 10, scope: !1164)
!1169 = !DILocation(line: 68, column: 3, scope: !1164)
!1170 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1081, file: !1081, line: 73, type: !1100, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1102)
!1171 = !DILocation(line: 75, column: 10, scope: !1170)
!1172 = !DILocation(line: 75, column: 3, scope: !1170)
!1173 = distinct !DISubprogram(name: "putchar", scope: !1081, file: !1081, line: 82, type: !1174, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!104, !104}
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "__c", arg: 1, scope: !1173, file: !1081, line: 82, type: !104)
!1178 = !DILocation(line: 0, scope: !1173)
!1179 = !DILocation(line: 84, column: 21, scope: !1173)
!1180 = !DILocation(line: 84, column: 10, scope: !1173)
!1181 = !DILocation(line: 84, column: 3, scope: !1173)
!1182 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1081, file: !1081, line: 91, type: !1183, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!104, !104, !1109}
!1185 = !{!1186, !1187}
!1186 = !DILocalVariable(name: "__c", arg: 1, scope: !1182, file: !1081, line: 91, type: !104)
!1187 = !DILocalVariable(name: "__stream", arg: 2, scope: !1182, file: !1081, line: 91, type: !1109)
!1188 = !DILocation(line: 0, scope: !1182)
!1189 = !DILocation(line: 93, column: 10, scope: !1182)
!1190 = !DILocation(line: 93, column: 3, scope: !1182)
!1191 = distinct !DISubprogram(name: "putc_unlocked", scope: !1081, file: !1081, line: 101, type: !1183, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1192)
!1192 = !{!1193, !1194}
!1193 = !DILocalVariable(name: "__c", arg: 1, scope: !1191, file: !1081, line: 101, type: !104)
!1194 = !DILocalVariable(name: "__stream", arg: 2, scope: !1191, file: !1081, line: 101, type: !1109)
!1195 = !DILocation(line: 0, scope: !1191)
!1196 = !DILocation(line: 103, column: 10, scope: !1191)
!1197 = !DILocation(line: 103, column: 3, scope: !1191)
!1198 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1081, file: !1081, line: 108, type: !1174, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1199)
!1199 = !{!1200}
!1200 = !DILocalVariable(name: "__c", arg: 1, scope: !1198, file: !1081, line: 108, type: !104)
!1201 = !DILocation(line: 0, scope: !1198)
!1202 = !DILocation(line: 110, column: 10, scope: !1198)
!1203 = !DILocation(line: 110, column: 3, scope: !1198)
!1204 = distinct !DISubprogram(name: "getline", scope: !1081, file: !1081, line: 118, type: !1205, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1209)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!1207, !1045, !1208, !1109}
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1136, line: 193, baseType: !67)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1209 = !{!1210, !1211, !1212}
!1210 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1204, file: !1081, line: 118, type: !1045)
!1211 = !DILocalVariable(name: "__n", arg: 2, scope: !1204, file: !1081, line: 118, type: !1208)
!1212 = !DILocalVariable(name: "__stream", arg: 3, scope: !1204, file: !1081, line: 118, type: !1109)
!1213 = !DILocation(line: 0, scope: !1204)
!1214 = !DILocation(line: 120, column: 10, scope: !1204)
!1215 = !DILocation(line: 120, column: 3, scope: !1204)
!1216 = distinct !DISubprogram(name: "feof_unlocked", scope: !1081, file: !1081, line: 128, type: !1107, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1217)
!1217 = !{!1218}
!1218 = !DILocalVariable(name: "__stream", arg: 1, scope: !1216, file: !1081, line: 128, type: !1109)
!1219 = !DILocation(line: 0, scope: !1216)
!1220 = !DILocation(line: 130, column: 10, scope: !1216)
!1221 = !DILocation(line: 130, column: 3, scope: !1216)
!1222 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1081, file: !1081, line: 135, type: !1107, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1223)
!1223 = !{!1224}
!1224 = !DILocalVariable(name: "__stream", arg: 1, scope: !1222, file: !1081, line: 135, type: !1109)
!1225 = !DILocation(line: 0, scope: !1222)
!1226 = !DILocation(line: 137, column: 10, scope: !1222)
!1227 = !DILocation(line: 137, column: 3, scope: !1222)
!1228 = distinct !DISubprogram(name: "tolower", scope: !1229, file: !1229, line: 207, type: !1174, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1230)
!1229 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1230 = !{!1231}
!1231 = !DILocalVariable(name: "__c", arg: 1, scope: !1228, file: !1229, line: 207, type: !104)
!1232 = !DILocation(line: 0, scope: !1228)
!1233 = !DILocation(line: 209, column: 22, scope: !1228)
!1234 = !DILocation(line: 209, column: 39, scope: !1228)
!1235 = !DILocation(line: 209, column: 38, scope: !1228)
!1236 = !DILocation(line: 209, column: 37, scope: !1228)
!1237 = !DILocation(line: 209, column: 10, scope: !1228)
!1238 = !DILocation(line: 209, column: 3, scope: !1228)
!1239 = distinct !DISubprogram(name: "toupper", scope: !1229, file: !1229, line: 213, type: !1174, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1240)
!1240 = !{!1241}
!1241 = !DILocalVariable(name: "__c", arg: 1, scope: !1239, file: !1229, line: 213, type: !104)
!1242 = !DILocation(line: 0, scope: !1239)
!1243 = !DILocation(line: 215, column: 22, scope: !1239)
!1244 = !DILocation(line: 215, column: 39, scope: !1239)
!1245 = !DILocation(line: 215, column: 38, scope: !1239)
!1246 = !DILocation(line: 215, column: 37, scope: !1239)
!1247 = !DILocation(line: 215, column: 10, scope: !1239)
!1248 = !DILocation(line: 215, column: 3, scope: !1239)
!1249 = distinct !DISubprogram(name: "atoi", scope: !1250, file: !1250, line: 361, type: !1251, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1253)
!1250 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!104, !6}
!1253 = !{!1254}
!1254 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1249, file: !1250, line: 361, type: !6)
!1255 = !DILocation(line: 0, scope: !1249)
!1256 = !DILocation(line: 363, column: 16, scope: !1249)
!1257 = !DILocation(line: 363, column: 10, scope: !1249)
!1258 = !DILocation(line: 363, column: 3, scope: !1249)
!1259 = distinct !DISubprogram(name: "atol", scope: !1250, file: !1250, line: 366, type: !1260, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!67, !6}
!1262 = !{!1263}
!1263 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1259, file: !1250, line: 366, type: !6)
!1264 = !DILocation(line: 0, scope: !1259)
!1265 = !DILocation(line: 368, column: 10, scope: !1259)
!1266 = !DILocation(line: 368, column: 3, scope: !1259)
!1267 = distinct !DISubprogram(name: "atoll", scope: !1250, file: !1250, line: 373, type: !1268, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1271)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1270, !6}
!1270 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1271 = !{!1272}
!1272 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1267, file: !1250, line: 373, type: !6)
!1273 = !DILocation(line: 0, scope: !1267)
!1274 = !DILocation(line: 375, column: 10, scope: !1267)
!1275 = !DILocation(line: 375, column: 3, scope: !1267)
!1276 = distinct !DISubprogram(name: "bsearch", scope: !1277, file: !1277, line: 20, type: !1278, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1286)
!1277 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!1047, !1280, !1280, !1063, !1063, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1250, line: 808, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!104, !1280, !1280}
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1287 = !DILocalVariable(name: "__key", arg: 1, scope: !1276, file: !1277, line: 20, type: !1280)
!1288 = !DILocalVariable(name: "__base", arg: 2, scope: !1276, file: !1277, line: 20, type: !1280)
!1289 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1276, file: !1277, line: 20, type: !1063)
!1290 = !DILocalVariable(name: "__size", arg: 4, scope: !1276, file: !1277, line: 20, type: !1063)
!1291 = !DILocalVariable(name: "__compar", arg: 5, scope: !1276, file: !1277, line: 21, type: !1282)
!1292 = !DILocalVariable(name: "__l", scope: !1276, file: !1277, line: 23, type: !1063)
!1293 = !DILocalVariable(name: "__u", scope: !1276, file: !1277, line: 23, type: !1063)
!1294 = !DILocalVariable(name: "__idx", scope: !1276, file: !1277, line: 23, type: !1063)
!1295 = !DILocalVariable(name: "__p", scope: !1276, file: !1277, line: 24, type: !1280)
!1296 = !DILocalVariable(name: "__comparison", scope: !1276, file: !1277, line: 25, type: !104)
!1297 = !DILocation(line: 0, scope: !1276)
!1298 = !DILocation(line: 29, column: 3, scope: !1276)
!1299 = !DILocation(line: 27, column: 7, scope: !1276)
!1300 = !DILocation(line: 29, column: 14, scope: !1276)
!1301 = !DILocation(line: 31, column: 20, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1276, file: !1277, line: 30, column: 5)
!1303 = !DILocation(line: 31, column: 27, scope: !1302)
!1304 = !DILocation(line: 32, column: 56, scope: !1302)
!1305 = !DILocation(line: 32, column: 47, scope: !1302)
!1306 = !DILocation(line: 33, column: 22, scope: !1302)
!1307 = !DILocation(line: 34, column: 24, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1302, file: !1277, line: 34, column: 11)
!1309 = !DILocation(line: 34, column: 11, scope: !1302)
!1310 = !DILocation(line: 36, column: 29, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !1277, line: 36, column: 16)
!1312 = !DILocation(line: 36, column: 16, scope: !1308)
!1313 = !DILocation(line: 37, column: 14, scope: !1311)
!1314 = distinct !{!1314, !1298, !1315}
!1315 = !DILocation(line: 40, column: 5, scope: !1276)
!1316 = !DILocation(line: 43, column: 1, scope: !1276)
!1317 = distinct !DISubprogram(name: "atof", scope: !1318, file: !1318, line: 25, type: !1319, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1322)
!1318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!1321, !6}
!1321 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1322 = !{!1323}
!1323 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1317, file: !1318, line: 25, type: !6)
!1324 = !DILocation(line: 0, scope: !1317)
!1325 = !DILocation(line: 27, column: 10, scope: !1317)
!1326 = !DILocation(line: 27, column: 3, scope: !1317)
!1327 = distinct !DISubprogram(name: "strtoimax", scope: !1328, file: !1328, line: 324, type: !1329, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1335)
!1328 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1331, !1084, !1334, !104}
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1332, line: 101, baseType: !1333)
!1332 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1136, line: 72, baseType: !67)
!1334 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1045)
!1335 = !{!1336, !1337, !1338}
!1336 = !DILocalVariable(name: "nptr", arg: 1, scope: !1327, file: !1328, line: 324, type: !1084)
!1337 = !DILocalVariable(name: "endptr", arg: 2, scope: !1327, file: !1328, line: 324, type: !1334)
!1338 = !DILocalVariable(name: "base", arg: 3, scope: !1327, file: !1328, line: 324, type: !104)
!1339 = !DILocation(line: 0, scope: !1327)
!1340 = !DILocation(line: 327, column: 10, scope: !1327)
!1341 = !DILocation(line: 327, column: 3, scope: !1327)
!1342 = distinct !DISubprogram(name: "strtoumax", scope: !1328, file: !1328, line: 336, type: !1343, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1347)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1345, !1084, !1334, !104}
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1332, line: 102, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1136, line: 73, baseType: !65)
!1347 = !{!1348, !1349, !1350}
!1348 = !DILocalVariable(name: "nptr", arg: 1, scope: !1342, file: !1328, line: 336, type: !1084)
!1349 = !DILocalVariable(name: "endptr", arg: 2, scope: !1342, file: !1328, line: 336, type: !1334)
!1350 = !DILocalVariable(name: "base", arg: 3, scope: !1342, file: !1328, line: 336, type: !104)
!1351 = !DILocation(line: 0, scope: !1342)
!1352 = !DILocation(line: 339, column: 10, scope: !1342)
!1353 = !DILocation(line: 339, column: 3, scope: !1342)
!1354 = distinct !DISubprogram(name: "wcstoimax", scope: !1328, file: !1328, line: 348, type: !1355, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1364)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1331, !1357, !1361, !104}
!1357 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1328, line: 34, baseType: !104)
!1361 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1364 = !{!1365, !1366, !1367}
!1365 = !DILocalVariable(name: "nptr", arg: 1, scope: !1354, file: !1328, line: 348, type: !1357)
!1366 = !DILocalVariable(name: "endptr", arg: 2, scope: !1354, file: !1328, line: 348, type: !1361)
!1367 = !DILocalVariable(name: "base", arg: 3, scope: !1354, file: !1328, line: 348, type: !104)
!1368 = !DILocation(line: 0, scope: !1354)
!1369 = !DILocation(line: 351, column: 10, scope: !1354)
!1370 = !DILocation(line: 351, column: 3, scope: !1354)
!1371 = distinct !DISubprogram(name: "wcstoumax", scope: !1328, file: !1328, line: 362, type: !1372, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1345, !1357, !1361, !104}
!1374 = !{!1375, !1376, !1377}
!1375 = !DILocalVariable(name: "nptr", arg: 1, scope: !1371, file: !1328, line: 362, type: !1357)
!1376 = !DILocalVariable(name: "endptr", arg: 2, scope: !1371, file: !1328, line: 362, type: !1361)
!1377 = !DILocalVariable(name: "base", arg: 3, scope: !1371, file: !1328, line: 362, type: !104)
!1378 = !DILocation(line: 0, scope: !1371)
!1379 = !DILocation(line: 365, column: 10, scope: !1371)
!1380 = !DILocation(line: 365, column: 3, scope: !1371)
!1381 = distinct !DISubprogram(name: "stat", scope: !1382, file: !1382, line: 453, type: !1383, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1420)
!1382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!104, !6, !1385}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1387, line: 46, size: 1152, elements: !1388)
!1387 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1388 = !{!1389, !1391, !1393, !1395, !1397, !1399, !1401, !1402, !1403, !1404, !1406, !1408, !1416, !1417, !1418}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1386, file: !1387, line: 48, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1136, line: 145, baseType: !65)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1386, file: !1387, line: 53, baseType: !1392, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1136, line: 148, baseType: !65)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1386, file: !1387, line: 61, baseType: !1394, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1136, line: 151, baseType: !65)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1386, file: !1387, line: 62, baseType: !1396, size: 32, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1136, line: 150, baseType: !19)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1386, file: !1387, line: 64, baseType: !1398, size: 32, offset: 224)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1136, line: 146, baseType: !19)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1386, file: !1387, line: 65, baseType: !1400, size: 32, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1136, line: 147, baseType: !19)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1386, file: !1387, line: 67, baseType: !104, size: 32, offset: 288)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1386, file: !1387, line: 69, baseType: !1390, size: 64, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1386, file: !1387, line: 74, baseType: !1135, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1386, file: !1387, line: 78, baseType: !1405, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1136, line: 174, baseType: !67)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1386, file: !1387, line: 80, baseType: !1407, size: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1136, line: 179, baseType: !67)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1386, file: !1387, line: 91, baseType: !1409, size: 128, offset: 576)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1410, line: 10, size: 128, elements: !1411)
!1410 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1411 = !{!1412, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1409, file: !1410, line: 12, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1136, line: 160, baseType: !67)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1409, file: !1410, line: 16, baseType: !1415, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1136, line: 196, baseType: !67)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1386, file: !1387, line: 92, baseType: !1409, size: 128, offset: 704)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1386, file: !1387, line: 93, baseType: !1409, size: 128, offset: 832)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1386, file: !1387, line: 106, baseType: !1419, size: 192, offset: 960)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1415, size: 192, elements: !85)
!1420 = !{!1421, !1422}
!1421 = !DILocalVariable(name: "__path", arg: 1, scope: !1381, file: !1382, line: 453, type: !6)
!1422 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1381, file: !1382, line: 453, type: !1385)
!1423 = !DILocation(line: 0, scope: !1381)
!1424 = !DILocation(line: 455, column: 10, scope: !1381)
!1425 = !DILocation(line: 455, column: 3, scope: !1381)
!1426 = distinct !DISubprogram(name: "lstat", scope: !1382, file: !1382, line: 460, type: !1383, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1427)
!1427 = !{!1428, !1429}
!1428 = !DILocalVariable(name: "__path", arg: 1, scope: !1426, file: !1382, line: 460, type: !6)
!1429 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1426, file: !1382, line: 460, type: !1385)
!1430 = !DILocation(line: 0, scope: !1426)
!1431 = !DILocation(line: 462, column: 10, scope: !1426)
!1432 = !DILocation(line: 462, column: 3, scope: !1426)
!1433 = distinct !DISubprogram(name: "fstat", scope: !1382, file: !1382, line: 467, type: !1434, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!104, !104, !1385}
!1436 = !{!1437, !1438}
!1437 = !DILocalVariable(name: "__fd", arg: 1, scope: !1433, file: !1382, line: 467, type: !104)
!1438 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1433, file: !1382, line: 467, type: !1385)
!1439 = !DILocation(line: 0, scope: !1433)
!1440 = !DILocation(line: 469, column: 10, scope: !1433)
!1441 = !DILocation(line: 469, column: 3, scope: !1433)
!1442 = distinct !DISubprogram(name: "fstatat", scope: !1382, file: !1382, line: 474, type: !1443, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1445)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!104, !104, !6, !1385, !104}
!1445 = !{!1446, !1447, !1448, !1449}
!1446 = !DILocalVariable(name: "__fd", arg: 1, scope: !1442, file: !1382, line: 474, type: !104)
!1447 = !DILocalVariable(name: "__filename", arg: 2, scope: !1442, file: !1382, line: 474, type: !6)
!1448 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1442, file: !1382, line: 474, type: !1385)
!1449 = !DILocalVariable(name: "__flag", arg: 4, scope: !1442, file: !1382, line: 474, type: !104)
!1450 = !DILocation(line: 0, scope: !1442)
!1451 = !DILocation(line: 477, column: 10, scope: !1442)
!1452 = !DILocation(line: 477, column: 3, scope: !1442)
!1453 = distinct !DISubprogram(name: "mknod", scope: !1382, file: !1382, line: 483, type: !1454, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!104, !6, !1396, !1390}
!1456 = !{!1457, !1458, !1459}
!1457 = !DILocalVariable(name: "__path", arg: 1, scope: !1453, file: !1382, line: 483, type: !6)
!1458 = !DILocalVariable(name: "__mode", arg: 2, scope: !1453, file: !1382, line: 483, type: !1396)
!1459 = !DILocalVariable(name: "__dev", arg: 3, scope: !1453, file: !1382, line: 483, type: !1390)
!1460 = !DILocation(line: 0, scope: !1453)
!1461 = !DILocation(line: 485, column: 10, scope: !1453)
!1462 = !DILocation(line: 485, column: 3, scope: !1453)
!1463 = distinct !DISubprogram(name: "mknodat", scope: !1382, file: !1382, line: 491, type: !1464, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!104, !104, !6, !1396, !1390}
!1466 = !{!1467, !1468, !1469, !1470}
!1467 = !DILocalVariable(name: "__fd", arg: 1, scope: !1463, file: !1382, line: 491, type: !104)
!1468 = !DILocalVariable(name: "__path", arg: 2, scope: !1463, file: !1382, line: 491, type: !6)
!1469 = !DILocalVariable(name: "__mode", arg: 3, scope: !1463, file: !1382, line: 491, type: !1396)
!1470 = !DILocalVariable(name: "__dev", arg: 4, scope: !1463, file: !1382, line: 491, type: !1390)
!1471 = !DILocation(line: 0, scope: !1463)
!1472 = !DILocation(line: 494, column: 10, scope: !1463)
!1473 = !DILocation(line: 494, column: 3, scope: !1463)
!1474 = distinct !DISubprogram(name: "stat64", scope: !1382, file: !1382, line: 502, type: !1475, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1497)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!104, !6, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1387, line: 119, size: 1152, elements: !1479)
!1479 = !{!1480, !1481, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1493, !1494, !1495, !1496}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1478, file: !1387, line: 121, baseType: !1390, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1478, file: !1387, line: 123, baseType: !1482, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1136, line: 149, baseType: !65)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1478, file: !1387, line: 124, baseType: !1394, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1478, file: !1387, line: 125, baseType: !1396, size: 32, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1478, file: !1387, line: 132, baseType: !1398, size: 32, offset: 224)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1478, file: !1387, line: 133, baseType: !1400, size: 32, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1478, file: !1387, line: 135, baseType: !104, size: 32, offset: 288)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1478, file: !1387, line: 136, baseType: !1390, size: 64, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1478, file: !1387, line: 137, baseType: !1135, size: 64, offset: 384)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1478, file: !1387, line: 143, baseType: !1405, size: 64, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1478, file: !1387, line: 144, baseType: !1492, size: 64, offset: 512)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1136, line: 180, baseType: !67)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1478, file: !1387, line: 152, baseType: !1409, size: 128, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1478, file: !1387, line: 153, baseType: !1409, size: 128, offset: 704)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1478, file: !1387, line: 154, baseType: !1409, size: 128, offset: 832)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1478, file: !1387, line: 164, baseType: !1419, size: 192, offset: 960)
!1497 = !{!1498, !1499}
!1498 = !DILocalVariable(name: "__path", arg: 1, scope: !1474, file: !1382, line: 502, type: !6)
!1499 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1474, file: !1382, line: 502, type: !1477)
!1500 = !DILocation(line: 0, scope: !1474)
!1501 = !DILocation(line: 504, column: 10, scope: !1474)
!1502 = !DILocation(line: 504, column: 3, scope: !1474)
!1503 = distinct !DISubprogram(name: "lstat64", scope: !1382, file: !1382, line: 509, type: !1475, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1504)
!1504 = !{!1505, !1506}
!1505 = !DILocalVariable(name: "__path", arg: 1, scope: !1503, file: !1382, line: 509, type: !6)
!1506 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1503, file: !1382, line: 509, type: !1477)
!1507 = !DILocation(line: 0, scope: !1503)
!1508 = !DILocation(line: 511, column: 10, scope: !1503)
!1509 = !DILocation(line: 511, column: 3, scope: !1503)
!1510 = distinct !DISubprogram(name: "fstat64", scope: !1382, file: !1382, line: 516, type: !1511, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!104, !104, !1477}
!1513 = !{!1514, !1515}
!1514 = !DILocalVariable(name: "__fd", arg: 1, scope: !1510, file: !1382, line: 516, type: !104)
!1515 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1510, file: !1382, line: 516, type: !1477)
!1516 = !DILocation(line: 0, scope: !1510)
!1517 = !DILocation(line: 518, column: 10, scope: !1510)
!1518 = !DILocation(line: 518, column: 3, scope: !1510)
!1519 = distinct !DISubprogram(name: "fstatat64", scope: !1382, file: !1382, line: 523, type: !1520, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!104, !104, !6, !1477, !104}
!1522 = !{!1523, !1524, !1525, !1526}
!1523 = !DILocalVariable(name: "__fd", arg: 1, scope: !1519, file: !1382, line: 523, type: !104)
!1524 = !DILocalVariable(name: "__filename", arg: 2, scope: !1519, file: !1382, line: 523, type: !6)
!1525 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1519, file: !1382, line: 523, type: !1477)
!1526 = !DILocalVariable(name: "__flag", arg: 4, scope: !1519, file: !1382, line: 523, type: !104)
!1527 = !DILocation(line: 0, scope: !1519)
!1528 = !DILocation(line: 526, column: 10, scope: !1519)
!1529 = !DILocation(line: 526, column: 3, scope: !1519)
!1530 = distinct !DISubprogram(name: "c_cpp_builtins_optimize_pragma", scope: !3, file: !3, line: 492, type: !1531, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1537)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1533, !9, !9}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !1535, line: 31, baseType: !1536)
!1535 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !10, line: 91, flags: DIFlagFwdDecl)
!1537 = !{!1538, !1539, !1540, !1541, !1543, !1544, !1545}
!1538 = !DILocalVariable(name: "pfile", arg: 1, scope: !1530, file: !3, line: 492, type: !1533)
!1539 = !DILocalVariable(name: "prev_tree", arg: 2, scope: !1530, file: !3, line: 492, type: !9)
!1540 = !DILocalVariable(name: "cur_tree", arg: 3, scope: !1530, file: !3, line: 493, type: !9)
!1541 = !DILocalVariable(name: "prev", scope: !1530, file: !3, line: 495, type: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!1543 = !DILocalVariable(name: "cur", scope: !1530, file: !3, line: 496, type: !1542)
!1544 = !DILocalVariable(name: "prev_fast_math", scope: !1530, file: !3, line: 497, type: !126)
!1545 = !DILocalVariable(name: "cur_fast_math", scope: !1530, file: !3, line: 498, type: !126)
!1546 = !DILocation(line: 0, scope: !1530)
!1547 = !DILocation(line: 495, column: 34, scope: !1530)
!1548 = !DILocation(line: 496, column: 34, scope: !1530)
!1549 = !DILocation(line: 501, column: 7, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 501, column: 7)
!1551 = !DILocation(line: 501, column: 7, scope: !1530)
!1552 = !DILocation(line: 506, column: 14, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 506, column: 7)
!1554 = !DILocation(line: 506, column: 8, scope: !1553)
!1555 = !DILocation(line: 506, column: 28, scope: !1553)
!1556 = !DILocation(line: 506, column: 36, scope: !1553)
!1557 = !DILocation(line: 506, column: 31, scope: !1553)
!1558 = !DILocation(line: 506, column: 7, scope: !1530)
!1559 = !DILocation(line: 507, column: 5, scope: !1553)
!1560 = !DILocation(line: 508, column: 32, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 508, column: 12)
!1562 = !DILocation(line: 508, column: 41, scope: !1561)
!1563 = !DILocation(line: 508, column: 36, scope: !1561)
!1564 = !DILocation(line: 508, column: 12, scope: !1553)
!1565 = !DILocation(line: 509, column: 5, scope: !1561)
!1566 = !DILocation(line: 511, column: 14, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 511, column: 7)
!1568 = !DILocation(line: 511, column: 8, scope: !1567)
!1569 = !DILocation(line: 511, column: 23, scope: !1567)
!1570 = !DILocation(line: 511, column: 31, scope: !1567)
!1571 = !DILocation(line: 511, column: 26, scope: !1567)
!1572 = !DILocation(line: 511, column: 7, scope: !1530)
!1573 = !DILocation(line: 512, column: 5, scope: !1567)
!1574 = !DILocation(line: 513, column: 27, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 513, column: 12)
!1576 = !DILocation(line: 513, column: 36, scope: !1575)
!1577 = !DILocation(line: 513, column: 31, scope: !1575)
!1578 = !DILocation(line: 513, column: 12, scope: !1567)
!1579 = !DILocation(line: 514, column: 5, scope: !1575)
!1580 = !DILocation(line: 516, column: 20, scope: !1530)
!1581 = !DILocation(line: 517, column: 20, scope: !1530)
!1582 = !DILocation(line: 518, column: 8, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 518, column: 7)
!1584 = !DILocation(line: 518, column: 26, scope: !1583)
!1585 = !DILocation(line: 518, column: 23, scope: !1583)
!1586 = !DILocation(line: 519, column: 5, scope: !1583)
!1587 = !DILocation(line: 520, column: 27, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 520, column: 12)
!1589 = !DILocation(line: 521, column: 5, scope: !1588)
!1590 = !DILocation(line: 523, column: 14, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 523, column: 7)
!1592 = !DILocation(line: 523, column: 8, scope: !1591)
!1593 = !DILocation(line: 523, column: 34, scope: !1591)
!1594 = !DILocation(line: 523, column: 42, scope: !1591)
!1595 = !DILocation(line: 523, column: 37, scope: !1591)
!1596 = !DILocation(line: 523, column: 7, scope: !1530)
!1597 = !DILocation(line: 524, column: 5, scope: !1591)
!1598 = !DILocation(line: 525, column: 38, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 525, column: 12)
!1600 = !DILocation(line: 525, column: 47, scope: !1599)
!1601 = !DILocation(line: 525, column: 42, scope: !1599)
!1602 = !DILocation(line: 525, column: 12, scope: !1591)
!1603 = !DILocation(line: 526, column: 5, scope: !1599)
!1604 = !DILocation(line: 528, column: 14, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 528, column: 7)
!1606 = !DILocation(line: 528, column: 8, scope: !1605)
!1607 = !DILocation(line: 528, column: 36, scope: !1605)
!1608 = !DILocation(line: 528, column: 44, scope: !1605)
!1609 = !DILocation(line: 528, column: 39, scope: !1605)
!1610 = !DILocation(line: 528, column: 7, scope: !1530)
!1611 = !DILocation(line: 530, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 529, column: 5)
!1613 = !DILocation(line: 531, column: 7, scope: !1612)
!1614 = !DILocation(line: 532, column: 5, scope: !1612)
!1615 = !DILocation(line: 533, column: 41, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 533, column: 12)
!1617 = !DILocation(line: 533, column: 49, scope: !1616)
!1618 = !DILocation(line: 533, column: 44, scope: !1616)
!1619 = !DILocation(line: 533, column: 12, scope: !1605)
!1620 = !DILocation(line: 535, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 534, column: 5)
!1622 = !DILocation(line: 536, column: 7, scope: !1621)
!1623 = !DILocation(line: 537, column: 5, scope: !1621)
!1624 = !DILocation(line: 538, column: 1, scope: !1530)
!1625 = distinct !DISubprogram(name: "c_cpp_builtins", scope: !3, file: !3, line: 543, type: !1626, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1628)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !1533}
!1628 = !{!1629}
!1629 = !DILocalVariable(name: "pfile", arg: 1, scope: !1625, file: !3, line: 543, type: !1533)
!1630 = !DILocation(line: 0, scope: !1625)
!1631 = !DILocation(line: 546, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 546, column: 7)
!1633 = !DILocation(line: 546, column: 7, scope: !1625)
!1634 = !DILocation(line: 549, column: 3, scope: !1625)
!1635 = !DILocation(line: 552, column: 3, scope: !1625)
!1636 = !DILocation(line: 554, column: 7, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 554, column: 7)
!1638 = !DILocation(line: 554, column: 7, scope: !1625)
!1639 = !DILocation(line: 556, column: 11, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 556, column: 11)
!1641 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 555, column: 5)
!1642 = !DILocation(line: 556, column: 11, scope: !1641)
!1643 = !DILocation(line: 557, column: 2, scope: !1640)
!1644 = !DILocation(line: 559, column: 2, scope: !1640)
!1645 = !DILocation(line: 560, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 560, column: 11)
!1647 = !DILocation(line: 560, column: 11, scope: !1641)
!1648 = !DILocation(line: 561, column: 2, scope: !1646)
!1649 = !DILocation(line: 562, column: 11, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 562, column: 11)
!1651 = !DILocation(line: 562, column: 11, scope: !1641)
!1652 = !DILocation(line: 563, column: 2, scope: !1650)
!1653 = !DILocation(line: 564, column: 11, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 564, column: 11)
!1655 = !DILocation(line: 564, column: 23, scope: !1654)
!1656 = !DILocation(line: 564, column: 11, scope: !1641)
!1657 = !DILocation(line: 565, column: 9, scope: !1654)
!1658 = !DILocation(line: 569, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 569, column: 7)
!1660 = !DILocation(line: 569, column: 7, scope: !1625)
!1661 = !DILocation(line: 570, column: 5, scope: !1659)
!1662 = !DILocation(line: 574, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 574, column: 7)
!1664 = !DILocation(line: 574, column: 24, scope: !1663)
!1665 = !DILocation(line: 574, column: 7, scope: !1625)
!1666 = !DILocation(line: 582, column: 5, scope: !1663)
!1667 = !DILocation(line: 583, column: 29, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 583, column: 12)
!1669 = !DILocation(line: 583, column: 12, scope: !1663)
!1670 = !DILocation(line: 586, column: 5, scope: !1668)
!1671 = !DILocation(line: 590, column: 13, scope: !1668)
!1672 = !DILocation(line: 590, column: 8, scope: !1668)
!1673 = !DILocation(line: 589, column: 5, scope: !1668)
!1674 = !DILocation(line: 597, column: 45, scope: !1625)
!1675 = !DILocation(line: 597, column: 3, scope: !1625)
!1676 = !DILocation(line: 598, column: 44, scope: !1625)
!1677 = !DILocation(line: 598, column: 3, scope: !1625)
!1678 = !DILocation(line: 599, column: 43, scope: !1625)
!1679 = !DILocation(line: 599, column: 3, scope: !1625)
!1680 = !DILocation(line: 600, column: 44, scope: !1625)
!1681 = !DILocation(line: 600, column: 3, scope: !1625)
!1682 = !DILocation(line: 601, column: 49, scope: !1625)
!1683 = !DILocation(line: 601, column: 3, scope: !1625)
!1684 = !DILocation(line: 603, column: 10, scope: !1625)
!1685 = !DILocation(line: 602, column: 3, scope: !1625)
!1686 = !DILocation(line: 604, column: 63, scope: !1625)
!1687 = !DILocation(line: 604, column: 3, scope: !1625)
!1688 = !DILocation(line: 605, column: 47, scope: !1625)
!1689 = !DILocation(line: 605, column: 3, scope: !1625)
!1690 = !DILocation(line: 606, column: 44, scope: !1625)
!1691 = !DILocation(line: 606, column: 3, scope: !1625)
!1692 = !DILocation(line: 608, column: 50, scope: !1625)
!1693 = !DILocation(line: 608, column: 3, scope: !1625)
!1694 = !DILocation(line: 611, column: 3, scope: !1625)
!1695 = !DILocation(line: 616, column: 6, scope: !1625)
!1696 = !DILocation(line: 615, column: 3, scope: !1625)
!1697 = !DILocation(line: 619, column: 3, scope: !1625)
!1698 = !DILocation(line: 622, column: 53, scope: !1625)
!1699 = !DILocation(line: 622, column: 3, scope: !1625)
!1700 = !DILocation(line: 627, column: 63, scope: !1625)
!1701 = !DILocation(line: 627, column: 3, scope: !1625)
!1702 = !DILocation(line: 628, column: 54, scope: !1625)
!1703 = !DILocation(line: 628, column: 3, scope: !1625)
!1704 = !DILocation(line: 631, column: 58, scope: !1625)
!1705 = !DILocation(line: 631, column: 3, scope: !1625)
!1706 = !DILocation(line: 632, column: 58, scope: !1625)
!1707 = !DILocation(line: 632, column: 3, scope: !1625)
!1708 = !DILocation(line: 633, column: 59, scope: !1625)
!1709 = !DILocation(line: 633, column: 3, scope: !1625)
!1710 = !DILocation(line: 636, column: 15, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 636, column: 7)
!1712 = !DILocation(line: 636, column: 7, scope: !1711)
!1713 = !DILocation(line: 636, column: 7, scope: !1625)
!1714 = !DILocation(line: 639, column: 10, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 637, column: 5)
!1716 = !DILocation(line: 638, column: 7, scope: !1715)
!1717 = !DILocation(line: 641, column: 10, scope: !1715)
!1718 = !DILocation(line: 640, column: 7, scope: !1715)
!1719 = !DILocation(line: 643, column: 10, scope: !1715)
!1720 = !DILocation(line: 642, column: 7, scope: !1715)
!1721 = !DILocation(line: 645, column: 10, scope: !1715)
!1722 = !DILocation(line: 644, column: 7, scope: !1715)
!1723 = !DILocation(line: 647, column: 10, scope: !1715)
!1724 = !DILocation(line: 646, column: 7, scope: !1715)
!1725 = !DILocation(line: 649, column: 10, scope: !1715)
!1726 = !DILocation(line: 648, column: 7, scope: !1715)
!1727 = !DILocation(line: 651, column: 10, scope: !1715)
!1728 = !DILocation(line: 650, column: 7, scope: !1715)
!1729 = !DILocation(line: 653, column: 10, scope: !1715)
!1730 = !DILocation(line: 652, column: 7, scope: !1715)
!1731 = !DILocation(line: 655, column: 10, scope: !1715)
!1732 = !DILocation(line: 654, column: 7, scope: !1715)
!1733 = !DILocation(line: 657, column: 10, scope: !1715)
!1734 = !DILocation(line: 656, column: 7, scope: !1715)
!1735 = !DILocation(line: 659, column: 10, scope: !1715)
!1736 = !DILocation(line: 658, column: 7, scope: !1715)
!1737 = !DILocation(line: 661, column: 10, scope: !1715)
!1738 = !DILocation(line: 660, column: 7, scope: !1715)
!1739 = !DILocation(line: 663, column: 10, scope: !1715)
!1740 = !DILocation(line: 662, column: 7, scope: !1715)
!1741 = !DILocation(line: 665, column: 10, scope: !1715)
!1742 = !DILocation(line: 664, column: 7, scope: !1715)
!1743 = !DILocation(line: 667, column: 10, scope: !1715)
!1744 = !DILocation(line: 666, column: 7, scope: !1715)
!1745 = !DILocation(line: 669, column: 10, scope: !1715)
!1746 = !DILocation(line: 668, column: 7, scope: !1715)
!1747 = !DILocation(line: 671, column: 55, scope: !1715)
!1748 = !DILocation(line: 671, column: 7, scope: !1715)
!1749 = !DILocation(line: 672, column: 55, scope: !1715)
!1750 = !DILocation(line: 672, column: 7, scope: !1715)
!1751 = !DILocation(line: 673, column: 55, scope: !1715)
!1752 = !DILocation(line: 673, column: 7, scope: !1715)
!1753 = !DILocation(line: 674, column: 55, scope: !1715)
!1754 = !DILocation(line: 674, column: 7, scope: !1715)
!1755 = !DILocation(line: 675, column: 55, scope: !1715)
!1756 = !DILocation(line: 675, column: 7, scope: !1715)
!1757 = !DILocation(line: 676, column: 56, scope: !1715)
!1758 = !DILocation(line: 676, column: 7, scope: !1715)
!1759 = !DILocation(line: 677, column: 56, scope: !1715)
!1760 = !DILocation(line: 677, column: 7, scope: !1715)
!1761 = !DILocation(line: 678, column: 56, scope: !1715)
!1762 = !DILocation(line: 678, column: 7, scope: !1715)
!1763 = !DILocation(line: 679, column: 56, scope: !1715)
!1764 = !DILocation(line: 679, column: 7, scope: !1715)
!1765 = !DILocation(line: 680, column: 56, scope: !1715)
!1766 = !DILocation(line: 680, column: 7, scope: !1715)
!1767 = !DILocation(line: 681, column: 55, scope: !1715)
!1768 = !DILocation(line: 681, column: 7, scope: !1715)
!1769 = !DILocation(line: 682, column: 55, scope: !1715)
!1770 = !DILocation(line: 682, column: 7, scope: !1715)
!1771 = !DILocation(line: 683, column: 55, scope: !1715)
!1772 = !DILocation(line: 683, column: 7, scope: !1715)
!1773 = !DILocation(line: 684, column: 55, scope: !1715)
!1774 = !DILocation(line: 684, column: 7, scope: !1715)
!1775 = !DILocation(line: 685, column: 56, scope: !1715)
!1776 = !DILocation(line: 685, column: 7, scope: !1715)
!1777 = !DILocation(line: 686, column: 56, scope: !1715)
!1778 = !DILocation(line: 686, column: 7, scope: !1715)
!1779 = !DILocation(line: 687, column: 56, scope: !1715)
!1780 = !DILocation(line: 687, column: 7, scope: !1715)
!1781 = !DILocation(line: 688, column: 56, scope: !1715)
!1782 = !DILocation(line: 688, column: 7, scope: !1715)
!1783 = !DILocation(line: 689, column: 5, scope: !1715)
!1784 = !DILocation(line: 692, column: 3, scope: !1625)
!1785 = !DILocation(line: 693, column: 55, scope: !1625)
!1786 = !DILocation(line: 693, column: 3, scope: !1625)
!1787 = !DILocation(line: 696, column: 3, scope: !1625)
!1788 = !DILocation(line: 698, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 698, column: 7)
!1790 = !DILocation(line: 698, column: 7, scope: !1625)
!1791 = !DILocation(line: 699, column: 5, scope: !1789)
!1792 = !DILocation(line: 701, column: 5, scope: !1789)
!1793 = !DILocation(line: 714, column: 7, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 714, column: 7)
!1795 = !DILocation(line: 714, column: 7, scope: !1625)
!1796 = !DILocation(line: 715, column: 5, scope: !1794)
!1797 = !DILocation(line: 716, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 716, column: 7)
!1799 = !DILocation(line: 716, column: 7, scope: !1625)
!1800 = !DILocation(line: 717, column: 5, scope: !1798)
!1801 = !DILocation(line: 719, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 719, column: 7)
!1803 = !DILocation(line: 719, column: 7, scope: !1625)
!1804 = !DILocation(line: 720, column: 5, scope: !1802)
!1805 = !DILocation(line: 721, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 721, column: 7)
!1807 = !DILocation(line: 721, column: 7, scope: !1625)
!1808 = !DILocation(line: 722, column: 5, scope: !1806)
!1809 = !DILocation(line: 723, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 723, column: 7)
!1811 = !DILocation(line: 723, column: 7, scope: !1625)
!1812 = !DILocation(line: 724, column: 5, scope: !1810)
!1813 = !DILocation(line: 725, column: 7, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 725, column: 7)
!1815 = !DILocation(line: 725, column: 7, scope: !1625)
!1816 = !DILocation(line: 726, column: 5, scope: !1814)
!1817 = !DILocation(line: 728, column: 5, scope: !1814)
!1818 = !DILocation(line: 729, column: 7, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 729, column: 7)
!1820 = !DILocation(line: 729, column: 7, scope: !1625)
!1821 = !DILocation(line: 731, column: 49, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 730, column: 5)
!1823 = !DILocation(line: 731, column: 7, scope: !1822)
!1824 = !DILocation(line: 732, column: 49, scope: !1822)
!1825 = !DILocation(line: 732, column: 7, scope: !1822)
!1826 = !DILocation(line: 733, column: 5, scope: !1822)
!1827 = !DILocation(line: 734, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 734, column: 7)
!1829 = !DILocation(line: 734, column: 7, scope: !1625)
!1830 = !DILocation(line: 736, column: 49, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 735, column: 5)
!1832 = !DILocation(line: 736, column: 7, scope: !1831)
!1833 = !DILocation(line: 737, column: 49, scope: !1831)
!1834 = !DILocation(line: 737, column: 7, scope: !1831)
!1835 = !DILocation(line: 738, column: 5, scope: !1831)
!1836 = !DILocation(line: 740, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 740, column: 7)
!1838 = !DILocation(line: 740, column: 7, scope: !1625)
!1839 = !DILocation(line: 741, column: 5, scope: !1837)
!1840 = !DILocation(line: 743, column: 8, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 743, column: 7)
!1842 = !DILocation(line: 743, column: 7, scope: !1625)
!1843 = !DILocation(line: 744, column: 5, scope: !1841)
!1844 = !DILocation(line: 746, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 746, column: 7)
!1846 = !DILocation(line: 746, column: 24, scope: !1845)
!1847 = !DILocation(line: 746, column: 27, scope: !1845)
!1848 = !DILocation(line: 746, column: 7, scope: !1625)
!1849 = !DILocation(line: 747, column: 5, scope: !1845)
!1850 = !DILocation(line: 752, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 752, column: 7)
!1852 = !DILocation(line: 752, column: 7, scope: !1625)
!1853 = !DILocation(line: 753, column: 5, scope: !1851)
!1854 = !DILocation(line: 757, column: 7, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 757, column: 7)
!1856 = !DILocation(line: 757, column: 7, scope: !1625)
!1857 = !DILocation(line: 758, column: 5, scope: !1855)
!1858 = !DILocation(line: 762, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 762, column: 7)
!1860 = !DILocation(line: 762, column: 7, scope: !1625)
!1861 = !DILocation(line: 763, column: 5, scope: !1859)
!1862 = !DILocation(line: 767, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 767, column: 7)
!1864 = !DILocation(line: 767, column: 7, scope: !1625)
!1865 = !DILocation(line: 768, column: 5, scope: !1863)
!1866 = !DILocation(line: 777, column: 7, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 777, column: 7)
!1868 = !DILocation(line: 777, column: 7, scope: !1625)
!1869 = !DILocation(line: 778, column: 5, scope: !1867)
!1870 = !DILocation(line: 782, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 782, column: 7)
!1872 = !DILocation(line: 782, column: 28, scope: !1871)
!1873 = !DILocation(line: 782, column: 25, scope: !1871)
!1874 = !DILocation(line: 783, column: 5, scope: !1871)
!1875 = !DILocation(line: 786, column: 3, scope: !1625)
!1876 = !DILocation(line: 788, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 788, column: 7)
!1878 = !DILocation(line: 788, column: 7, scope: !1877)
!1879 = !DILocation(line: 788, column: 7, scope: !1625)
!1880 = !DILocation(line: 789, column: 5, scope: !1877)
!1881 = !DILocation(line: 794, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 794, column: 7)
!1883 = !DILocation(line: 794, column: 26, scope: !1882)
!1884 = !DILocation(line: 794, column: 7, scope: !1625)
!1885 = !DILocation(line: 795, column: 5, scope: !1882)
!1886 = !DILocation(line: 796, column: 31, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 796, column: 12)
!1888 = !DILocation(line: 796, column: 12, scope: !1882)
!1889 = !DILocation(line: 797, column: 5, scope: !1887)
!1890 = !DILocation(line: 799, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 799, column: 7)
!1892 = !DILocation(line: 799, column: 7, scope: !1625)
!1893 = !DILocation(line: 800, column: 5, scope: !1891)
!1894 = !DILocation(line: 802, column: 49, scope: !1625)
!1895 = !DILocation(line: 802, column: 3, scope: !1625)
!1896 = !DILocation(line: 803, column: 50, scope: !1625)
!1897 = !DILocation(line: 803, column: 3, scope: !1625)
!1898 = !DILocation(line: 805, column: 10, scope: !1625)
!1899 = !DILocation(line: 804, column: 3, scope: !1625)
!1900 = !DILocation(line: 806, column: 51, scope: !1625)
!1901 = !DILocation(line: 806, column: 3, scope: !1625)
!1902 = !DILocation(line: 807, column: 51, scope: !1625)
!1903 = !DILocation(line: 807, column: 3, scope: !1625)
!1904 = !DILocation(line: 808, column: 52, scope: !1625)
!1905 = !DILocation(line: 808, column: 3, scope: !1625)
!1906 = !DILocation(line: 809, column: 57, scope: !1625)
!1907 = !DILocation(line: 809, column: 3, scope: !1625)
!1908 = !DILocation(line: 810, column: 52, scope: !1625)
!1909 = !DILocation(line: 810, column: 3, scope: !1625)
!1910 = !DILocation(line: 811, column: 53, scope: !1625)
!1911 = !DILocation(line: 811, column: 3, scope: !1625)
!1912 = !DILocation(line: 812, column: 52, scope: !1625)
!1913 = !DILocation(line: 812, column: 3, scope: !1625)
!1914 = !DILocation(line: 814, column: 10, scope: !1625)
!1915 = !DILocation(line: 813, column: 3, scope: !1625)
!1916 = !DILocation(line: 817, column: 3, scope: !1625)
!1917 = !DILocation(line: 826, column: 3, scope: !1625)
!1918 = !DILocation(line: 827, column: 3, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 827, column: 3)
!1920 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 827, column: 3)
!1921 = !DILocation(line: 828, column: 3, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 828, column: 3)
!1923 = !DILocation(line: 843, column: 5, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 842, column: 7)
!1925 = !DILocation(line: 846, column: 6, scope: !1625)
!1926 = !DILocation(line: 846, column: 24, scope: !1625)
!1927 = !DILocation(line: 845, column: 3, scope: !1625)
!1928 = !DILocation(line: 847, column: 1, scope: !1625)
!1929 = distinct !DISubprogram(name: "define__GNUC__", scope: !3, file: !3, line: 383, type: !1930, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null}
!1932 = !{!1933, !1934, !1935}
!1933 = !DILocalVariable(name: "major", scope: !1929, file: !3, line: 385, type: !104)
!1934 = !DILocalVariable(name: "minor", scope: !1929, file: !3, line: 385, type: !104)
!1935 = !DILocalVariable(name: "patchlevel", scope: !1929, file: !3, line: 385, type: !104)
!1936 = !DILocation(line: 385, column: 3, scope: !1929)
!1937 = !DILocation(line: 0, scope: !1929)
!1938 = !DILocation(line: 387, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 387, column: 7)
!1940 = !DILocation(line: 387, column: 65, scope: !1939)
!1941 = !DILocation(line: 387, column: 7, scope: !1929)
!1942 = !DILocation(line: 389, column: 7, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 388, column: 5)
!1944 = !DILocation(line: 390, column: 18, scope: !1943)
!1945 = !DILocation(line: 391, column: 5, scope: !1943)
!1946 = !DILocation(line: 392, column: 25, scope: !1929)
!1947 = !DILocation(line: 392, column: 50, scope: !1929)
!1948 = !DILocation(line: 392, column: 3, scope: !1929)
!1949 = !DILocation(line: 393, column: 25, scope: !1929)
!1950 = !DILocation(line: 393, column: 56, scope: !1929)
!1951 = !DILocation(line: 393, column: 3, scope: !1929)
!1952 = !DILocation(line: 394, column: 25, scope: !1929)
!1953 = !DILocation(line: 394, column: 61, scope: !1929)
!1954 = !DILocation(line: 394, column: 3, scope: !1929)
!1955 = !DILocation(line: 396, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 396, column: 7)
!1957 = !DILocation(line: 396, column: 7, scope: !1929)
!1958 = !DILocation(line: 397, column: 27, scope: !1956)
!1959 = !DILocation(line: 397, column: 52, scope: !1956)
!1960 = !DILocation(line: 397, column: 5, scope: !1956)
!1961 = !DILocation(line: 398, column: 1, scope: !1929)
!1962 = distinct !DISubprogram(name: "builtin_define_with_int_value", scope: !3, file: !3, line: 920, type: !1963, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !6, !67}
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971}
!1966 = !DILocalVariable(name: "macro", arg: 1, scope: !1962, file: !3, line: 920, type: !6)
!1967 = !DILocalVariable(name: "value", arg: 2, scope: !1962, file: !3, line: 920, type: !67)
!1968 = !DILocalVariable(name: "buf", scope: !1962, file: !3, line: 922, type: !1046)
!1969 = !DILocalVariable(name: "mlen", scope: !1962, file: !3, line: 923, type: !1063)
!1970 = !DILocalVariable(name: "vlen", scope: !1962, file: !3, line: 924, type: !1063)
!1971 = !DILocalVariable(name: "extra", scope: !1962, file: !3, line: 925, type: !1063)
!1972 = !DILocation(line: 0, scope: !1962)
!1973 = !DILocation(line: 923, column: 17, scope: !1962)
!1974 = !DILocation(line: 927, column: 18, scope: !1962)
!1975 = !DILocation(line: 928, column: 3, scope: !1962)
!1976 = !DILocation(line: 929, column: 3, scope: !1962)
!1977 = !DILocation(line: 929, column: 13, scope: !1962)
!1978 = !DILocation(line: 930, column: 23, scope: !1962)
!1979 = !DILocation(line: 930, column: 3, scope: !1962)
!1980 = !DILocation(line: 932, column: 15, scope: !1962)
!1981 = !DILocation(line: 932, column: 3, scope: !1962)
!1982 = !DILocation(line: 933, column: 1, scope: !1962)
!1983 = distinct !DISubprogram(name: "builtin_define_type_max", scope: !3, file: !3, line: 1032, type: !1984, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !6, !9}
!1986 = !{!1987, !1988}
!1987 = !DILocalVariable(name: "macro", arg: 1, scope: !1983, file: !3, line: 1032, type: !6)
!1988 = !DILocalVariable(name: "type", arg: 2, scope: !1983, file: !3, line: 1032, type: !9)
!1989 = !DILocation(line: 0, scope: !1983)
!1990 = !DILocation(line: 1034, column: 3, scope: !1983)
!1991 = !DILocation(line: 1035, column: 1, scope: !1983)
!1992 = !DILocation(line: 0, scope: !1052)
!1993 = !DILocation(line: 1059, column: 11, scope: !1052)
!1994 = !DILocation(line: 1059, column: 3, scope: !1052)
!1995 = !DILocation(line: 1062, column: 23, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1060, column: 5)
!1997 = !DILocation(line: 1063, column: 23, scope: !1996)
!1998 = !DILocation(line: 1064, column: 23, scope: !1996)
!1999 = !DILocation(line: 1065, column: 24, scope: !1996)
!2000 = !DILocation(line: 1066, column: 17, scope: !1996)
!2001 = !DILocation(line: 1067, column: 5, scope: !1996)
!2002 = !DILocation(line: 1069, column: 24, scope: !1052)
!2003 = !DILocation(line: 1069, column: 22, scope: !1052)
!2004 = !DILocation(line: 1069, column: 11, scope: !1052)
!2005 = !DILocation(line: 1070, column: 12, scope: !1052)
!2006 = !DILocation(line: 1072, column: 18, scope: !1052)
!2007 = !DILocation(line: 1074, column: 3, scope: !1052)
!2008 = !DILocation(line: 1076, column: 15, scope: !1052)
!2009 = !DILocation(line: 1076, column: 3, scope: !1052)
!2010 = !DILocation(line: 1078, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1078, column: 7)
!2012 = !DILocation(line: 1078, column: 7, scope: !1052)
!2013 = !DILocation(line: 1080, column: 11, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 1080, column: 11)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 1079, column: 5)
!2016 = !DILocation(line: 0, scope: !2014)
!2017 = !DILocation(line: 1080, column: 11, scope: !2015)
!2018 = !DILocation(line: 1082, column: 19, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 1081, column: 2)
!2020 = !DILocation(line: 1083, column: 4, scope: !2019)
!2021 = !DILocation(line: 1084, column: 2, scope: !2019)
!2022 = !DILocation(line: 1087, column: 19, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 1086, column: 2)
!2024 = !DILocation(line: 1089, column: 4, scope: !2023)
!2025 = !DILocation(line: 1091, column: 19, scope: !2015)
!2026 = !DILocation(line: 1091, column: 7, scope: !2015)
!2027 = !DILocation(line: 1092, column: 5, scope: !2015)
!2028 = !DILocation(line: 1093, column: 1, scope: !1052)
!2029 = distinct !DISubprogram(name: "builtin_define_type_precision", scope: !3, file: !3, line: 72, type: !1984, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2030)
!2030 = !{!2031, !2032}
!2031 = !DILocalVariable(name: "name", arg: 1, scope: !2029, file: !3, line: 72, type: !6)
!2032 = !DILocalVariable(name: "type", arg: 2, scope: !2029, file: !3, line: 72, type: !9)
!2033 = !DILocation(line: 0, scope: !2029)
!2034 = !DILocation(line: 74, column: 40, scope: !2029)
!2035 = !DILocation(line: 74, column: 3, scope: !2029)
!2036 = !DILocation(line: 75, column: 1, scope: !2029)
!2037 = distinct !DISubprogram(name: "builtin_define_stdint_macros", scope: !3, file: !3, line: 402, type: !1930, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !1102)
!2038 = !DILocation(line: 404, column: 46, scope: !2037)
!2039 = !DILocation(line: 404, column: 3, scope: !2037)
!2040 = !DILocation(line: 405, column: 43, scope: !2037)
!2041 = !DILocation(line: 405, column: 3, scope: !2037)
!2042 = !DILocation(line: 406, column: 47, scope: !2037)
!2043 = !DILocation(line: 406, column: 3, scope: !2037)
!2044 = !DILocation(line: 407, column: 44, scope: !2037)
!2045 = !DILocation(line: 407, column: 3, scope: !2037)
!2046 = !DILocation(line: 408, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 408, column: 7)
!2048 = !DILocation(line: 408, column: 7, scope: !2037)
!2049 = !DILocation(line: 409, column: 5, scope: !2047)
!2050 = !DILocation(line: 411, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 411, column: 7)
!2052 = !DILocation(line: 411, column: 7, scope: !2037)
!2053 = !DILocation(line: 412, column: 5, scope: !2051)
!2054 = !DILocation(line: 413, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 413, column: 7)
!2056 = !DILocation(line: 413, column: 7, scope: !2037)
!2057 = !DILocation(line: 414, column: 5, scope: !2055)
!2058 = !DILocation(line: 415, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 415, column: 7)
!2060 = !DILocation(line: 415, column: 7, scope: !2037)
!2061 = !DILocation(line: 416, column: 5, scope: !2059)
!2062 = !DILocation(line: 417, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 417, column: 7)
!2064 = !DILocation(line: 417, column: 7, scope: !2037)
!2065 = !DILocation(line: 418, column: 5, scope: !2063)
!2066 = !DILocation(line: 419, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 419, column: 7)
!2068 = !DILocation(line: 419, column: 7, scope: !2037)
!2069 = !DILocation(line: 420, column: 5, scope: !2067)
!2070 = !DILocation(line: 421, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 421, column: 7)
!2072 = !DILocation(line: 421, column: 7, scope: !2037)
!2073 = !DILocation(line: 422, column: 5, scope: !2071)
!2074 = !DILocation(line: 423, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 423, column: 7)
!2076 = !DILocation(line: 423, column: 7, scope: !2037)
!2077 = !DILocation(line: 424, column: 5, scope: !2075)
!2078 = !DILocation(line: 425, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 425, column: 7)
!2080 = !DILocation(line: 425, column: 7, scope: !2037)
!2081 = !DILocation(line: 426, column: 5, scope: !2079)
!2082 = !DILocation(line: 427, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 427, column: 7)
!2084 = !DILocation(line: 427, column: 7, scope: !2037)
!2085 = !DILocation(line: 429, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 428, column: 5)
!2087 = !DILocation(line: 430, column: 45, scope: !2086)
!2088 = !DILocation(line: 430, column: 7, scope: !2086)
!2089 = !DILocation(line: 431, column: 5, scope: !2086)
!2090 = !DILocation(line: 432, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 432, column: 7)
!2092 = !DILocation(line: 432, column: 7, scope: !2037)
!2093 = !DILocation(line: 434, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 433, column: 5)
!2095 = !DILocation(line: 435, column: 46, scope: !2094)
!2096 = !DILocation(line: 435, column: 7, scope: !2094)
!2097 = !DILocation(line: 436, column: 5, scope: !2094)
!2098 = !DILocation(line: 437, column: 7, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 437, column: 7)
!2100 = !DILocation(line: 437, column: 7, scope: !2037)
!2101 = !DILocation(line: 439, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 438, column: 5)
!2103 = !DILocation(line: 440, column: 46, scope: !2102)
!2104 = !DILocation(line: 440, column: 7, scope: !2102)
!2105 = !DILocation(line: 441, column: 5, scope: !2102)
!2106 = !DILocation(line: 442, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 442, column: 7)
!2108 = !DILocation(line: 442, column: 7, scope: !2037)
!2109 = !DILocation(line: 444, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 443, column: 5)
!2111 = !DILocation(line: 445, column: 46, scope: !2110)
!2112 = !DILocation(line: 445, column: 7, scope: !2110)
!2113 = !DILocation(line: 446, column: 5, scope: !2110)
!2114 = !DILocation(line: 447, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 447, column: 7)
!2116 = !DILocation(line: 447, column: 7, scope: !2037)
!2117 = !DILocation(line: 449, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 448, column: 5)
!2119 = !DILocation(line: 450, column: 46, scope: !2118)
!2120 = !DILocation(line: 450, column: 7, scope: !2118)
!2121 = !DILocation(line: 451, column: 5, scope: !2118)
!2122 = !DILocation(line: 452, column: 7, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 452, column: 7)
!2124 = !DILocation(line: 452, column: 7, scope: !2037)
!2125 = !DILocation(line: 454, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 453, column: 5)
!2127 = !DILocation(line: 455, column: 47, scope: !2126)
!2128 = !DILocation(line: 455, column: 7, scope: !2126)
!2129 = !DILocation(line: 456, column: 5, scope: !2126)
!2130 = !DILocation(line: 457, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 457, column: 7)
!2132 = !DILocation(line: 457, column: 7, scope: !2037)
!2133 = !DILocation(line: 459, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 458, column: 5)
!2135 = !DILocation(line: 460, column: 47, scope: !2134)
!2136 = !DILocation(line: 460, column: 7, scope: !2134)
!2137 = !DILocation(line: 461, column: 5, scope: !2134)
!2138 = !DILocation(line: 462, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 462, column: 7)
!2140 = !DILocation(line: 462, column: 7, scope: !2037)
!2141 = !DILocation(line: 464, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 463, column: 5)
!2143 = !DILocation(line: 465, column: 47, scope: !2142)
!2144 = !DILocation(line: 465, column: 7, scope: !2142)
!2145 = !DILocation(line: 466, column: 5, scope: !2142)
!2146 = !DILocation(line: 467, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 467, column: 7)
!2148 = !DILocation(line: 467, column: 7, scope: !2037)
!2149 = !DILocation(line: 468, column: 5, scope: !2147)
!2150 = !DILocation(line: 469, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 469, column: 7)
!2152 = !DILocation(line: 469, column: 7, scope: !2037)
!2153 = !DILocation(line: 470, column: 5, scope: !2151)
!2154 = !DILocation(line: 471, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 471, column: 7)
!2156 = !DILocation(line: 471, column: 7, scope: !2037)
!2157 = !DILocation(line: 472, column: 5, scope: !2155)
!2158 = !DILocation(line: 473, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 473, column: 7)
!2160 = !DILocation(line: 473, column: 7, scope: !2037)
!2161 = !DILocation(line: 474, column: 5, scope: !2159)
!2162 = !DILocation(line: 475, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 475, column: 7)
!2164 = !DILocation(line: 475, column: 7, scope: !2037)
!2165 = !DILocation(line: 476, column: 5, scope: !2163)
!2166 = !DILocation(line: 477, column: 7, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 477, column: 7)
!2168 = !DILocation(line: 477, column: 7, scope: !2037)
!2169 = !DILocation(line: 478, column: 5, scope: !2167)
!2170 = !DILocation(line: 479, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 479, column: 7)
!2172 = !DILocation(line: 479, column: 7, scope: !2037)
!2173 = !DILocation(line: 480, column: 5, scope: !2171)
!2174 = !DILocation(line: 481, column: 7, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 481, column: 7)
!2176 = !DILocation(line: 481, column: 7, scope: !2037)
!2177 = !DILocation(line: 482, column: 5, scope: !2175)
!2178 = !DILocation(line: 483, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 483, column: 7)
!2180 = !DILocation(line: 483, column: 7, scope: !2037)
!2181 = !DILocation(line: 484, column: 5, scope: !2179)
!2182 = !DILocation(line: 485, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 485, column: 7)
!2184 = !DILocation(line: 485, column: 7, scope: !2037)
!2185 = !DILocation(line: 486, column: 5, scope: !2183)
!2186 = !DILocation(line: 487, column: 1, scope: !2037)
!2187 = distinct !DISubprogram(name: "builtin_define_float_constants", scope: !3, file: !3, line: 88, type: !2188, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !6, !6, !6, !9}
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2197, !2198, !2231, !2232, !2236, !2240, !2241, !2242, !2243, !2244}
!2191 = !DILocalVariable(name: "name_prefix", arg: 1, scope: !2187, file: !3, line: 88, type: !6)
!2192 = !DILocalVariable(name: "fp_suffix", arg: 2, scope: !2187, file: !3, line: 89, type: !6)
!2193 = !DILocalVariable(name: "fp_cast", arg: 3, scope: !2187, file: !3, line: 90, type: !6)
!2194 = !DILocalVariable(name: "type", arg: 4, scope: !2187, file: !3, line: 91, type: !9)
!2195 = !DILocalVariable(name: "log10_2", scope: !2187, file: !3, line: 101, type: !2196)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!2197 = !DILocalVariable(name: "log10_b", scope: !2187, file: !3, line: 102, type: !1321)
!2198 = !DILocalVariable(name: "fmt", scope: !2187, file: !3, line: 103, type: !2199)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2201)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_format", file: !75, line: 124, size: 448, elements: !2202)
!2202 = !{!2203, !2210, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !2201, file: !75, line: 127, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2199, !2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2201, file: !75, line: 129, baseType: !2211, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{null, !2199, !73, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2201, file: !75, line: 133, baseType: !104, size: 32, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2201, file: !75, line: 136, baseType: !104, size: 32, offset: 160)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pnan", scope: !2201, file: !75, line: 139, baseType: !104, size: 32, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !2201, file: !75, line: 142, baseType: !104, size: 32, offset: 224)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !2201, file: !75, line: 145, baseType: !104, size: 32, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_ro", scope: !2201, file: !75, line: 149, baseType: !104, size: 32, offset: 288)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "signbit_rw", scope: !2201, file: !75, line: 153, baseType: !104, size: 32, offset: 320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "round_towards_zero", scope: !2201, file: !75, line: 156, baseType: !126, size: 8, offset: 352)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "has_sign_dependent_rounding", scope: !2201, file: !75, line: 157, baseType: !126, size: 8, offset: 360)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "has_nans", scope: !2201, file: !75, line: 160, baseType: !126, size: 8, offset: 368)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "has_inf", scope: !2201, file: !75, line: 161, baseType: !126, size: 8, offset: 376)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "has_denorm", scope: !2201, file: !75, line: 162, baseType: !126, size: 8, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "has_signed_zero", scope: !2201, file: !75, line: 163, baseType: !126, size: 8, offset: 392)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "qnan_msb_set", scope: !2201, file: !75, line: 164, baseType: !126, size: 8, offset: 400)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_nan_lsbs_set", scope: !2201, file: !75, line: 165, baseType: !126, size: 8, offset: 408)
!2231 = !DILocalVariable(name: "ldfmt", scope: !2187, file: !3, line: 104, type: !2199)
!2232 = !DILocalVariable(name: "name", scope: !2187, file: !3, line: 106, type: !2233)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !2234)
!2234 = !{!2235}
!2235 = !DISubrange(count: 64)
!2236 = !DILocalVariable(name: "buf", scope: !2187, file: !3, line: 106, type: !2237)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !2238)
!2238 = !{!2239}
!2239 = !DISubrange(count: 128)
!2240 = !DILocalVariable(name: "dig", scope: !2187, file: !3, line: 107, type: !104)
!2241 = !DILocalVariable(name: "min_10_exp", scope: !2187, file: !3, line: 107, type: !104)
!2242 = !DILocalVariable(name: "max_10_exp", scope: !2187, file: !3, line: 107, type: !104)
!2243 = !DILocalVariable(name: "decimal_dig", scope: !2187, file: !3, line: 108, type: !104)
!2244 = !DILocalVariable(name: "d_decimal_dig", scope: !2245, file: !3, line: 196, type: !1321)
!2245 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 195, column: 3)
!2246 = !DILocation(line: 0, scope: !2187)
!2247 = !DILocation(line: 106, column: 3, scope: !2187)
!2248 = !DILocation(line: 106, column: 8, scope: !2187)
!2249 = !DILocation(line: 106, column: 18, scope: !2187)
!2250 = !DILocation(line: 110, column: 9, scope: !2187)
!2251 = !DILocation(line: 111, column: 3, scope: !2187)
!2252 = !DILocation(line: 112, column: 11, scope: !2187)
!2253 = !DILocation(line: 113, column: 3, scope: !2187)
!2254 = !DILocation(line: 116, column: 15, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 116, column: 7)
!2256 = !DILocation(line: 116, column: 12, scope: !2255)
!2257 = !DILocation(line: 116, column: 7, scope: !2187)
!2258 = !DILocation(line: 117, column: 58, scope: !2255)
!2259 = !DILocation(line: 117, column: 53, scope: !2255)
!2260 = !DILocation(line: 117, column: 5, scope: !2255)
!2261 = !DILocation(line: 121, column: 3, scope: !2187)
!2262 = !DILocation(line: 122, column: 45, scope: !2187)
!2263 = !DILocation(line: 122, column: 40, scope: !2187)
!2264 = !DILocation(line: 122, column: 3, scope: !2187)
!2265 = !DILocation(line: 131, column: 15, scope: !2187)
!2266 = !DILocation(line: 131, column: 17, scope: !2187)
!2267 = !DILocation(line: 131, column: 9, scope: !2187)
!2268 = !DILocation(line: 131, column: 22, scope: !2187)
!2269 = !DILocation(line: 132, column: 3, scope: !2187)
!2270 = !DILocation(line: 133, column: 40, scope: !2187)
!2271 = !DILocation(line: 133, column: 3, scope: !2187)
!2272 = !DILocation(line: 136, column: 3, scope: !2187)
!2273 = !DILocation(line: 137, column: 30, scope: !2187)
!2274 = !DILocation(line: 137, column: 3, scope: !2187)
!2275 = !DILocation(line: 138, column: 3, scope: !2187)
!2276 = !DILocation(line: 147, column: 22, scope: !2187)
!2277 = !DILocation(line: 147, column: 27, scope: !2187)
!2278 = !DILocation(line: 147, column: 16, scope: !2187)
!2279 = !DILocation(line: 147, column: 32, scope: !2187)
!2280 = !DILocation(line: 148, column: 3, scope: !2187)
!2281 = !DILocation(line: 149, column: 3, scope: !2187)
!2282 = !DILocation(line: 150, column: 3, scope: !2187)
!2283 = !DILocation(line: 153, column: 3, scope: !2187)
!2284 = !DILocation(line: 154, column: 45, scope: !2187)
!2285 = !DILocation(line: 154, column: 40, scope: !2187)
!2286 = !DILocation(line: 154, column: 3, scope: !2187)
!2287 = !DILocation(line: 182, column: 21, scope: !2187)
!2288 = !DILocation(line: 182, column: 16, scope: !2187)
!2289 = !DILocation(line: 182, column: 26, scope: !2187)
!2290 = !DILocation(line: 183, column: 3, scope: !2187)
!2291 = !DILocation(line: 184, column: 40, scope: !2187)
!2292 = !DILocation(line: 184, column: 3, scope: !2187)
!2293 = !DILocation(line: 197, column: 19, scope: !2245)
!2294 = !DILocation(line: 197, column: 30, scope: !2245)
!2295 = !DILocation(line: 197, column: 21, scope: !2245)
!2296 = !DILocation(line: 197, column: 14, scope: !2245)
!2297 = !DILocation(line: 197, column: 13, scope: !2245)
!2298 = !DILocation(line: 197, column: 53, scope: !2245)
!2299 = !DILocation(line: 197, column: 11, scope: !2245)
!2300 = !DILocation(line: 0, scope: !2245)
!2301 = !DILocation(line: 198, column: 19, scope: !2245)
!2302 = !DILocation(line: 199, column: 9, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 199, column: 9)
!2304 = !DILocation(line: 199, column: 21, scope: !2303)
!2305 = !DILocation(line: 199, column: 9, scope: !2245)
!2306 = !DILocation(line: 202, column: 15, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 202, column: 7)
!2308 = !DILocation(line: 202, column: 12, scope: !2307)
!2309 = !DILocation(line: 202, column: 7, scope: !2187)
!2310 = !DILocation(line: 203, column: 55, scope: !2307)
!2311 = !DILocation(line: 203, column: 5, scope: !2307)
!2312 = !DILocation(line: 208, column: 3, scope: !2187)
!2313 = !DILocation(line: 210, column: 3, scope: !2187)
!2314 = !DILocation(line: 211, column: 3, scope: !2187)
!2315 = !DILocation(line: 215, column: 3, scope: !2187)
!2316 = !DILocation(line: 216, column: 32, scope: !2187)
!2317 = !DILocation(line: 216, column: 37, scope: !2187)
!2318 = !DILocation(line: 216, column: 3, scope: !2187)
!2319 = !DILocation(line: 217, column: 3, scope: !2187)
!2320 = !DILocation(line: 221, column: 3, scope: !2187)
!2321 = !DILocation(line: 222, column: 12, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 222, column: 7)
!2323 = !DILocation(line: 222, column: 24, scope: !2322)
!2324 = !DILocation(line: 222, column: 17, scope: !2322)
!2325 = !DILocation(line: 222, column: 7, scope: !2187)
!2326 = !DILocation(line: 225, column: 36, scope: !2322)
!2327 = !DILocation(line: 225, column: 41, scope: !2322)
!2328 = !DILocation(line: 225, column: 7, scope: !2322)
!2329 = !DILocation(line: 227, column: 33, scope: !2322)
!2330 = !DILocation(line: 227, column: 7, scope: !2322)
!2331 = !DILocation(line: 228, column: 3, scope: !2187)
!2332 = !DILocation(line: 233, column: 3, scope: !2187)
!2333 = !DILocation(line: 234, column: 12, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 234, column: 7)
!2335 = !DILocation(line: 234, column: 7, scope: !2334)
!2336 = !DILocation(line: 234, column: 7, scope: !2187)
!2337 = !DILocation(line: 236, column: 36, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 235, column: 5)
!2339 = !DILocation(line: 236, column: 48, scope: !2338)
!2340 = !DILocation(line: 236, column: 41, scope: !2338)
!2341 = !DILocation(line: 236, column: 7, scope: !2338)
!2342 = !DILocation(line: 237, column: 7, scope: !2338)
!2343 = !DILocation(line: 239, column: 5, scope: !2338)
!2344 = !DILocation(line: 242, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 241, column: 5)
!2346 = !DILocation(line: 243, column: 7, scope: !2345)
!2347 = !DILocation(line: 246, column: 3, scope: !2187)
!2348 = !DILocation(line: 247, column: 41, scope: !2187)
!2349 = !DILocation(line: 247, column: 36, scope: !2187)
!2350 = !DILocation(line: 247, column: 3, scope: !2187)
!2351 = !DILocation(line: 250, column: 3, scope: !2187)
!2352 = !DILocation(line: 252, column: 6, scope: !2187)
!2353 = !DILocation(line: 251, column: 3, scope: !2187)
!2354 = !DILocation(line: 258, column: 3, scope: !2187)
!2355 = !DILocation(line: 259, column: 40, scope: !2187)
!2356 = !DILocation(line: 259, column: 3, scope: !2187)
!2357 = !DILocation(line: 260, column: 1, scope: !2187)
!2358 = distinct !DISubprogram(name: "builtin_define_decimal_float_constants", scope: !3, file: !3, line: 264, type: !1053, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2359)
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367}
!2360 = !DILocalVariable(name: "name_prefix", arg: 1, scope: !2358, file: !3, line: 264, type: !6)
!2361 = !DILocalVariable(name: "suffix", arg: 2, scope: !2358, file: !3, line: 265, type: !6)
!2362 = !DILocalVariable(name: "type", arg: 3, scope: !2358, file: !3, line: 266, type: !9)
!2363 = !DILocalVariable(name: "fmt", scope: !2358, file: !3, line: 268, type: !2199)
!2364 = !DILocalVariable(name: "name", scope: !2358, file: !3, line: 269, type: !2233)
!2365 = !DILocalVariable(name: "buf", scope: !2358, file: !3, line: 269, type: !2237)
!2366 = !DILocalVariable(name: "p", scope: !2358, file: !3, line: 269, type: !1046)
!2367 = !DILocalVariable(name: "digits", scope: !2358, file: !3, line: 270, type: !104)
!2368 = !DILocation(line: 0, scope: !2358)
!2369 = !DILocation(line: 269, column: 3, scope: !2358)
!2370 = !DILocation(line: 269, column: 8, scope: !2358)
!2371 = !DILocation(line: 269, column: 18, scope: !2358)
!2372 = !DILocation(line: 272, column: 9, scope: !2358)
!2373 = !DILocation(line: 275, column: 3, scope: !2358)
!2374 = !DILocation(line: 276, column: 45, scope: !2358)
!2375 = !DILocation(line: 276, column: 40, scope: !2358)
!2376 = !DILocation(line: 276, column: 3, scope: !2358)
!2377 = !DILocation(line: 279, column: 3, scope: !2358)
!2378 = !DILocation(line: 280, column: 30, scope: !2358)
!2379 = !DILocation(line: 280, column: 3, scope: !2358)
!2380 = !DILocation(line: 281, column: 3, scope: !2358)
!2381 = !DILocation(line: 284, column: 3, scope: !2358)
!2382 = !DILocation(line: 285, column: 45, scope: !2358)
!2383 = !DILocation(line: 285, column: 40, scope: !2358)
!2384 = !DILocation(line: 285, column: 3, scope: !2358)
!2385 = !DILocation(line: 288, column: 3, scope: !2358)
!2386 = !DILocation(line: 289, column: 32, scope: !2358)
!2387 = !DILocation(line: 289, column: 37, scope: !2358)
!2388 = !DILocation(line: 289, column: 3, scope: !2358)
!2389 = !DILocation(line: 290, column: 3, scope: !2358)
!2390 = !DILocation(line: 293, column: 3, scope: !2358)
!2391 = !DILocation(line: 295, column: 22, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 295, column: 3)
!2393 = !DILocation(line: 295, column: 8, scope: !2392)
!2394 = !DILocation(line: 0, scope: !2392)
!2395 = !DILocation(line: 295, column: 3, scope: !2392)
!2396 = !DILocation(line: 297, column: 9, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 296, column: 5)
!2398 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 295, column: 3)
!2399 = !DILocation(line: 297, column: 12, scope: !2397)
!2400 = !DILocation(line: 298, column: 26, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 298, column: 11)
!2402 = !DILocation(line: 298, column: 18, scope: !2401)
!2403 = !DILocation(line: 298, column: 11, scope: !2397)
!2404 = !DILocation(line: 299, column: 4, scope: !2401)
!2405 = !DILocation(line: 299, column: 7, scope: !2401)
!2406 = !DILocation(line: 299, column: 2, scope: !2401)
!2407 = !DILocation(line: 0, scope: !2397)
!2408 = !DILocation(line: 295, column: 39, scope: !2398)
!2409 = !DILocation(line: 295, column: 3, scope: !2398)
!2410 = distinct !{!2410, !2395, !2411}
!2411 = !DILocation(line: 300, column: 5, scope: !2392)
!2412 = !DILocation(line: 301, column: 6, scope: !2358)
!2413 = !DILocation(line: 304, column: 22, scope: !2358)
!2414 = !DILocation(line: 304, column: 24, scope: !2358)
!2415 = !DILocation(line: 304, column: 13, scope: !2358)
!2416 = !DILocation(line: 304, column: 44, scope: !2358)
!2417 = !DILocation(line: 304, column: 49, scope: !2358)
!2418 = !DILocation(line: 304, column: 3, scope: !2358)
!2419 = !DILocation(line: 305, column: 3, scope: !2358)
!2420 = !DILocation(line: 309, column: 3, scope: !2358)
!2421 = !DILocation(line: 310, column: 33, scope: !2358)
!2422 = !DILocation(line: 310, column: 35, scope: !2358)
!2423 = !DILocation(line: 310, column: 3, scope: !2358)
!2424 = !DILocation(line: 311, column: 3, scope: !2358)
!2425 = !DILocation(line: 314, column: 3, scope: !2358)
!2426 = !DILocation(line: 316, column: 22, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 316, column: 3)
!2428 = !DILocation(line: 316, column: 8, scope: !2427)
!2429 = !DILocation(line: 0, scope: !2427)
!2430 = !DILocation(line: 316, column: 32, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 316, column: 3)
!2432 = !DILocation(line: 316, column: 3, scope: !2427)
!2433 = !DILocation(line: 318, column: 9, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 317, column: 5)
!2435 = !DILocation(line: 318, column: 12, scope: !2434)
!2436 = !DILocation(line: 319, column: 26, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 319, column: 11)
!2438 = !DILocation(line: 319, column: 18, scope: !2437)
!2439 = !DILocation(line: 319, column: 11, scope: !2434)
!2440 = !DILocation(line: 320, column: 4, scope: !2437)
!2441 = !DILocation(line: 320, column: 7, scope: !2437)
!2442 = !DILocation(line: 320, column: 2, scope: !2437)
!2443 = !DILocation(line: 0, scope: !2434)
!2444 = !DILocation(line: 316, column: 43, scope: !2431)
!2445 = !DILocation(line: 316, column: 3, scope: !2431)
!2446 = distinct !{!2446, !2432, !2447}
!2447 = !DILocation(line: 321, column: 5, scope: !2427)
!2448 = !DILocation(line: 322, column: 6, scope: !2358)
!2449 = !DILocation(line: 323, column: 22, scope: !2358)
!2450 = !DILocation(line: 323, column: 13, scope: !2358)
!2451 = !DILocation(line: 323, column: 41, scope: !2358)
!2452 = !DILocation(line: 323, column: 46, scope: !2358)
!2453 = !DILocation(line: 323, column: 3, scope: !2358)
!2454 = !DILocation(line: 324, column: 3, scope: !2358)
!2455 = !DILocation(line: 325, column: 1, scope: !2358)
!2456 = distinct !DISubprogram(name: "builtin_define_fixed_point_constants", scope: !3, file: !3, line: 330, type: !1053, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2466, !2467, !2468}
!2458 = !DILocalVariable(name: "name_prefix", arg: 1, scope: !2456, file: !3, line: 330, type: !6)
!2459 = !DILocalVariable(name: "suffix", arg: 2, scope: !2456, file: !3, line: 331, type: !6)
!2460 = !DILocalVariable(name: "type", arg: 3, scope: !2456, file: !3, line: 332, type: !9)
!2461 = !DILocalVariable(name: "name", scope: !2456, file: !3, line: 334, type: !2233)
!2462 = !DILocalVariable(name: "buf", scope: !2456, file: !3, line: 334, type: !2463)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !2464)
!2464 = !{!2465}
!2465 = !DISubrange(count: 256)
!2466 = !DILocalVariable(name: "new_buf", scope: !2456, file: !3, line: 334, type: !1046)
!2467 = !DILocalVariable(name: "i", scope: !2456, file: !3, line: 335, type: !104)
!2468 = !DILocalVariable(name: "mod", scope: !2456, file: !3, line: 335, type: !104)
!2469 = !DILocation(line: 0, scope: !2456)
!2470 = !DILocation(line: 334, column: 3, scope: !2456)
!2471 = !DILocation(line: 334, column: 8, scope: !2456)
!2472 = !DILocation(line: 334, column: 18, scope: !2456)
!2473 = !DILocation(line: 337, column: 3, scope: !2456)
!2474 = !DILocation(line: 338, column: 40, scope: !2456)
!2475 = !DILocation(line: 338, column: 3, scope: !2456)
!2476 = !DILocation(line: 340, column: 3, scope: !2456)
!2477 = !DILocation(line: 341, column: 40, scope: !2456)
!2478 = !DILocation(line: 341, column: 3, scope: !2456)
!2479 = !DILocation(line: 345, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 345, column: 7)
!2481 = !DILocation(line: 345, column: 27, scope: !2480)
!2482 = !DILocation(line: 345, column: 7, scope: !2456)
!2483 = !DILocation(line: 348, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 348, column: 7)
!2485 = !DILocation(line: 0, scope: !2484)
!2486 = !DILocation(line: 348, column: 7, scope: !2456)
!2487 = !DILocation(line: 351, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 349, column: 5)
!2489 = !DILocation(line: 352, column: 7, scope: !2488)
!2490 = !DILocation(line: 353, column: 5, scope: !2488)
!2491 = !DILocation(line: 357, column: 11, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 357, column: 11)
!2493 = distinct !DILexicalBlock(scope: !2484, file: !3, line: 355, column: 5)
!2494 = !DILocation(line: 357, column: 11, scope: !2493)
!2495 = !DILocation(line: 358, column: 40, scope: !2492)
!2496 = !DILocation(line: 359, column: 4, scope: !2492)
!2497 = !DILocation(line: 358, column: 57, scope: !2492)
!2498 = !DILocation(line: 359, column: 21, scope: !2492)
!2499 = !DILocation(line: 358, column: 2, scope: !2492)
!2500 = !DILocation(line: 361, column: 2, scope: !2492)
!2501 = !DILocation(line: 362, column: 7, scope: !2493)
!2502 = !DILocation(line: 365, column: 3, scope: !2456)
!2503 = !DILocation(line: 366, column: 3, scope: !2456)
!2504 = !DILocation(line: 367, column: 17, scope: !2456)
!2505 = !DILocation(line: 368, column: 10, scope: !2456)
!2506 = !DILocation(line: 368, column: 29, scope: !2456)
!2507 = !DILocation(line: 368, column: 27, scope: !2456)
!2508 = !DILocation(line: 368, column: 47, scope: !2456)
!2509 = !DILocation(line: 369, column: 7, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 369, column: 7)
!2511 = !DILocation(line: 369, column: 7, scope: !2456)
!2512 = !DILocation(line: 370, column: 21, scope: !2510)
!2513 = !DILocation(line: 370, column: 42, scope: !2510)
!2514 = !DILocation(line: 370, column: 5, scope: !2510)
!2515 = !DILocation(line: 0, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 371, column: 3)
!2517 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 371, column: 3)
!2518 = !DILocation(line: 371, column: 8, scope: !2517)
!2519 = !DILocation(line: 0, scope: !2517)
!2520 = !DILocation(line: 371, column: 20, scope: !2516)
!2521 = !DILocation(line: 371, column: 39, scope: !2516)
!2522 = !DILocation(line: 371, column: 37, scope: !2516)
!2523 = !DILocation(line: 371, column: 57, scope: !2516)
!2524 = !DILocation(line: 371, column: 17, scope: !2516)
!2525 = !DILocation(line: 371, column: 3, scope: !2517)
!2526 = !DILocation(line: 372, column: 21, scope: !2516)
!2527 = !DILocation(line: 372, column: 5, scope: !2516)
!2528 = !DILocation(line: 371, column: 63, scope: !2516)
!2529 = !DILocation(line: 371, column: 3, scope: !2516)
!2530 = distinct !{!2530, !2525, !2531}
!2531 = !DILocation(line: 372, column: 28, scope: !2517)
!2532 = !DILocation(line: 373, column: 31, scope: !2456)
!2533 = !DILocation(line: 373, column: 3, scope: !2456)
!2534 = !DILocation(line: 374, column: 3, scope: !2456)
!2535 = !DILocation(line: 376, column: 3, scope: !2456)
!2536 = !DILocation(line: 377, column: 30, scope: !2456)
!2537 = !DILocation(line: 377, column: 3, scope: !2456)
!2538 = !DILocation(line: 378, column: 3, scope: !2456)
!2539 = !DILocation(line: 379, column: 1, scope: !2456)
!2540 = distinct !DISubprogram(name: "builtin_define_with_value", scope: !3, file: !3, line: 898, type: !2541, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{null, !6, !6, !104}
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2544 = !DILocalVariable(name: "macro", arg: 1, scope: !2540, file: !3, line: 898, type: !6)
!2545 = !DILocalVariable(name: "expansion", arg: 2, scope: !2540, file: !3, line: 898, type: !6)
!2546 = !DILocalVariable(name: "is_str", arg: 3, scope: !2540, file: !3, line: 898, type: !104)
!2547 = !DILocalVariable(name: "buf", scope: !2540, file: !3, line: 900, type: !1046)
!2548 = !DILocalVariable(name: "mlen", scope: !2540, file: !3, line: 901, type: !1063)
!2549 = !DILocalVariable(name: "elen", scope: !2540, file: !3, line: 902, type: !1063)
!2550 = !DILocalVariable(name: "extra", scope: !2540, file: !3, line: 903, type: !1063)
!2551 = !DILocation(line: 0, scope: !2540)
!2552 = !DILocation(line: 901, column: 17, scope: !2540)
!2553 = !DILocation(line: 902, column: 17, scope: !2540)
!2554 = !DILocation(line: 905, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 905, column: 7)
!2556 = !DILocation(line: 905, column: 7, scope: !2540)
!2557 = !DILocation(line: 908, column: 18, scope: !2540)
!2558 = !DILocation(line: 909, column: 7, scope: !2540)
!2559 = !DILocation(line: 910, column: 5, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 909, column: 7)
!2561 = !DILocation(line: 912, column: 5, scope: !2560)
!2562 = !DILocation(line: 914, column: 15, scope: !2540)
!2563 = !DILocation(line: 914, column: 3, scope: !2540)
!2564 = !DILocation(line: 915, column: 1, scope: !2540)
!2565 = distinct !DISubprogram(name: "builtin_define_type_sizeof", scope: !3, file: !3, line: 79, type: !1984, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2566)
!2566 = !{!2567, !2568}
!2567 = !DILocalVariable(name: "name", arg: 1, scope: !2565, file: !3, line: 79, type: !6)
!2568 = !DILocalVariable(name: "type", arg: 2, scope: !2565, file: !3, line: 79, type: !9)
!2569 = !DILocation(line: 0, scope: !2565)
!2570 = !DILocation(line: 82, column: 20, scope: !2565)
!2571 = !DILocation(line: 82, column: 6, scope: !2565)
!2572 = !DILocation(line: 81, column: 3, scope: !2565)
!2573 = !DILocation(line: 83, column: 1, scope: !2565)
!2574 = distinct !DISubprogram(name: "builtin_define_std", scope: !3, file: !3, line: 859, type: !2575, scopeLine: 860, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !6}
!2577 = !{!2578, !2579, !2580, !2581, !2582}
!2578 = !DILocalVariable(name: "macro", arg: 1, scope: !2574, file: !3, line: 859, type: !6)
!2579 = !DILocalVariable(name: "len", scope: !2574, file: !3, line: 861, type: !1063)
!2580 = !DILocalVariable(name: "buff", scope: !2574, file: !3, line: 862, type: !1046)
!2581 = !DILocalVariable(name: "p", scope: !2574, file: !3, line: 863, type: !1046)
!2582 = !DILocalVariable(name: "q", scope: !2574, file: !3, line: 864, type: !1046)
!2583 = !DILocation(line: 0, scope: !2574)
!2584 = !DILocation(line: 861, column: 16, scope: !2574)
!2585 = !DILocation(line: 862, column: 25, scope: !2574)
!2586 = !DILocation(line: 864, column: 15, scope: !2574)
!2587 = !DILocation(line: 867, column: 25, scope: !2574)
!2588 = !DILocation(line: 867, column: 3, scope: !2574)
!2589 = !DILocation(line: 868, column: 10, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 868, column: 7)
!2591 = !DILocation(line: 868, column: 13, scope: !2590)
!2592 = !DILocation(line: 868, column: 20, scope: !2590)
!2593 = !DILocation(line: 868, column: 24, scope: !2590)
!2594 = !DILocation(line: 868, column: 29, scope: !2590)
!2595 = !DILocation(line: 868, column: 36, scope: !2590)
!2596 = !DILocation(line: 868, column: 39, scope: !2590)
!2597 = !DILocation(line: 868, column: 7, scope: !2574)
!2598 = !DILocation(line: 870, column: 11, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 869, column: 5)
!2600 = !DILocation(line: 871, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 870, column: 11)
!2602 = !DILocation(line: 871, column: 2, scope: !2601)
!2603 = !DILocation(line: 872, column: 11, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 872, column: 11)
!2605 = !DILocation(line: 872, column: 16, scope: !2604)
!2606 = !DILocation(line: 872, column: 11, scope: !2599)
!2607 = !DILocation(line: 873, column: 3, scope: !2604)
!2608 = !DILocation(line: 873, column: 7, scope: !2604)
!2609 = !DILocation(line: 873, column: 2, scope: !2604)
!2610 = !DILocation(line: 875, column: 15, scope: !2574)
!2611 = !DILocation(line: 875, column: 3, scope: !2574)
!2612 = !DILocation(line: 878, column: 9, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 878, column: 7)
!2614 = !DILocation(line: 878, column: 7, scope: !2574)
!2615 = !DILocation(line: 881, column: 11, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 881, column: 11)
!2617 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 879, column: 5)
!2618 = !DILocation(line: 881, column: 17, scope: !2616)
!2619 = !DILocation(line: 881, column: 11, scope: !2617)
!2620 = !DILocation(line: 882, column: 4, scope: !2616)
!2621 = !DILocation(line: 882, column: 7, scope: !2616)
!2622 = !DILocation(line: 882, column: 2, scope: !2616)
!2623 = !DILocation(line: 883, column: 11, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 883, column: 11)
!2625 = !DILocation(line: 883, column: 17, scope: !2624)
!2626 = !DILocation(line: 883, column: 11, scope: !2617)
!2627 = !DILocation(line: 884, column: 4, scope: !2624)
!2628 = !DILocation(line: 884, column: 7, scope: !2624)
!2629 = !DILocation(line: 884, column: 2, scope: !2624)
!2630 = !DILocation(line: 0, scope: !2617)
!2631 = !DILocation(line: 885, column: 10, scope: !2617)
!2632 = !DILocation(line: 886, column: 19, scope: !2617)
!2633 = !DILocation(line: 886, column: 7, scope: !2617)
!2634 = !DILocation(line: 889, column: 12, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 889, column: 11)
!2636 = !DILocation(line: 889, column: 11, scope: !2617)
!2637 = !DILocation(line: 890, column: 14, scope: !2635)
!2638 = !DILocation(line: 890, column: 2, scope: !2635)
!2639 = !DILocation(line: 892, column: 1, scope: !2574)
!2640 = distinct !DISubprogram(name: "builtin_define_constants", scope: !3, file: !3, line: 1008, type: !1984, scopeLine: 1009, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2641)
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DILocalVariable(name: "macro", arg: 1, scope: !2640, file: !3, line: 1008, type: !6)
!2643 = !DILocalVariable(name: "type", arg: 2, scope: !2640, file: !3, line: 1008, type: !9)
!2644 = !DILocalVariable(name: "suffix", scope: !2640, file: !3, line: 1010, type: !6)
!2645 = !DILocalVariable(name: "buf", scope: !2640, file: !3, line: 1011, type: !1046)
!2646 = !DILocation(line: 0, scope: !2640)
!2647 = !DILocation(line: 1013, column: 12, scope: !2640)
!2648 = !DILocation(line: 1015, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 1015, column: 7)
!2650 = !DILocation(line: 1015, column: 17, scope: !2649)
!2651 = !DILocation(line: 0, scope: !2649)
!2652 = !DILocation(line: 1015, column: 7, scope: !2640)
!2653 = !DILocation(line: 1017, column: 22, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1016, column: 5)
!2655 = !DILocation(line: 1018, column: 7, scope: !2654)
!2656 = !DILocation(line: 1019, column: 5, scope: !2654)
!2657 = !DILocation(line: 1022, column: 22, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1021, column: 5)
!2659 = !DILocation(line: 1023, column: 7, scope: !2658)
!2660 = !DILocation(line: 1026, column: 15, scope: !2640)
!2661 = !DILocation(line: 1026, column: 3, scope: !2640)
!2662 = !DILocation(line: 1027, column: 1, scope: !2640)
!2663 = !DILocation(line: 0, scope: !2)
!2664 = !DILocation(line: 980, column: 15, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2, file: !3, line: 980, column: 7)
!2666 = !DILocation(line: 980, column: 12, scope: !2665)
!2667 = !DILocation(line: 981, column: 18, scope: !2665)
!2668 = !DILocation(line: 981, column: 15, scope: !2665)
!2669 = !DILocation(line: 981, column: 7, scope: !2665)
!2670 = !DILocation(line: 983, column: 20, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 983, column: 12)
!2672 = !DILocation(line: 983, column: 17, scope: !2671)
!2673 = !DILocation(line: 984, column: 16, scope: !2671)
!2674 = !DILocation(line: 984, column: 13, scope: !2671)
!2675 = !DILocation(line: 984, column: 5, scope: !2671)
!2676 = !DILocation(line: 986, column: 20, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 986, column: 12)
!2678 = !DILocation(line: 986, column: 17, scope: !2677)
!2679 = !DILocation(line: 987, column: 16, scope: !2677)
!2680 = !DILocation(line: 987, column: 13, scope: !2677)
!2681 = !DILocation(line: 987, column: 5, scope: !2677)
!2682 = !DILocation(line: 988, column: 16, scope: !2677)
!2683 = !DILocation(line: 988, column: 13, scope: !2677)
!2684 = !DILocation(line: 989, column: 16, scope: !2677)
!2685 = !DILocation(line: 989, column: 13, scope: !2677)
!2686 = !DILocation(line: 990, column: 16, scope: !2677)
!2687 = !DILocation(line: 990, column: 13, scope: !2677)
!2688 = !DILocation(line: 991, column: 16, scope: !2677)
!2689 = !DILocation(line: 991, column: 13, scope: !2677)
!2690 = !DILocation(line: 995, column: 16, scope: !2677)
!2691 = !DILocation(line: 995, column: 13, scope: !2677)
!2692 = !DILocation(line: 998, column: 5, scope: !2677)
!2693 = !DILocation(line: 0, scope: !2665)
!2694 = !DILocation(line: 1000, column: 21, scope: !2)
!2695 = !DILocation(line: 1001, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1001, column: 7)
!2697 = !DILocation(line: 1001, column: 31, scope: !2696)
!2698 = !DILocation(line: 1001, column: 29, scope: !2696)
!2699 = !DILocation(line: 1001, column: 7, scope: !2)
!2700 = !DILocation(line: 1003, column: 31, scope: !2)
!2701 = !DILocation(line: 1003, column: 10, scope: !2)
!2702 = !DILocation(line: 1003, column: 3, scope: !2)
!2703 = distinct !DISubprogram(name: "builtin_define_with_hex_fp_value", scope: !3, file: !3, line: 937, type: !2704, scopeLine: 942, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !891, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !6, !9, !104, !6, !6, !6}
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716}
!2707 = !DILocalVariable(name: "macro", arg: 1, scope: !2703, file: !3, line: 937, type: !6)
!2708 = !DILocalVariable(name: "type", arg: 2, scope: !2703, file: !3, line: 938, type: !9)
!2709 = !DILocalVariable(name: "digits", arg: 3, scope: !2703, file: !3, line: 938, type: !104)
!2710 = !DILocalVariable(name: "hex_str", arg: 4, scope: !2703, file: !3, line: 939, type: !6)
!2711 = !DILocalVariable(name: "fp_suffix", arg: 5, scope: !2703, file: !3, line: 940, type: !6)
!2712 = !DILocalVariable(name: "fp_cast", arg: 6, scope: !2703, file: !3, line: 941, type: !6)
!2713 = !DILocalVariable(name: "real", scope: !2703, file: !3, line: 943, type: !74)
!2714 = !DILocalVariable(name: "dec_str", scope: !2703, file: !3, line: 944, type: !2233)
!2715 = !DILocalVariable(name: "buf1", scope: !2703, file: !3, line: 944, type: !2463)
!2716 = !DILocalVariable(name: "buf2", scope: !2703, file: !3, line: 944, type: !2463)
!2717 = !DILocation(line: 0, scope: !2703)
!2718 = !DILocation(line: 943, column: 3, scope: !2703)
!2719 = !DILocation(line: 944, column: 3, scope: !2703)
!2720 = !DILocation(line: 944, column: 8, scope: !2703)
!2721 = !DILocation(line: 944, column: 21, scope: !2703)
!2722 = !DILocation(line: 944, column: 32, scope: !2703)
!2723 = !DILocation(line: 956, column: 3, scope: !2703)
!2724 = !DILocation(line: 957, column: 63, scope: !2703)
!2725 = !DILocation(line: 958, column: 8, scope: !2703)
!2726 = !DILocation(line: 957, column: 3, scope: !2703)
!2727 = !DILocation(line: 962, column: 3, scope: !2703)
!2728 = !DILocation(line: 963, column: 3, scope: !2703)
!2729 = !DILocation(line: 964, column: 3, scope: !2703)
!2730 = !DILocation(line: 966, column: 15, scope: !2703)
!2731 = !DILocation(line: 966, column: 3, scope: !2703)
!2732 = !DILocation(line: 967, column: 1, scope: !2703)
