; ModuleID = 'i386-c.bc'
source_filename = "i386-c.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cpp_reader = type opaque
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, void ()*, i8 (i64, i8*, i32)*, void ()*, i32 ()*, i32 ()*, i32 ()*, i32 ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 ()*, i8 ()*, i8 ()*, i8 ()*, void ()*, %union.tree_node* (i32, i8)*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, %union.tree_node* (i32, %union.tree_node*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, i8)*, %union.tree_node* (i32, i8, i8)*, i8* (%union.tree_node*)*, void ()*, i32 (%union.tree_node*, i8*, i32)*, i8 ()*, i32 ()*, i8 (i8)*, i8 ()*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*)*, i8 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, i8 (i32, %struct.rtx_def*, i8)*, i8 (i32, %struct.rtx_def*)*, i64, i64, i8 (%struct.rtx_def*)*, i8 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*, i32)*, i8* (i8*)*, i64 (i32)*, i32 (i32)*, i32 (i32, i32)*, i8 (i32)*, %struct.addr_space, i8 (i32)*, i8 (i32)*, i8 (%struct.rtx_def*, i32, i32, i32*, i8)*, i32 (%struct.rtx_def*, i8)*, %struct.rtx_def* (%struct.rtx_def*)*, i32 (%struct.rtx_def*, i32)*, %struct.rtx_def* (%struct.rtx_def*)*, void (%union.tree_node*)*, i8 (i32*, i32*)*, i32 (i32, i32)*, void ()*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, %struct.rtx_def*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, i8* (i64*)*, i8* (i8*, i64)*, i8* (i32)*, i8 ()*, %struct.rtx_def* ()*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*)*, void (i8*, %struct.rtx_def*, i32)*, i8 (%struct.stdarg_info*, %union.gimple_statement_d*)*, %union.tree_node* ()*, %union.tree_node* ()*, i8* (%struct.rtx_def*)*, i8 (%union.tree_node*)*, i64, %struct.calls, i8* (%union.tree_node*, %union.tree_node*)*, i8* (i32, %union.tree_node*)*, i8* (i32, %union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*)*, i8* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i32* ()*, i32 (i8, %struct.rtx_def*, i32, i32, %struct.secondary_reload_info*)*, void ()*, void ()*, i8 (i32)*, i32 ()*, i8 ()*, i8 (i32, i32)*, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, void (%struct.bitmap_head_def*)*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i8 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i8*)*, void (%struct._IO_FILE*, %union.tree_node*)*, void (%struct._IO_FILE*, %union.tree_node*, i32, i32)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, %struct.rtx_def*)*, void (%struct._IO_FILE*, i8*, i64)*, i8 (%struct.rtx_def*)*, void (%union.tree_node*, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void ()*, void (i8*, i32, %union.tree_node*)*, i32 ()*, %union.section* (%union.tree_node*, i32, i64)*, %union.section* (i32, %struct.rtx_def*, i64)*, void (%union.tree_node*, i32)*, %union.section* (%union.tree_node*)*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i64, i64, %union.tree_node*)*, i8 (%union.tree_node*, i64, i64, %union.tree_node*)*, void ()*, void ()*, void ()*, void (%struct.rtx_def*)*, void (i8*)*, i32 (i32, i8*)*, i8*, void (%struct.rtx_def*)*, void (%struct._IO_FILE*, i32, %struct.rtx_def*)*, void (%struct._IO_FILE*, %struct.rtx_def*, %struct.rtx_def**, i32)*, void (%struct._IO_FILE*)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
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
%struct.function = type opaque
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@parse_in = external dso_local local_unnamed_addr global %struct.cpp_reader*, align 8
@.str = private unnamed_addr constant [9 x i8] c"cpu=i386\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"machine=i386\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@ix86_isa_flags = external dso_local local_unnamed_addr global i32, align 4
@ix86_arch = external dso_local local_unnamed_addr global i32, align 4
@ix86_tune = external dso_local local_unnamed_addr global i32, align 4
@ix86_fpmath = external dso_local local_unnamed_addr global i32, align 4
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@ix86_arch_string = external dso_local local_unnamed_addr global i8*, align 8
@ix86_tune_string = external dso_local local_unnamed_addr global i8*, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"__i486\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"__i486__\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"__i586\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"__i586__\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"__pentium\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"__pentium__\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"__pentium_mmx__\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"__i686\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"__i686__\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"__pentiumpro\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"__pentiumpro__\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"__geode\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"__geode__\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"__k6\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"__k6__\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"__k6_2__\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"__k6_3__\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"__athlon\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"__athlon__\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"__athlon_sse__\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"__k8\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"__k8__\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"__amdfam10\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"__amdfam10__\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"__pentium4\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"__pentium4__\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"__nocona\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"__nocona__\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"__core2\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"__core2__\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"__atom\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"__atom__\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"i386-c.c\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"__tune_i386__\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"__tune_i486__\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"__tune_i586__\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"__tune_pentium__\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"__tune_pentium_mmx__\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"__tune_i686__\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"__tune_pentiumpro__\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"__tune_pentium3__\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"__tune_pentium2__\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"__tune_geode__\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"__tune_k6__\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"__tune_k6_2__\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"__tune_k6_3__\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"__tune_athlon__\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"__tune_athlon_sse__\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"__tune_k8__\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"__tune_amdfam10__\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"__tune_pentium4__\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"__tune_nocona__\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"__tune_core2__\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"__tune_atom__\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"__MMX__\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"__3dNOW__\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"__3dNOW_A__\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"__SSE__\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"__SSE2__\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"__SSE3__\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"__SSSE3__\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"__SSE4_1__\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"__SSE4_2__\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"__AES__\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"__PCLMUL__\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"__AVX__\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"__FMA__\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"__SSE4A__\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"__FMA4__\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"__XOP__\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"__LWP__\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"__ABM__\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"__POPCNT__\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"__SSE_MATH__\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"__SSE2_MATH__\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !396 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !409, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !412
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !413
  ret i32 %call, !dbg !414
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !415 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !419
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !420
  ret i32 %call, !dbg !421
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !422 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !485, metadata !DIExpression()), !dbg !486
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !487
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !487
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !487
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !487
  %cmp = icmp uge i8* %0, %1, !dbg !487
  %conv1 = zext i1 %cmp to i64, !dbg !487
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !487
  %tobool = icmp eq i64 %expval, 0, !dbg !487
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !487

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !487
  br label %cond.end, !dbg !487

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !487
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !487
  %2 = load i8, i8* %0, align 1, !dbg !487
  %conv3 = zext i8 %2 to i32, !dbg !487
  br label %cond.end, !dbg !487

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !487
  ret i32 %cond, !dbg !488
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !489 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !491, metadata !DIExpression()), !dbg !492
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !493
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !493
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !493
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !493
  %cmp = icmp uge i8* %0, %1, !dbg !493
  %conv1 = zext i1 %cmp to i64, !dbg !493
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !493
  %tobool = icmp eq i64 %expval, 0, !dbg !493
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !493

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !493
  br label %cond.end, !dbg !493

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !493
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !493
  %2 = load i8, i8* %0, align 1, !dbg !493
  %conv3 = zext i8 %2 to i32, !dbg !493
  br label %cond.end, !dbg !493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !493
  ret i32 %cond, !dbg !494
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !495 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !496
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !496
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !496
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !496
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !496
  %cmp = icmp uge i8* %1, %2, !dbg !496
  %conv1 = zext i1 %cmp to i64, !dbg !496
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !496
  %tobool = icmp eq i64 %expval, 0, !dbg !496
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !496

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !496
  br label %cond.end, !dbg !496

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !496
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !496
  %3 = load i8, i8* %1, align 1, !dbg !496
  %conv3 = zext i8 %3 to i32, !dbg !496
  br label %cond.end, !dbg !496

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !496
  ret i32 %cond, !dbg !497
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !498 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !502, metadata !DIExpression()), !dbg !503
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !504
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !505
  ret i32 %call, !dbg !506
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !507 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !511, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !512, metadata !DIExpression()), !dbg !513
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !514
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !514
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !514
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !514
  %cmp = icmp uge i8* %0, %1, !dbg !514
  %conv1 = zext i1 %cmp to i64, !dbg !514
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !514
  %tobool = icmp eq i64 %expval, 0, !dbg !514
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !514

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !514
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !514
  br label %cond.end, !dbg !514

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !514
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !514
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !514
  store i8 %conv2, i8* %0, align 1, !dbg !514
  %conv6 = and i32 %__c, 255, !dbg !514
  br label %cond.end, !dbg !514

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !514
  ret i32 %cond, !dbg !515
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !518, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !519, metadata !DIExpression()), !dbg !520
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !521
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !521
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !521
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !521
  %cmp = icmp uge i8* %0, %1, !dbg !521
  %conv1 = zext i1 %cmp to i64, !dbg !521
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !521
  %tobool = icmp eq i64 %expval, 0, !dbg !521
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !521

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !521
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !521
  br label %cond.end, !dbg !521

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !521
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !521
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !521
  store i8 %conv2, i8* %0, align 1, !dbg !521
  %conv6 = and i32 %__c, 255, !dbg !521
  br label %cond.end, !dbg !521

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !521
  ret i32 %cond, !dbg !522
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !523 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !527
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !527
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !527
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !527
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !527
  %cmp = icmp uge i8* %1, %2, !dbg !527
  %conv1 = zext i1 %cmp to i64, !dbg !527
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !527
  %tobool = icmp eq i64 %expval, 0, !dbg !527
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !527

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !527
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !527
  br label %cond.end, !dbg !527

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !527
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !527
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !527
  store i8 %conv4, i8* %1, align 1, !dbg !527
  %conv6 = and i32 %__c, 255, !dbg !527
  br label %cond.end, !dbg !527

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !527
  ret i32 %cond, !dbg !528
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !529 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !535, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i64* %__n, metadata !536, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !537, metadata !DIExpression()), !dbg !538
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !539
  ret i64 %call, !dbg !540
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !541 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !543, metadata !DIExpression()), !dbg !544
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !545
  %0 = load i32, i32* %_flags, align 8, !dbg !545
  %and = lshr i32 %0, 4, !dbg !545
  %and.lobit = and i32 %and, 1, !dbg !545
  ret i32 %and.lobit, !dbg !546
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !547 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !549, metadata !DIExpression()), !dbg !550
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !551
  %0 = load i32, i32* %_flags, align 8, !dbg !551
  %and = lshr i32 %0, 5, !dbg !551
  %and.lobit = and i32 %and, 1, !dbg !551
  ret i32 %and.lobit, !dbg !552
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !553 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !556, metadata !DIExpression()), !dbg !557
  %__c.off = add i32 %__c, 128, !dbg !558
  %0 = icmp ult i32 %__c.off, 384, !dbg !558
  br i1 %0, label %cond.true, label %cond.end, !dbg !558

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !559
  %1 = load i32*, i32** %call, align 8, !dbg !560
  %idxprom = sext i32 %__c to i64, !dbg !561
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !561
  %2 = load i32, i32* %arrayidx, align 4, !dbg !561
  br label %cond.end, !dbg !562

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !562
  ret i32 %cond, !dbg !563
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !564 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !566, metadata !DIExpression()), !dbg !567
  %__c.off = add i32 %__c, 128, !dbg !568
  %0 = icmp ult i32 %__c.off, 384, !dbg !568
  br i1 %0, label %cond.true, label %cond.end, !dbg !568

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !569
  %1 = load i32*, i32** %call, align 8, !dbg !570
  %idxprom = sext i32 %__c to i64, !dbg !571
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !571
  %2 = load i32, i32* %arrayidx, align 4, !dbg !571
  br label %cond.end, !dbg !572

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !572
  ret i32 %cond, !dbg !573
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !574 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !579, metadata !DIExpression()), !dbg !580
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !581
  %conv = trunc i64 %call to i32, !dbg !582
  ret i32 %conv, !dbg !583
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !584 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !588, metadata !DIExpression()), !dbg !589
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !590
  ret i64 %call, !dbg !591
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !592 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !597, metadata !DIExpression()), !dbg !598
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !599
  ret i64 %call, !dbg !600
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !601 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !612, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i8* %__base, metadata !613, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !614, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %__size, metadata !615, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !616, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 0, metadata !617, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !618, metadata !DIExpression()), !dbg !622
  br label %while.cond, !dbg !623

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !624
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !622
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !618, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !617, metadata !DIExpression()), !dbg !622
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !625
  br i1 %cmp, label %while.body, label %cleanup, !dbg !623

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !626
  %div = lshr i64 %add, 1, !dbg !628
  call void @llvm.dbg.value(metadata i64 %div, metadata !619, metadata !DIExpression()), !dbg !622
  %mul = mul i64 %div, %__size, !dbg !629
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !630
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !620, metadata !DIExpression()), !dbg !622
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !631
  call void @llvm.dbg.value(metadata i32 %call, metadata !621, metadata !DIExpression()), !dbg !622
  %cmp1 = icmp slt i32 %call, 0, !dbg !632
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !634

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !635
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !637

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !638
  call void @llvm.dbg.value(metadata i64 %add4, metadata !617, metadata !DIExpression()), !dbg !622
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !622
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !622
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !618, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !617, metadata !DIExpression()), !dbg !622
  br label %while.cond, !dbg !623, !llvm.loop !639

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !622
  ret i8* %retval.0, !dbg !641
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !642 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !648, metadata !DIExpression()), !dbg !649
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !650
  ret double %call, !dbg !651
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !652 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !661, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !662, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32 %base, metadata !663, metadata !DIExpression()), !dbg !664
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !665
  ret i64 %call, !dbg !666
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !667 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !673, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !674, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 %base, metadata !675, metadata !DIExpression()), !dbg !676
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !677
  ret i64 %call, !dbg !678
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !679 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !690, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !691, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i32 %base, metadata !692, metadata !DIExpression()), !dbg !693
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !694
  ret i64 %call, !dbg !695
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !696 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !700, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !701, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i32 %base, metadata !702, metadata !DIExpression()), !dbg !703
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !704
  ret i64 %call, !dbg !705
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !706 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !748, metadata !DIExpression()), !dbg !750
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !749, metadata !DIExpression()), !dbg !750
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !751
  ret i32 %call, !dbg !752
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !753 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !755, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !756, metadata !DIExpression()), !dbg !757
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !758
  ret i32 %call, !dbg !759
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !760 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !764, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !765, metadata !DIExpression()), !dbg !766
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !767
  ret i32 %call, !dbg !768
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !769 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !773, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !774, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !775, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !776, metadata !DIExpression()), !dbg !777
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !778
  ret i32 %call, !dbg !779
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !780 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !784, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !785, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !786, metadata !DIExpression()), !dbg !787
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !786, metadata !DIExpression(DW_OP_deref)), !dbg !787
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !788
  ret i32 %call, !dbg !789
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !790 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !794, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i8* %__path, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !796, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !797, metadata !DIExpression()), !dbg !798
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !797, metadata !DIExpression(DW_OP_deref)), !dbg !798
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !799
  ret i32 %call, !dbg !800
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !801 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !825, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !826, metadata !DIExpression()), !dbg !827
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !828
  ret i32 %call, !dbg !829
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !830 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !832, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !833, metadata !DIExpression()), !dbg !834
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !835
  ret i32 %call, !dbg !836
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !837 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !841, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !842, metadata !DIExpression()), !dbg !843
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !844
  ret i32 %call, !dbg !845
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !846 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !850, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !851, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !852, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !853, metadata !DIExpression()), !dbg !854
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !855
  ret i32 %call, !dbg !856
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ix86_target_macros() local_unnamed_addr #3 !dbg !857 {
entry:
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !860
  tail call void @cpp_assert(%struct.cpp_reader* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #5, !dbg !863
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !864
  tail call void @cpp_assert(%struct.cpp_reader* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !865
  tail call void @builtin_define_std(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !866
  %2 = load i32, i32* @ix86_isa_flags, align 4, !dbg !867
  %3 = load i32, i32* @ix86_arch, align 4, !dbg !868
  %4 = load i32, i32* @ix86_tune, align 4, !dbg !869
  %5 = load i32, i32* @ix86_fpmath, align 4, !dbg !870
  tail call fastcc void @ix86_target_macros_internal(i32 %2, i32 %3, i32 %4, i32 %5, void (%struct.cpp_reader*, i8*)* nonnull @cpp_define) #6, !dbg !871
  ret void, !dbg !872
}

declare dso_local void @cpp_assert(%struct.cpp_reader*, i8*) local_unnamed_addr #1

declare dso_local void @builtin_define_std(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ix86_target_macros_internal(i32 %isa_flag, i32 %arch, i32 %tune, i32 %fpmath, void (%struct.cpp_reader*, i8*)* %def_or_undef) unnamed_addr #3 !dbg !873 {
entry:
  call void @llvm.dbg.value(metadata i32 %isa_flag, metadata !885, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i32 %arch, metadata !886, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i32 %tune, metadata !887, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i32 %fpmath, metadata !888, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*, i8*)* %def_or_undef, metadata !889, metadata !DIExpression()), !dbg !894
  %0 = load i8*, i8** @ix86_arch_string, align 8, !dbg !895
  %call = tail call i64 @strlen(i8* %0) #5, !dbg !896
  call void @llvm.dbg.value(metadata i64 %call, metadata !890, metadata !DIExpression()), !dbg !894
  %1 = load i8*, i8** @ix86_tune_string, align 8, !dbg !897
  %call1 = tail call i64 @strlen(i8* %1) #5, !dbg !898
  call void @llvm.dbg.value(metadata i64 %call1, metadata !891, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i32 undef, metadata !892, metadata !DIExpression()), !dbg !894
  %2 = load i8*, i8** @ix86_tune_string, align 8, !dbg !899
  %sub2 = add i64 %call1, -1, !dbg !900
  %arrayidx3 = getelementptr inbounds i8, i8* %2, i64 %sub2, !dbg !899
  %3 = load i8, i8* %arrayidx3, align 1, !dbg !899
  %conv4 = sext i8 %3 to i32, !dbg !899
  call void @llvm.dbg.value(metadata i32 %conv4, metadata !893, metadata !DIExpression()), !dbg !894
  switch i32 %arch, label %sw.epilog [
    i32 12, label %sw.bb32
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
    i32 6, label %sw.bb21
    i32 8, label %sw.bb26
    i32 13, label %sw.bb27
    i32 7, label %sw.bb28
    i32 9, label %sw.bb29
    i32 10, label %sw.bb30
    i32 14, label %sw.bb31
    i32 11, label %sw.bb32
  ], !dbg !901

sw.bb:                                            ; preds = %entry
  %4 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !902
  tail call void %def_or_undef(%struct.cpp_reader* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !904
  %5 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !905
  tail call void %def_or_undef(%struct.cpp_reader* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !906
  br label %sw.epilog, !dbg !907

sw.bb5:                                           ; preds = %entry
  %6 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !908
  tail call void %def_or_undef(%struct.cpp_reader* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !909
  %7 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !910
  tail call void %def_or_undef(%struct.cpp_reader* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !911
  %8 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !912
  tail call void %def_or_undef(%struct.cpp_reader* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !913
  %9 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !914
  tail call void %def_or_undef(%struct.cpp_reader* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !915
  %and = and i32 %isa_flag, 2048, !dbg !916
  %tobool = icmp eq i32 %and, 0, !dbg !916
  br i1 %tobool, label %sw.epilog, label %if.then, !dbg !918

if.then:                                          ; preds = %sw.bb5
  %10 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !919
  tail call void %def_or_undef(%struct.cpp_reader* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)) #5, !dbg !920
  br label %sw.epilog, !dbg !920

sw.bb6:                                           ; preds = %entry
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !921
  tail call void %def_or_undef(%struct.cpp_reader* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !922
  %12 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !923
  tail call void %def_or_undef(%struct.cpp_reader* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !924
  %13 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !925
  tail call void %def_or_undef(%struct.cpp_reader* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !926
  %14 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !927
  tail call void %def_or_undef(%struct.cpp_reader* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !928
  br label %sw.epilog, !dbg !929

sw.bb7:                                           ; preds = %entry
  %15 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !930
  tail call void %def_or_undef(%struct.cpp_reader* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #5, !dbg !931
  %16 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !932
  tail call void %def_or_undef(%struct.cpp_reader* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #5, !dbg !933
  br label %sw.epilog, !dbg !934

sw.bb8:                                           ; preds = %entry
  %17 = load i8*, i8** @ix86_arch_string, align 8, !dbg !935
  %sub = add i64 %call, -1, !dbg !936
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %sub, !dbg !935
  %18 = load i8, i8* %arrayidx, align 1, !dbg !935
  %conv = sext i8 %18 to i32, !dbg !935
  call void @llvm.dbg.value(metadata i32 %conv, metadata !892, metadata !DIExpression()), !dbg !894
  %19 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !937
  tail call void %def_or_undef(%struct.cpp_reader* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !938
  %20 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !939
  tail call void %def_or_undef(%struct.cpp_reader* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !940
  switch i32 %conv, label %if.else14 [
    i32 50, label %if.then10
    i32 51, label %if.then13
  ], !dbg !941

if.then10:                                        ; preds = %sw.bb8
  %21 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !942
  tail call void %def_or_undef(%struct.cpp_reader* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0)) #5, !dbg !944
  br label %sw.epilog, !dbg !944

if.then13:                                        ; preds = %sw.bb8
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !945
  tail call void %def_or_undef(%struct.cpp_reader* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #5, !dbg !947
  br label %sw.epilog, !dbg !947

if.else14:                                        ; preds = %sw.bb8
  %and15 = and i32 %isa_flag, 1, !dbg !948
  %tobool16 = icmp eq i32 %and15, 0, !dbg !948
  br i1 %tobool16, label %sw.epilog, label %if.then17, !dbg !950

if.then17:                                        ; preds = %if.else14
  %23 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !951
  tail call void %def_or_undef(%struct.cpp_reader* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #5, !dbg !952
  br label %sw.epilog, !dbg !952

sw.bb21:                                          ; preds = %entry
  %24 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !953
  tail call void %def_or_undef(%struct.cpp_reader* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0)) #5, !dbg !954
  %25 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !955
  tail call void %def_or_undef(%struct.cpp_reader* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0)) #5, !dbg !956
  %and22 = and i32 %isa_flag, 65536, !dbg !957
  %tobool23 = icmp eq i32 %and22, 0, !dbg !957
  br i1 %tobool23, label %sw.epilog, label %if.then24, !dbg !959

if.then24:                                        ; preds = %sw.bb21
  %26 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !960
  tail call void %def_or_undef(%struct.cpp_reader* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #5, !dbg !961
  br label %sw.epilog, !dbg !961

sw.bb26:                                          ; preds = %entry
  %27 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !962
  tail call void %def_or_undef(%struct.cpp_reader* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #5, !dbg !963
  %28 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !964
  tail call void %def_or_undef(%struct.cpp_reader* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0)) #5, !dbg !965
  br label %sw.epilog, !dbg !966

sw.bb27:                                          ; preds = %entry
  %29 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !967
  tail call void %def_or_undef(%struct.cpp_reader* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !968
  %30 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !969
  tail call void %def_or_undef(%struct.cpp_reader* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #5, !dbg !970
  br label %sw.epilog, !dbg !971

sw.bb28:                                          ; preds = %entry
  %31 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !972
  tail call void %def_or_undef(%struct.cpp_reader* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !973
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !974
  tail call void %def_or_undef(%struct.cpp_reader* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0)) #5, !dbg !975
  br label %sw.epilog, !dbg !976

sw.bb29:                                          ; preds = %entry
  %33 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !977
  tail call void %def_or_undef(%struct.cpp_reader* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)) #5, !dbg !978
  %34 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !979
  tail call void %def_or_undef(%struct.cpp_reader* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0)) #5, !dbg !980
  br label %sw.epilog, !dbg !981

sw.bb30:                                          ; preds = %entry
  %35 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !982
  tail call void %def_or_undef(%struct.cpp_reader* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0)) #5, !dbg !983
  %36 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !984
  tail call void %def_or_undef(%struct.cpp_reader* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0)) #5, !dbg !985
  br label %sw.epilog, !dbg !986

sw.bb31:                                          ; preds = %entry
  %37 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !987
  tail call void %def_or_undef(%struct.cpp_reader* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0)) #5, !dbg !988
  %38 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !989
  tail call void %def_or_undef(%struct.cpp_reader* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0)) #5, !dbg !990
  br label %sw.epilog, !dbg !991

sw.bb32:                                          ; preds = %entry, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i32 131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #5, !dbg !992
  br label %sw.epilog, !dbg !993

sw.epilog:                                        ; preds = %sw.bb5, %if.else14, %sw.bb21, %if.then24, %if.then10, %if.then17, %if.then13, %if.then, %sw.bb32, %entry, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb7, %sw.bb6, %sw.bb
  switch i32 %tune, label %sw.epilog72 [
    i32 0, label %sw.bb33
    i32 1, label %sw.bb34
    i32 2, label %sw.bb35
    i32 3, label %sw.bb40
    i32 4, label %sw.bb44
    i32 5, label %sw.bb45
    i32 6, label %sw.bb60
    i32 8, label %sw.bb65
    i32 13, label %sw.bb66
    i32 7, label %sw.bb67
    i32 9, label %sw.bb68
    i32 10, label %sw.bb69
    i32 14, label %sw.bb70
  ], !dbg !994

sw.bb33:                                          ; preds = %sw.epilog
  %39 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !995
  tail call void %def_or_undef(%struct.cpp_reader* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0)) #5, !dbg !997
  br label %sw.epilog72, !dbg !998

sw.bb34:                                          ; preds = %sw.epilog
  %40 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !999
  tail call void %def_or_undef(%struct.cpp_reader* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0)) #5, !dbg !1000
  br label %sw.epilog72, !dbg !1001

sw.bb35:                                          ; preds = %sw.epilog
  %41 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1002
  tail call void %def_or_undef(%struct.cpp_reader* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0)) #5, !dbg !1003
  %42 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1004
  tail call void %def_or_undef(%struct.cpp_reader* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0)) #5, !dbg !1005
  %cmp36 = icmp eq i8 %3, 120, !dbg !1006
  br i1 %cmp36, label %if.then38, label %sw.epilog72, !dbg !1008

if.then38:                                        ; preds = %sw.bb35
  %43 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1009
  tail call void %def_or_undef(%struct.cpp_reader* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0)) #5, !dbg !1010
  br label %sw.epilog72, !dbg !1010

sw.bb40:                                          ; preds = %sw.epilog
  %44 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1011
  tail call void %def_or_undef(%struct.cpp_reader* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0)) #5, !dbg !1012
  %45 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1013
  tail call void %def_or_undef(%struct.cpp_reader* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0)) #5, !dbg !1014
  switch i32 %conv4, label %sw.epilog72 [
    i32 51, label %sw.bb41
    i32 50, label %sw.bb42
  ], !dbg !1015

sw.bb41:                                          ; preds = %sw.bb40
  %46 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1016
  tail call void %def_or_undef(%struct.cpp_reader* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0)) #5, !dbg !1018
  br label %sw.bb42, !dbg !1018

sw.bb42:                                          ; preds = %sw.bb40, %sw.bb41
  %47 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1019
  tail call void %def_or_undef(%struct.cpp_reader* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0)) #5, !dbg !1020
  br label %sw.epilog72, !dbg !1021

sw.bb44:                                          ; preds = %sw.epilog
  %48 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1022
  tail call void %def_or_undef(%struct.cpp_reader* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0)) #5, !dbg !1023
  br label %sw.epilog72, !dbg !1024

sw.bb45:                                          ; preds = %sw.epilog
  %49 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1025
  tail call void %def_or_undef(%struct.cpp_reader* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0)) #5, !dbg !1026
  switch i32 %conv4, label %if.else53 [
    i32 50, label %if.then48
    i32 51, label %if.then52
  ], !dbg !1027

