; ModuleID = 'c-convert.bc'
source_filename = "c-convert.c"
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
%union.section = type opaque
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
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
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
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [41 x i8] c"void value not ignored as it ought to be\00", align 1
@input_location = external dso_local local_unnamed_addr global i32, align 4
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"conversion to non-scalar type requested\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !247 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !260, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !263
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !264
  ret i32 %call, !dbg !265
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !266 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !270
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !271
  ret i32 %call, !dbg !272
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !336, metadata !DIExpression()), !dbg !337
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !338
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !338
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !338
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !338
  %cmp = icmp uge i8* %0, %1, !dbg !338
  %conv1 = zext i1 %cmp to i64, !dbg !338
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !338
  %tobool = icmp eq i64 %expval, 0, !dbg !338
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !338

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !338
  br label %cond.end, !dbg !338

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !338
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !338
  %2 = load i8, i8* %0, align 1, !dbg !338
  %conv3 = zext i8 %2 to i32, !dbg !338
  br label %cond.end, !dbg !338

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !338
  ret i32 %cond, !dbg !339
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !340 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !342, metadata !DIExpression()), !dbg !343
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !344
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !344
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !344
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !344
  %cmp = icmp uge i8* %0, %1, !dbg !344
  %conv1 = zext i1 %cmp to i64, !dbg !344
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !344
  %tobool = icmp eq i64 %expval, 0, !dbg !344
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !344

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !344
  br label %cond.end, !dbg !344

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !344
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !344
  %2 = load i8, i8* %0, align 1, !dbg !344
  %conv3 = zext i8 %2 to i32, !dbg !344
  br label %cond.end, !dbg !344

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !344
  ret i32 %cond, !dbg !345
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !346 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !347
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !347
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !347
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !347
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !347
  %cmp = icmp uge i8* %1, %2, !dbg !347
  %conv1 = zext i1 %cmp to i64, !dbg !347
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !347
  %tobool = icmp eq i64 %expval, 0, !dbg !347
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !347

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !347
  br label %cond.end, !dbg !347

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !347
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !347
  %3 = load i8, i8* %1, align 1, !dbg !347
  %conv3 = zext i8 %3 to i32, !dbg !347
  br label %cond.end, !dbg !347

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !347
  ret i32 %cond, !dbg !348
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !349 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !355
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !356
  ret i32 %call, !dbg !357
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !358 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !362, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !363, metadata !DIExpression()), !dbg !364
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !365
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !365
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !365
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !365
  %cmp = icmp uge i8* %0, %1, !dbg !365
  %conv1 = zext i1 %cmp to i64, !dbg !365
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !365
  %tobool = icmp eq i64 %expval, 0, !dbg !365
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !365

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !365
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !365
  br label %cond.end, !dbg !365

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !365
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !365
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !365
  store i8 %conv2, i8* %0, align 1, !dbg !365
  %conv6 = and i32 %__c, 255, !dbg !365
  br label %cond.end, !dbg !365

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !365
  ret i32 %cond, !dbg !366
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !367 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !370, metadata !DIExpression()), !dbg !371
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !372
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !372
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !372
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !372
  %cmp = icmp uge i8* %0, %1, !dbg !372
  %conv1 = zext i1 %cmp to i64, !dbg !372
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !372
  %tobool = icmp eq i64 %expval, 0, !dbg !372
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !372

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !372
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !372
  br label %cond.end, !dbg !372

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !372
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !372
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !372
  store i8 %conv2, i8* %0, align 1, !dbg !372
  %conv6 = and i32 %__c, 255, !dbg !372
  br label %cond.end, !dbg !372

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !372
  ret i32 %cond, !dbg !373
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !374 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !378
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !378
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !378
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !378
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !378
  %cmp = icmp uge i8* %1, %2, !dbg !378
  %conv1 = zext i1 %cmp to i64, !dbg !378
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !378
  %tobool = icmp eq i64 %expval, 0, !dbg !378
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !378

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !378
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !378
  br label %cond.end, !dbg !378

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !378
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !378
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !378
  store i8 %conv4, i8* %1, align 1, !dbg !378
  %conv6 = and i32 %__c, 255, !dbg !378
  br label %cond.end, !dbg !378

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !378
  ret i32 %cond, !dbg !379
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !380 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !386, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i64* %__n, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !388, metadata !DIExpression()), !dbg !389
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !390
  ret i64 %call, !dbg !391
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !392 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !394, metadata !DIExpression()), !dbg !395
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !396
  %0 = load i32, i32* %_flags, align 8, !dbg !396
  %and = lshr i32 %0, 4, !dbg !396
  %and.lobit = and i32 %and, 1, !dbg !396
  ret i32 %and.lobit, !dbg !397
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !398 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !400, metadata !DIExpression()), !dbg !401
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !402
  %0 = load i32, i32* %_flags, align 8, !dbg !402
  %and = lshr i32 %0, 5, !dbg !402
  %and.lobit = and i32 %and, 1, !dbg !402
  ret i32 %and.lobit, !dbg !403
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !404 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !407, metadata !DIExpression()), !dbg !408
  %__c.off = add i32 %__c, 128, !dbg !409
  %0 = icmp ult i32 %__c.off, 384, !dbg !409
  br i1 %0, label %cond.true, label %cond.end, !dbg !409

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !410
  %1 = load i32*, i32** %call, align 8, !dbg !411
  %idxprom = sext i32 %__c to i64, !dbg !412
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !412
  %2 = load i32, i32* %arrayidx, align 4, !dbg !412
  br label %cond.end, !dbg !413

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !413
  ret i32 %cond, !dbg !414
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !415 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !417, metadata !DIExpression()), !dbg !418
  %__c.off = add i32 %__c, 128, !dbg !419
  %0 = icmp ult i32 %__c.off, 384, !dbg !419
  br i1 %0, label %cond.true, label %cond.end, !dbg !419

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !420
  %1 = load i32*, i32** %call, align 8, !dbg !421
  %idxprom = sext i32 %__c to i64, !dbg !422
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !422
  %2 = load i32, i32* %arrayidx, align 4, !dbg !422
  br label %cond.end, !dbg !423

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !423
  ret i32 %cond, !dbg !424
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !425 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !430, metadata !DIExpression()), !dbg !431
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !432
  %conv = trunc i64 %call to i32, !dbg !433
  ret i32 %conv, !dbg !434
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !435 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !439, metadata !DIExpression()), !dbg !440
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !441
  ret i64 %call, !dbg !442
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !443 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !448, metadata !DIExpression()), !dbg !449
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !450
  ret i64 %call, !dbg !451
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !452 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !463, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i8* %__base, metadata !464, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !465, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 %__size, metadata !466, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !467, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 0, metadata !468, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !469, metadata !DIExpression()), !dbg !473
  br label %while.cond, !dbg !474

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !475
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !473
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !469, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !468, metadata !DIExpression()), !dbg !473
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !476
  br i1 %cmp, label %while.body, label %cleanup, !dbg !474

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !477
  %div = lshr i64 %add, 1, !dbg !479
  call void @llvm.dbg.value(metadata i64 %div, metadata !470, metadata !DIExpression()), !dbg !473
  %mul = mul i64 %div, %__size, !dbg !480
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !481
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !471, metadata !DIExpression()), !dbg !473
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !482
  call void @llvm.dbg.value(metadata i32 %call, metadata !472, metadata !DIExpression()), !dbg !473
  %cmp1 = icmp slt i32 %call, 0, !dbg !483
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !485

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !486
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !488

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !489
  call void @llvm.dbg.value(metadata i64 %add4, metadata !468, metadata !DIExpression()), !dbg !473
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !473
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !473
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !469, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !468, metadata !DIExpression()), !dbg !473
  br label %while.cond, !dbg !474, !llvm.loop !490

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !473
  ret i8* %retval.0, !dbg !492
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !493 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !499, metadata !DIExpression()), !dbg !500
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !501
  ret double %call, !dbg !502
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !503 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !512, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !513, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i32 %base, metadata !514, metadata !DIExpression()), !dbg !515
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !516
  ret i64 %call, !dbg !517
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !518 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !524, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !525, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i32 %base, metadata !526, metadata !DIExpression()), !dbg !527
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !528
  ret i64 %call, !dbg !529
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !530 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !541, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !542, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.value(metadata i32 %base, metadata !543, metadata !DIExpression()), !dbg !544
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !545
  ret i64 %call, !dbg !546
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !547 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !551, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !552, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32 %base, metadata !553, metadata !DIExpression()), !dbg !554
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !555
  ret i64 %call, !dbg !556
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !557 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !599, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !600, metadata !DIExpression()), !dbg !601
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !602
  ret i32 %call, !dbg !603
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !604 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !606, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !607, metadata !DIExpression()), !dbg !608
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !609
  ret i32 %call, !dbg !610
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !611 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !615, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !616, metadata !DIExpression()), !dbg !617
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !618
  ret i32 %call, !dbg !619
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !620 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !624, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !625, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !626, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !627, metadata !DIExpression()), !dbg !628
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !629
  ret i32 %call, !dbg !630
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !631 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !635, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !636, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !637, metadata !DIExpression()), !dbg !638
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !637, metadata !DIExpression(DW_OP_deref)), !dbg !638
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !639
  ret i32 %call, !dbg !640
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !641 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !645, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i8* %__path, metadata !646, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !647, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !648, metadata !DIExpression()), !dbg !649
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !649
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !650
  ret i32 %call, !dbg !651
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !652 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !676, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !677, metadata !DIExpression()), !dbg !678
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !679
  ret i32 %call, !dbg !680
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !681 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !683, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !684, metadata !DIExpression()), !dbg !685
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !686
  ret i32 %call, !dbg !687
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !688 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !692, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !693, metadata !DIExpression()), !dbg !694
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !695
  ret i32 %call, !dbg !696
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !697 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !701, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !702, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !703, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !704, metadata !DIExpression()), !dbg !705
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !706
  ret i32 %call, !dbg !707
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %expr) local_unnamed_addr #3 !dbg !708 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !1344, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !1345, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !1346, metadata !DIExpression()), !dbg !1353
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1354
  %bf.load = load i64, i64* %0, align 8, !dbg !1354
  %1 = trunc i64 %bf.load to i16, !dbg !1354
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1355
  %bf.load2 = load i64, i64* %2, align 8, !dbg !1355
  %bf.cast4 = and i64 %bf.load2, 65535, !dbg !1355
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast4, !dbg !1355
  %3 = load i32, i32* %arrayidx, align 4, !dbg !1355
  %cmp = icmp ugt i32 %3, 3, !dbg !1355
  br i1 %cmp, label %land.lhs.true, label %cond.end, !dbg !1355

land.lhs.true:                                    ; preds = %entry
  %cmp11 = icmp ult i32 %3, 11, !dbg !1355
  br i1 %cmp11, label %cond.true, label %cond.end, !dbg !1355

cond.true:                                        ; preds = %land.lhs.true
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1355
  %5 = load i32, i32* %4, align 8, !dbg !1355
  br label %cond.end, !dbg !1355

cond.end:                                         ; preds = %entry, %land.lhs.true, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !1355
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1350, metadata !DIExpression()), !dbg !1353
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !1356
  %cmp12 = icmp eq %union.tree_node* %6, %type, !dbg !1358
  %cmp13 = icmp eq %union.tree_node* %6, %expr, !dbg !1359
  %or.cond = or i1 %cmp12, %cmp13, !dbg !1360
  br i1 %or.cond, label %if.then, label %lor.lhs.false14, !dbg !1360

lor.lhs.false14:                                  ; preds = %cond.end
  %type15 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1361
  %7 = load %union.tree_node*, %union.tree_node** %type15, align 8, !dbg !1361
  %cmp16 = icmp eq %union.tree_node* %7, %6, !dbg !1362
  br i1 %cmp16, label %if.then, label %if.end, !dbg !1363