if.then48:                                        ; preds = %sw.bb45
  %50 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1028
  tail call void %def_or_undef(%struct.cpp_reader* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0)) #5, !dbg !1030
  br label %sw.epilog72, !dbg !1030

if.then52:                                        ; preds = %sw.bb45
  %51 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1031
  tail call void %def_or_undef(%struct.cpp_reader* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0)) #5, !dbg !1033
  br label %sw.epilog72, !dbg !1033

if.else53:                                        ; preds = %sw.bb45
  %and54 = and i32 %isa_flag, 1, !dbg !1034
  %tobool55 = icmp eq i32 %and54, 0, !dbg !1034
  br i1 %tobool55, label %sw.epilog72, label %if.then56, !dbg !1036

if.then56:                                        ; preds = %if.else53
  %52 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1037
  tail call void %def_or_undef(%struct.cpp_reader* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0)) #5, !dbg !1038
  br label %sw.epilog72, !dbg !1038

sw.bb60:                                          ; preds = %sw.epilog
  %53 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1039
  tail call void %def_or_undef(%struct.cpp_reader* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0)) #5, !dbg !1040
  %and61 = and i32 %isa_flag, 65536, !dbg !1041
  %tobool62 = icmp eq i32 %and61, 0, !dbg !1041
  br i1 %tobool62, label %sw.epilog72, label %if.then63, !dbg !1043

if.then63:                                        ; preds = %sw.bb60
  %54 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1044
  tail call void %def_or_undef(%struct.cpp_reader* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i64 0, i64 0)) #5, !dbg !1045
  br label %sw.epilog72, !dbg !1045

sw.bb65:                                          ; preds = %sw.epilog
  %55 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1046
  tail call void %def_or_undef(%struct.cpp_reader* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0)) #5, !dbg !1047
  br label %sw.epilog72, !dbg !1048

sw.bb66:                                          ; preds = %sw.epilog
  %56 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1049
  tail call void %def_or_undef(%struct.cpp_reader* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0)) #5, !dbg !1050
  br label %sw.epilog72, !dbg !1051

sw.bb67:                                          ; preds = %sw.epilog
  %57 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1052
  tail call void %def_or_undef(%struct.cpp_reader* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i64 0, i64 0)) #5, !dbg !1053
  br label %sw.epilog72, !dbg !1054

sw.bb68:                                          ; preds = %sw.epilog
  %58 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1055
  tail call void %def_or_undef(%struct.cpp_reader* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0)) #5, !dbg !1056
  br label %sw.epilog72, !dbg !1057

sw.bb69:                                          ; preds = %sw.epilog
  %59 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1058
  tail call void %def_or_undef(%struct.cpp_reader* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0)) #5, !dbg !1059
  br label %sw.epilog72, !dbg !1060

sw.bb70:                                          ; preds = %sw.epilog
  %60 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1061
  tail call void %def_or_undef(%struct.cpp_reader* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0)) #5, !dbg !1062
  br label %sw.epilog72, !dbg !1063

sw.epilog72:                                      ; preds = %if.else53, %sw.bb60, %if.then63, %if.then48, %if.then56, %if.then52, %sw.bb42, %sw.bb40, %sw.bb35, %if.then38, %sw.epilog, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb44, %sw.bb34, %sw.bb33
  %and73 = and i32 %isa_flag, 2048, !dbg !1064
  %tobool74 = icmp eq i32 %and73, 0, !dbg !1064
  br i1 %tobool74, label %if.end76, label %if.then75, !dbg !1066

if.then75:                                        ; preds = %sw.epilog72
  %61 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1067
  tail call void %def_or_undef(%struct.cpp_reader* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0)) #5, !dbg !1068
  br label %if.end76, !dbg !1068

if.end76:                                         ; preds = %sw.epilog72, %if.then75
  %and77 = and i32 %isa_flag, 1, !dbg !1069
  %tobool78 = icmp eq i32 %and77, 0, !dbg !1069
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !1071

if.then79:                                        ; preds = %if.end76
  %62 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1072
  tail call void %def_or_undef(%struct.cpp_reader* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0)) #5, !dbg !1073
  br label %if.end80, !dbg !1073

if.end80:                                         ; preds = %if.end76, %if.then79
  %and81 = and i32 %isa_flag, 2, !dbg !1074
  %tobool82 = icmp eq i32 %and81, 0, !dbg !1074
  br i1 %tobool82, label %if.end84, label %if.then83, !dbg !1076

if.then83:                                        ; preds = %if.end80
  %63 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1077
  tail call void %def_or_undef(%struct.cpp_reader* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0)) #5, !dbg !1078
  br label %if.end84, !dbg !1078

if.end84:                                         ; preds = %if.end80, %if.then83
  %and85 = and i32 %isa_flag, 65536, !dbg !1079
  %tobool86 = icmp eq i32 %and85, 0, !dbg !1079
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !1081

if.then87:                                        ; preds = %if.end84
  %64 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1082
  tail call void %def_or_undef(%struct.cpp_reader* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0)) #5, !dbg !1083
  br label %if.end88, !dbg !1083

if.end88:                                         ; preds = %if.end84, %if.then87
  %and89 = and i32 %isa_flag, 131072, !dbg !1084
  %tobool90 = icmp eq i32 %and89, 0, !dbg !1084
  br i1 %tobool90, label %if.end92, label %if.then91, !dbg !1086

if.then91:                                        ; preds = %if.end88
  %65 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1087
  tail call void %def_or_undef(%struct.cpp_reader* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0)) #5, !dbg !1088
  br label %if.end92, !dbg !1088

if.end92:                                         ; preds = %if.end88, %if.then91
  %and93 = and i32 %isa_flag, 262144, !dbg !1089
  %tobool94 = icmp eq i32 %and93, 0, !dbg !1089
  br i1 %tobool94, label %if.end96, label %if.then95, !dbg !1091

if.then95:                                        ; preds = %if.end92
  %66 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1092
  tail call void %def_or_undef(%struct.cpp_reader* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0)) #5, !dbg !1093
  br label %if.end96, !dbg !1093

if.end96:                                         ; preds = %if.end92, %if.then95
  %and97 = and i32 %isa_flag, 4194304, !dbg !1094
  %tobool98 = icmp eq i32 %and97, 0, !dbg !1094
  br i1 %tobool98, label %if.end100, label %if.then99, !dbg !1096

if.then99:                                        ; preds = %if.end96
  %67 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1097
  tail call void %def_or_undef(%struct.cpp_reader* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0)) #5, !dbg !1098
  br label %if.end100, !dbg !1098

if.end100:                                        ; preds = %if.end96, %if.then99
  %and101 = and i32 %isa_flag, 524288, !dbg !1099
  %tobool102 = icmp eq i32 %and101, 0, !dbg !1099
  br i1 %tobool102, label %if.end104, label %if.then103, !dbg !1101

if.then103:                                       ; preds = %if.end100
  %68 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1102
  tail call void %def_or_undef(%struct.cpp_reader* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i64 0, i64 0)) #5, !dbg !1103
  br label %if.end104, !dbg !1103

if.end104:                                        ; preds = %if.end100, %if.then103
  %and105 = and i32 %isa_flag, 1048576, !dbg !1104
  %tobool106 = icmp eq i32 %and105, 0, !dbg !1104
  br i1 %tobool106, label %if.end108, label %if.then107, !dbg !1106

if.then107:                                       ; preds = %if.end104
  %69 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1107
  tail call void %def_or_undef(%struct.cpp_reader* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0)) #5, !dbg !1108
  br label %if.end108, !dbg !1108

if.end108:                                        ; preds = %if.end104, %if.then107
  %and109 = and i32 %isa_flag, 16, !dbg !1109
  %tobool110 = icmp eq i32 %and109, 0, !dbg !1109
  br i1 %tobool110, label %if.end112, label %if.then111, !dbg !1111

if.then111:                                       ; preds = %if.end108
  %70 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1112
  tail call void %def_or_undef(%struct.cpp_reader* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0)) #5, !dbg !1113
  br label %if.end112, !dbg !1113

if.end112:                                        ; preds = %if.end108, %if.then111
  %and113 = and i32 %isa_flag, 8192, !dbg !1114
  %tobool114 = icmp eq i32 %and113, 0, !dbg !1114
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !1116

if.then115:                                       ; preds = %if.end112
  %71 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1117
  tail call void %def_or_undef(%struct.cpp_reader* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0)) #5, !dbg !1118
  br label %if.end116, !dbg !1118

if.end116:                                        ; preds = %if.end112, %if.then115
  %and117 = and i32 %isa_flag, 32, !dbg !1119
  %tobool118 = icmp eq i32 %and117, 0, !dbg !1119
  br i1 %tobool118, label %if.end120, label %if.then119, !dbg !1121

if.then119:                                       ; preds = %if.end116
  %72 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1122
  tail call void %def_or_undef(%struct.cpp_reader* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0)) #5, !dbg !1123
  br label %if.end120, !dbg !1123

if.end120:                                        ; preds = %if.end116, %if.then119
  %and121 = and i32 %isa_flag, 256, !dbg !1124
  %tobool122 = icmp eq i32 %and121, 0, !dbg !1124
  br i1 %tobool122, label %if.end124, label %if.then123, !dbg !1126

if.then123:                                       ; preds = %if.end120
  %73 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1127
  tail call void %def_or_undef(%struct.cpp_reader* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i64 0, i64 0)) #5, !dbg !1128
  br label %if.end124, !dbg !1128

if.end124:                                        ; preds = %if.end120, %if.then123
  %and125 = and i32 %isa_flag, 2097152, !dbg !1129
  %tobool126 = icmp eq i32 %and125, 0, !dbg !1129
  br i1 %tobool126, label %if.end128, label %if.then127, !dbg !1131

if.then127:                                       ; preds = %if.end124
  %74 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1132
  tail call void %def_or_undef(%struct.cpp_reader* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0)) #5, !dbg !1133
  br label %if.end128, !dbg !1133

if.end128:                                        ; preds = %if.end124, %if.then127
  %and129 = and i32 %isa_flag, 512, !dbg !1134
  %tobool130 = icmp eq i32 %and129, 0, !dbg !1134
  br i1 %tobool130, label %if.end132, label %if.then131, !dbg !1136

if.then131:                                       ; preds = %if.end128
  %75 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1137
  tail call void %def_or_undef(%struct.cpp_reader* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0)) #5, !dbg !1138
  br label %if.end132, !dbg !1138

if.end132:                                        ; preds = %if.end128, %if.then131
  %and133 = and i32 %isa_flag, 8388608, !dbg !1139
  %tobool134 = icmp eq i32 %and133, 0, !dbg !1139
  br i1 %tobool134, label %if.end136, label %if.then135, !dbg !1141

if.then135:                                       ; preds = %if.end132
  %76 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1142
  tail call void %def_or_undef(%struct.cpp_reader* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0)) #5, !dbg !1143
  br label %if.end136, !dbg !1143

if.end136:                                        ; preds = %if.end132, %if.then135
  %and137 = and i32 %isa_flag, 1024, !dbg !1144
  %tobool138 = icmp eq i32 %and137, 0, !dbg !1144
  br i1 %tobool138, label %if.end140, label %if.then139, !dbg !1146

if.then139:                                       ; preds = %if.end136
  %77 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1147
  tail call void %def_or_undef(%struct.cpp_reader* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0)) #5, !dbg !1148
  br label %if.end140, !dbg !1148

if.end140:                                        ; preds = %if.end136, %if.then139
  %and141 = and i32 %isa_flag, 8, !dbg !1149
  %tobool142 = icmp eq i32 %and141, 0, !dbg !1149
  br i1 %tobool142, label %if.end144, label %if.then143, !dbg !1151

if.then143:                                       ; preds = %if.end140
  %78 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1152
  tail call void %def_or_undef(%struct.cpp_reader* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i64 0, i64 0)) #5, !dbg !1153
  br label %if.end144, !dbg !1153

if.end144:                                        ; preds = %if.end140, %if.then143
  %and145 = and i32 %isa_flag, 16384, !dbg !1154
  %tobool146 = icmp eq i32 %and145, 0, !dbg !1154
  br i1 %tobool146, label %if.end148, label %if.then147, !dbg !1156

if.then147:                                       ; preds = %if.end144
  %79 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1157
  tail call void %def_or_undef(%struct.cpp_reader* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0)) #5, !dbg !1158
  br label %if.end148, !dbg !1158

if.end148:                                        ; preds = %if.end144, %if.then147
  %and149 = and i32 %fpmath, 2, !dbg !1159
  %tobool150 = icmp ne i32 %and149, 0, !dbg !1159
  %tobool152 = icmp ne i32 %and85, 0, !dbg !1161
  %or.cond = and i1 %tobool150, %tobool152, !dbg !1162
  br i1 %or.cond, label %if.then153, label %if.end154, !dbg !1162

if.then153:                                       ; preds = %if.end148
  %80 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1163
  tail call void %def_or_undef(%struct.cpp_reader* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i64 0, i64 0)) #5, !dbg !1164
  br label %if.end154, !dbg !1164

if.end154:                                        ; preds = %if.then153, %if.end148
  %tobool159 = icmp ne i32 %and89, 0, !dbg !1165
  %or.cond1 = and i1 %tobool150, %tobool159, !dbg !1167
  br i1 %or.cond1, label %if.then160, label %if.end161, !dbg !1167

if.then160:                                       ; preds = %if.end154
  %81 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1168
  tail call void %def_or_undef(%struct.cpp_reader* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0)) #5, !dbg !1169
  br label %if.end161, !dbg !1169

if.end161:                                        ; preds = %if.then160, %if.end154
  ret void, !dbg !1170
}

declare dso_local void @cpp_define(%struct.cpp_reader*, i8*) #1

; Function Attrs: nounwind uwtable
define dso_local void @ix86_register_pragmas() local_unnamed_addr #3 !dbg !1171 {
entry:
  store i8 (%union.tree_node*, %union.tree_node*)* @ix86_pragma_target_parse, i8 (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 107, i32 4), align 8, !dbg !1172
  ret void, !dbg !1173
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @ix86_pragma_target_parse(%union.tree_node* %args, %union.tree_node* %pop_target) #3 !dbg !1174 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %args, metadata !1934, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata %union.tree_node* %pop_target, metadata !1935, metadata !DIExpression()), !dbg !1948
  %call = tail call %union.tree_node* @build_target_option_node() #5, !dbg !1949
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !1936, metadata !DIExpression()), !dbg !1948
  %tobool = icmp eq %union.tree_node* %args, null, !dbg !1950
  br i1 %tobool, label %if.then, label %if.else, !dbg !1952

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq %union.tree_node* %pop_target, null, !dbg !1953
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 127), align 8, !dbg !1953
  %cond = select i1 %tobool1, %union.tree_node* %0, %union.tree_node* %pop_target, !dbg !1953
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !1937, metadata !DIExpression()), !dbg !1948
  %opts = getelementptr inbounds %union.tree_node, %union.tree_node* %cond, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1955
  %1 = bitcast i32* %opts to %struct.cl_target_option*, !dbg !1955
  tail call void @cl_target_option_restore(%struct.cl_target_option* nonnull %1) #5, !dbg !1956
  br label %if.end5, !dbg !1957

if.else:                                          ; preds = %entry
  %call2 = tail call %union.tree_node* @ix86_valid_target_attribute_tree(%union.tree_node* nonnull %args) #5, !dbg !1958
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !1937, metadata !DIExpression()), !dbg !1948
  %tobool3 = icmp eq %union.tree_node* %call2, null, !dbg !1960
  br i1 %tobool3, label %cleanup, label %if.else.if.end5_crit_edge, !dbg !1962

if.else.if.end5_crit_edge:                        ; preds = %if.else
  br label %if.end5, !dbg !1962

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %if.then
  %cur_tree.0 = phi %union.tree_node* [ %cond, %if.then ], [ %call2, %if.else.if.end5_crit_edge ], !dbg !1963
  call void @llvm.dbg.value(metadata %union.tree_node* %cur_tree.0, metadata !1937, metadata !DIExpression()), !dbg !1948
  store %union.tree_node* %cur_tree.0, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 128), align 16, !dbg !1964
  %opts7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1965
  %2 = bitcast i32* %opts7 to %struct.cl_target_option*, !dbg !1965
  call void @llvm.dbg.value(metadata %struct.cl_target_option* %2, metadata !1938, metadata !DIExpression()), !dbg !1948
  %opts9 = getelementptr inbounds %union.tree_node, %union.tree_node* %cur_tree.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1966
  %3 = bitcast i32* %opts9 to %struct.cl_target_option*, !dbg !1966
  call void @llvm.dbg.value(metadata %struct.cl_target_option* %3, metadata !1940, metadata !DIExpression()), !dbg !1948
  %4 = getelementptr inbounds i32, i32* %opts7, i64 3, !dbg !1967
  %5 = load i32, i32* %4, align 4, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %5, metadata !1941, metadata !DIExpression()), !dbg !1948
  %6 = getelementptr inbounds i32, i32* %opts9, i64 3, !dbg !1968
  %7 = load i32, i32* %6, align 4, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %7, metadata !1942, metadata !DIExpression()), !dbg !1948
  %xor = xor i32 %5, %7, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1943, metadata !DIExpression()), !dbg !1948
  %arch = getelementptr inbounds i32, i32* %opts7, i64 4, !dbg !1970
  %8 = bitcast i32* %arch to i8*, !dbg !1970
  %9 = load i8, i8* %8, align 4, !dbg !1970
  call void @llvm.dbg.value(metadata i8 %9, metadata !1944, metadata !DIExpression()), !dbg !1948
  %tune = getelementptr inbounds %struct.cl_target_option, %struct.cl_target_option* %2, i64 0, i32 9, !dbg !1971
  %10 = load i8, i8* %tune, align 1, !dbg !1971
  call void @llvm.dbg.value(metadata i8 %10, metadata !1945, metadata !DIExpression()), !dbg !1948
  %arch12 = getelementptr inbounds i32, i32* %opts9, i64 4, !dbg !1972
  %11 = bitcast i32* %arch12 to i8*, !dbg !1972
  %12 = load i8, i8* %11, align 4, !dbg !1972
  call void @llvm.dbg.value(metadata i8 %12, metadata !1946, metadata !DIExpression()), !dbg !1948
  %tune14 = getelementptr inbounds %struct.cl_target_option, %struct.cl_target_option* %3, i64 0, i32 9, !dbg !1973
  %13 = load i8, i8* %tune14, align 1, !dbg !1973
  call void @llvm.dbg.value(metadata i8 %13, metadata !1947, metadata !DIExpression()), !dbg !1948
  %cmp = icmp eq i8 %12, %9, !dbg !1974
  %narrow = select i1 %cmp, i8 15, i8 %9, !dbg !1976
  %spec.select = zext i8 %narrow to i32, !dbg !1976
  %narrow2 = select i1 %cmp, i8 15, i8 %12, !dbg !1976
  %spec.select1 = zext i8 %narrow2 to i32, !dbg !1976
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !1946, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1944, metadata !DIExpression()), !dbg !1948
  %cmp19 = icmp eq i8 %13, %10, !dbg !1977
  %narrow3 = select i1 %cmp19, i8 15, i8 %10, !dbg !1979
  %prev_tune.0 = zext i8 %narrow3 to i32, !dbg !1979
  %narrow4 = select i1 %cmp19, i8 15, i8 %13, !dbg !1979
  %cur_tune.0 = zext i8 %narrow4 to i32, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %cur_tune.0, metadata !1947, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %prev_tune.0, metadata !1945, metadata !DIExpression()), !dbg !1948
  %and = and i32 %5, %xor, !dbg !1980
  %fpmath = getelementptr inbounds %struct.cl_target_option, %struct.cl_target_option* %2, i64 0, i32 7, !dbg !1981
  %14 = load i8, i8* %fpmath, align 1, !dbg !1981
  %conv23 = zext i8 %14 to i32, !dbg !1982
  tail call fastcc void @ix86_target_macros_internal(i32 %and, i32 %spec.select, i32 %prev_tune.0, i32 %conv23, void (%struct.cpp_reader*, i8*)* nonnull @cpp_undef) #6, !dbg !1983
  %and24 = and i32 %7, %xor, !dbg !1984
  %fpmath25 = getelementptr inbounds %struct.cl_target_option, %struct.cl_target_option* %3, i64 0, i32 7, !dbg !1985
  %15 = load i8, i8* %fpmath25, align 1, !dbg !1985
  %conv26 = zext i8 %15 to i32, !dbg !1986
  tail call fastcc void @ix86_target_macros_internal(i32 %and24, i32 %spec.select1, i32 %cur_tune.0, i32 %conv26, void (%struct.cpp_reader*, i8*)* nonnull @cpp_define) #6, !dbg !1987
  br label %cleanup, !dbg !1988

cleanup:                                          ; preds = %if.else, %if.end5
  %retval.0 = phi i8 [ 1, %if.end5 ], [ 0, %if.else ], !dbg !1948
  ret i8 %retval.0, !dbg !1989
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_target_option_node() local_unnamed_addr #1

declare dso_local void @cl_target_option_restore(%struct.cl_target_option*) local_unnamed_addr #1