if.then:                                          ; preds = %lor.lhs.false14, %cond.end
  br label %cleanup, !dbg !1364

if.end:                                           ; preds = %lor.lhs.false14
  %8 = load i8* (%union.tree_node*, %union.tree_node*)*, i8* (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 89), align 8, !dbg !1365
  %call = tail call i8* %8(%union.tree_node* %7, %union.tree_node* %type) #5, !dbg !1367
  call void @llvm.dbg.value(metadata i8* %call, metadata !1348, metadata !DIExpression()), !dbg !1353
  %tobool = icmp eq i8* %call, null, !dbg !1368
  br i1 %tobool, label %if.end20, label %if.then19, !dbg !1369

if.then19:                                        ; preds = %if.end
  tail call void (i8*, ...) @error(i8* nonnull %call) #5, !dbg !1370
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !1372
  br label %cleanup, !dbg !1373

if.end20:                                         ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %type15, align 8, !dbg !1374
  %cmp23 = icmp eq %union.tree_node* %10, %type, !dbg !1376
  br i1 %cmp23, label %cleanup, label %if.end25, !dbg !1377

if.end25:                                         ; preds = %if.end20
  %11 = load %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 95), align 8, !dbg !1378
  %call26 = tail call %union.tree_node* %11(%union.tree_node* %type, %union.tree_node* %expr) #5, !dbg !1379
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !1349, metadata !DIExpression()), !dbg !1353
  %tobool27 = icmp eq %union.tree_node* %call26, null, !dbg !1380
  br i1 %tobool27, label %while.cond.preheader, label %cleanup, !dbg !1382

while.cond.preheader:                             ; preds = %if.end25
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !1353
  br label %while.cond, !dbg !1383

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %e.0 = phi %union.tree_node* [ %16, %while.body ], [ %expr, %while.cond.preheader ], !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0, metadata !1346, metadata !DIExpression()), !dbg !1353
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %e.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1383
  %bf.load31 = load i64, i64* %13, align 8, !dbg !1383
  %bf.cast332 = and i64 %bf.load31, 65535, !dbg !1383
  %cmp34 = icmp eq i64 %bf.cast332, 116, !dbg !1383
  br i1 %cmp34, label %land.lhs.true47, label %lor.lhs.false35, !dbg !1383

lor.lhs.false35:                                  ; preds = %while.cond
  %14 = or i64 %bf.cast332, 4, !dbg !1383
  %15 = icmp eq i64 %14, 117, !dbg !1383
  br i1 %15, label %land.lhs.true47, label %while.end, !dbg !1383

land.lhs.true47:                                  ; preds = %lor.lhs.false35, %while.cond
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !1383
  %16 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !1383
  %cmp50 = icmp eq %union.tree_node* %16, %12, !dbg !1383
  br i1 %cmp50, label %while.end, label %land.rhs, !dbg !1383

land.rhs:                                         ; preds = %land.lhs.true47
  %type52 = getelementptr inbounds %union.tree_node, %union.tree_node* %e.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1383
  %17 = load %union.tree_node*, %union.tree_node** %type52, align 8, !dbg !1383
  %type57 = getelementptr inbounds %union.tree_node, %union.tree_node* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1383
  %18 = load %union.tree_node*, %union.tree_node** %type57, align 8, !dbg !1383
  %cmp58 = icmp eq %union.tree_node* %17, %18, !dbg !1383
  br i1 %cmp58, label %while.body, label %while.end, !dbg !1383

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !1346, metadata !DIExpression()), !dbg !1353
  br label %while.cond, !dbg !1383, !llvm.loop !1384

while.end:                                        ; preds = %lor.lhs.false35, %land.lhs.true47, %land.rhs
  %e.0.lcssa = phi %union.tree_node* [ %e.0, %lor.lhs.false35 ], [ %e.0, %land.lhs.true47 ], [ %e.0, %land.rhs ], !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0.lcssa, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0.lcssa, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0.lcssa, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0.lcssa, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0.lcssa, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0.lcssa, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0.lcssa, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0.lcssa, metadata !1346, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata %union.tree_node* %e.0.lcssa, metadata !1346, metadata !DIExpression()), !dbg !1353
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !1385
  %20 = load %union.tree_node*, %union.tree_node** %19, align 8, !dbg !1385
  %21 = bitcast %union.tree_node** %type15 to %struct.tree_type**, !dbg !1387
  %22 = load %struct.tree_type*, %struct.tree_type** %21, align 8, !dbg !1387
  %main_variant66 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %22, i64 0, i32 16, !dbg !1387
  %23 = load %union.tree_node*, %union.tree_node** %main_variant66, align 8, !dbg !1387
  %cmp67 = icmp eq %union.tree_node* %20, %23, !dbg !1388
  %24 = bitcast %struct.tree_type* %22 to %union.tree_node*, !dbg !1389
  br i1 %cmp67, label %if.then68, label %if.end70, !dbg !1389

if.then68:                                        ; preds = %while.end
  %call69 = tail call %union.tree_node* @fold_convert_loc(i32 %cond, %union.tree_node* %type, %union.tree_node* %expr) #5, !dbg !1390
  br label %cleanup, !dbg !1391

if.end70:                                         ; preds = %while.end
  %25 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %22, i64 0, i32 0, i32 0, i32 0, !dbg !1389
  %bf.load74 = load i64, i64* %25, align 8, !dbg !1392
  %bf.cast765 = and i64 %bf.load74, 65535, !dbg !1394
  %cmp77 = icmp eq i64 %bf.cast765, 0, !dbg !1394
  br i1 %cmp77, label %if.then78, label %if.end79, !dbg !1395

if.then78:                                        ; preds = %if.end70
  br label %cleanup, !dbg !1396

if.end79:                                         ; preds = %if.end70
  %cmp86 = icmp eq i64 %bf.cast765, 19, !dbg !1397
  br i1 %cmp86, label %if.then87, label %if.end88, !dbg !1399

if.then87:                                        ; preds = %if.end79
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #5, !dbg !1400
  %26 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !1402
  br label %cleanup, !dbg !1403

if.end88:                                         ; preds = %if.end79
  switch i16 %1, label %sw.epilog [
    i16 19, label %sw.bb
    i16 8, label %sw.bb90
    i16 6, label %sw.bb90
    i16 7, label %sw.bb92
    i16 10, label %sw.bb95
    i16 12, label %sw.bb95
    i16 9, label %sw.bb97
    i16 11, label %sw.bb99
    i16 13, label %sw.bb101
    i16 14, label %sw.bb103
    i16 16, label %sw.bb105
    i16 17, label %sw.bb105
  ], !dbg !1404

sw.bb:                                            ; preds = %if.end88
  %call89 = tail call %union.tree_node* @fold_convert_loc(i32 %cond, %union.tree_node* %type, %union.tree_node* %e.0.lcssa) #5, !dbg !1405
  br label %cleanup, !dbg !1406

sw.bb90:                                          ; preds = %if.end88, %if.end88
  %call91 = tail call %union.tree_node* @convert_to_integer(%union.tree_node* %type, %union.tree_node* %e.0.lcssa) #5, !dbg !1407
  call void @llvm.dbg.value(metadata %union.tree_node* %call91, metadata !1349, metadata !DIExpression()), !dbg !1353
  br label %maybe_fold, !dbg !1408

sw.bb92:                                          ; preds = %if.end88
  %27 = load i32, i32* @input_location, align 4, !dbg !1409
  %call93 = tail call %union.tree_node* @c_objc_common_truthvalue_conversion(i32 %27, %union.tree_node* %expr) #5, !dbg !1410
  %call94 = tail call %union.tree_node* @fold_convert_loc(i32 %cond, %union.tree_node* %type, %union.tree_node* %call93) #5, !dbg !1411
  br label %cleanup, !dbg !1412

sw.bb95:                                          ; preds = %if.end88, %if.end88
  %call96 = tail call %union.tree_node* @convert_to_pointer(%union.tree_node* %type, %union.tree_node* %e.0.lcssa) #5, !dbg !1413
  call void @llvm.dbg.value(metadata %union.tree_node* %call96, metadata !1349, metadata !DIExpression()), !dbg !1353
  br label %maybe_fold, !dbg !1414

sw.bb97:                                          ; preds = %if.end88
  %call98 = tail call %union.tree_node* @convert_to_real(%union.tree_node* %type, %union.tree_node* %e.0.lcssa) #5, !dbg !1415
  call void @llvm.dbg.value(metadata %union.tree_node* %call98, metadata !1349, metadata !DIExpression()), !dbg !1353
  br label %maybe_fold, !dbg !1416

sw.bb99:                                          ; preds = %if.end88
  %call100 = tail call %union.tree_node* @convert_to_fixed(%union.tree_node* %type, %union.tree_node* %e.0.lcssa) #5, !dbg !1417
  call void @llvm.dbg.value(metadata %union.tree_node* %call100, metadata !1349, metadata !DIExpression()), !dbg !1353
  br label %maybe_fold, !dbg !1418

sw.bb101:                                         ; preds = %if.end88
  %call102 = tail call %union.tree_node* @convert_to_complex(%union.tree_node* %type, %union.tree_node* %e.0.lcssa) #5, !dbg !1419
  call void @llvm.dbg.value(metadata %union.tree_node* %call102, metadata !1349, metadata !DIExpression()), !dbg !1353
  br label %maybe_fold, !dbg !1420

sw.bb103:                                         ; preds = %if.end88
  %call104 = tail call %union.tree_node* @convert_to_vector(%union.tree_node* %type, %union.tree_node* %e.0.lcssa) #5, !dbg !1421
  call void @llvm.dbg.value(metadata %union.tree_node* %call104, metadata !1349, metadata !DIExpression()), !dbg !1353
  br label %maybe_fold, !dbg !1422

sw.bb105:                                         ; preds = %if.end88, %if.end88
  %28 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 24), align 8, !dbg !1423
  %call108 = tail call i32 %28(%union.tree_node* %type, %union.tree_node* %24) #5, !dbg !1425
  %tobool109 = icmp eq i32 %call108, 0, !dbg !1425
  br i1 %tobool109, label %sw.epilog, label %cleanup, !dbg !1426