declare dso_local %union.tree_node* @ix86_valid_target_attribute_tree(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @cpp_undef(%struct.cpp_reader*, i8*) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!392, !393, !394}
!llvm.ident = !{!395}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !382, nameTableKind: None)
!1 = !DIFile(filename: "i386-c.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !23, !27, !155, !174, !181, !188}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "processor_type", file: !4, line: 2178, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!7 = !DIEnumerator(name: "PROCESSOR_I386", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "PROCESSOR_I486", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "PROCESSOR_PENTIUM", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "PROCESSOR_PENTIUMPRO", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "PROCESSOR_GEODE", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "PROCESSOR_K6", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "PROCESSOR_ATHLON", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "PROCESSOR_PENTIUM4", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "PROCESSOR_K8", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "PROCESSOR_NOCONA", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "PROCESSOR_CORE2", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "PROCESSOR_GENERIC32", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "PROCESSOR_GENERIC64", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "PROCESSOR_AMDFAM10", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "PROCESSOR_ATOM", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "PROCESSOR_max", value: 15, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fpmath_unit", file: !4, line: 2201, baseType: !5, size: 32, elements: !24)
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "FPMATH_387", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "FPMATH_SSE", value: 2, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !28, line: 7, baseType: !5, size: 32, elements: !29)
!28 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!30 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!36 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!37 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!38 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!39 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!40 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!41 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!42 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!43 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!44 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!45 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!46 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!47 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!48 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!49 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!50 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!51 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!52 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!53 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!54 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!55 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!56 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!57 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!58 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!59 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!60 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!61 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!62 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!63 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!64 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!65 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!66 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!67 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!68 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!69 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!70 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!71 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!72 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!73 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!74 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!75 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!76 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!77 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!78 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!79 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!80 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!81 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!82 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!83 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!84 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!85 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!86 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!87 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!88 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!89 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!90 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!91 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!92 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!93 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!94 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!95 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!96 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!97 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!98 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!99 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!100 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!101 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!102 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!103 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!104 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!105 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!106 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!107 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!108 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!109 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!110 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!111 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!112 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!113 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!114 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!115 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!116 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!117 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!118 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!119 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!120 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!121 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!122 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!123 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!124 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!127 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!128 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!129 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!130 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!131 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!132 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!133 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!134 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!135 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!136 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!137 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!138 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!139 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!140 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!141 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!142 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!143 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!144 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!146 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!151 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!153 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!154 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !156, line: 280, baseType: !5, size: 32, elements: !157)
!156 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!158 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !156, line: 1817, baseType: !5, size: 32, elements: !175)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !156, line: 1805, baseType: !5, size: 32, elements: !182)
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !156, line: 39, baseType: !5, size: 32, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!190 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!191 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!192 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!193 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!194 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!195 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!196 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!197 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!198 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!199 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!200 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!201 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!202 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!203 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!204 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!205 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!206 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!207 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!208 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!209 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!210 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!211 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!212 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!213 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!214 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!215 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!216 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!217 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!218 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!219 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!220 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!221 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!222 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!223 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!224 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!225 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!226 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!227 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!228 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!229 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!230 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!231 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!232 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!233 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!234 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!235 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!236 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!237 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!238 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!239 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!240 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!241 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!242 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!243 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!244 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!245 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!246 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!247 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!248 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!249 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!250 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!251 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!252 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!253 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!254 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!255 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!256 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!257 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!258 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!259 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!260 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!261 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!262 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!263 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!264 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!265 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!266 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!267 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!268 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!269 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!270 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!271 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!272 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!273 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!274 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!275 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!276 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!277 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!278 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!279 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!280 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!281 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!282 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!283 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!284 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!285 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!286 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!287 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!288 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!289 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!290 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!291 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!292 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!293 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!294 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!295 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!296 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!297 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!298 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!299 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!300 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!301 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!302 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!303 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!304 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!305 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!306 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!307 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!308 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!309 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!310 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!311 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!312 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!313 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!314 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!315 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!316 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!317 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!318 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!319 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!320 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!321 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!322 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!323 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!324 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!325 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!326 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!327 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!328 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!329 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!330 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!331 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!332 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!333 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!334 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!335 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!336 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!337 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!338 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!339 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!340 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!341 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!342 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!354 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!355 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!356 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!357 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!358 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!359 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!375 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!376 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!377 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!378 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!379 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!380 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!381 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!382 = !{!383, !384, !385, !386, !389, !390, !3, !23}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!385 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!392 = !{i32 2, !"Dwarf Version", i32 4}
!393 = !{i32 2, !"Debug Info Version", i32 3}
!394 = !{i32 1, !"wchar_size", i32 4}
!395 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!396 = distinct !DISubprogram(name: "vprintf", scope: !397, file: !397, line: 39, type: !398, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !408)
!397 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!398 = !DISubroutineType(types: !399)
!399 = !{!385, !400, !401}
!400 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !390)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !403)
!403 = !{!404, !405, !406, !407}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !402, file: !1, baseType: !5, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !402, file: !1, baseType: !5, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !402, file: !1, baseType: !389, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !402, file: !1, baseType: !389, size: 64, offset: 128)
!408 = !{!409, !410}
!409 = !DILocalVariable(name: "__fmt", arg: 1, scope: !396, file: !397, line: 39, type: !400)
!410 = !DILocalVariable(name: "__arg", arg: 2, scope: !396, file: !397, line: 39, type: !401)
!411 = !DILocation(line: 0, scope: !396)
!412 = !DILocation(line: 41, column: 20, scope: !396)
!413 = !DILocation(line: 41, column: 10, scope: !396)
!414 = !DILocation(line: 41, column: 3, scope: !396)
!415 = distinct !DISubprogram(name: "getchar", scope: !397, file: !397, line: 47, type: !416, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{!385}
!418 = !{}
!419 = !DILocation(line: 49, column: 16, scope: !415)
!420 = !DILocation(line: 49, column: 10, scope: !415)
!421 = !DILocation(line: 49, column: 3, scope: !415)
!422 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !397, file: !397, line: 56, type: !423, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !484)
!423 = !DISubroutineType(types: !424)
!424 = !{!385, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !427, line: 7, baseType: !428)
!427 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !429, line: 49, size: 1728, elements: !430)
!429 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !446, !448, !449, !450, !454, !456, !458, !462, !465, !467, !470, !473, !474, !475, !479, !480}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !428, file: !429, line: 51, baseType: !385, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !428, file: !429, line: 54, baseType: !387, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !428, file: !429, line: 55, baseType: !387, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !428, file: !429, line: 56, baseType: !387, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !428, file: !429, line: 57, baseType: !387, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !428, file: !429, line: 58, baseType: !387, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !428, file: !429, line: 59, baseType: !387, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !428, file: !429, line: 60, baseType: !387, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !428, file: !429, line: 61, baseType: !387, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !428, file: !429, line: 64, baseType: !387, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !428, file: !429, line: 65, baseType: !387, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !428, file: !429, line: 66, baseType: !387, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !428, file: !429, line: 68, baseType: !444, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !429, line: 36, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !428, file: !429, line: 70, baseType: !447, size: 64, offset: 832)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !428, file: !429, line: 72, baseType: !385, size: 32, offset: 896)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !428, file: !429, line: 73, baseType: !385, size: 32, offset: 928)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !428, file: !429, line: 74, baseType: !451, size: 64, offset: 960)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !452, line: 152, baseType: !453)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!453 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !428, file: !429, line: 77, baseType: !455, size: 16, offset: 1024)
!455 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !428, file: !429, line: 78, baseType: !457, size: 8, offset: 1040)
!457 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !428, file: !429, line: 79, baseType: !459, size: 8, offset: 1048)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 8, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 1)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !428, file: !429, line: 81, baseType: !463, size: 64, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !429, line: 43, baseType: null)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !428, file: !429, line: 89, baseType: !466, size: 64, offset: 1152)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !452, line: 153, baseType: !453)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !428, file: !429, line: 91, baseType: !468, size: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !429, line: 37, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !428, file: !429, line: 92, baseType: !471, size: 64, offset: 1280)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !429, line: 38, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !428, file: !429, line: 93, baseType: !447, size: 64, offset: 1344)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !428, file: !429, line: 94, baseType: !389, size: 64, offset: 1408)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !428, file: !429, line: 95, baseType: !476, size: 64, offset: 1472)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !477, line: 46, baseType: !478)
!477 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!478 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !428, file: !429, line: 96, baseType: !385, size: 32, offset: 1536)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !428, file: !429, line: 98, baseType: !481, size: 160, offset: 1568)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 160, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 20)
!484 = !{!485}
!485 = !DILocalVariable(name: "__fp", arg: 1, scope: !422, file: !397, line: 56, type: !425)
!486 = !DILocation(line: 0, scope: !422)
!487 = !DILocation(line: 58, column: 10, scope: !422)
!488 = !DILocation(line: 58, column: 3, scope: !422)
!489 = distinct !DISubprogram(name: "getc_unlocked", scope: !397, file: !397, line: 66, type: !423, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !490)
!490 = !{!491}
!491 = !DILocalVariable(name: "__fp", arg: 1, scope: !489, file: !397, line: 66, type: !425)
!492 = !DILocation(line: 0, scope: !489)
!493 = !DILocation(line: 68, column: 10, scope: !489)
!494 = !DILocation(line: 68, column: 3, scope: !489)
!495 = distinct !DISubprogram(name: "getchar_unlocked", scope: !397, file: !397, line: 73, type: !416, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !418)
!496 = !DILocation(line: 75, column: 10, scope: !495)
!497 = !DILocation(line: 75, column: 3, scope: !495)
!498 = distinct !DISubprogram(name: "putchar", scope: !397, file: !397, line: 82, type: !499, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{!385, !385}
!501 = !{!502}
!502 = !DILocalVariable(name: "__c", arg: 1, scope: !498, file: !397, line: 82, type: !385)
!503 = !DILocation(line: 0, scope: !498)
!504 = !DILocation(line: 84, column: 21, scope: !498)
!505 = !DILocation(line: 84, column: 10, scope: !498)
!506 = !DILocation(line: 84, column: 3, scope: !498)
!507 = distinct !DISubprogram(name: "fputc_unlocked", scope: !397, file: !397, line: 91, type: !508, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!385, !385, !425}
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "__c", arg: 1, scope: !507, file: !397, line: 91, type: !385)
!512 = !DILocalVariable(name: "__stream", arg: 2, scope: !507, file: !397, line: 91, type: !425)
!513 = !DILocation(line: 0, scope: !507)
!514 = !DILocation(line: 93, column: 10, scope: !507)
!515 = !DILocation(line: 93, column: 3, scope: !507)
!516 = distinct !DISubprogram(name: "putc_unlocked", scope: !397, file: !397, line: 101, type: !508, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !517)
!517 = !{!518, !519}
!518 = !DILocalVariable(name: "__c", arg: 1, scope: !516, file: !397, line: 101, type: !385)
!519 = !DILocalVariable(name: "__stream", arg: 2, scope: !516, file: !397, line: 101, type: !425)
!520 = !DILocation(line: 0, scope: !516)
!521 = !DILocation(line: 103, column: 10, scope: !516)
!522 = !DILocation(line: 103, column: 3, scope: !516)
!523 = distinct !DISubprogram(name: "putchar_unlocked", scope: !397, file: !397, line: 108, type: !499, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !524)
!524 = !{!525}
!525 = !DILocalVariable(name: "__c", arg: 1, scope: !523, file: !397, line: 108, type: !385)
!526 = !DILocation(line: 0, scope: !523)
!527 = !DILocation(line: 110, column: 10, scope: !523)
!528 = !DILocation(line: 110, column: 3, scope: !523)
!529 = distinct !DISubprogram(name: "getline", scope: !397, file: !397, line: 118, type: !530, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !534)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !386, !533, !425}
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !452, line: 193, baseType: !453)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!534 = !{!535, !536, !537}
!535 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !529, file: !397, line: 118, type: !386)
!536 = !DILocalVariable(name: "__n", arg: 2, scope: !529, file: !397, line: 118, type: !533)
!537 = !DILocalVariable(name: "__stream", arg: 3, scope: !529, file: !397, line: 118, type: !425)
!538 = !DILocation(line: 0, scope: !529)
!539 = !DILocation(line: 120, column: 10, scope: !529)
!540 = !DILocation(line: 120, column: 3, scope: !529)
!541 = distinct !DISubprogram(name: "feof_unlocked", scope: !397, file: !397, line: 128, type: !423, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !542)
!542 = !{!543}
!543 = !DILocalVariable(name: "__stream", arg: 1, scope: !541, file: !397, line: 128, type: !425)
!544 = !DILocation(line: 0, scope: !541)
!545 = !DILocation(line: 130, column: 10, scope: !541)
!546 = !DILocation(line: 130, column: 3, scope: !541)
!547 = distinct !DISubprogram(name: "ferror_unlocked", scope: !397, file: !397, line: 135, type: !423, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !548)
!548 = !{!549}
!549 = !DILocalVariable(name: "__stream", arg: 1, scope: !547, file: !397, line: 135, type: !425)
!550 = !DILocation(line: 0, scope: !547)
!551 = !DILocation(line: 137, column: 10, scope: !547)
!552 = !DILocation(line: 137, column: 3, scope: !547)
!553 = distinct !DISubprogram(name: "tolower", scope: !554, file: !554, line: 207, type: !499, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !555)
!554 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!555 = !{!556}
!556 = !DILocalVariable(name: "__c", arg: 1, scope: !553, file: !554, line: 207, type: !385)
!557 = !DILocation(line: 0, scope: !553)
!558 = !DILocation(line: 209, column: 22, scope: !553)
!559 = !DILocation(line: 209, column: 39, scope: !553)
!560 = !DILocation(line: 209, column: 38, scope: !553)
!561 = !DILocation(line: 209, column: 37, scope: !553)
!562 = !DILocation(line: 209, column: 10, scope: !553)
!563 = !DILocation(line: 209, column: 3, scope: !553)
!564 = distinct !DISubprogram(name: "toupper", scope: !554, file: !554, line: 213, type: !499, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !565)
!565 = !{!566}
!566 = !DILocalVariable(name: "__c", arg: 1, scope: !564, file: !554, line: 213, type: !385)
!567 = !DILocation(line: 0, scope: !564)
!568 = !DILocation(line: 215, column: 22, scope: !564)
!569 = !DILocation(line: 215, column: 39, scope: !564)
!570 = !DILocation(line: 215, column: 38, scope: !564)
!571 = !DILocation(line: 215, column: 37, scope: !564)
!572 = !DILocation(line: 215, column: 10, scope: !564)
!573 = !DILocation(line: 215, column: 3, scope: !564)
!574 = distinct !DISubprogram(name: "atoi", scope: !575, file: !575, line: 361, type: !576, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !578)
!575 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!576 = !DISubroutineType(types: !577)
!577 = !{!385, !390}
!578 = !{!579}
!579 = !DILocalVariable(name: "__nptr", arg: 1, scope: !574, file: !575, line: 361, type: !390)
!580 = !DILocation(line: 0, scope: !574)
!581 = !DILocation(line: 363, column: 16, scope: !574)
!582 = !DILocation(line: 363, column: 10, scope: !574)
!583 = !DILocation(line: 363, column: 3, scope: !574)
!584 = distinct !DISubprogram(name: "atol", scope: !575, file: !575, line: 366, type: !585, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!453, !390}
!587 = !{!588}
!588 = !DILocalVariable(name: "__nptr", arg: 1, scope: !584, file: !575, line: 366, type: !390)
!589 = !DILocation(line: 0, scope: !584)
!590 = !DILocation(line: 368, column: 10, scope: !584)
!591 = !DILocation(line: 368, column: 3, scope: !584)
!592 = distinct !DISubprogram(name: "atoll", scope: !575, file: !575, line: 373, type: !593, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !596)
!593 = !DISubroutineType(types: !594)
!594 = !{!595, !390}
!595 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!596 = !{!597}
!597 = !DILocalVariable(name: "__nptr", arg: 1, scope: !592, file: !575, line: 373, type: !390)
!598 = !DILocation(line: 0, scope: !592)
!599 = !DILocation(line: 375, column: 10, scope: !592)
!600 = !DILocation(line: 375, column: 3, scope: !592)
!601 = distinct !DISubprogram(name: "bsearch", scope: !602, file: !602, line: 20, type: !603, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !611)
!602 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!603 = !DISubroutineType(types: !604)
!604 = !{!389, !605, !605, !476, !476, !607}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !575, line: 808, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!385, !605, !605}
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!612 = !DILocalVariable(name: "__key", arg: 1, scope: !601, file: !602, line: 20, type: !605)
!613 = !DILocalVariable(name: "__base", arg: 2, scope: !601, file: !602, line: 20, type: !605)
!614 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !601, file: !602, line: 20, type: !476)
!615 = !DILocalVariable(name: "__size", arg: 4, scope: !601, file: !602, line: 20, type: !476)
!616 = !DILocalVariable(name: "__compar", arg: 5, scope: !601, file: !602, line: 21, type: !607)
!617 = !DILocalVariable(name: "__l", scope: !601, file: !602, line: 23, type: !476)
!618 = !DILocalVariable(name: "__u", scope: !601, file: !602, line: 23, type: !476)
!619 = !DILocalVariable(name: "__idx", scope: !601, file: !602, line: 23, type: !476)
!620 = !DILocalVariable(name: "__p", scope: !601, file: !602, line: 24, type: !605)
!621 = !DILocalVariable(name: "__comparison", scope: !601, file: !602, line: 25, type: !385)
!622 = !DILocation(line: 0, scope: !601)
!623 = !DILocation(line: 29, column: 3, scope: !601)
!624 = !DILocation(line: 27, column: 7, scope: !601)
!625 = !DILocation(line: 29, column: 14, scope: !601)
!626 = !DILocation(line: 31, column: 20, scope: !627)
!627 = distinct !DILexicalBlock(scope: !601, file: !602, line: 30, column: 5)
!628 = !DILocation(line: 31, column: 27, scope: !627)
!629 = !DILocation(line: 32, column: 56, scope: !627)
!630 = !DILocation(line: 32, column: 47, scope: !627)
!631 = !DILocation(line: 33, column: 22, scope: !627)
!632 = !DILocation(line: 34, column: 24, scope: !633)
!633 = distinct !DILexicalBlock(scope: !627, file: !602, line: 34, column: 11)
!634 = !DILocation(line: 34, column: 11, scope: !627)
!635 = !DILocation(line: 36, column: 29, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !602, line: 36, column: 16)
!637 = !DILocation(line: 36, column: 16, scope: !633)
!638 = !DILocation(line: 37, column: 14, scope: !636)
!639 = distinct !{!639, !623, !640}
!640 = !DILocation(line: 40, column: 5, scope: !601)
!641 = !DILocation(line: 43, column: 1, scope: !601)
!642 = distinct !DISubprogram(name: "atof", scope: !643, file: !643, line: 25, type: !644, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !647)
!643 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!644 = !DISubroutineType(types: !645)
!645 = !{!646, !390}
!646 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!647 = !{!648}
!648 = !DILocalVariable(name: "__nptr", arg: 1, scope: !642, file: !643, line: 25, type: !390)
!649 = !DILocation(line: 0, scope: !642)
!650 = !DILocation(line: 27, column: 10, scope: !642)
!651 = !DILocation(line: 27, column: 3, scope: !642)
!652 = distinct !DISubprogram(name: "strtoimax", scope: !653, file: !653, line: 324, type: !654, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !660)
!653 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!654 = !DISubroutineType(types: !655)
!655 = !{!656, !400, !659, !385}
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !657, line: 101, baseType: !658)
!657 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !452, line: 72, baseType: !453)
!659 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !386)
!660 = !{!661, !662, !663}
!661 = !DILocalVariable(name: "nptr", arg: 1, scope: !652, file: !653, line: 324, type: !400)
!662 = !DILocalVariable(name: "endptr", arg: 2, scope: !652, file: !653, line: 324, type: !659)
!663 = !DILocalVariable(name: "base", arg: 3, scope: !652, file: !653, line: 324, type: !385)
!664 = !DILocation(line: 0, scope: !652)
!665 = !DILocation(line: 327, column: 10, scope: !652)
!666 = !DILocation(line: 327, column: 3, scope: !652)
!667 = distinct !DISubprogram(name: "strtoumax", scope: !653, file: !653, line: 336, type: !668, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !672)
!668 = !DISubroutineType(types: !669)
!669 = !{!670, !400, !659, !385}
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !657, line: 102, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !452, line: 73, baseType: !478)
!672 = !{!673, !674, !675}
!673 = !DILocalVariable(name: "nptr", arg: 1, scope: !667, file: !653, line: 336, type: !400)
!674 = !DILocalVariable(name: "endptr", arg: 2, scope: !667, file: !653, line: 336, type: !659)
!675 = !DILocalVariable(name: "base", arg: 3, scope: !667, file: !653, line: 336, type: !385)
!676 = !DILocation(line: 0, scope: !667)
!677 = !DILocation(line: 339, column: 10, scope: !667)
!678 = !DILocation(line: 339, column: 3, scope: !667)
!679 = distinct !DISubprogram(name: "wcstoimax", scope: !653, file: !653, line: 348, type: !680, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !689)
!680 = !DISubroutineType(types: !681)
!681 = !{!656, !682, !686, !385}
!682 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !653, line: 34, baseType: !385)
!686 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!689 = !{!690, !691, !692}
!690 = !DILocalVariable(name: "nptr", arg: 1, scope: !679, file: !653, line: 348, type: !682)
!691 = !DILocalVariable(name: "endptr", arg: 2, scope: !679, file: !653, line: 348, type: !686)
!692 = !DILocalVariable(name: "base", arg: 3, scope: !679, file: !653, line: 348, type: !385)
!693 = !DILocation(line: 0, scope: !679)
!694 = !DILocation(line: 351, column: 10, scope: !679)
!695 = !DILocation(line: 351, column: 3, scope: !679)
!696 = distinct !DISubprogram(name: "wcstoumax", scope: !653, file: !653, line: 362, type: !697, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{!670, !682, !686, !385}
!699 = !{!700, !701, !702}
!700 = !DILocalVariable(name: "nptr", arg: 1, scope: !696, file: !653, line: 362, type: !682)
!701 = !DILocalVariable(name: "endptr", arg: 2, scope: !696, file: !653, line: 362, type: !686)
!702 = !DILocalVariable(name: "base", arg: 3, scope: !696, file: !653, line: 362, type: !385)
!703 = !DILocation(line: 0, scope: !696)
!704 = !DILocation(line: 365, column: 10, scope: !696)
!705 = !DILocation(line: 365, column: 3, scope: !696)
!706 = distinct !DISubprogram(name: "stat", scope: !707, file: !707, line: 453, type: !708, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !747)
!707 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!708 = !DISubroutineType(types: !709)
!709 = !{!385, !390, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !712, line: 46, size: 1152, elements: !713)
!712 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!713 = !{!714, !716, !718, !720, !722, !724, !726, !727, !728, !729, !731, !733, !741, !742, !743}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !711, file: !712, line: 48, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !452, line: 145, baseType: !478)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !711, file: !712, line: 53, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !452, line: 148, baseType: !478)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !711, file: !712, line: 61, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !452, line: 151, baseType: !478)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !711, file: !712, line: 62, baseType: !721, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !452, line: 150, baseType: !5)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !711, file: !712, line: 64, baseType: !723, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !452, line: 146, baseType: !5)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !711, file: !712, line: 65, baseType: !725, size: 32, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !452, line: 147, baseType: !5)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !711, file: !712, line: 67, baseType: !385, size: 32, offset: 288)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !711, file: !712, line: 69, baseType: !715, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !711, file: !712, line: 74, baseType: !451, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !711, file: !712, line: 78, baseType: !730, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !452, line: 174, baseType: !453)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !711, file: !712, line: 80, baseType: !732, size: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !452, line: 179, baseType: !453)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !711, file: !712, line: 91, baseType: !734, size: 128, offset: 576)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !735, line: 10, size: 128, elements: !736)
!735 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!736 = !{!737, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !734, file: !735, line: 12, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !452, line: 160, baseType: !453)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !734, file: !735, line: 16, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !452, line: 196, baseType: !453)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !711, file: !712, line: 92, baseType: !734, size: 128, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !711, file: !712, line: 93, baseType: !734, size: 128, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !711, file: !712, line: 106, baseType: !744, size: 192, offset: 960)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 192, elements: !745)
!745 = !{!746}
!746 = !DISubrange(count: 3)
!747 = !{!748, !749}
!748 = !DILocalVariable(name: "__path", arg: 1, scope: !706, file: !707, line: 453, type: !390)
!749 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !706, file: !707, line: 453, type: !710)
!750 = !DILocation(line: 0, scope: !706)
!751 = !DILocation(line: 455, column: 10, scope: !706)
!752 = !DILocation(line: 455, column: 3, scope: !706)
!753 = distinct !DISubprogram(name: "lstat", scope: !707, file: !707, line: 460, type: !708, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !754)
!754 = !{!755, !756}
!755 = !DILocalVariable(name: "__path", arg: 1, scope: !753, file: !707, line: 460, type: !390)
!756 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !753, file: !707, line: 460, type: !710)
!757 = !DILocation(line: 0, scope: !753)
!758 = !DILocation(line: 462, column: 10, scope: !753)
!759 = !DILocation(line: 462, column: 3, scope: !753)
!760 = distinct !DISubprogram(name: "fstat", scope: !707, file: !707, line: 467, type: !761, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{!385, !385, !710}
!763 = !{!764, !765}
!764 = !DILocalVariable(name: "__fd", arg: 1, scope: !760, file: !707, line: 467, type: !385)
!765 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !760, file: !707, line: 467, type: !710)
!766 = !DILocation(line: 0, scope: !760)
!767 = !DILocation(line: 469, column: 10, scope: !760)
!768 = !DILocation(line: 469, column: 3, scope: !760)
!769 = distinct !DISubprogram(name: "fstatat", scope: !707, file: !707, line: 474, type: !770, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!385, !385, !390, !710, !385}
!772 = !{!773, !774, !775, !776}
!773 = !DILocalVariable(name: "__fd", arg: 1, scope: !769, file: !707, line: 474, type: !385)
!774 = !DILocalVariable(name: "__filename", arg: 2, scope: !769, file: !707, line: 474, type: !390)
!775 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !769, file: !707, line: 474, type: !710)
!776 = !DILocalVariable(name: "__flag", arg: 4, scope: !769, file: !707, line: 474, type: !385)
!777 = !DILocation(line: 0, scope: !769)
!778 = !DILocation(line: 477, column: 10, scope: !769)
!779 = !DILocation(line: 477, column: 3, scope: !769)
!780 = distinct !DISubprogram(name: "mknod", scope: !707, file: !707, line: 483, type: !781, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!385, !390, !721, !715}
!783 = !{!784, !785, !786}
!784 = !DILocalVariable(name: "__path", arg: 1, scope: !780, file: !707, line: 483, type: !390)
!785 = !DILocalVariable(name: "__mode", arg: 2, scope: !780, file: !707, line: 483, type: !721)
!786 = !DILocalVariable(name: "__dev", arg: 3, scope: !780, file: !707, line: 483, type: !715)
!787 = !DILocation(line: 0, scope: !780)
!788 = !DILocation(line: 485, column: 10, scope: !780)
!789 = !DILocation(line: 485, column: 3, scope: !780)
!790 = distinct !DISubprogram(name: "mknodat", scope: !707, file: !707, line: 491, type: !791, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !793)
!791 = !DISubroutineType(types: !792)
!792 = !{!385, !385, !390, !721, !715}
!793 = !{!794, !795, !796, !797}
!794 = !DILocalVariable(name: "__fd", arg: 1, scope: !790, file: !707, line: 491, type: !385)
!795 = !DILocalVariable(name: "__path", arg: 2, scope: !790, file: !707, line: 491, type: !390)
!796 = !DILocalVariable(name: "__mode", arg: 3, scope: !790, file: !707, line: 491, type: !721)
!797 = !DILocalVariable(name: "__dev", arg: 4, scope: !790, file: !707, line: 491, type: !715)
!798 = !DILocation(line: 0, scope: !790)
!799 = !DILocation(line: 494, column: 10, scope: !790)
!800 = !DILocation(line: 494, column: 3, scope: !790)
!801 = distinct !DISubprogram(name: "stat64", scope: !707, file: !707, line: 502, type: !802, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !824)
!802 = !DISubroutineType(types: !803)
!803 = !{!385, !390, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !712, line: 119, size: 1152, elements: !806)
!806 = !{!807, !808, !810, !811, !812, !813, !814, !815, !816, !817, !818, !820, !821, !822, !823}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !805, file: !712, line: 121, baseType: !715, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !805, file: !712, line: 123, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !452, line: 149, baseType: !478)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !805, file: !712, line: 124, baseType: !719, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !805, file: !712, line: 125, baseType: !721, size: 32, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !805, file: !712, line: 132, baseType: !723, size: 32, offset: 224)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !805, file: !712, line: 133, baseType: !725, size: 32, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !805, file: !712, line: 135, baseType: !385, size: 32, offset: 288)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !805, file: !712, line: 136, baseType: !715, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !805, file: !712, line: 137, baseType: !451, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !805, file: !712, line: 143, baseType: !730, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !805, file: !712, line: 144, baseType: !819, size: 64, offset: 512)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !452, line: 180, baseType: !453)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !805, file: !712, line: 152, baseType: !734, size: 128, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !805, file: !712, line: 153, baseType: !734, size: 128, offset: 704)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !805, file: !712, line: 154, baseType: !734, size: 128, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !805, file: !712, line: 164, baseType: !744, size: 192, offset: 960)
!824 = !{!825, !826}
!825 = !DILocalVariable(name: "__path", arg: 1, scope: !801, file: !707, line: 502, type: !390)
!826 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !801, file: !707, line: 502, type: !804)
!827 = !DILocation(line: 0, scope: !801)
!828 = !DILocation(line: 504, column: 10, scope: !801)
!829 = !DILocation(line: 504, column: 3, scope: !801)
!830 = distinct !DISubprogram(name: "lstat64", scope: !707, file: !707, line: 509, type: !802, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !831)
!831 = !{!832, !833}
!832 = !DILocalVariable(name: "__path", arg: 1, scope: !830, file: !707, line: 509, type: !390)
!833 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !830, file: !707, line: 509, type: !804)
!834 = !DILocation(line: 0, scope: !830)
!835 = !DILocation(line: 511, column: 10, scope: !830)
!836 = !DILocation(line: 511, column: 3, scope: !830)
!837 = distinct !DISubprogram(name: "fstat64", scope: !707, file: !707, line: 516, type: !838, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{!385, !385, !804}
!840 = !{!841, !842}
!841 = !DILocalVariable(name: "__fd", arg: 1, scope: !837, file: !707, line: 516, type: !385)
!842 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !837, file: !707, line: 516, type: !804)
!843 = !DILocation(line: 0, scope: !837)
!844 = !DILocation(line: 518, column: 10, scope: !837)
!845 = !DILocation(line: 518, column: 3, scope: !837)
!846 = distinct !DISubprogram(name: "fstatat64", scope: !707, file: !707, line: 523, type: !847, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!385, !385, !390, !804, !385}
!849 = !{!850, !851, !852, !853}
!850 = !DILocalVariable(name: "__fd", arg: 1, scope: !846, file: !707, line: 523, type: !385)
!851 = !DILocalVariable(name: "__filename", arg: 2, scope: !846, file: !707, line: 523, type: !390)
!852 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !846, file: !707, line: 523, type: !804)
!853 = !DILocalVariable(name: "__flag", arg: 4, scope: !846, file: !707, line: 523, type: !385)
!854 = !DILocation(line: 0, scope: !846)
!855 = !DILocation(line: 526, column: 10, scope: !846)
!856 = !DILocation(line: 526, column: 3, scope: !846)
!857 = distinct !DISubprogram(name: "ix86_target_macros", scope: !1, file: !1, line: 324, type: !858, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !418)
!858 = !DISubroutineType(types: !859)
!859 = !{null}
!860 = !DILocation(line: 339, column: 19, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 338, column: 5)
!862 = distinct !DILexicalBlock(scope: !857, file: !1, line: 328, column: 7)
!863 = !DILocation(line: 339, column: 7, scope: !861)
!864 = !DILocation(line: 340, column: 19, scope: !861)
!865 = !DILocation(line: 340, column: 7, scope: !861)
!866 = !DILocation(line: 341, column: 7, scope: !861)
!867 = !DILocation(line: 344, column: 32, scope: !857)
!868 = !DILocation(line: 345, column: 11, scope: !857)
!869 = !DILocation(line: 346, column: 11, scope: !857)
!870 = !DILocation(line: 347, column: 11, scope: !857)
!871 = !DILocation(line: 344, column: 3, scope: !857)
!872 = !DILocation(line: 349, column: 1, scope: !857)
!873 = distinct !DISubprogram(name: "ix86_target_macros_internal", scope: !1, file: !1, line: 45, type: !874, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !884)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !385, !3, !3, !23, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !879, !390}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !881, line: 31, baseType: !882)
!881 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !883, line: 91, flags: DIFlagFwdDecl)
!883 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!884 = !{!885, !886, !887, !888, !889, !890, !891, !892, !893}
!885 = !DILocalVariable(name: "isa_flag", arg: 1, scope: !873, file: !1, line: 45, type: !385)
!886 = !DILocalVariable(name: "arch", arg: 2, scope: !873, file: !1, line: 46, type: !3)
!887 = !DILocalVariable(name: "tune", arg: 3, scope: !873, file: !1, line: 47, type: !3)
!888 = !DILocalVariable(name: "fpmath", arg: 4, scope: !873, file: !1, line: 48, type: !23)
!889 = !DILocalVariable(name: "def_or_undef", arg: 5, scope: !873, file: !1, line: 49, type: !876)
!890 = !DILocalVariable(name: "arch_len", scope: !873, file: !1, line: 54, type: !476)
!891 = !DILocalVariable(name: "tune_len", scope: !873, file: !1, line: 55, type: !476)
!892 = !DILocalVariable(name: "last_arch_char", scope: !873, file: !1, line: 56, type: !385)
!893 = !DILocalVariable(name: "last_tune_char", scope: !873, file: !1, line: 57, type: !385)
!894 = !DILocation(line: 0, scope: !873)
!895 = !DILocation(line: 54, column: 29, scope: !873)
!896 = !DILocation(line: 54, column: 21, scope: !873)
!897 = !DILocation(line: 55, column: 29, scope: !873)
!898 = !DILocation(line: 55, column: 21, scope: !873)
!899 = !DILocation(line: 57, column: 24, scope: !873)
!900 = !DILocation(line: 57, column: 50, scope: !873)
!901 = !DILocation(line: 60, column: 3, scope: !873)
!902 = !DILocation(line: 65, column: 21, scope: !903)
!903 = distinct !DILexicalBlock(scope: !873, file: !1, line: 61, column: 5)
!904 = !DILocation(line: 65, column: 7, scope: !903)
!905 = !DILocation(line: 66, column: 21, scope: !903)
!906 = !DILocation(line: 66, column: 7, scope: !903)
!907 = !DILocation(line: 67, column: 7, scope: !903)
!908 = !DILocation(line: 69, column: 21, scope: !903)
!909 = !DILocation(line: 69, column: 7, scope: !903)
!910 = !DILocation(line: 70, column: 21, scope: !903)
!911 = !DILocation(line: 70, column: 7, scope: !903)
!912 = !DILocation(line: 71, column: 21, scope: !903)
!913 = !DILocation(line: 71, column: 7, scope: !903)
!914 = !DILocation(line: 72, column: 21, scope: !903)
!915 = !DILocation(line: 72, column: 7, scope: !903)
!916 = !DILocation(line: 73, column: 20, scope: !917)
!917 = distinct !DILexicalBlock(scope: !903, file: !1, line: 73, column: 11)
!918 = !DILocation(line: 73, column: 11, scope: !903)
!919 = !DILocation(line: 74, column: 16, scope: !917)
!920 = !DILocation(line: 74, column: 2, scope: !917)
!921 = !DILocation(line: 77, column: 21, scope: !903)
!922 = !DILocation(line: 77, column: 7, scope: !903)
!923 = !DILocation(line: 78, column: 21, scope: !903)
!924 = !DILocation(line: 78, column: 7, scope: !903)
!925 = !DILocation(line: 79, column: 21, scope: !903)
!926 = !DILocation(line: 79, column: 7, scope: !903)
!927 = !DILocation(line: 80, column: 21, scope: !903)
!928 = !DILocation(line: 80, column: 7, scope: !903)
!929 = !DILocation(line: 81, column: 7, scope: !903)
!930 = !DILocation(line: 83, column: 21, scope: !903)
!931 = !DILocation(line: 83, column: 7, scope: !903)
!932 = !DILocation(line: 84, column: 21, scope: !903)
!933 = !DILocation(line: 84, column: 7, scope: !903)
!934 = !DILocation(line: 85, column: 7, scope: !903)
!935 = !DILocation(line: 56, column: 24, scope: !873)
!936 = !DILocation(line: 56, column: 50, scope: !873)
!937 = !DILocation(line: 87, column: 21, scope: !903)
!938 = !DILocation(line: 87, column: 7, scope: !903)
!939 = !DILocation(line: 88, column: 21, scope: !903)
!940 = !DILocation(line: 88, column: 7, scope: !903)
!941 = !DILocation(line: 89, column: 11, scope: !903)
!942 = !DILocation(line: 90, column: 16, scope: !943)
!943 = distinct !DILexicalBlock(scope: !903, file: !1, line: 89, column: 11)
!944 = !DILocation(line: 90, column: 2, scope: !943)
!945 = !DILocation(line: 92, column: 16, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !1, line: 91, column: 16)
!947 = !DILocation(line: 92, column: 2, scope: !946)
!948 = !DILocation(line: 93, column: 25, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !1, line: 93, column: 16)
!950 = !DILocation(line: 93, column: 16, scope: !946)
!951 = !DILocation(line: 94, column: 16, scope: !949)
!952 = !DILocation(line: 94, column: 2, scope: !949)
!953 = !DILocation(line: 97, column: 21, scope: !903)
!954 = !DILocation(line: 97, column: 7, scope: !903)
!955 = !DILocation(line: 98, column: 21, scope: !903)
!956 = !DILocation(line: 98, column: 7, scope: !903)
!957 = !DILocation(line: 99, column: 20, scope: !958)
!958 = distinct !DILexicalBlock(scope: !903, file: !1, line: 99, column: 11)
!959 = !DILocation(line: 99, column: 11, scope: !903)
!960 = !DILocation(line: 100, column: 16, scope: !958)
!961 = !DILocation(line: 100, column: 2, scope: !958)
!962 = !DILocation(line: 103, column: 21, scope: !903)
!963 = !DILocation(line: 103, column: 7, scope: !903)
!964 = !DILocation(line: 104, column: 21, scope: !903)
!965 = !DILocation(line: 104, column: 7, scope: !903)
!966 = !DILocation(line: 105, column: 7, scope: !903)
!967 = !DILocation(line: 107, column: 21, scope: !903)
!968 = !DILocation(line: 107, column: 7, scope: !903)
!969 = !DILocation(line: 108, column: 21, scope: !903)
!970 = !DILocation(line: 108, column: 7, scope: !903)
!971 = !DILocation(line: 109, column: 7, scope: !903)
!972 = !DILocation(line: 111, column: 21, scope: !903)
!973 = !DILocation(line: 111, column: 7, scope: !903)
!974 = !DILocation(line: 112, column: 21, scope: !903)
!975 = !DILocation(line: 112, column: 7, scope: !903)
!976 = !DILocation(line: 113, column: 7, scope: !903)
!977 = !DILocation(line: 115, column: 21, scope: !903)
!978 = !DILocation(line: 115, column: 7, scope: !903)
!979 = !DILocation(line: 116, column: 21, scope: !903)
!980 = !DILocation(line: 116, column: 7, scope: !903)
!981 = !DILocation(line: 117, column: 7, scope: !903)
!982 = !DILocation(line: 119, column: 21, scope: !903)
!983 = !DILocation(line: 119, column: 7, scope: !903)
!984 = !DILocation(line: 120, column: 21, scope: !903)
!985 = !DILocation(line: 120, column: 7, scope: !903)
!986 = !DILocation(line: 121, column: 7, scope: !903)
!987 = !DILocation(line: 123, column: 21, scope: !903)
!988 = !DILocation(line: 123, column: 7, scope: !903)
!989 = !DILocation(line: 124, column: 21, scope: !903)
!990 = !DILocation(line: 124, column: 7, scope: !903)
!991 = !DILocation(line: 125, column: 7, scope: !903)
!992 = !DILocation(line: 131, column: 7, scope: !903)
!993 = !DILocation(line: 132, column: 5, scope: !903)
!994 = !DILocation(line: 135, column: 3, scope: !873)
!995 = !DILocation(line: 138, column: 21, scope: !996)
!996 = distinct !DILexicalBlock(scope: !873, file: !1, line: 136, column: 5)
!997 = !DILocation(line: 138, column: 7, scope: !996)
!998 = !DILocation(line: 139, column: 7, scope: !996)
!999 = !DILocation(line: 141, column: 21, scope: !996)
!1000 = !DILocation(line: 141, column: 7, scope: !996)
!1001 = !DILocation(line: 142, column: 7, scope: !996)
!1002 = !DILocation(line: 144, column: 21, scope: !996)
!1003 = !DILocation(line: 144, column: 7, scope: !996)
!1004 = !DILocation(line: 145, column: 21, scope: !996)
!1005 = !DILocation(line: 145, column: 7, scope: !996)
!1006 = !DILocation(line: 146, column: 26, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !996, file: !1, line: 146, column: 11)
!1008 = !DILocation(line: 146, column: 11, scope: !996)
!1009 = !DILocation(line: 147, column: 16, scope: !1007)
!1010 = !DILocation(line: 147, column: 2, scope: !1007)
!1011 = !DILocation(line: 150, column: 21, scope: !996)
!1012 = !DILocation(line: 150, column: 7, scope: !996)
!1013 = !DILocation(line: 151, column: 21, scope: !996)
!1014 = !DILocation(line: 151, column: 7, scope: !996)
!1015 = !DILocation(line: 152, column: 7, scope: !996)
!1016 = !DILocation(line: 155, column: 18, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !996, file: !1, line: 153, column: 2)
!1018 = !DILocation(line: 155, column: 4, scope: !1017)
!1019 = !DILocation(line: 158, column: 18, scope: !1017)
!1020 = !DILocation(line: 158, column: 4, scope: !1017)
!1021 = !DILocation(line: 159, column: 4, scope: !1017)
!1022 = !DILocation(line: 163, column: 21, scope: !996)
!1023 = !DILocation(line: 163, column: 7, scope: !996)
!1024 = !DILocation(line: 164, column: 7, scope: !996)
!1025 = !DILocation(line: 166, column: 21, scope: !996)
!1026 = !DILocation(line: 166, column: 7, scope: !996)
!1027 = !DILocation(line: 167, column: 11, scope: !996)
!1028 = !DILocation(line: 168, column: 16, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !996, file: !1, line: 167, column: 11)
!1030 = !DILocation(line: 168, column: 2, scope: !1029)
!1031 = !DILocation(line: 170, column: 16, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 169, column: 16)
!1033 = !DILocation(line: 170, column: 2, scope: !1032)
!1034 = !DILocation(line: 171, column: 25, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 171, column: 16)
!1036 = !DILocation(line: 171, column: 16, scope: !1032)
!1037 = !DILocation(line: 172, column: 16, scope: !1035)
!1038 = !DILocation(line: 172, column: 2, scope: !1035)
!1039 = !DILocation(line: 175, column: 21, scope: !996)
!1040 = !DILocation(line: 175, column: 7, scope: !996)
!1041 = !DILocation(line: 176, column: 20, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !996, file: !1, line: 176, column: 11)
!1043 = !DILocation(line: 176, column: 11, scope: !996)
!1044 = !DILocation(line: 177, column: 16, scope: !1042)
!1045 = !DILocation(line: 177, column: 2, scope: !1042)
!1046 = !DILocation(line: 180, column: 21, scope: !996)
!1047 = !DILocation(line: 180, column: 7, scope: !996)
!1048 = !DILocation(line: 181, column: 7, scope: !996)
!1049 = !DILocation(line: 183, column: 21, scope: !996)
!1050 = !DILocation(line: 183, column: 7, scope: !996)
!1051 = !DILocation(line: 184, column: 7, scope: !996)
!1052 = !DILocation(line: 186, column: 21, scope: !996)
!1053 = !DILocation(line: 186, column: 7, scope: !996)
!1054 = !DILocation(line: 187, column: 7, scope: !996)
!1055 = !DILocation(line: 189, column: 21, scope: !996)
!1056 = !DILocation(line: 189, column: 7, scope: !996)
!1057 = !DILocation(line: 190, column: 7, scope: !996)
!1058 = !DILocation(line: 192, column: 21, scope: !996)
!1059 = !DILocation(line: 192, column: 7, scope: !996)
!1060 = !DILocation(line: 193, column: 7, scope: !996)
!1061 = !DILocation(line: 195, column: 21, scope: !996)
!1062 = !DILocation(line: 195, column: 7, scope: !996)
!1063 = !DILocation(line: 196, column: 7, scope: !996)
!1064 = !DILocation(line: 205, column: 16, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !873, file: !1, line: 205, column: 7)
!1066 = !DILocation(line: 205, column: 7, scope: !873)
!1067 = !DILocation(line: 206, column: 19, scope: !1065)
!1068 = !DILocation(line: 206, column: 5, scope: !1065)
!1069 = !DILocation(line: 207, column: 16, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !873, file: !1, line: 207, column: 7)
!1071 = !DILocation(line: 207, column: 7, scope: !873)
!1072 = !DILocation(line: 208, column: 19, scope: !1070)
!1073 = !DILocation(line: 208, column: 5, scope: !1070)
!1074 = !DILocation(line: 209, column: 16, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !873, file: !1, line: 209, column: 7)
!1076 = !DILocation(line: 209, column: 7, scope: !873)
!1077 = !DILocation(line: 210, column: 19, scope: !1075)
!1078 = !DILocation(line: 210, column: 5, scope: !1075)
!1079 = !DILocation(line: 211, column: 16, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !873, file: !1, line: 211, column: 7)
!1081 = !DILocation(line: 211, column: 7, scope: !873)
!1082 = !DILocation(line: 212, column: 19, scope: !1080)
!1083 = !DILocation(line: 212, column: 5, scope: !1080)
!1084 = !DILocation(line: 213, column: 16, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !873, file: !1, line: 213, column: 7)
!1086 = !DILocation(line: 213, column: 7, scope: !873)
!1087 = !DILocation(line: 214, column: 19, scope: !1085)
!1088 = !DILocation(line: 214, column: 5, scope: !1085)
!1089 = !DILocation(line: 215, column: 16, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !873, file: !1, line: 215, column: 7)
!1091 = !DILocation(line: 215, column: 7, scope: !873)
!1092 = !DILocation(line: 216, column: 19, scope: !1090)
!1093 = !DILocation(line: 216, column: 5, scope: !1090)
!1094 = !DILocation(line: 217, column: 16, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !873, file: !1, line: 217, column: 7)
!1096 = !DILocation(line: 217, column: 7, scope: !873)
!1097 = !DILocation(line: 218, column: 19, scope: !1095)
!1098 = !DILocation(line: 218, column: 5, scope: !1095)
!1099 = !DILocation(line: 219, column: 16, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !873, file: !1, line: 219, column: 7)
!1101 = !DILocation(line: 219, column: 7, scope: !873)
!1102 = !DILocation(line: 220, column: 19, scope: !1100)
!1103 = !DILocation(line: 220, column: 5, scope: !1100)
!1104 = !DILocation(line: 221, column: 16, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !873, file: !1, line: 221, column: 7)
!1106 = !DILocation(line: 221, column: 7, scope: !873)
!1107 = !DILocation(line: 222, column: 19, scope: !1105)
!1108 = !DILocation(line: 222, column: 5, scope: !1105)
!1109 = !DILocation(line: 223, column: 16, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !873, file: !1, line: 223, column: 7)
!1111 = !DILocation(line: 223, column: 7, scope: !873)
!1112 = !DILocation(line: 224, column: 19, scope: !1110)
!1113 = !DILocation(line: 224, column: 5, scope: !1110)
!1114 = !DILocation(line: 225, column: 16, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !873, file: !1, line: 225, column: 7)
!1116 = !DILocation(line: 225, column: 7, scope: !873)
!1117 = !DILocation(line: 226, column: 19, scope: !1115)
!1118 = !DILocation(line: 226, column: 5, scope: !1115)
!1119 = !DILocation(line: 227, column: 16, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !873, file: !1, line: 227, column: 7)
!1121 = !DILocation(line: 227, column: 7, scope: !873)
!1122 = !DILocation(line: 228, column: 19, scope: !1120)
!1123 = !DILocation(line: 228, column: 5, scope: !1120)
!1124 = !DILocation(line: 229, column: 16, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !873, file: !1, line: 229, column: 7)
!1126 = !DILocation(line: 229, column: 7, scope: !873)
!1127 = !DILocation(line: 230, column: 19, scope: !1125)
!1128 = !DILocation(line: 230, column: 5, scope: !1125)
!1129 = !DILocation(line: 231, column: 16, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !873, file: !1, line: 231, column: 7)
!1131 = !DILocation(line: 231, column: 7, scope: !873)
!1132 = !DILocation(line: 232, column: 19, scope: !1130)
!1133 = !DILocation(line: 232, column: 5, scope: !1130)
!1134 = !DILocation(line: 233, column: 16, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !873, file: !1, line: 233, column: 7)
!1136 = !DILocation(line: 233, column: 7, scope: !873)
!1137 = !DILocation(line: 234, column: 19, scope: !1135)
!1138 = !DILocation(line: 234, column: 5, scope: !1135)
!1139 = !DILocation(line: 235, column: 16, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !873, file: !1, line: 235, column: 7)
!1141 = !DILocation(line: 235, column: 7, scope: !873)
!1142 = !DILocation(line: 236, column: 19, scope: !1140)
!1143 = !DILocation(line: 236, column: 5, scope: !1140)
!1144 = !DILocation(line: 237, column: 16, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !873, file: !1, line: 237, column: 7)
!1146 = !DILocation(line: 237, column: 7, scope: !873)
!1147 = !DILocation(line: 238, column: 19, scope: !1145)
!1148 = !DILocation(line: 238, column: 5, scope: !1145)
!1149 = !DILocation(line: 239, column: 16, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !873, file: !1, line: 239, column: 7)
!1151 = !DILocation(line: 239, column: 7, scope: !873)
!1152 = !DILocation(line: 240, column: 19, scope: !1150)
!1153 = !DILocation(line: 240, column: 5, scope: !1150)
!1154 = !DILocation(line: 241, column: 16, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !873, file: !1, line: 241, column: 7)
!1156 = !DILocation(line: 241, column: 7, scope: !873)
!1157 = !DILocation(line: 242, column: 19, scope: !1155)
!1158 = !DILocation(line: 242, column: 5, scope: !1155)
!1159 = !DILocation(line: 243, column: 15, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !873, file: !1, line: 243, column: 7)
!1161 = !DILocation(line: 243, column: 42, scope: !1160)
!1162 = !DILocation(line: 243, column: 29, scope: !1160)
!1163 = !DILocation(line: 244, column: 19, scope: !1160)
!1164 = !DILocation(line: 244, column: 5, scope: !1160)
!1165 = !DILocation(line: 245, column: 42, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !873, file: !1, line: 245, column: 7)
!1167 = !DILocation(line: 245, column: 29, scope: !1166)
!1168 = !DILocation(line: 246, column: 19, scope: !1166)
!1169 = !DILocation(line: 246, column: 5, scope: !1166)
!1170 = !DILocation(line: 247, column: 1, scope: !873)
!1171 = distinct !DISubprogram(name: "ix86_register_pragmas", scope: !1, file: !1, line: 358, type: !858, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !418)
!1172 = !DILocation(line: 361, column: 38, scope: !1171)
!1173 = !DILocation(line: 366, column: 1, scope: !1171)
!1174 = distinct !DISubprogram(name: "ix86_pragma_target_parse", scope: !1, file: !1, line: 255, type: !1175, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1933)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!384, !1177, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !883, line: 56, baseType: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !156, line: 3371, size: 1792, elements: !1180)
!1180 = !{!1181, !1214, !1220, !1231, !1248, !1259, !1264, !1270, !1276, !1289, !1301, !1339, !1458, !1486, !1494, !1495, !1500, !1509, !1515, !1520, !1524, !1528, !1557, !1604, !1610, !1617, !1624, !1650, !1675, !1692, !1704, !1726, !1744, !1915}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1179, file: !156, line: 3372, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !156, line: 360, size: 64, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1182, file: !156, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1182, file: !156, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1182, file: !156, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1182, file: !156, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1182, file: !156, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1182, file: !156, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1182, file: !156, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1182, file: !156, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1182, file: !156, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1182, file: !156, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1182, file: !156, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1182, file: !156, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1182, file: !156, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1182, file: !156, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1182, file: !156, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1182, file: !156, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1182, file: !156, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1182, file: !156, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1182, file: !156, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1182, file: !156, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1182, file: !156, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1182, file: !156, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1182, file: !156, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1182, file: !156, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1182, file: !156, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1182, file: !156, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1182, file: !156, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1182, file: !156, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1182, file: !156, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1182, file: !156, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1179, file: !156, line: 3373, baseType: !1215, size: 192)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !156, line: 402, size: 192, elements: !1216)
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1215, file: !156, line: 403, baseType: !1182, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1215, file: !156, line: 404, baseType: !1177, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1215, file: !156, line: 405, baseType: !1177, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1179, file: !156, line: 3374, baseType: !1221, size: 320)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !156, line: 1384, size: 320, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1221, file: !156, line: 1385, baseType: !1215, size: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1221, file: !156, line: 1386, baseType: !1225, size: 128, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1226, line: 58, baseType: !1227)
!1226 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1226, line: 54, size: 128, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1227, file: !1226, line: 56, baseType: !478, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1227, file: !1226, line: 57, baseType: !453, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1179, file: !156, line: 3375, baseType: !1232, size: 256)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !156, line: 1397, size: 256, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1232, file: !156, line: 1398, baseType: !1215, size: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1232, file: !156, line: 1399, baseType: !1236, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1238, line: 52, size: 256, elements: !1239)
!1238 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1237, file: !1238, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1237, file: !1238, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1237, file: !1238, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1237, file: !1238, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1237, file: !1238, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1237, file: !1238, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1237, file: !1238, line: 62, baseType: !1247, size: 192, offset: 64)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 192, elements: !745)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1179, file: !156, line: 3376, baseType: !1249, size: 256)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !156, line: 1408, size: 256, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1249, file: !156, line: 1409, baseType: !1215, size: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1249, file: !156, line: 1410, baseType: !1253, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1255, line: 27, size: 192, elements: !1256)
!1255 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1256 = !{!1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1254, file: !1255, line: 29, baseType: !1225, size: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1254, file: !1255, line: 30, baseType: !27, size: 32, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1179, file: !156, line: 3377, baseType: !1260, size: 256)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !156, line: 1437, size: 256, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1260, file: !156, line: 1438, baseType: !1215, size: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1260, file: !156, line: 1439, baseType: !1177, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1179, file: !156, line: 3378, baseType: !1265, size: 256)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !156, line: 1418, size: 256, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1265, file: !156, line: 1419, baseType: !1215, size: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1265, file: !156, line: 1420, baseType: !385, size: 32, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1265, file: !156, line: 1421, baseType: !459, size: 8, offset: 224)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1179, file: !156, line: 3379, baseType: !1271, size: 320)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !156, line: 1428, size: 320, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1271, file: !156, line: 1429, baseType: !1215, size: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1271, file: !156, line: 1430, baseType: !1177, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1271, file: !156, line: 1431, baseType: !1177, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1179, file: !156, line: 3380, baseType: !1277, size: 320)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !156, line: 1460, size: 320, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1277, file: !156, line: 1461, baseType: !1215, size: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1277, file: !156, line: 1462, baseType: !1281, size: 128, offset: 192)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1282, line: 31, size: 128, elements: !1283)
!1282 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1283 = !{!1284, !1287, !1288}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1281, file: !1282, line: 32, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1281, file: !1282, line: 33, baseType: !5, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1281, file: !1282, line: 34, baseType: !5, size: 32, offset: 96)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1179, file: !156, line: 3381, baseType: !1290, size: 384)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !156, line: 2507, size: 384, elements: !1291)
!1291 = !{!1292, !1293, !1298, !1299, !1300}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1290, file: !156, line: 2508, baseType: !1215, size: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1290, file: !156, line: 2509, baseType: !1294, size: 32, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1295, line: 58, baseType: !1296)
!1295 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1297, line: 44, baseType: !5)
!1297 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1290, file: !156, line: 2510, baseType: !5, size: 32, offset: 224)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !156, line: 2511, baseType: !1177, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1290, file: !156, line: 2512, baseType: !1177, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1179, file: !156, line: 3382, baseType: !1302, size: 896)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !156, line: 2652, size: 896, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1302, file: !156, line: 2653, baseType: !1290, size: 384)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1302, file: !156, line: 2654, baseType: !1177, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1302, file: !156, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1302, file: !156, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1302, file: !156, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1302, file: !156, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1302, file: !156, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1302, file: !156, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1302, file: !156, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1302, file: !156, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1302, file: !156, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1302, file: !156, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1302, file: !156, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1302, file: !156, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1302, file: !156, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1302, file: !156, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1302, file: !156, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1302, file: !156, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1302, file: !156, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1302, file: !156, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1302, file: !156, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1302, file: !156, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1302, file: !156, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1302, file: !156, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1302, file: !156, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1302, file: !156, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1302, file: !156, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1302, file: !156, line: 2703, baseType: !5, size: 32, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1302, file: !156, line: 2705, baseType: !1177, size: 64, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1302, file: !156, line: 2706, baseType: !1177, size: 64, offset: 640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1302, file: !156, line: 2707, baseType: !1177, size: 64, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1302, file: !156, line: 2708, baseType: !1177, size: 64, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1302, file: !156, line: 2711, baseType: !1337, size: 64, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !156, line: 2711, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1179, file: !156, line: 3383, baseType: !1340, size: 960)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !156, line: 2756, size: 960, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1340, file: !156, line: 2757, baseType: !1302, size: 896)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1340, file: !156, line: 2758, baseType: !1344, size: 64, offset: 896)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !883, line: 50, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1347, line: 240, size: 384, elements: !1348)
!1347 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1346, file: !1347, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1346, file: !1347, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !1346, file: !1347, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !1346, file: !1347, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !1346, file: !1347, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !1346, file: !1347, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !1346, file: !1347, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1346, file: !1347, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !1346, file: !1347, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !1346, file: !1347, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1346, file: !1347, line: 321, baseType: !1360, size: 320, offset: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !1347, line: 315, size: 320, elements: !1361)
!1361 = !{!1362, !1425, !1427, !1456, !1457}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1360, file: !1347, line: 316, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 64, elements: !460)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !1347, line: 183, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !1347, line: 166, size: 64, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1379, !1380, !1392, !1395, !1398, !1399, !1402, !1415, !1422}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !1365, file: !1347, line: 168, baseType: !385, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !1365, file: !1347, line: 169, baseType: !5, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !1365, file: !1347, line: 170, baseType: !390, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !1365, file: !1347, line: 171, baseType: !1344, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !1365, file: !1347, line: 172, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !883, line: 53, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !1347, line: 359, size: 128, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !1374, file: !1347, line: 360, baseType: !385, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1374, file: !1347, line: 361, baseType: !1378, size: 64, offset: 64)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 64, elements: !460)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !1365, file: !1347, line: 173, baseType: !27, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !1365, file: !1347, line: 174, baseType: !1381, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !1347, line: 133, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1347, line: 115, size: 32, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !1382, file: !1347, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !1382, file: !1347, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !1382, file: !1347, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !1382, file: !1347, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !1382, file: !1347, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !1382, file: !1347, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !1382, file: !1347, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1382, file: !1347, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !1365, file: !1347, line: 175, baseType: !1393, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !1347, line: 175, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !1365, file: !1347, line: 176, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !883, line: 46, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !1365, file: !1347, line: 177, baseType: !1177, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !1365, file: !1347, line: 178, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !883, line: 110, flags: DIFlagFwdDecl)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !1365, file: !1347, line: 179, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !1347, line: 150, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !1347, line: 142, size: 320, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1413, !1414}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1405, file: !1347, line: 144, baseType: !1177, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1405, file: !1347, line: 145, baseType: !1344, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1405, file: !1347, line: 146, baseType: !1344, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1405, file: !1347, line: 147, baseType: !1411, size: 32, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1412, line: 31, baseType: !385)
!1412 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1405, file: !1347, line: 148, baseType: !5, size: 32, offset: 224)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1405, file: !1347, line: 149, baseType: !384, size: 8, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !1365, file: !1347, line: 180, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !1347, line: 162, baseType: !1418)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !1347, line: 159, size: 128, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1418, file: !1347, line: 160, baseType: !1177, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1418, file: !1347, line: 161, baseType: !453, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !1365, file: !1347, line: 181, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !1347, line: 181, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !1360, file: !1347, line: 317, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 64, elements: !460)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !1360, file: !1347, line: 318, baseType: !1428, size: 320)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !1347, line: 188, size: 320, elements: !1429)
!1429 = !{!1430, !1432, !1455}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1428, file: !1347, line: 190, baseType: !1431, size: 192)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 192, elements: !745)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1428, file: !1347, line: 193, baseType: !1433, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !1347, line: 206, size: 320, elements: !1435)
!1435 = !{!1436, !1440, !1441, !1442, !1454}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1434, file: !1347, line: 208, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !883, line: 62, baseType: !1439)
!1439 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !883, line: 61, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1434, file: !1347, line: 211, baseType: !5, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1434, file: !1347, line: 214, baseType: !453, size: 64, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1434, file: !1347, line: 224, baseType: !1443, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !1347, line: 202, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !1347, line: 202, size: 128, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1445, file: !1347, line: 202, baseType: !1448, size: 128)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !1347, line: 200, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !1347, line: 200, size: 128, elements: !1450)
!1450 = !{!1451, !1452, !1453}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1449, file: !1347, line: 200, baseType: !5, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1449, file: !1347, line: 200, baseType: !5, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1449, file: !1347, line: 200, baseType: !1378, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1434, file: !1347, line: 234, baseType: !1443, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1428, file: !1347, line: 197, baseType: !453, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !1360, file: !1347, line: 319, baseType: !1237, size: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !1360, file: !1347, line: 320, baseType: !1254, size: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1179, file: !156, line: 3384, baseType: !1459, size: 1472)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !156, line: 3114, size: 1472, elements: !1460)
!1460 = !{!1461, !1482, !1483, !1484, !1485}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1459, file: !156, line: 3115, baseType: !1462, size: 1216)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !156, line: 2984, size: 1216, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1462, file: !156, line: 2985, baseType: !1340, size: 960)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1462, file: !156, line: 2986, baseType: !1177, size: 64, offset: 960)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1462, file: !156, line: 2987, baseType: !1177, size: 64, offset: 1024)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1462, file: !156, line: 2988, baseType: !1177, size: 64, offset: 1088)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1462, file: !156, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1462, file: !156, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1462, file: !156, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1462, file: !156, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1462, file: !156, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1462, file: !156, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1462, file: !156, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1462, file: !156, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1462, file: !156, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1462, file: !156, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1462, file: !156, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1462, file: !156, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1462, file: !156, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1462, file: !156, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1459, file: !156, line: 3117, baseType: !1177, size: 64, offset: 1216)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1459, file: !156, line: 3119, baseType: !1177, size: 64, offset: 1280)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1459, file: !156, line: 3121, baseType: !1177, size: 64, offset: 1344)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1459, file: !156, line: 3123, baseType: !1177, size: 64, offset: 1408)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1179, file: !156, line: 3385, baseType: !1487, size: 1088)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !156, line: 2874, size: 1088, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1487, file: !156, line: 2875, baseType: !1340, size: 960)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1487, file: !156, line: 2876, baseType: !1344, size: 64, offset: 960)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1487, file: !156, line: 2877, baseType: !1492, size: 64, offset: 1024)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !156, line: 2856, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1179, file: !156, line: 3386, baseType: !1462, size: 1216)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1179, file: !156, line: 3387, baseType: !1496, size: 1280)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !156, line: 3093, size: 1280, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1496, file: !156, line: 3094, baseType: !1462, size: 1216)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1496, file: !156, line: 3095, baseType: !1492, size: 64, offset: 1216)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1179, file: !156, line: 3388, baseType: !1501, size: 1216)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !156, line: 2824, size: 1216, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1501, file: !156, line: 2825, baseType: !1302, size: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1501, file: !156, line: 2827, baseType: !1177, size: 64, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1501, file: !156, line: 2828, baseType: !1177, size: 64, offset: 960)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1501, file: !156, line: 2829, baseType: !1177, size: 64, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1501, file: !156, line: 2830, baseType: !1177, size: 64, offset: 1088)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1501, file: !156, line: 2831, baseType: !1177, size: 64, offset: 1152)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1179, file: !156, line: 3389, baseType: !1510, size: 1024)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !156, line: 2850, size: 1024, elements: !1511)
!1511 = !{!1512, !1513, !1514}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1510, file: !156, line: 2851, baseType: !1340, size: 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1510, file: !156, line: 2852, baseType: !385, size: 32, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1510, file: !156, line: 2853, baseType: !385, size: 32, offset: 992)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1179, file: !156, line: 3390, baseType: !1516, size: 1024)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !156, line: 2857, size: 1024, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1516, file: !156, line: 2858, baseType: !1340, size: 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1516, file: !156, line: 2859, baseType: !1492, size: 64, offset: 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1179, file: !156, line: 3391, baseType: !1521, size: 960)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !156, line: 2862, size: 960, elements: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1521, file: !156, line: 2863, baseType: !1340, size: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1179, file: !156, line: 3392, baseType: !1525, size: 1472)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !156, line: 3304, size: 1472, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1525, file: !156, line: 3305, baseType: !1459, size: 1472)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1179, file: !156, line: 3393, baseType: !1529, size: 1792)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !156, line: 3248, size: 1792, elements: !1530)
!1530 = !{!1531, !1532, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1529, file: !156, line: 3249, baseType: !1459, size: 1472)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1529, file: !156, line: 3251, baseType: !1533, size: 64, offset: 1472)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1535, line: 41, flags: DIFlagFwdDecl)
!1535 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1529, file: !156, line: 3254, baseType: !1177, size: 64, offset: 1536)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1529, file: !156, line: 3257, baseType: !1177, size: 64, offset: 1600)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1529, file: !156, line: 3258, baseType: !1177, size: 64, offset: 1664)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1529, file: !156, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1529, file: !156, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1529, file: !156, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1529, file: !156, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1529, file: !156, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1529, file: !156, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1529, file: !156, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1529, file: !156, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1529, file: !156, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1529, file: !156, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1529, file: !156, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1529, file: !156, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1529, file: !156, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1529, file: !156, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1529, file: !156, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1529, file: !156, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1529, file: !156, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1529, file: !156, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1179, file: !156, line: 3394, baseType: !1558, size: 1344)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !156, line: 2279, size: 1344, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1558, file: !156, line: 2280, baseType: !1215, size: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1558, file: !156, line: 2281, baseType: !1177, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1558, file: !156, line: 2282, baseType: !1177, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1558, file: !156, line: 2283, baseType: !1177, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1558, file: !156, line: 2284, baseType: !1177, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1558, file: !156, line: 2285, baseType: !5, size: 32, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1558, file: !156, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1558, file: !156, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1558, file: !156, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1558, file: !156, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1558, file: !156, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1558, file: !156, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1558, file: !156, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1558, file: !156, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1558, file: !156, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1558, file: !156, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1558, file: !156, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1558, file: !156, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1558, file: !156, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1558, file: !156, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1558, file: !156, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1558, file: !156, line: 2305, baseType: !5, size: 32, offset: 512)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1558, file: !156, line: 2306, baseType: !1411, size: 32, offset: 544)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1558, file: !156, line: 2307, baseType: !1177, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1558, file: !156, line: 2308, baseType: !1177, size: 64, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1558, file: !156, line: 2314, baseType: !1586, size: 64, offset: 704)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !156, line: 2309, size: 64, elements: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1586, file: !156, line: 2310, baseType: !385, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1586, file: !156, line: 2311, baseType: !390, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1586, file: !156, line: 2312, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !156, line: 2277, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1558, file: !156, line: 2315, baseType: !1177, size: 64, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1558, file: !156, line: 2316, baseType: !1177, size: 64, offset: 832)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1558, file: !156, line: 2317, baseType: !1177, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1558, file: !156, line: 2318, baseType: !1177, size: 64, offset: 960)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1558, file: !156, line: 2319, baseType: !1177, size: 64, offset: 1024)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1558, file: !156, line: 2320, baseType: !1177, size: 64, offset: 1088)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1558, file: !156, line: 2321, baseType: !1177, size: 64, offset: 1152)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1558, file: !156, line: 2322, baseType: !1177, size: 64, offset: 1216)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1558, file: !156, line: 2324, baseType: !1602, size: 64, offset: 1280)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !156, line: 2324, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1179, file: !156, line: 3395, baseType: !1605, size: 320)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !156, line: 1469, size: 320, elements: !1606)
!1606 = !{!1607, !1608, !1609}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1605, file: !156, line: 1470, baseType: !1215, size: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1605, file: !156, line: 1471, baseType: !1177, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1605, file: !156, line: 1472, baseType: !1177, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1179, file: !156, line: 3396, baseType: !1611, size: 320)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !156, line: 1482, size: 320, elements: !1612)
!1612 = !{!1613, !1614, !1615}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1611, file: !156, line: 1483, baseType: !1215, size: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1611, file: !156, line: 1484, baseType: !385, size: 32, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1611, file: !156, line: 1485, baseType: !1616, size: 64, offset: 256)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 64, elements: !460)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1179, file: !156, line: 3397, baseType: !1618, size: 384)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !156, line: 1829, size: 384, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1623}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1618, file: !156, line: 1830, baseType: !1215, size: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1618, file: !156, line: 1831, baseType: !1294, size: 32, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1618, file: !156, line: 1832, baseType: !1177, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1618, file: !156, line: 1835, baseType: !1616, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1179, file: !156, line: 3398, baseType: !1625, size: 704)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !156, line: 1898, size: 704, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1633, !1634, !1637}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1625, file: !156, line: 1899, baseType: !1215, size: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1625, file: !156, line: 1902, baseType: !1177, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1625, file: !156, line: 1905, baseType: !1630, size: 64, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !883, line: 58, baseType: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !883, line: 57, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1625, file: !156, line: 1908, baseType: !5, size: 32, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1625, file: !156, line: 1911, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !156, line: 1876, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1625, file: !156, line: 1914, baseType: !1638, size: 256, offset: 448)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !156, line: 1883, size: 256, elements: !1639)
!1639 = !{!1640, !1642, !1643, !1648}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1638, file: !156, line: 1884, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1638, file: !156, line: 1885, baseType: !1641, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1638, file: !156, line: 1891, baseType: !1644, size: 64, offset: 128)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !156, line: 1891, size: 64, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1644, file: !156, line: 1891, baseType: !1630, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1644, file: !156, line: 1891, baseType: !1177, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1638, file: !156, line: 1892, baseType: !1649, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1179, file: !156, line: 3399, baseType: !1651, size: 704)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !156, line: 2008, size: 704, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1670, !1671, !1672, !1673, !1674}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1651, file: !156, line: 2009, baseType: !1215, size: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1651, file: !156, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1651, file: !156, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1651, file: !156, line: 2014, baseType: !1294, size: 32, offset: 224)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1651, file: !156, line: 2016, baseType: !1177, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1651, file: !156, line: 2017, baseType: !1659, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !156, line: 183, baseType: !1661)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !156, line: 183, size: 128, elements: !1662)
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1661, file: !156, line: 183, baseType: !1664, size: 128)
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !156, line: 182, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !156, line: 182, size: 128, elements: !1666)
!1666 = !{!1667, !1668, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1665, file: !156, line: 182, baseType: !5, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1665, file: !156, line: 182, baseType: !5, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1665, file: !156, line: 182, baseType: !1616, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1651, file: !156, line: 2019, baseType: !1177, size: 64, offset: 384)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1651, file: !156, line: 2020, baseType: !1177, size: 64, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1651, file: !156, line: 2021, baseType: !1177, size: 64, offset: 512)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1651, file: !156, line: 2022, baseType: !1177, size: 64, offset: 576)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1651, file: !156, line: 2023, baseType: !1177, size: 64, offset: 640)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1179, file: !156, line: 3400, baseType: !1676, size: 832)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !156, line: 2430, size: 832, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1676, file: !156, line: 2431, baseType: !1215, size: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1676, file: !156, line: 2433, baseType: !1177, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1676, file: !156, line: 2434, baseType: !1177, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1676, file: !156, line: 2435, baseType: !1177, size: 64, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1676, file: !156, line: 2436, baseType: !1177, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1676, file: !156, line: 2437, baseType: !1659, size: 64, offset: 448)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1676, file: !156, line: 2438, baseType: !1177, size: 64, offset: 512)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1676, file: !156, line: 2440, baseType: !1177, size: 64, offset: 576)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1676, file: !156, line: 2441, baseType: !1177, size: 64, offset: 640)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1676, file: !156, line: 2443, baseType: !1688, size: 128, offset: 704)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !156, line: 182, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !156, line: 182, size: 128, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1689, file: !156, line: 182, baseType: !1664, size: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1179, file: !156, line: 3401, baseType: !1693, size: 320)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !156, line: 3327, size: 320, elements: !1694)
!1694 = !{!1695, !1696, !1703}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1693, file: !156, line: 3329, baseType: !1215, size: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1693, file: !156, line: 3330, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !156, line: 3320, size: 192, elements: !1699)
!1699 = !{!1700, !1701, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1698, file: !156, line: 3322, baseType: !1697, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1698, file: !156, line: 3323, baseType: !1697, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1698, file: !156, line: 3324, baseType: !1177, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1693, file: !156, line: 3331, baseType: !1697, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1179, file: !156, line: 3402, baseType: !1705, size: 256)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !156, line: 1540, size: 256, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1705, file: !156, line: 1541, baseType: !1215, size: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1705, file: !156, line: 1542, baseType: !1709, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !156, line: 1538, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !156, line: 1538, size: 192, elements: !1712)
!1712 = !{!1713}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1711, file: !156, line: 1538, baseType: !1714, size: 192)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !156, line: 1537, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !156, line: 1537, size: 192, elements: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1715, file: !156, line: 1537, baseType: !5, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1715, file: !156, line: 1537, baseType: !5, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1715, file: !156, line: 1537, baseType: !1720, size: 128, offset: 64)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1721, size: 128, elements: !460)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !156, line: 1535, baseType: !1722)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !156, line: 1532, size: 128, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1722, file: !156, line: 1533, baseType: !1177, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1722, file: !156, line: 1534, baseType: !1177, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1179, file: !156, line: 3403, baseType: !1727, size: 512)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !156, line: 1938, size: 512, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1738, !1742, !1743}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1727, file: !156, line: 1939, baseType: !1215, size: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1727, file: !156, line: 1940, baseType: !1294, size: 32, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1727, file: !156, line: 1941, baseType: !155, size: 32, offset: 224)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1727, file: !156, line: 1946, baseType: !1733, size: 32, offset: 256)
!1733 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !156, line: 1942, size: 32, elements: !1734)
!1734 = !{!1735, !1736, !1737}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1733, file: !156, line: 1943, baseType: !174, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1733, file: !156, line: 1944, baseType: !181, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1733, file: !156, line: 1945, baseType: !188, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1727, file: !156, line: 1950, baseType: !1739, size: 64, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !883, line: 66, baseType: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !883, line: 65, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1727, file: !156, line: 1951, baseType: !1739, size: 64, offset: 384)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1727, file: !156, line: 1953, baseType: !1616, size: 64, offset: 448)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1179, file: !156, line: 3404, baseType: !1745, size: 1664)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !156, line: 3337, size: 1664, elements: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1745, file: !156, line: 3338, baseType: !1215, size: 192)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1745, file: !156, line: 3341, baseType: !1749, size: 1472, offset: 192)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1750, line: 410, size: 1472, elements: !1751)
!1750 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1749, file: !1750, line: 412, baseType: !385, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1749, file: !1750, line: 413, baseType: !385, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1749, file: !1750, line: 414, baseType: !385, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1749, file: !1750, line: 415, baseType: !385, size: 32, offset: 96)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1749, file: !1750, line: 416, baseType: !385, size: 32, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1749, file: !1750, line: 417, baseType: !385, size: 32, offset: 160)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1749, file: !1750, line: 418, baseType: !384, size: 8, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1749, file: !1750, line: 419, baseType: !384, size: 8, offset: 200)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1749, file: !1750, line: 420, baseType: !457, size: 8, offset: 208)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1749, file: !1750, line: 421, baseType: !457, size: 8, offset: 216)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1749, file: !1750, line: 422, baseType: !457, size: 8, offset: 224)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1749, file: !1750, line: 423, baseType: !457, size: 8, offset: 232)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1749, file: !1750, line: 424, baseType: !457, size: 8, offset: 240)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1749, file: !1750, line: 425, baseType: !457, size: 8, offset: 248)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1749, file: !1750, line: 426, baseType: !457, size: 8, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1749, file: !1750, line: 427, baseType: !457, size: 8, offset: 264)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1749, file: !1750, line: 428, baseType: !457, size: 8, offset: 272)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1749, file: !1750, line: 429, baseType: !457, size: 8, offset: 280)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1749, file: !1750, line: 430, baseType: !457, size: 8, offset: 288)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1749, file: !1750, line: 431, baseType: !457, size: 8, offset: 296)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1749, file: !1750, line: 432, baseType: !457, size: 8, offset: 304)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1749, file: !1750, line: 433, baseType: !457, size: 8, offset: 312)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1749, file: !1750, line: 434, baseType: !457, size: 8, offset: 320)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1749, file: !1750, line: 435, baseType: !457, size: 8, offset: 328)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1749, file: !1750, line: 436, baseType: !457, size: 8, offset: 336)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1749, file: !1750, line: 437, baseType: !457, size: 8, offset: 344)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1749, file: !1750, line: 438, baseType: !457, size: 8, offset: 352)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1749, file: !1750, line: 439, baseType: !457, size: 8, offset: 360)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1749, file: !1750, line: 440, baseType: !457, size: 8, offset: 368)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1749, file: !1750, line: 441, baseType: !457, size: 8, offset: 376)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1749, file: !1750, line: 442, baseType: !457, size: 8, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1749, file: !1750, line: 443, baseType: !457, size: 8, offset: 392)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1749, file: !1750, line: 444, baseType: !457, size: 8, offset: 400)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1749, file: !1750, line: 445, baseType: !457, size: 8, offset: 408)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1749, file: !1750, line: 446, baseType: !457, size: 8, offset: 416)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1749, file: !1750, line: 447, baseType: !457, size: 8, offset: 424)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1749, file: !1750, line: 448, baseType: !457, size: 8, offset: 432)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1749, file: !1750, line: 449, baseType: !457, size: 8, offset: 440)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1749, file: !1750, line: 450, baseType: !457, size: 8, offset: 448)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1749, file: !1750, line: 451, baseType: !457, size: 8, offset: 456)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1749, file: !1750, line: 452, baseType: !457, size: 8, offset: 464)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1749, file: !1750, line: 453, baseType: !457, size: 8, offset: 472)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1749, file: !1750, line: 454, baseType: !457, size: 8, offset: 480)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1749, file: !1750, line: 455, baseType: !457, size: 8, offset: 488)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1749, file: !1750, line: 456, baseType: !457, size: 8, offset: 496)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1749, file: !1750, line: 457, baseType: !457, size: 8, offset: 504)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1749, file: !1750, line: 458, baseType: !457, size: 8, offset: 512)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1749, file: !1750, line: 459, baseType: !457, size: 8, offset: 520)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1749, file: !1750, line: 460, baseType: !457, size: 8, offset: 528)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1749, file: !1750, line: 461, baseType: !457, size: 8, offset: 536)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1749, file: !1750, line: 462, baseType: !457, size: 8, offset: 544)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1749, file: !1750, line: 463, baseType: !457, size: 8, offset: 552)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1749, file: !1750, line: 464, baseType: !457, size: 8, offset: 560)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1749, file: !1750, line: 465, baseType: !457, size: 8, offset: 568)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1749, file: !1750, line: 466, baseType: !457, size: 8, offset: 576)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1749, file: !1750, line: 467, baseType: !457, size: 8, offset: 584)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1749, file: !1750, line: 468, baseType: !457, size: 8, offset: 592)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1749, file: !1750, line: 469, baseType: !457, size: 8, offset: 600)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1749, file: !1750, line: 470, baseType: !457, size: 8, offset: 608)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1749, file: !1750, line: 471, baseType: !457, size: 8, offset: 616)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1749, file: !1750, line: 472, baseType: !457, size: 8, offset: 624)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1749, file: !1750, line: 473, baseType: !457, size: 8, offset: 632)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1749, file: !1750, line: 474, baseType: !457, size: 8, offset: 640)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1749, file: !1750, line: 475, baseType: !457, size: 8, offset: 648)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1749, file: !1750, line: 476, baseType: !457, size: 8, offset: 656)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1749, file: !1750, line: 477, baseType: !457, size: 8, offset: 664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1749, file: !1750, line: 478, baseType: !457, size: 8, offset: 672)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1749, file: !1750, line: 479, baseType: !457, size: 8, offset: 680)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1749, file: !1750, line: 480, baseType: !457, size: 8, offset: 688)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1749, file: !1750, line: 481, baseType: !457, size: 8, offset: 696)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1749, file: !1750, line: 482, baseType: !457, size: 8, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1749, file: !1750, line: 483, baseType: !457, size: 8, offset: 712)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1749, file: !1750, line: 484, baseType: !457, size: 8, offset: 720)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1749, file: !1750, line: 485, baseType: !457, size: 8, offset: 728)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1749, file: !1750, line: 486, baseType: !457, size: 8, offset: 736)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1749, file: !1750, line: 487, baseType: !457, size: 8, offset: 744)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1749, file: !1750, line: 488, baseType: !457, size: 8, offset: 752)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1749, file: !1750, line: 489, baseType: !457, size: 8, offset: 760)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1749, file: !1750, line: 490, baseType: !457, size: 8, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1749, file: !1750, line: 491, baseType: !457, size: 8, offset: 776)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1749, file: !1750, line: 492, baseType: !457, size: 8, offset: 784)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1749, file: !1750, line: 493, baseType: !457, size: 8, offset: 792)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1749, file: !1750, line: 494, baseType: !457, size: 8, offset: 800)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1749, file: !1750, line: 495, baseType: !457, size: 8, offset: 808)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1749, file: !1750, line: 496, baseType: !457, size: 8, offset: 816)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1749, file: !1750, line: 497, baseType: !457, size: 8, offset: 824)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1749, file: !1750, line: 498, baseType: !457, size: 8, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1749, file: !1750, line: 499, baseType: !457, size: 8, offset: 840)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1749, file: !1750, line: 500, baseType: !457, size: 8, offset: 848)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1749, file: !1750, line: 501, baseType: !457, size: 8, offset: 856)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1749, file: !1750, line: 502, baseType: !457, size: 8, offset: 864)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1749, file: !1750, line: 503, baseType: !457, size: 8, offset: 872)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1749, file: !1750, line: 504, baseType: !457, size: 8, offset: 880)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1749, file: !1750, line: 505, baseType: !457, size: 8, offset: 888)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1749, file: !1750, line: 506, baseType: !457, size: 8, offset: 896)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1749, file: !1750, line: 507, baseType: !457, size: 8, offset: 904)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1749, file: !1750, line: 508, baseType: !457, size: 8, offset: 912)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1749, file: !1750, line: 509, baseType: !457, size: 8, offset: 920)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1749, file: !1750, line: 510, baseType: !457, size: 8, offset: 928)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1749, file: !1750, line: 511, baseType: !457, size: 8, offset: 936)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1749, file: !1750, line: 512, baseType: !457, size: 8, offset: 944)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1749, file: !1750, line: 513, baseType: !457, size: 8, offset: 952)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1749, file: !1750, line: 514, baseType: !457, size: 8, offset: 960)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1749, file: !1750, line: 515, baseType: !457, size: 8, offset: 968)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1749, file: !1750, line: 516, baseType: !457, size: 8, offset: 976)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1749, file: !1750, line: 517, baseType: !457, size: 8, offset: 984)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1749, file: !1750, line: 518, baseType: !457, size: 8, offset: 992)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1749, file: !1750, line: 519, baseType: !457, size: 8, offset: 1000)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1749, file: !1750, line: 520, baseType: !457, size: 8, offset: 1008)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1749, file: !1750, line: 521, baseType: !457, size: 8, offset: 1016)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1749, file: !1750, line: 522, baseType: !457, size: 8, offset: 1024)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1749, file: !1750, line: 523, baseType: !457, size: 8, offset: 1032)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1749, file: !1750, line: 524, baseType: !457, size: 8, offset: 1040)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1749, file: !1750, line: 525, baseType: !457, size: 8, offset: 1048)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1749, file: !1750, line: 526, baseType: !457, size: 8, offset: 1056)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1749, file: !1750, line: 527, baseType: !457, size: 8, offset: 1064)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1749, file: !1750, line: 528, baseType: !457, size: 8, offset: 1072)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1749, file: !1750, line: 529, baseType: !457, size: 8, offset: 1080)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1749, file: !1750, line: 530, baseType: !457, size: 8, offset: 1088)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1749, file: !1750, line: 531, baseType: !457, size: 8, offset: 1096)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1749, file: !1750, line: 532, baseType: !457, size: 8, offset: 1104)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1749, file: !1750, line: 533, baseType: !457, size: 8, offset: 1112)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1749, file: !1750, line: 534, baseType: !457, size: 8, offset: 1120)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1749, file: !1750, line: 535, baseType: !457, size: 8, offset: 1128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1749, file: !1750, line: 536, baseType: !457, size: 8, offset: 1136)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1749, file: !1750, line: 537, baseType: !457, size: 8, offset: 1144)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1749, file: !1750, line: 538, baseType: !457, size: 8, offset: 1152)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1749, file: !1750, line: 539, baseType: !457, size: 8, offset: 1160)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1749, file: !1750, line: 540, baseType: !457, size: 8, offset: 1168)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1749, file: !1750, line: 541, baseType: !457, size: 8, offset: 1176)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1749, file: !1750, line: 542, baseType: !457, size: 8, offset: 1184)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1749, file: !1750, line: 543, baseType: !457, size: 8, offset: 1192)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1749, file: !1750, line: 544, baseType: !457, size: 8, offset: 1200)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1749, file: !1750, line: 545, baseType: !457, size: 8, offset: 1208)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1749, file: !1750, line: 546, baseType: !457, size: 8, offset: 1216)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1749, file: !1750, line: 547, baseType: !457, size: 8, offset: 1224)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1749, file: !1750, line: 548, baseType: !457, size: 8, offset: 1232)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1749, file: !1750, line: 549, baseType: !457, size: 8, offset: 1240)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1749, file: !1750, line: 550, baseType: !457, size: 8, offset: 1248)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1749, file: !1750, line: 551, baseType: !457, size: 8, offset: 1256)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1749, file: !1750, line: 552, baseType: !457, size: 8, offset: 1264)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1749, file: !1750, line: 553, baseType: !457, size: 8, offset: 1272)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1749, file: !1750, line: 554, baseType: !457, size: 8, offset: 1280)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1749, file: !1750, line: 555, baseType: !457, size: 8, offset: 1288)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1749, file: !1750, line: 556, baseType: !457, size: 8, offset: 1296)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1749, file: !1750, line: 557, baseType: !457, size: 8, offset: 1304)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1749, file: !1750, line: 558, baseType: !457, size: 8, offset: 1312)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1749, file: !1750, line: 559, baseType: !457, size: 8, offset: 1320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1749, file: !1750, line: 560, baseType: !457, size: 8, offset: 1328)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1749, file: !1750, line: 561, baseType: !457, size: 8, offset: 1336)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1749, file: !1750, line: 562, baseType: !457, size: 8, offset: 1344)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1749, file: !1750, line: 563, baseType: !457, size: 8, offset: 1352)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1749, file: !1750, line: 564, baseType: !457, size: 8, offset: 1360)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1749, file: !1750, line: 565, baseType: !457, size: 8, offset: 1368)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1749, file: !1750, line: 566, baseType: !457, size: 8, offset: 1376)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1749, file: !1750, line: 567, baseType: !457, size: 8, offset: 1384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1749, file: !1750, line: 568, baseType: !457, size: 8, offset: 1392)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1749, file: !1750, line: 569, baseType: !457, size: 8, offset: 1400)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1749, file: !1750, line: 570, baseType: !457, size: 8, offset: 1408)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1749, file: !1750, line: 571, baseType: !457, size: 8, offset: 1416)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1749, file: !1750, line: 572, baseType: !457, size: 8, offset: 1424)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1749, file: !1750, line: 573, baseType: !457, size: 8, offset: 1432)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1749, file: !1750, line: 574, baseType: !457, size: 8, offset: 1440)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1179, file: !156, line: 3405, baseType: !1916, size: 384)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !156, line: 3352, size: 384, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1916, file: !156, line: 3353, baseType: !1215, size: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1916, file: !156, line: 3356, baseType: !1920, size: 192, offset: 192)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1750, line: 578, size: 192, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1920, file: !1750, line: 580, baseType: !385, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1920, file: !1750, line: 581, baseType: !385, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1920, file: !1750, line: 582, baseType: !385, size: 32, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1920, file: !1750, line: 583, baseType: !385, size: 32, offset: 96)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1920, file: !1750, line: 584, baseType: !384, size: 8, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1920, file: !1750, line: 585, baseType: !384, size: 8, offset: 136)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1920, file: !1750, line: 586, baseType: !384, size: 8, offset: 144)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1920, file: !1750, line: 587, baseType: !384, size: 8, offset: 152)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1920, file: !1750, line: 588, baseType: !384, size: 8, offset: 160)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1920, file: !1750, line: 589, baseType: !384, size: 8, offset: 168)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1920, file: !1750, line: 590, baseType: !384, size: 8, offset: 176)
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1934 = !DILocalVariable(name: "args", arg: 1, scope: !1174, file: !1, line: 255, type: !1177)
!1935 = !DILocalVariable(name: "pop_target", arg: 2, scope: !1174, file: !1, line: 255, type: !1177)
!1936 = !DILocalVariable(name: "prev_tree", scope: !1174, file: !1, line: 257, type: !1177)
!1937 = !DILocalVariable(name: "cur_tree", scope: !1174, file: !1, line: 258, type: !1177)
!1938 = !DILocalVariable(name: "prev_opt", scope: !1174, file: !1, line: 259, type: !1939)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1940 = !DILocalVariable(name: "cur_opt", scope: !1174, file: !1, line: 260, type: !1939)
!1941 = !DILocalVariable(name: "prev_isa", scope: !1174, file: !1, line: 261, type: !385)
!1942 = !DILocalVariable(name: "cur_isa", scope: !1174, file: !1, line: 262, type: !385)
!1943 = !DILocalVariable(name: "diff_isa", scope: !1174, file: !1, line: 263, type: !385)
!1944 = !DILocalVariable(name: "prev_arch", scope: !1174, file: !1, line: 264, type: !3)
!1945 = !DILocalVariable(name: "prev_tune", scope: !1174, file: !1, line: 265, type: !3)
!1946 = !DILocalVariable(name: "cur_arch", scope: !1174, file: !1, line: 266, type: !3)
!1947 = !DILocalVariable(name: "cur_tune", scope: !1174, file: !1, line: 267, type: !3)
!1948 = !DILocation(line: 0, scope: !1174)
!1949 = !DILocation(line: 257, column: 20, scope: !1174)
!1950 = !DILocation(line: 269, column: 9, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 269, column: 7)
!1952 = !DILocation(line: 269, column: 7, scope: !1174)
!1953 = !DILocation(line: 271, column: 19, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 270, column: 5)
!1955 = !DILocation(line: 274, column: 33, scope: !1954)
!1956 = !DILocation(line: 274, column: 7, scope: !1954)
!1957 = !DILocation(line: 275, column: 5, scope: !1954)
!1958 = !DILocation(line: 278, column: 18, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 277, column: 5)
!1960 = !DILocation(line: 279, column: 12, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 279, column: 11)
!1962 = !DILocation(line: 279, column: 11, scope: !1959)
!1963 = !DILocation(line: 0, scope: !1951)
!1964 = !DILocation(line: 283, column: 30, scope: !1174)
!1965 = !DILocation(line: 286, column: 15, scope: !1174)
!1966 = !DILocation(line: 287, column: 15, scope: !1174)
!1967 = !DILocation(line: 288, column: 25, scope: !1174)
!1968 = !DILocation(line: 289, column: 24, scope: !1174)
!1969 = !DILocation(line: 290, column: 25, scope: !1174)
!1970 = !DILocation(line: 291, column: 47, scope: !1174)
!1971 = !DILocation(line: 292, column: 47, scope: !1174)
!1972 = !DILocation(line: 293, column: 46, scope: !1174)
!1973 = !DILocation(line: 294, column: 46, scope: !1174)
!1974 = !DILocation(line: 298, column: 16, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 298, column: 7)
!1976 = !DILocation(line: 298, column: 7, scope: !1174)
!1977 = !DILocation(line: 301, column: 16, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 301, column: 7)
!1979 = !DILocation(line: 301, column: 7, scope: !1174)
!1980 = !DILocation(line: 305, column: 41, scope: !1174)
!1981 = !DILocation(line: 308, column: 40, scope: !1174)
!1982 = !DILocation(line: 308, column: 11, scope: !1174)
!1983 = !DILocation(line: 305, column: 3, scope: !1174)
!1984 = !DILocation(line: 312, column: 40, scope: !1174)
!1985 = !DILocation(line: 315, column: 39, scope: !1174)
!1986 = !DILocation(line: 315, column: 11, scope: !1174)
!1987 = !DILocation(line: 312, column: 3, scope: !1174)
!1988 = !DILocation(line: 318, column: 3, scope: !1174)
!1989 = !DILocation(line: 319, column: 1, scope: !1174)