maybe_fold:                                       ; preds = %sw.bb103, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb95, %sw.bb90
  %ret.0 = phi %union.tree_node* [ %call104, %sw.bb103 ], [ %call102, %sw.bb101 ], [ %call100, %sw.bb99 ], [ %call98, %sw.bb97 ], [ %call96, %sw.bb95 ], [ %call91, %sw.bb90 ], !dbg !1427
  call void @llvm.dbg.value(metadata %union.tree_node* %ret.0, metadata !1349, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.label(metadata !1351), !dbg !1428
  %29 = getelementptr inbounds %union.tree_node, %union.tree_node* %ret.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1429
  %bf.load113 = load i64, i64* %29, align 8, !dbg !1429
  %bf.cast1157 = and i64 %bf.load113, 65535, !dbg !1431
  %cmp116 = icmp eq i64 %bf.cast1157, 189, !dbg !1431
  br i1 %cmp116, label %cleanup, label %if.then117, !dbg !1432

if.then117:                                       ; preds = %maybe_fold
  %call118 = tail call %union.tree_node* @fold(%union.tree_node* %ret.0) #5, !dbg !1433
  call void @llvm.dbg.value(metadata %union.tree_node* %call118, metadata !1349, metadata !DIExpression()), !dbg !1353
  br label %cleanup, !dbg !1434

sw.epilog:                                        ; preds = %sw.bb105, %if.end88
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1435
  %30 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !1436
  br label %cleanup, !dbg !1437

cleanup:                                          ; preds = %maybe_fold, %sw.bb105, %if.end25, %if.then117, %if.end20, %sw.epilog, %sw.bb92, %sw.bb, %if.then87, %if.then78, %if.then68, %if.then19, %if.then
  %retval.0 = phi %union.tree_node* [ %6, %if.then ], [ %9, %if.then19 ], [ %call69, %if.then68 ], [ %12, %if.then78 ], [ %26, %if.then87 ], [ %30, %sw.epilog ], [ %call94, %sw.bb92 ], [ %call89, %sw.bb ], [ %expr, %if.end20 ], [ %call26, %if.end25 ], [ %e.0.lcssa, %sw.bb105 ], [ %call118, %if.then117 ], [ %ret.0, %maybe_fold ], !dbg !1353
  ret %union.tree_node* %retval.0, !dbg !1438
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @convert_to_integer(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @c_objc_common_truthvalue_conversion(i32, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @convert_to_pointer(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @convert_to_real(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @convert_to_fixed(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @convert_to_complex(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @convert_to_vector(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #4

declare dso_local %union.tree_node* @fold(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!243, !244, !245}
!llvm.ident = !{!246}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !231, nameTableKind: None)
!1 = !DIFile(filename: "c-convert.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !23, !30, !37}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !4, line: 280, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!7 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !4, line: 1817, baseType: !5, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !4, line: 1805, baseType: !5, size: 32, elements: !31)
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !4, line: 39, baseType: !5, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!39 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!45 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!46 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!47 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!48 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!49 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!50 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!51 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!52 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!53 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!54 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!55 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!56 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!57 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!58 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!59 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!60 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!61 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!62 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!63 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!64 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!65 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!66 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!67 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!68 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!69 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!70 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!71 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!72 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!73 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!74 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!75 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!76 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!77 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!78 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!79 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!80 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!81 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!82 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!83 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!84 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!85 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!86 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!87 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!88 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!89 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!90 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!91 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!92 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!93 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!94 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!95 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!96 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!97 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!98 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!99 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!100 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!101 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!102 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!103 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!104 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!105 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!106 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!107 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!108 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!109 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!110 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!111 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!112 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!113 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!114 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!115 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!116 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!117 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!118 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!121 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!122 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!123 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!124 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!125 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!126 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!127 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!128 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!129 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!130 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!131 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!132 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!133 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!134 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!135 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!136 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!137 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!138 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!139 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!140 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!141 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!142 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!143 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!144 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!145 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!146 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!147 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!148 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!149 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!150 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!151 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!152 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!153 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!154 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!155 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!156 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!157 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!158 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!159 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!160 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!161 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!162 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!163 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!164 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!165 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!166 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!167 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!168 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!169 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!170 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!171 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!172 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!173 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!174 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!175 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!176 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!177 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!178 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!179 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!180 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!181 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!182 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!183 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!184 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!185 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!186 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!187 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!188 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!189 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!190 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!191 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!196 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!197 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!198 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!201 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!202 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!203 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!204 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!205 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!206 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!207 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!208 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!209 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!210 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!211 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!212 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!213 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!214 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!215 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!216 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!217 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!218 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!219 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!220 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!221 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!222 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!223 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!224 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!225 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!226 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!227 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!228 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!229 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!230 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!231 = !{!232, !233, !234, !235, !238, !239, !37, !241}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!234 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !242, line: 44, baseType: !5)
!242 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!243 = !{i32 2, !"Dwarf Version", i32 4}
!244 = !{i32 2, !"Debug Info Version", i32 3}
!245 = !{i32 1, !"wchar_size", i32 4}
!246 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!247 = distinct !DISubprogram(name: "vprintf", scope: !248, file: !248, line: 39, type: !249, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !259)
!248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!249 = !DISubroutineType(types: !250)
!250 = !{!234, !251, !252}
!251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !254)
!254 = !{!255, !256, !257, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !253, file: !1, baseType: !5, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !253, file: !1, baseType: !5, size: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !253, file: !1, baseType: !238, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !253, file: !1, baseType: !238, size: 64, offset: 128)
!259 = !{!260, !261}
!260 = !DILocalVariable(name: "__fmt", arg: 1, scope: !247, file: !248, line: 39, type: !251)
!261 = !DILocalVariable(name: "__arg", arg: 2, scope: !247, file: !248, line: 39, type: !252)
!262 = !DILocation(line: 0, scope: !247)
!263 = !DILocation(line: 41, column: 20, scope: !247)
!264 = !DILocation(line: 41, column: 10, scope: !247)
!265 = !DILocation(line: 41, column: 3, scope: !247)
!266 = distinct !DISubprogram(name: "getchar", scope: !248, file: !248, line: 47, type: !267, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !269)
!267 = !DISubroutineType(types: !268)
!268 = !{!234}
!269 = !{}
!270 = !DILocation(line: 49, column: 16, scope: !266)
!271 = !DILocation(line: 49, column: 10, scope: !266)
!272 = !DILocation(line: 49, column: 3, scope: !266)
!273 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !248, file: !248, line: 56, type: !274, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !335)
!274 = !DISubroutineType(types: !275)
!275 = !{!234, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !278, line: 7, baseType: !279)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !280, line: 49, size: 1728, elements: !281)
!280 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !297, !299, !300, !301, !305, !307, !309, !313, !316, !318, !321, !324, !325, !326, !330, !331}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !279, file: !280, line: 51, baseType: !234, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !279, file: !280, line: 54, baseType: !236, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !279, file: !280, line: 55, baseType: !236, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !279, file: !280, line: 56, baseType: !236, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !279, file: !280, line: 57, baseType: !236, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !279, file: !280, line: 58, baseType: !236, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !279, file: !280, line: 59, baseType: !236, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !279, file: !280, line: 60, baseType: !236, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !279, file: !280, line: 61, baseType: !236, size: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !279, file: !280, line: 64, baseType: !236, size: 64, offset: 576)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !279, file: !280, line: 65, baseType: !236, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !279, file: !280, line: 66, baseType: !236, size: 64, offset: 704)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !279, file: !280, line: 68, baseType: !295, size: 64, offset: 768)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !280, line: 36, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !279, file: !280, line: 70, baseType: !298, size: 64, offset: 832)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !279, file: !280, line: 72, baseType: !234, size: 32, offset: 896)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !279, file: !280, line: 73, baseType: !234, size: 32, offset: 928)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !279, file: !280, line: 74, baseType: !302, size: 64, offset: 960)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !303, line: 152, baseType: !304)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!304 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !279, file: !280, line: 77, baseType: !306, size: 16, offset: 1024)
!306 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !279, file: !280, line: 78, baseType: !308, size: 8, offset: 1040)
!308 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !279, file: !280, line: 79, baseType: !310, size: 8, offset: 1048)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 8, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 1)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !279, file: !280, line: 81, baseType: !314, size: 64, offset: 1088)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !280, line: 43, baseType: null)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !279, file: !280, line: 89, baseType: !317, size: 64, offset: 1152)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !303, line: 153, baseType: !304)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !279, file: !280, line: 91, baseType: !319, size: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !280, line: 37, flags: DIFlagFwdDecl)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !279, file: !280, line: 92, baseType: !322, size: 64, offset: 1280)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !280, line: 38, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !279, file: !280, line: 93, baseType: !298, size: 64, offset: 1344)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !279, file: !280, line: 94, baseType: !238, size: 64, offset: 1408)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !279, file: !280, line: 95, baseType: !327, size: 64, offset: 1472)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !328, line: 46, baseType: !329)
!328 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!329 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !279, file: !280, line: 96, baseType: !234, size: 32, offset: 1536)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !279, file: !280, line: 98, baseType: !332, size: 160, offset: 1568)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 160, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 20)
!335 = !{!336}
!336 = !DILocalVariable(name: "__fp", arg: 1, scope: !273, file: !248, line: 56, type: !276)
!337 = !DILocation(line: 0, scope: !273)
!338 = !DILocation(line: 58, column: 10, scope: !273)
!339 = !DILocation(line: 58, column: 3, scope: !273)
!340 = distinct !DISubprogram(name: "getc_unlocked", scope: !248, file: !248, line: 66, type: !274, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !341)
!341 = !{!342}
!342 = !DILocalVariable(name: "__fp", arg: 1, scope: !340, file: !248, line: 66, type: !276)
!343 = !DILocation(line: 0, scope: !340)
!344 = !DILocation(line: 68, column: 10, scope: !340)
!345 = !DILocation(line: 68, column: 3, scope: !340)
!346 = distinct !DISubprogram(name: "getchar_unlocked", scope: !248, file: !248, line: 73, type: !267, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !269)
!347 = !DILocation(line: 75, column: 10, scope: !346)
!348 = !DILocation(line: 75, column: 3, scope: !346)
!349 = distinct !DISubprogram(name: "putchar", scope: !248, file: !248, line: 82, type: !350, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{!234, !234}
!352 = !{!353}
!353 = !DILocalVariable(name: "__c", arg: 1, scope: !349, file: !248, line: 82, type: !234)
!354 = !DILocation(line: 0, scope: !349)
!355 = !DILocation(line: 84, column: 21, scope: !349)
!356 = !DILocation(line: 84, column: 10, scope: !349)
!357 = !DILocation(line: 84, column: 3, scope: !349)
!358 = distinct !DISubprogram(name: "fputc_unlocked", scope: !248, file: !248, line: 91, type: !359, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!234, !234, !276}
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "__c", arg: 1, scope: !358, file: !248, line: 91, type: !234)
!363 = !DILocalVariable(name: "__stream", arg: 2, scope: !358, file: !248, line: 91, type: !276)
!364 = !DILocation(line: 0, scope: !358)
!365 = !DILocation(line: 93, column: 10, scope: !358)
!366 = !DILocation(line: 93, column: 3, scope: !358)
!367 = distinct !DISubprogram(name: "putc_unlocked", scope: !248, file: !248, line: 101, type: !359, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !368)
!368 = !{!369, !370}
!369 = !DILocalVariable(name: "__c", arg: 1, scope: !367, file: !248, line: 101, type: !234)
!370 = !DILocalVariable(name: "__stream", arg: 2, scope: !367, file: !248, line: 101, type: !276)
!371 = !DILocation(line: 0, scope: !367)
!372 = !DILocation(line: 103, column: 10, scope: !367)
!373 = !DILocation(line: 103, column: 3, scope: !367)
!374 = distinct !DISubprogram(name: "putchar_unlocked", scope: !248, file: !248, line: 108, type: !350, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!375 = !{!376}
!376 = !DILocalVariable(name: "__c", arg: 1, scope: !374, file: !248, line: 108, type: !234)
!377 = !DILocation(line: 0, scope: !374)
!378 = !DILocation(line: 110, column: 10, scope: !374)
!379 = !DILocation(line: 110, column: 3, scope: !374)
!380 = distinct !DISubprogram(name: "getline", scope: !248, file: !248, line: 118, type: !381, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !385)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !235, !384, !276}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !303, line: 193, baseType: !304)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!385 = !{!386, !387, !388}
!386 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !380, file: !248, line: 118, type: !235)
!387 = !DILocalVariable(name: "__n", arg: 2, scope: !380, file: !248, line: 118, type: !384)
!388 = !DILocalVariable(name: "__stream", arg: 3, scope: !380, file: !248, line: 118, type: !276)
!389 = !DILocation(line: 0, scope: !380)
!390 = !DILocation(line: 120, column: 10, scope: !380)
!391 = !DILocation(line: 120, column: 3, scope: !380)
!392 = distinct !DISubprogram(name: "feof_unlocked", scope: !248, file: !248, line: 128, type: !274, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !393)
!393 = !{!394}
!394 = !DILocalVariable(name: "__stream", arg: 1, scope: !392, file: !248, line: 128, type: !276)
!395 = !DILocation(line: 0, scope: !392)
!396 = !DILocation(line: 130, column: 10, scope: !392)
!397 = !DILocation(line: 130, column: 3, scope: !392)
!398 = distinct !DISubprogram(name: "ferror_unlocked", scope: !248, file: !248, line: 135, type: !274, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !399)
!399 = !{!400}
!400 = !DILocalVariable(name: "__stream", arg: 1, scope: !398, file: !248, line: 135, type: !276)
!401 = !DILocation(line: 0, scope: !398)
!402 = !DILocation(line: 137, column: 10, scope: !398)
!403 = !DILocation(line: 137, column: 3, scope: !398)
!404 = distinct !DISubprogram(name: "tolower", scope: !405, file: !405, line: 207, type: !350, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !406)
!405 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!406 = !{!407}
!407 = !DILocalVariable(name: "__c", arg: 1, scope: !404, file: !405, line: 207, type: !234)
!408 = !DILocation(line: 0, scope: !404)
!409 = !DILocation(line: 209, column: 22, scope: !404)
!410 = !DILocation(line: 209, column: 39, scope: !404)
!411 = !DILocation(line: 209, column: 38, scope: !404)
!412 = !DILocation(line: 209, column: 37, scope: !404)
!413 = !DILocation(line: 209, column: 10, scope: !404)
!414 = !DILocation(line: 209, column: 3, scope: !404)
!415 = distinct !DISubprogram(name: "toupper", scope: !405, file: !405, line: 213, type: !350, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !416)
!416 = !{!417}
!417 = !DILocalVariable(name: "__c", arg: 1, scope: !415, file: !405, line: 213, type: !234)
!418 = !DILocation(line: 0, scope: !415)
!419 = !DILocation(line: 215, column: 22, scope: !415)
!420 = !DILocation(line: 215, column: 39, scope: !415)
!421 = !DILocation(line: 215, column: 38, scope: !415)
!422 = !DILocation(line: 215, column: 37, scope: !415)
!423 = !DILocation(line: 215, column: 10, scope: !415)
!424 = !DILocation(line: 215, column: 3, scope: !415)
!425 = distinct !DISubprogram(name: "atoi", scope: !426, file: !426, line: 361, type: !427, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !429)
!426 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!427 = !DISubroutineType(types: !428)
!428 = !{!234, !239}
!429 = !{!430}
!430 = !DILocalVariable(name: "__nptr", arg: 1, scope: !425, file: !426, line: 361, type: !239)
!431 = !DILocation(line: 0, scope: !425)
!432 = !DILocation(line: 363, column: 16, scope: !425)
!433 = !DILocation(line: 363, column: 10, scope: !425)
!434 = !DILocation(line: 363, column: 3, scope: !425)
!435 = distinct !DISubprogram(name: "atol", scope: !426, file: !426, line: 366, type: !436, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!304, !239}
!438 = !{!439}
!439 = !DILocalVariable(name: "__nptr", arg: 1, scope: !435, file: !426, line: 366, type: !239)
!440 = !DILocation(line: 0, scope: !435)
!441 = !DILocation(line: 368, column: 10, scope: !435)
!442 = !DILocation(line: 368, column: 3, scope: !435)
!443 = distinct !DISubprogram(name: "atoll", scope: !426, file: !426, line: 373, type: !444, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !447)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !239}
!446 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!447 = !{!448}
!448 = !DILocalVariable(name: "__nptr", arg: 1, scope: !443, file: !426, line: 373, type: !239)
!449 = !DILocation(line: 0, scope: !443)
!450 = !DILocation(line: 375, column: 10, scope: !443)
!451 = !DILocation(line: 375, column: 3, scope: !443)
!452 = distinct !DISubprogram(name: "bsearch", scope: !453, file: !453, line: 20, type: !454, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !462)
!453 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!454 = !DISubroutineType(types: !455)
!455 = !{!238, !456, !456, !327, !327, !458}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !426, line: 808, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!234, !456, !456}
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!463 = !DILocalVariable(name: "__key", arg: 1, scope: !452, file: !453, line: 20, type: !456)
!464 = !DILocalVariable(name: "__base", arg: 2, scope: !452, file: !453, line: 20, type: !456)
!465 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !452, file: !453, line: 20, type: !327)
!466 = !DILocalVariable(name: "__size", arg: 4, scope: !452, file: !453, line: 20, type: !327)
!467 = !DILocalVariable(name: "__compar", arg: 5, scope: !452, file: !453, line: 21, type: !458)
!468 = !DILocalVariable(name: "__l", scope: !452, file: !453, line: 23, type: !327)
!469 = !DILocalVariable(name: "__u", scope: !452, file: !453, line: 23, type: !327)
!470 = !DILocalVariable(name: "__idx", scope: !452, file: !453, line: 23, type: !327)
!471 = !DILocalVariable(name: "__p", scope: !452, file: !453, line: 24, type: !456)
!472 = !DILocalVariable(name: "__comparison", scope: !452, file: !453, line: 25, type: !234)
!473 = !DILocation(line: 0, scope: !452)
!474 = !DILocation(line: 29, column: 3, scope: !452)
!475 = !DILocation(line: 27, column: 7, scope: !452)
!476 = !DILocation(line: 29, column: 14, scope: !452)
!477 = !DILocation(line: 31, column: 20, scope: !478)
!478 = distinct !DILexicalBlock(scope: !452, file: !453, line: 30, column: 5)
!479 = !DILocation(line: 31, column: 27, scope: !478)
!480 = !DILocation(line: 32, column: 56, scope: !478)
!481 = !DILocation(line: 32, column: 47, scope: !478)
!482 = !DILocation(line: 33, column: 22, scope: !478)
!483 = !DILocation(line: 34, column: 24, scope: !484)
!484 = distinct !DILexicalBlock(scope: !478, file: !453, line: 34, column: 11)
!485 = !DILocation(line: 34, column: 11, scope: !478)
!486 = !DILocation(line: 36, column: 29, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !453, line: 36, column: 16)
!488 = !DILocation(line: 36, column: 16, scope: !484)
!489 = !DILocation(line: 37, column: 14, scope: !487)
!490 = distinct !{!490, !474, !491}
!491 = !DILocation(line: 40, column: 5, scope: !452)
!492 = !DILocation(line: 43, column: 1, scope: !452)
!493 = distinct !DISubprogram(name: "atof", scope: !494, file: !494, line: 25, type: !495, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!494 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !239}
!497 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!498 = !{!499}
!499 = !DILocalVariable(name: "__nptr", arg: 1, scope: !493, file: !494, line: 25, type: !239)
!500 = !DILocation(line: 0, scope: !493)
!501 = !DILocation(line: 27, column: 10, scope: !493)
!502 = !DILocation(line: 27, column: 3, scope: !493)
!503 = distinct !DISubprogram(name: "strtoimax", scope: !504, file: !504, line: 324, type: !505, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !511)
!504 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !251, !510, !234}
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !508, line: 101, baseType: !509)
!508 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !303, line: 72, baseType: !304)
!510 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!511 = !{!512, !513, !514}
!512 = !DILocalVariable(name: "nptr", arg: 1, scope: !503, file: !504, line: 324, type: !251)
!513 = !DILocalVariable(name: "endptr", arg: 2, scope: !503, file: !504, line: 324, type: !510)
!514 = !DILocalVariable(name: "base", arg: 3, scope: !503, file: !504, line: 324, type: !234)
!515 = !DILocation(line: 0, scope: !503)
!516 = !DILocation(line: 327, column: 10, scope: !503)
!517 = !DILocation(line: 327, column: 3, scope: !503)
!518 = distinct !DISubprogram(name: "strtoumax", scope: !504, file: !504, line: 336, type: !519, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !523)
!519 = !DISubroutineType(types: !520)
!520 = !{!521, !251, !510, !234}
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !508, line: 102, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !303, line: 73, baseType: !329)
!523 = !{!524, !525, !526}
!524 = !DILocalVariable(name: "nptr", arg: 1, scope: !518, file: !504, line: 336, type: !251)
!525 = !DILocalVariable(name: "endptr", arg: 2, scope: !518, file: !504, line: 336, type: !510)
!526 = !DILocalVariable(name: "base", arg: 3, scope: !518, file: !504, line: 336, type: !234)
!527 = !DILocation(line: 0, scope: !518)
!528 = !DILocation(line: 339, column: 10, scope: !518)
!529 = !DILocation(line: 339, column: 3, scope: !518)
!530 = distinct !DISubprogram(name: "wcstoimax", scope: !504, file: !504, line: 348, type: !531, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !540)
!531 = !DISubroutineType(types: !532)
!532 = !{!507, !533, !537, !234}
!533 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !504, line: 34, baseType: !234)
!537 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!540 = !{!541, !542, !543}
!541 = !DILocalVariable(name: "nptr", arg: 1, scope: !530, file: !504, line: 348, type: !533)
!542 = !DILocalVariable(name: "endptr", arg: 2, scope: !530, file: !504, line: 348, type: !537)
!543 = !DILocalVariable(name: "base", arg: 3, scope: !530, file: !504, line: 348, type: !234)
!544 = !DILocation(line: 0, scope: !530)
!545 = !DILocation(line: 351, column: 10, scope: !530)
!546 = !DILocation(line: 351, column: 3, scope: !530)
!547 = distinct !DISubprogram(name: "wcstoumax", scope: !504, file: !504, line: 362, type: !548, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!521, !533, !537, !234}
!550 = !{!551, !552, !553}
!551 = !DILocalVariable(name: "nptr", arg: 1, scope: !547, file: !504, line: 362, type: !533)
!552 = !DILocalVariable(name: "endptr", arg: 2, scope: !547, file: !504, line: 362, type: !537)
!553 = !DILocalVariable(name: "base", arg: 3, scope: !547, file: !504, line: 362, type: !234)
!554 = !DILocation(line: 0, scope: !547)
!555 = !DILocation(line: 365, column: 10, scope: !547)
!556 = !DILocation(line: 365, column: 3, scope: !547)
!557 = distinct !DISubprogram(name: "stat", scope: !558, file: !558, line: 453, type: !559, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !598)
!558 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!559 = !DISubroutineType(types: !560)
!560 = !{!234, !239, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !563, line: 46, size: 1152, elements: !564)
!563 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!564 = !{!565, !567, !569, !571, !573, !575, !577, !578, !579, !580, !582, !584, !592, !593, !594}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !562, file: !563, line: 48, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !303, line: 145, baseType: !329)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !562, file: !563, line: 53, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !303, line: 148, baseType: !329)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !562, file: !563, line: 61, baseType: !570, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !303, line: 151, baseType: !329)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !562, file: !563, line: 62, baseType: !572, size: 32, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !303, line: 150, baseType: !5)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !562, file: !563, line: 64, baseType: !574, size: 32, offset: 224)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !303, line: 146, baseType: !5)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !562, file: !563, line: 65, baseType: !576, size: 32, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !303, line: 147, baseType: !5)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !562, file: !563, line: 67, baseType: !234, size: 32, offset: 288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !562, file: !563, line: 69, baseType: !566, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !562, file: !563, line: 74, baseType: !302, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !562, file: !563, line: 78, baseType: !581, size: 64, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !303, line: 174, baseType: !304)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !562, file: !563, line: 80, baseType: !583, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !303, line: 179, baseType: !304)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !562, file: !563, line: 91, baseType: !585, size: 128, offset: 576)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !586, line: 10, size: 128, elements: !587)
!586 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!587 = !{!588, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !585, file: !586, line: 12, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !303, line: 160, baseType: !304)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !585, file: !586, line: 16, baseType: !591, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !303, line: 196, baseType: !304)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !562, file: !563, line: 92, baseType: !585, size: 128, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !562, file: !563, line: 93, baseType: !585, size: 128, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !562, file: !563, line: 106, baseType: !595, size: 192, offset: 960)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 192, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 3)
!598 = !{!599, !600}
!599 = !DILocalVariable(name: "__path", arg: 1, scope: !557, file: !558, line: 453, type: !239)
!600 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !557, file: !558, line: 453, type: !561)
!601 = !DILocation(line: 0, scope: !557)
!602 = !DILocation(line: 455, column: 10, scope: !557)
!603 = !DILocation(line: 455, column: 3, scope: !557)
!604 = distinct !DISubprogram(name: "lstat", scope: !558, file: !558, line: 460, type: !559, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !605)
!605 = !{!606, !607}
!606 = !DILocalVariable(name: "__path", arg: 1, scope: !604, file: !558, line: 460, type: !239)
!607 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !604, file: !558, line: 460, type: !561)
!608 = !DILocation(line: 0, scope: !604)
!609 = !DILocation(line: 462, column: 10, scope: !604)
!610 = !DILocation(line: 462, column: 3, scope: !604)
!611 = distinct !DISubprogram(name: "fstat", scope: !558, file: !558, line: 467, type: !612, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{!234, !234, !561}
!614 = !{!615, !616}
!615 = !DILocalVariable(name: "__fd", arg: 1, scope: !611, file: !558, line: 467, type: !234)
!616 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !611, file: !558, line: 467, type: !561)
!617 = !DILocation(line: 0, scope: !611)
!618 = !DILocation(line: 469, column: 10, scope: !611)
!619 = !DILocation(line: 469, column: 3, scope: !611)
!620 = distinct !DISubprogram(name: "fstatat", scope: !558, file: !558, line: 474, type: !621, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!234, !234, !239, !561, !234}
!623 = !{!624, !625, !626, !627}
!624 = !DILocalVariable(name: "__fd", arg: 1, scope: !620, file: !558, line: 474, type: !234)
!625 = !DILocalVariable(name: "__filename", arg: 2, scope: !620, file: !558, line: 474, type: !239)
!626 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !620, file: !558, line: 474, type: !561)
!627 = !DILocalVariable(name: "__flag", arg: 4, scope: !620, file: !558, line: 474, type: !234)
!628 = !DILocation(line: 0, scope: !620)
!629 = !DILocation(line: 477, column: 10, scope: !620)
!630 = !DILocation(line: 477, column: 3, scope: !620)
!631 = distinct !DISubprogram(name: "mknod", scope: !558, file: !558, line: 483, type: !632, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{!234, !239, !572, !566}
!634 = !{!635, !636, !637}
!635 = !DILocalVariable(name: "__path", arg: 1, scope: !631, file: !558, line: 483, type: !239)
!636 = !DILocalVariable(name: "__mode", arg: 2, scope: !631, file: !558, line: 483, type: !572)
!637 = !DILocalVariable(name: "__dev", arg: 3, scope: !631, file: !558, line: 483, type: !566)
!638 = !DILocation(line: 0, scope: !631)
!639 = !DILocation(line: 485, column: 10, scope: !631)
!640 = !DILocation(line: 485, column: 3, scope: !631)
!641 = distinct !DISubprogram(name: "mknodat", scope: !558, file: !558, line: 491, type: !642, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{!234, !234, !239, !572, !566}
!644 = !{!645, !646, !647, !648}
!645 = !DILocalVariable(name: "__fd", arg: 1, scope: !641, file: !558, line: 491, type: !234)
!646 = !DILocalVariable(name: "__path", arg: 2, scope: !641, file: !558, line: 491, type: !239)
!647 = !DILocalVariable(name: "__mode", arg: 3, scope: !641, file: !558, line: 491, type: !572)
!648 = !DILocalVariable(name: "__dev", arg: 4, scope: !641, file: !558, line: 491, type: !566)
!649 = !DILocation(line: 0, scope: !641)
!650 = !DILocation(line: 494, column: 10, scope: !641)
!651 = !DILocation(line: 494, column: 3, scope: !641)
!652 = distinct !DISubprogram(name: "stat64", scope: !558, file: !558, line: 502, type: !653, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !675)
!653 = !DISubroutineType(types: !654)
!654 = !{!234, !239, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !563, line: 119, size: 1152, elements: !657)
!657 = !{!658, !659, !661, !662, !663, !664, !665, !666, !667, !668, !669, !671, !672, !673, !674}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !656, file: !563, line: 121, baseType: !566, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !656, file: !563, line: 123, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !303, line: 149, baseType: !329)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !656, file: !563, line: 124, baseType: !570, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !656, file: !563, line: 125, baseType: !572, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !656, file: !563, line: 132, baseType: !574, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !656, file: !563, line: 133, baseType: !576, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !656, file: !563, line: 135, baseType: !234, size: 32, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !656, file: !563, line: 136, baseType: !566, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !656, file: !563, line: 137, baseType: !302, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !656, file: !563, line: 143, baseType: !581, size: 64, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !656, file: !563, line: 144, baseType: !670, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !303, line: 180, baseType: !304)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !656, file: !563, line: 152, baseType: !585, size: 128, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !656, file: !563, line: 153, baseType: !585, size: 128, offset: 704)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !656, file: !563, line: 154, baseType: !585, size: 128, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !656, file: !563, line: 164, baseType: !595, size: 192, offset: 960)
!675 = !{!676, !677}
!676 = !DILocalVariable(name: "__path", arg: 1, scope: !652, file: !558, line: 502, type: !239)
!677 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !652, file: !558, line: 502, type: !655)
!678 = !DILocation(line: 0, scope: !652)
!679 = !DILocation(line: 504, column: 10, scope: !652)
!680 = !DILocation(line: 504, column: 3, scope: !652)
!681 = distinct !DISubprogram(name: "lstat64", scope: !558, file: !558, line: 509, type: !653, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !682)
!682 = !{!683, !684}
!683 = !DILocalVariable(name: "__path", arg: 1, scope: !681, file: !558, line: 509, type: !239)
!684 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !681, file: !558, line: 509, type: !655)
!685 = !DILocation(line: 0, scope: !681)
!686 = !DILocation(line: 511, column: 10, scope: !681)
!687 = !DILocation(line: 511, column: 3, scope: !681)
!688 = distinct !DISubprogram(name: "fstat64", scope: !558, file: !558, line: 516, type: !689, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!234, !234, !655}
!691 = !{!692, !693}
!692 = !DILocalVariable(name: "__fd", arg: 1, scope: !688, file: !558, line: 516, type: !234)
!693 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !688, file: !558, line: 516, type: !655)
!694 = !DILocation(line: 0, scope: !688)
!695 = !DILocation(line: 518, column: 10, scope: !688)
!696 = !DILocation(line: 518, column: 3, scope: !688)
!697 = distinct !DISubprogram(name: "fstatat64", scope: !558, file: !558, line: 523, type: !698, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!234, !234, !239, !655, !234}
!700 = !{!701, !702, !703, !704}
!701 = !DILocalVariable(name: "__fd", arg: 1, scope: !697, file: !558, line: 523, type: !234)
!702 = !DILocalVariable(name: "__filename", arg: 2, scope: !697, file: !558, line: 523, type: !239)
!703 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !697, file: !558, line: 523, type: !655)
!704 = !DILocalVariable(name: "__flag", arg: 4, scope: !697, file: !558, line: 523, type: !234)
!705 = !DILocation(line: 0, scope: !697)
!706 = !DILocation(line: 526, column: 10, scope: !697)
!707 = !DILocation(line: 526, column: 3, scope: !697)
!708 = distinct !DISubprogram(name: "convert", scope: !1, file: !1, line: 68, type: !709, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1343)
!709 = !DISubroutineType(types: !710)
!710 = !{!711, !711, !711}
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !712, line: 56, baseType: !713)
!712 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !4, line: 3371, size: 1792, elements: !715)
!715 = !{!716, !749, !755, !766, !773, !780, !785, !791, !797, !810, !820, !858, !866, !894, !902, !903, !908, !917, !923, !928, !932, !936, !965, !1014, !1020, !1027, !1034, !1060, !1085, !1102, !1114, !1136, !1154, !1325}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !714, file: !4, line: 3372, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !4, line: 360, size: 64, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !717, file: !4, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !717, file: !4, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !717, file: !4, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !717, file: !4, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !717, file: !4, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !717, file: !4, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !717, file: !4, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !717, file: !4, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !717, file: !4, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !717, file: !4, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !717, file: !4, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !717, file: !4, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !717, file: !4, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !717, file: !4, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !717, file: !4, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !717, file: !4, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !717, file: !4, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !717, file: !4, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !717, file: !4, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !717, file: !4, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !717, file: !4, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !717, file: !4, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !717, file: !4, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !717, file: !4, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !717, file: !4, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !717, file: !4, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !717, file: !4, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !717, file: !4, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !717, file: !4, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !717, file: !4, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !714, file: !4, line: 3373, baseType: !750, size: 192)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !4, line: 402, size: 192, elements: !751)
!751 = !{!752, !753, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !750, file: !4, line: 403, baseType: !717, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !750, file: !4, line: 404, baseType: !711, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !4, line: 405, baseType: !711, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !714, file: !4, line: 3374, baseType: !756, size: 320)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !4, line: 1384, size: 320, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !756, file: !4, line: 1385, baseType: !750, size: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !756, file: !4, line: 1386, baseType: !760, size: 128, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !761, line: 58, baseType: !762)
!761 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !761, line: 54, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !762, file: !761, line: 56, baseType: !329, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !762, file: !761, line: 57, baseType: !304, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !714, file: !4, line: 3375, baseType: !767, size: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !4, line: 1397, size: 256, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !767, file: !4, line: 1398, baseType: !750, size: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !767, file: !4, line: 1399, baseType: !771, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !4, line: 1392, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !714, file: !4, line: 3376, baseType: !774, size: 256)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !4, line: 1408, size: 256, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !774, file: !4, line: 1409, baseType: !750, size: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !774, file: !4, line: 1410, baseType: !778, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !4, line: 1403, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !714, file: !4, line: 3377, baseType: !781, size: 256)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !4, line: 1437, size: 256, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !781, file: !4, line: 1438, baseType: !750, size: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !781, file: !4, line: 1439, baseType: !711, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !714, file: !4, line: 3378, baseType: !786, size: 256)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !4, line: 1418, size: 256, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !786, file: !4, line: 1419, baseType: !750, size: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !786, file: !4, line: 1420, baseType: !234, size: 32, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !786, file: !4, line: 1421, baseType: !310, size: 8, offset: 224)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !714, file: !4, line: 3379, baseType: !792, size: 320)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !4, line: 1428, size: 320, elements: !793)
!793 = !{!794, !795, !796}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !792, file: !4, line: 1429, baseType: !750, size: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !792, file: !4, line: 1430, baseType: !711, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !792, file: !4, line: 1431, baseType: !711, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !714, file: !4, line: 3380, baseType: !798, size: 320)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !4, line: 1460, size: 320, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !798, file: !4, line: 1461, baseType: !750, size: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !798, file: !4, line: 1462, baseType: !802, size: 128, offset: 192)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !803, line: 31, size: 128, elements: !804)
!803 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!804 = !{!805, !808, !809}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !802, file: !803, line: 32, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !802, file: !803, line: 33, baseType: !5, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !802, file: !803, line: 34, baseType: !5, size: 32, offset: 96)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !714, file: !4, line: 3381, baseType: !811, size: 384)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !4, line: 2507, size: 384, elements: !812)
!812 = !{!813, !814, !817, !818, !819}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !811, file: !4, line: 2508, baseType: !750, size: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !811, file: !4, line: 2509, baseType: !815, size: 32, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !816, line: 58, baseType: !241)
!816 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!817 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !811, file: !4, line: 2510, baseType: !5, size: 32, offset: 224)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !811, file: !4, line: 2511, baseType: !711, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !811, file: !4, line: 2512, baseType: !711, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !714, file: !4, line: 3382, baseType: !821, size: 896)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !4, line: 2652, size: 896, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !821, file: !4, line: 2653, baseType: !811, size: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !821, file: !4, line: 2654, baseType: !711, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !821, file: !4, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !821, file: !4, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !821, file: !4, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !821, file: !4, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !821, file: !4, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !821, file: !4, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !821, file: !4, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !821, file: !4, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !821, file: !4, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !821, file: !4, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !821, file: !4, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !821, file: !4, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !821, file: !4, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !821, file: !4, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !821, file: !4, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !821, file: !4, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !821, file: !4, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !821, file: !4, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !821, file: !4, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !821, file: !4, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !821, file: !4, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !821, file: !4, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !821, file: !4, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !821, file: !4, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !821, file: !4, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !821, file: !4, line: 2703, baseType: !5, size: 32, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !821, file: !4, line: 2705, baseType: !711, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !821, file: !4, line: 2706, baseType: !711, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !821, file: !4, line: 2707, baseType: !711, size: 64, offset: 704)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !821, file: !4, line: 2708, baseType: !711, size: 64, offset: 768)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !821, file: !4, line: 2711, baseType: !856, size: 64, offset: 832)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !4, line: 2711, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !714, file: !4, line: 3383, baseType: !859, size: 960)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !4, line: 2756, size: 960, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !859, file: !4, line: 2757, baseType: !821, size: 896)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !859, file: !4, line: 2758, baseType: !863, size: 64, offset: 896)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !712, line: 50, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !712, line: 49, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !714, file: !4, line: 3384, baseType: !867, size: 1472)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !4, line: 3114, size: 1472, elements: !868)
!868 = !{!869, !890, !891, !892, !893}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !867, file: !4, line: 3115, baseType: !870, size: 1216)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !4, line: 2984, size: 1216, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !870, file: !4, line: 2985, baseType: !859, size: 960)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !870, file: !4, line: 2986, baseType: !711, size: 64, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !870, file: !4, line: 2987, baseType: !711, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !870, file: !4, line: 2988, baseType: !711, size: 64, offset: 1088)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !870, file: !4, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !870, file: !4, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !870, file: !4, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !870, file: !4, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !870, file: !4, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !870, file: !4, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !870, file: !4, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !870, file: !4, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !870, file: !4, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !870, file: !4, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !870, file: !4, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !870, file: !4, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !870, file: !4, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !870, file: !4, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !867, file: !4, line: 3117, baseType: !711, size: 64, offset: 1216)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !867, file: !4, line: 3119, baseType: !711, size: 64, offset: 1280)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !867, file: !4, line: 3121, baseType: !711, size: 64, offset: 1344)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !867, file: !4, line: 3123, baseType: !711, size: 64, offset: 1408)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !714, file: !4, line: 3385, baseType: !895, size: 1088)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !4, line: 2874, size: 1088, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !895, file: !4, line: 2875, baseType: !859, size: 960)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !895, file: !4, line: 2876, baseType: !863, size: 64, offset: 960)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !895, file: !4, line: 2877, baseType: !900, size: 64, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !4, line: 2856, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !714, file: !4, line: 3386, baseType: !870, size: 1216)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !714, file: !4, line: 3387, baseType: !904, size: 1280)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !4, line: 3093, size: 1280, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !904, file: !4, line: 3094, baseType: !870, size: 1216)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !904, file: !4, line: 3095, baseType: !900, size: 64, offset: 1216)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !714, file: !4, line: 3388, baseType: !909, size: 1216)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !4, line: 2824, size: 1216, elements: !910)
!910 = !{!911, !912, !913, !914, !915, !916}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !909, file: !4, line: 2825, baseType: !821, size: 896)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !909, file: !4, line: 2827, baseType: !711, size: 64, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !909, file: !4, line: 2828, baseType: !711, size: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !909, file: !4, line: 2829, baseType: !711, size: 64, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !909, file: !4, line: 2830, baseType: !711, size: 64, offset: 1088)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !909, file: !4, line: 2831, baseType: !711, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !714, file: !4, line: 3389, baseType: !918, size: 1024)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !4, line: 2850, size: 1024, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !918, file: !4, line: 2851, baseType: !859, size: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !918, file: !4, line: 2852, baseType: !234, size: 32, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !918, file: !4, line: 2853, baseType: !234, size: 32, offset: 992)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !714, file: !4, line: 3390, baseType: !924, size: 1024)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !4, line: 2857, size: 1024, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !924, file: !4, line: 2858, baseType: !859, size: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !924, file: !4, line: 2859, baseType: !900, size: 64, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !714, file: !4, line: 3391, baseType: !929, size: 960)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !4, line: 2862, size: 960, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !929, file: !4, line: 2863, baseType: !859, size: 960)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !714, file: !4, line: 3392, baseType: !933, size: 1472)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !4, line: 3304, size: 1472, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !4, line: 3305, baseType: !867, size: 1472)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !714, file: !4, line: 3393, baseType: !937, size: 1792)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !4, line: 3248, size: 1792, elements: !938)
!938 = !{!939, !940, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !937, file: !4, line: 3249, baseType: !867, size: 1472)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !937, file: !4, line: 3251, baseType: !941, size: 64, offset: 1472)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !943, line: 41, flags: DIFlagFwdDecl)
!943 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!944 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !937, file: !4, line: 3254, baseType: !711, size: 64, offset: 1536)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !937, file: !4, line: 3257, baseType: !711, size: 64, offset: 1600)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !937, file: !4, line: 3258, baseType: !711, size: 64, offset: 1664)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !937, file: !4, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !937, file: !4, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !937, file: !4, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !937, file: !4, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !937, file: !4, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !937, file: !4, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !937, file: !4, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !937, file: !4, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !937, file: !4, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !937, file: !4, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !937, file: !4, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !937, file: !4, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !937, file: !4, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !937, file: !4, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !937, file: !4, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !937, file: !4, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !937, file: !4, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !937, file: !4, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !714, file: !4, line: 3394, baseType: !966, size: 1344)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !4, line: 2279, size: 1344, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !993, !994, !995, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !966, file: !4, line: 2280, baseType: !750, size: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !966, file: !4, line: 2281, baseType: !711, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !966, file: !4, line: 2282, baseType: !711, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !966, file: !4, line: 2283, baseType: !711, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !966, file: !4, line: 2284, baseType: !711, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !966, file: !4, line: 2285, baseType: !5, size: 32, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !966, file: !4, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !966, file: !4, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !966, file: !4, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !966, file: !4, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !966, file: !4, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !966, file: !4, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !966, file: !4, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !966, file: !4, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !966, file: !4, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !966, file: !4, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !966, file: !4, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !966, file: !4, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !966, file: !4, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !966, file: !4, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !966, file: !4, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !966, file: !4, line: 2305, baseType: !5, size: 32, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !966, file: !4, line: 2306, baseType: !991, size: 32, offset: 544)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !992, line: 31, baseType: !234)
!992 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !966, file: !4, line: 2307, baseType: !711, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !966, file: !4, line: 2308, baseType: !711, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !966, file: !4, line: 2314, baseType: !996, size: 64, offset: 704)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !4, line: 2309, size: 64, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !996, file: !4, line: 2310, baseType: !234, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !996, file: !4, line: 2311, baseType: !239, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !996, file: !4, line: 2312, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !4, line: 2277, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !966, file: !4, line: 2315, baseType: !711, size: 64, offset: 768)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !966, file: !4, line: 2316, baseType: !711, size: 64, offset: 832)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !966, file: !4, line: 2317, baseType: !711, size: 64, offset: 896)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !966, file: !4, line: 2318, baseType: !711, size: 64, offset: 960)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !966, file: !4, line: 2319, baseType: !711, size: 64, offset: 1024)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !966, file: !4, line: 2320, baseType: !711, size: 64, offset: 1088)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !966, file: !4, line: 2321, baseType: !711, size: 64, offset: 1152)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !966, file: !4, line: 2322, baseType: !711, size: 64, offset: 1216)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !966, file: !4, line: 2324, baseType: !1012, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !4, line: 2324, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !714, file: !4, line: 3395, baseType: !1015, size: 320)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !4, line: 1469, size: 320, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1015, file: !4, line: 1470, baseType: !750, size: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1015, file: !4, line: 1471, baseType: !711, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1015, file: !4, line: 1472, baseType: !711, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !714, file: !4, line: 3396, baseType: !1021, size: 320)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !4, line: 1482, size: 320, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1021, file: !4, line: 1483, baseType: !750, size: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1021, file: !4, line: 1484, baseType: !234, size: 32, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1021, file: !4, line: 1485, baseType: !1026, size: 64, offset: 256)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, size: 64, elements: !311)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !714, file: !4, line: 3397, baseType: !1028, size: 384)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !4, line: 1829, size: 384, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1028, file: !4, line: 1830, baseType: !750, size: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1028, file: !4, line: 1831, baseType: !815, size: 32, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1028, file: !4, line: 1832, baseType: !711, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1028, file: !4, line: 1835, baseType: !1026, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !714, file: !4, line: 3398, baseType: !1035, size: 704)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !4, line: 1898, size: 704, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1043, !1044, !1047}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1035, file: !4, line: 1899, baseType: !750, size: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1035, file: !4, line: 1902, baseType: !711, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1035, file: !4, line: 1905, baseType: !1040, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !712, line: 58, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !712, line: 57, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1035, file: !4, line: 1908, baseType: !5, size: 32, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1035, file: !4, line: 1911, baseType: !1045, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !4, line: 1876, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1035, file: !4, line: 1914, baseType: !1048, size: 256, offset: 448)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !4, line: 1883, size: 256, elements: !1049)
!1049 = !{!1050, !1052, !1053, !1058}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1048, file: !4, line: 1884, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1048, file: !4, line: 1885, baseType: !1051, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1048, file: !4, line: 1891, baseType: !1054, size: 64, offset: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1048, file: !4, line: 1891, size: 64, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1054, file: !4, line: 1891, baseType: !1040, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1054, file: !4, line: 1891, baseType: !711, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1048, file: !4, line: 1892, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !714, file: !4, line: 3399, baseType: !1061, size: 704)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !4, line: 2008, size: 704, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1080, !1081, !1082, !1083, !1084}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1061, file: !4, line: 2009, baseType: !750, size: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1061, file: !4, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1061, file: !4, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1061, file: !4, line: 2014, baseType: !815, size: 32, offset: 224)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1061, file: !4, line: 2016, baseType: !711, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1061, file: !4, line: 2017, baseType: !1069, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !4, line: 183, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !4, line: 183, size: 128, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1071, file: !4, line: 183, baseType: !1074, size: 128)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !4, line: 182, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !4, line: 182, size: 128, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1075, file: !4, line: 182, baseType: !5, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1075, file: !4, line: 182, baseType: !5, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1075, file: !4, line: 182, baseType: !1026, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1061, file: !4, line: 2019, baseType: !711, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1061, file: !4, line: 2020, baseType: !711, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1061, file: !4, line: 2021, baseType: !711, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1061, file: !4, line: 2022, baseType: !711, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1061, file: !4, line: 2023, baseType: !711, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !714, file: !4, line: 3400, baseType: !1086, size: 832)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !4, line: 2430, size: 832, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1086, file: !4, line: 2431, baseType: !750, size: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1086, file: !4, line: 2433, baseType: !711, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1086, file: !4, line: 2434, baseType: !711, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1086, file: !4, line: 2435, baseType: !711, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1086, file: !4, line: 2436, baseType: !711, size: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1086, file: !4, line: 2437, baseType: !1069, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1086, file: !4, line: 2438, baseType: !711, size: 64, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1086, file: !4, line: 2440, baseType: !711, size: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1086, file: !4, line: 2441, baseType: !711, size: 64, offset: 640)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1086, file: !4, line: 2443, baseType: !1098, size: 128, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !4, line: 182, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !4, line: 182, size: 128, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1099, file: !4, line: 182, baseType: !1074, size: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !714, file: !4, line: 3401, baseType: !1103, size: 320)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !4, line: 3327, size: 320, elements: !1104)
!1104 = !{!1105, !1106, !1113}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1103, file: !4, line: 3329, baseType: !750, size: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1103, file: !4, line: 3330, baseType: !1107, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !4, line: 3320, size: 192, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1108, file: !4, line: 3322, baseType: !1107, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1108, file: !4, line: 3323, baseType: !1107, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1108, file: !4, line: 3324, baseType: !711, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1103, file: !4, line: 3331, baseType: !1107, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !714, file: !4, line: 3402, baseType: !1115, size: 256)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !4, line: 1540, size: 256, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1115, file: !4, line: 1541, baseType: !750, size: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1115, file: !4, line: 1542, baseType: !1119, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !4, line: 1538, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !4, line: 1538, size: 192, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1121, file: !4, line: 1538, baseType: !1124, size: 192)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !4, line: 1537, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !4, line: 1537, size: 192, elements: !1126)
!1126 = !{!1127, !1128, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1125, file: !4, line: 1537, baseType: !5, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1125, file: !4, line: 1537, baseType: !5, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1125, file: !4, line: 1537, baseType: !1130, size: 128, offset: 64)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1131, size: 128, elements: !311)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !4, line: 1535, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !4, line: 1532, size: 128, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1132, file: !4, line: 1533, baseType: !711, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1132, file: !4, line: 1534, baseType: !711, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !714, file: !4, line: 3403, baseType: !1137, size: 512)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !4, line: 1938, size: 512, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1148, !1152, !1153}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1137, file: !4, line: 1939, baseType: !750, size: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1137, file: !4, line: 1940, baseType: !815, size: 32, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1137, file: !4, line: 1941, baseType: !3, size: 32, offset: 224)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1137, file: !4, line: 1946, baseType: !1143, size: 32, offset: 256)
!1143 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !4, line: 1942, size: 32, elements: !1144)
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1143, file: !4, line: 1943, baseType: !23, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1143, file: !4, line: 1944, baseType: !30, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1143, file: !4, line: 1945, baseType: !37, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1137, file: !4, line: 1950, baseType: !1149, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !712, line: 66, baseType: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !712, line: 65, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1137, file: !4, line: 1951, baseType: !1149, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1137, file: !4, line: 1953, baseType: !1026, size: 64, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !714, file: !4, line: 3404, baseType: !1155, size: 1664)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !4, line: 3337, size: 1664, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1155, file: !4, line: 3338, baseType: !750, size: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1155, file: !4, line: 3341, baseType: !1159, size: 1472, offset: 192)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1160, line: 410, size: 1472, elements: !1161)
!1160 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1159, file: !1160, line: 412, baseType: !234, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1159, file: !1160, line: 413, baseType: !234, size: 32, offset: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1159, file: !1160, line: 414, baseType: !234, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1159, file: !1160, line: 415, baseType: !234, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1159, file: !1160, line: 416, baseType: !234, size: 32, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1159, file: !1160, line: 417, baseType: !234, size: 32, offset: 160)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1159, file: !1160, line: 418, baseType: !233, size: 8, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1159, file: !1160, line: 419, baseType: !233, size: 8, offset: 200)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1159, file: !1160, line: 420, baseType: !308, size: 8, offset: 208)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1159, file: !1160, line: 421, baseType: !308, size: 8, offset: 216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1159, file: !1160, line: 422, baseType: !308, size: 8, offset: 224)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1159, file: !1160, line: 423, baseType: !308, size: 8, offset: 232)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1159, file: !1160, line: 424, baseType: !308, size: 8, offset: 240)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1159, file: !1160, line: 425, baseType: !308, size: 8, offset: 248)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1159, file: !1160, line: 426, baseType: !308, size: 8, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1159, file: !1160, line: 427, baseType: !308, size: 8, offset: 264)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1159, file: !1160, line: 428, baseType: !308, size: 8, offset: 272)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1159, file: !1160, line: 429, baseType: !308, size: 8, offset: 280)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1159, file: !1160, line: 430, baseType: !308, size: 8, offset: 288)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1159, file: !1160, line: 431, baseType: !308, size: 8, offset: 296)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1159, file: !1160, line: 432, baseType: !308, size: 8, offset: 304)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1159, file: !1160, line: 433, baseType: !308, size: 8, offset: 312)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1159, file: !1160, line: 434, baseType: !308, size: 8, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1159, file: !1160, line: 435, baseType: !308, size: 8, offset: 328)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1159, file: !1160, line: 436, baseType: !308, size: 8, offset: 336)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1159, file: !1160, line: 437, baseType: !308, size: 8, offset: 344)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1159, file: !1160, line: 438, baseType: !308, size: 8, offset: 352)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1159, file: !1160, line: 439, baseType: !308, size: 8, offset: 360)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1159, file: !1160, line: 440, baseType: !308, size: 8, offset: 368)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1159, file: !1160, line: 441, baseType: !308, size: 8, offset: 376)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1159, file: !1160, line: 442, baseType: !308, size: 8, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1159, file: !1160, line: 443, baseType: !308, size: 8, offset: 392)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1159, file: !1160, line: 444, baseType: !308, size: 8, offset: 400)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1159, file: !1160, line: 445, baseType: !308, size: 8, offset: 408)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1159, file: !1160, line: 446, baseType: !308, size: 8, offset: 416)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1159, file: !1160, line: 447, baseType: !308, size: 8, offset: 424)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1159, file: !1160, line: 448, baseType: !308, size: 8, offset: 432)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1159, file: !1160, line: 449, baseType: !308, size: 8, offset: 440)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1159, file: !1160, line: 450, baseType: !308, size: 8, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1159, file: !1160, line: 451, baseType: !308, size: 8, offset: 456)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1159, file: !1160, line: 452, baseType: !308, size: 8, offset: 464)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1159, file: !1160, line: 453, baseType: !308, size: 8, offset: 472)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1159, file: !1160, line: 454, baseType: !308, size: 8, offset: 480)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1159, file: !1160, line: 455, baseType: !308, size: 8, offset: 488)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1159, file: !1160, line: 456, baseType: !308, size: 8, offset: 496)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1159, file: !1160, line: 457, baseType: !308, size: 8, offset: 504)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1159, file: !1160, line: 458, baseType: !308, size: 8, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1159, file: !1160, line: 459, baseType: !308, size: 8, offset: 520)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1159, file: !1160, line: 460, baseType: !308, size: 8, offset: 528)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1159, file: !1160, line: 461, baseType: !308, size: 8, offset: 536)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1159, file: !1160, line: 462, baseType: !308, size: 8, offset: 544)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1159, file: !1160, line: 463, baseType: !308, size: 8, offset: 552)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1159, file: !1160, line: 464, baseType: !308, size: 8, offset: 560)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1159, file: !1160, line: 465, baseType: !308, size: 8, offset: 568)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1159, file: !1160, line: 466, baseType: !308, size: 8, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1159, file: !1160, line: 467, baseType: !308, size: 8, offset: 584)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1159, file: !1160, line: 468, baseType: !308, size: 8, offset: 592)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1159, file: !1160, line: 469, baseType: !308, size: 8, offset: 600)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1159, file: !1160, line: 470, baseType: !308, size: 8, offset: 608)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1159, file: !1160, line: 471, baseType: !308, size: 8, offset: 616)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1159, file: !1160, line: 472, baseType: !308, size: 8, offset: 624)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1159, file: !1160, line: 473, baseType: !308, size: 8, offset: 632)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1159, file: !1160, line: 474, baseType: !308, size: 8, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1159, file: !1160, line: 475, baseType: !308, size: 8, offset: 648)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1159, file: !1160, line: 476, baseType: !308, size: 8, offset: 656)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1159, file: !1160, line: 477, baseType: !308, size: 8, offset: 664)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1159, file: !1160, line: 478, baseType: !308, size: 8, offset: 672)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1159, file: !1160, line: 479, baseType: !308, size: 8, offset: 680)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1159, file: !1160, line: 480, baseType: !308, size: 8, offset: 688)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1159, file: !1160, line: 481, baseType: !308, size: 8, offset: 696)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1159, file: !1160, line: 482, baseType: !308, size: 8, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1159, file: !1160, line: 483, baseType: !308, size: 8, offset: 712)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1159, file: !1160, line: 484, baseType: !308, size: 8, offset: 720)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1159, file: !1160, line: 485, baseType: !308, size: 8, offset: 728)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1159, file: !1160, line: 486, baseType: !308, size: 8, offset: 736)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1159, file: !1160, line: 487, baseType: !308, size: 8, offset: 744)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1159, file: !1160, line: 488, baseType: !308, size: 8, offset: 752)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1159, file: !1160, line: 489, baseType: !308, size: 8, offset: 760)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1159, file: !1160, line: 490, baseType: !308, size: 8, offset: 768)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1159, file: !1160, line: 491, baseType: !308, size: 8, offset: 776)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1159, file: !1160, line: 492, baseType: !308, size: 8, offset: 784)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1159, file: !1160, line: 493, baseType: !308, size: 8, offset: 792)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1159, file: !1160, line: 494, baseType: !308, size: 8, offset: 800)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1159, file: !1160, line: 495, baseType: !308, size: 8, offset: 808)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1159, file: !1160, line: 496, baseType: !308, size: 8, offset: 816)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1159, file: !1160, line: 497, baseType: !308, size: 8, offset: 824)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1159, file: !1160, line: 498, baseType: !308, size: 8, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1159, file: !1160, line: 499, baseType: !308, size: 8, offset: 840)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1159, file: !1160, line: 500, baseType: !308, size: 8, offset: 848)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1159, file: !1160, line: 501, baseType: !308, size: 8, offset: 856)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1159, file: !1160, line: 502, baseType: !308, size: 8, offset: 864)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1159, file: !1160, line: 503, baseType: !308, size: 8, offset: 872)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1159, file: !1160, line: 504, baseType: !308, size: 8, offset: 880)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1159, file: !1160, line: 505, baseType: !308, size: 8, offset: 888)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1159, file: !1160, line: 506, baseType: !308, size: 8, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1159, file: !1160, line: 507, baseType: !308, size: 8, offset: 904)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1159, file: !1160, line: 508, baseType: !308, size: 8, offset: 912)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1159, file: !1160, line: 509, baseType: !308, size: 8, offset: 920)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1159, file: !1160, line: 510, baseType: !308, size: 8, offset: 928)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1159, file: !1160, line: 511, baseType: !308, size: 8, offset: 936)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1159, file: !1160, line: 512, baseType: !308, size: 8, offset: 944)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1159, file: !1160, line: 513, baseType: !308, size: 8, offset: 952)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1159, file: !1160, line: 514, baseType: !308, size: 8, offset: 960)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1159, file: !1160, line: 515, baseType: !308, size: 8, offset: 968)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1159, file: !1160, line: 516, baseType: !308, size: 8, offset: 976)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1159, file: !1160, line: 517, baseType: !308, size: 8, offset: 984)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1159, file: !1160, line: 518, baseType: !308, size: 8, offset: 992)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1159, file: !1160, line: 519, baseType: !308, size: 8, offset: 1000)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1159, file: !1160, line: 520, baseType: !308, size: 8, offset: 1008)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1159, file: !1160, line: 521, baseType: !308, size: 8, offset: 1016)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1159, file: !1160, line: 522, baseType: !308, size: 8, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1159, file: !1160, line: 523, baseType: !308, size: 8, offset: 1032)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1159, file: !1160, line: 524, baseType: !308, size: 8, offset: 1040)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1159, file: !1160, line: 525, baseType: !308, size: 8, offset: 1048)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1159, file: !1160, line: 526, baseType: !308, size: 8, offset: 1056)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1159, file: !1160, line: 527, baseType: !308, size: 8, offset: 1064)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1159, file: !1160, line: 528, baseType: !308, size: 8, offset: 1072)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1159, file: !1160, line: 529, baseType: !308, size: 8, offset: 1080)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1159, file: !1160, line: 530, baseType: !308, size: 8, offset: 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1159, file: !1160, line: 531, baseType: !308, size: 8, offset: 1096)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1159, file: !1160, line: 532, baseType: !308, size: 8, offset: 1104)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1159, file: !1160, line: 533, baseType: !308, size: 8, offset: 1112)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1159, file: !1160, line: 534, baseType: !308, size: 8, offset: 1120)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1159, file: !1160, line: 535, baseType: !308, size: 8, offset: 1128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1159, file: !1160, line: 536, baseType: !308, size: 8, offset: 1136)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1159, file: !1160, line: 537, baseType: !308, size: 8, offset: 1144)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1159, file: !1160, line: 538, baseType: !308, size: 8, offset: 1152)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1159, file: !1160, line: 539, baseType: !308, size: 8, offset: 1160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1159, file: !1160, line: 540, baseType: !308, size: 8, offset: 1168)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1159, file: !1160, line: 541, baseType: !308, size: 8, offset: 1176)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1159, file: !1160, line: 542, baseType: !308, size: 8, offset: 1184)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1159, file: !1160, line: 543, baseType: !308, size: 8, offset: 1192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1159, file: !1160, line: 544, baseType: !308, size: 8, offset: 1200)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1159, file: !1160, line: 545, baseType: !308, size: 8, offset: 1208)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1159, file: !1160, line: 546, baseType: !308, size: 8, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1159, file: !1160, line: 547, baseType: !308, size: 8, offset: 1224)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1159, file: !1160, line: 548, baseType: !308, size: 8, offset: 1232)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1159, file: !1160, line: 549, baseType: !308, size: 8, offset: 1240)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1159, file: !1160, line: 550, baseType: !308, size: 8, offset: 1248)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1159, file: !1160, line: 551, baseType: !308, size: 8, offset: 1256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1159, file: !1160, line: 552, baseType: !308, size: 8, offset: 1264)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1159, file: !1160, line: 553, baseType: !308, size: 8, offset: 1272)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1159, file: !1160, line: 554, baseType: !308, size: 8, offset: 1280)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1159, file: !1160, line: 555, baseType: !308, size: 8, offset: 1288)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1159, file: !1160, line: 556, baseType: !308, size: 8, offset: 1296)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1159, file: !1160, line: 557, baseType: !308, size: 8, offset: 1304)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1159, file: !1160, line: 558, baseType: !308, size: 8, offset: 1312)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1159, file: !1160, line: 559, baseType: !308, size: 8, offset: 1320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1159, file: !1160, line: 560, baseType: !308, size: 8, offset: 1328)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1159, file: !1160, line: 561, baseType: !308, size: 8, offset: 1336)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1159, file: !1160, line: 562, baseType: !308, size: 8, offset: 1344)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1159, file: !1160, line: 563, baseType: !308, size: 8, offset: 1352)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1159, file: !1160, line: 564, baseType: !308, size: 8, offset: 1360)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1159, file: !1160, line: 565, baseType: !308, size: 8, offset: 1368)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1159, file: !1160, line: 566, baseType: !308, size: 8, offset: 1376)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1159, file: !1160, line: 567, baseType: !308, size: 8, offset: 1384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1159, file: !1160, line: 568, baseType: !308, size: 8, offset: 1392)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1159, file: !1160, line: 569, baseType: !308, size: 8, offset: 1400)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1159, file: !1160, line: 570, baseType: !308, size: 8, offset: 1408)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1159, file: !1160, line: 571, baseType: !308, size: 8, offset: 1416)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1159, file: !1160, line: 572, baseType: !308, size: 8, offset: 1424)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1159, file: !1160, line: 573, baseType: !308, size: 8, offset: 1432)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1159, file: !1160, line: 574, baseType: !308, size: 8, offset: 1440)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !714, file: !4, line: 3405, baseType: !1326, size: 384)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !4, line: 3352, size: 384, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1326, file: !4, line: 3353, baseType: !750, size: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1326, file: !4, line: 3356, baseType: !1330, size: 192, offset: 192)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1160, line: 578, size: 192, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1330, file: !1160, line: 580, baseType: !234, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1330, file: !1160, line: 581, baseType: !234, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1330, file: !1160, line: 582, baseType: !234, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1330, file: !1160, line: 583, baseType: !234, size: 32, offset: 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1330, file: !1160, line: 584, baseType: !233, size: 8, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1330, file: !1160, line: 585, baseType: !233, size: 8, offset: 136)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1330, file: !1160, line: 586, baseType: !233, size: 8, offset: 144)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1330, file: !1160, line: 587, baseType: !233, size: 8, offset: 152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1330, file: !1160, line: 588, baseType: !233, size: 8, offset: 160)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1330, file: !1160, line: 589, baseType: !233, size: 8, offset: 168)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1330, file: !1160, line: 590, baseType: !233, size: 8, offset: 176)
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1344 = !DILocalVariable(name: "type", arg: 1, scope: !708, file: !1, line: 68, type: !711)
!1345 = !DILocalVariable(name: "expr", arg: 2, scope: !708, file: !1, line: 68, type: !711)
!1346 = !DILocalVariable(name: "e", scope: !708, file: !1, line: 70, type: !711)
!1347 = !DILocalVariable(name: "code", scope: !708, file: !1, line: 71, type: !37)
!1348 = !DILocalVariable(name: "invalid_conv_diag", scope: !708, file: !1, line: 72, type: !239)
!1349 = !DILocalVariable(name: "ret", scope: !708, file: !1, line: 73, type: !711)
!1350 = !DILocalVariable(name: "loc", scope: !708, file: !1, line: 74, type: !815)
!1351 = !DILabel(scope: !1352, name: "maybe_fold", file: !1, line: 150)
!1352 = distinct !DILexicalBlock(scope: !708, file: !1, line: 107, column: 5)
!1353 = !DILocation(line: 0, scope: !708)
!1354 = !DILocation(line: 71, column: 25, scope: !708)
!1355 = !DILocation(line: 74, column: 20, scope: !708)
!1356 = !DILocation(line: 76, column: 15, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !708, file: !1, line: 76, column: 7)
!1358 = !DILocation(line: 76, column: 12, scope: !1357)
!1359 = !DILocation(line: 77, column: 15, scope: !1357)
!1360 = !DILocation(line: 77, column: 7, scope: !1357)
!1361 = !DILocation(line: 78, column: 10, scope: !1357)
!1362 = !DILocation(line: 78, column: 27, scope: !1357)
!1363 = !DILocation(line: 76, column: 7, scope: !708)
!1364 = !DILocation(line: 79, column: 5, scope: !1357)
!1365 = !DILocation(line: 82, column: 18, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !708, file: !1, line: 81, column: 7)
!1367 = !DILocation(line: 82, column: 10, scope: !1366)
!1368 = !DILocation(line: 82, column: 8, scope: !1366)
!1369 = !DILocation(line: 81, column: 7, scope: !708)
!1370 = !DILocation(line: 84, column: 7, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 83, column: 5)
!1372 = !DILocation(line: 85, column: 14, scope: !1371)
!1373 = !DILocation(line: 85, column: 7, scope: !1371)
!1374 = !DILocation(line: 88, column: 15, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !708, file: !1, line: 88, column: 7)
!1376 = !DILocation(line: 88, column: 12, scope: !1375)
!1377 = !DILocation(line: 88, column: 7, scope: !708)
!1378 = !DILocation(line: 90, column: 17, scope: !708)
!1379 = !DILocation(line: 90, column: 9, scope: !708)
!1380 = !DILocation(line: 91, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !708, file: !1, line: 91, column: 7)
!1382 = !DILocation(line: 91, column: 7, scope: !708)
!1383 = !DILocation(line: 94, column: 3, scope: !708)
!1384 = distinct !{!1384, !1383, !1383}
!1385 = !DILocation(line: 96, column: 7, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !708, file: !1, line: 96, column: 7)
!1387 = !DILocation(line: 96, column: 35, scope: !1386)
!1388 = !DILocation(line: 96, column: 32, scope: !1386)
!1389 = !DILocation(line: 96, column: 7, scope: !708)
!1390 = !DILocation(line: 97, column: 12, scope: !1386)
!1391 = !DILocation(line: 97, column: 5, scope: !1386)
!1392 = !DILocation(line: 98, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !708, file: !1, line: 98, column: 7)
!1394 = !DILocation(line: 98, column: 36, scope: !1393)
!1395 = !DILocation(line: 98, column: 7, scope: !708)
!1396 = !DILocation(line: 99, column: 5, scope: !1393)
!1397 = !DILocation(line: 100, column: 36, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !708, file: !1, line: 100, column: 7)
!1399 = !DILocation(line: 100, column: 7, scope: !708)
!1400 = !DILocation(line: 102, column: 7, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !1, line: 101, column: 5)
!1402 = !DILocation(line: 103, column: 14, scope: !1401)
!1403 = !DILocation(line: 103, column: 7, scope: !1401)
!1404 = !DILocation(line: 106, column: 3, scope: !708)
!1405 = !DILocation(line: 109, column: 14, scope: !1352)
!1406 = !DILocation(line: 109, column: 7, scope: !1352)
!1407 = !DILocation(line: 113, column: 13, scope: !1352)
!1408 = !DILocation(line: 114, column: 7, scope: !1352)
!1409 = !DILocation(line: 118, column: 51, scope: !1352)
!1410 = !DILocation(line: 118, column: 14, scope: !1352)
!1411 = !DILocation(line: 117, column: 14, scope: !1352)
!1412 = !DILocation(line: 117, column: 7, scope: !1352)
!1413 = !DILocation(line: 122, column: 13, scope: !1352)
!1414 = !DILocation(line: 123, column: 7, scope: !1352)
!1415 = !DILocation(line: 126, column: 13, scope: !1352)
!1416 = !DILocation(line: 127, column: 7, scope: !1352)
!1417 = !DILocation(line: 130, column: 13, scope: !1352)
!1418 = !DILocation(line: 131, column: 7, scope: !1352)
!1419 = !DILocation(line: 134, column: 13, scope: !1352)
!1420 = !DILocation(line: 135, column: 7, scope: !1352)
!1421 = !DILocation(line: 138, column: 13, scope: !1352)
!1422 = !DILocation(line: 139, column: 7, scope: !1352)
!1423 = !DILocation(line: 143, column: 22, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 143, column: 11)
!1425 = !DILocation(line: 143, column: 11, scope: !1424)
!1426 = !DILocation(line: 143, column: 11, scope: !1352)
!1427 = !DILocation(line: 0, scope: !1352)
!1428 = !DILocation(line: 150, column: 5, scope: !1352)
!1429 = !DILocation(line: 151, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 151, column: 11)
!1431 = !DILocation(line: 151, column: 27, scope: !1430)
!1432 = !DILocation(line: 151, column: 11, scope: !1352)
!1433 = !DILocation(line: 152, column: 8, scope: !1430)
!1434 = !DILocation(line: 152, column: 2, scope: !1430)
!1435 = !DILocation(line: 156, column: 3, scope: !708)
!1436 = !DILocation(line: 157, column: 10, scope: !708)
!1437 = !DILocation(line: 157, column: 3, scope: !708)
!1438 = !DILocation(line: 158, column: 1, scope: !708)
