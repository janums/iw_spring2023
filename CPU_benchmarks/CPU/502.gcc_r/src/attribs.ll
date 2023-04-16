; ModuleID = 'attribs.bc'
source_filename = "attribs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.substring = type { i8*, i32 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@attribute_hash = internal unnamed_addr global %struct.htab* null, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"attribs.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@attributes_initialized = internal unnamed_addr global i1 false, align 1, !dbg !1254
@.str.2 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@targetm = external dso_local local_unnamed_addr global %struct.gcc_target, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%qE attribute directive ignored\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"wrong number of arguments specified for %qE attribute\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"%qE attribute does not apply to types\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"%qE attribute only applies to function types\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"type attributes ignored after type is already defined\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@attribute_tables = internal unnamed_addr global [4 x %struct.attribute_spec*] zeroinitializer, align 16, !dbg !1197
@empty_attribute_table = internal constant [1 x %struct.attribute_spec] zeroinitializer, align 16, !dbg !1202

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1259 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1272, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1273, metadata !DIExpression()), !dbg !1274
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1275
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1276
  ret i32 %call, !dbg !1277
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1278 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1282
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1283
  ret i32 %call, !dbg !1284
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1285 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1340, metadata !DIExpression()), !dbg !1341
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1342
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1342
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1342
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1342
  %cmp = icmp uge i8* %0, %1, !dbg !1342
  %conv1 = zext i1 %cmp to i64, !dbg !1342
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1342
  %tobool = icmp eq i64 %expval, 0, !dbg !1342
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1342

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1342
  br label %cond.end, !dbg !1342

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1342
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1342
  %2 = load i8, i8* %0, align 1, !dbg !1342
  %conv3 = zext i8 %2 to i32, !dbg !1342
  br label %cond.end, !dbg !1342

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1342
  ret i32 %cond, !dbg !1343
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1344 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1346, metadata !DIExpression()), !dbg !1347
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1348
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1348
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1348
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1348
  %cmp = icmp uge i8* %0, %1, !dbg !1348
  %conv1 = zext i1 %cmp to i64, !dbg !1348
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1348
  %tobool = icmp eq i64 %expval, 0, !dbg !1348
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1348

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1348
  br label %cond.end, !dbg !1348

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1348
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1348
  %2 = load i8, i8* %0, align 1, !dbg !1348
  %conv3 = zext i8 %2 to i32, !dbg !1348
  br label %cond.end, !dbg !1348

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1348
  ret i32 %cond, !dbg !1349
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1350 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1351
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1351
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1351
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1351
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1351
  %cmp = icmp uge i8* %1, %2, !dbg !1351
  %conv1 = zext i1 %cmp to i64, !dbg !1351
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1351
  %tobool = icmp eq i64 %expval, 0, !dbg !1351
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1351

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1351
  br label %cond.end, !dbg !1351

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1351
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1351
  %3 = load i8, i8* %1, align 1, !dbg !1351
  %conv3 = zext i8 %3 to i32, !dbg !1351
  br label %cond.end, !dbg !1351

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1351
  ret i32 %cond, !dbg !1352
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1353 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1357, metadata !DIExpression()), !dbg !1358
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1359
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1360
  ret i32 %call, !dbg !1361
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1362 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1366, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1367, metadata !DIExpression()), !dbg !1368
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1369
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1369
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1369
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1369
  %cmp = icmp uge i8* %0, %1, !dbg !1369
  %conv1 = zext i1 %cmp to i64, !dbg !1369
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1369
  %tobool = icmp eq i64 %expval, 0, !dbg !1369
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1369

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1369
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1369
  br label %cond.end, !dbg !1369

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1369
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1369
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1369
  store i8 %conv2, i8* %0, align 1, !dbg !1369
  %conv6 = and i32 %__c, 255, !dbg !1369
  br label %cond.end, !dbg !1369

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1369
  ret i32 %cond, !dbg !1370
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1371 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1373, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1374, metadata !DIExpression()), !dbg !1375
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1376
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1376
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1376
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1376
  %cmp = icmp uge i8* %0, %1, !dbg !1376
  %conv1 = zext i1 %cmp to i64, !dbg !1376
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1376
  %tobool = icmp eq i64 %expval, 0, !dbg !1376
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1376

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1376
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1376
  br label %cond.end, !dbg !1376

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1376
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1376
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1376
  store i8 %conv2, i8* %0, align 1, !dbg !1376
  %conv6 = and i32 %__c, 255, !dbg !1376
  br label %cond.end, !dbg !1376

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1376
  ret i32 %cond, !dbg !1377
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1378 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1380, metadata !DIExpression()), !dbg !1381
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1382
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1382
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1382
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1382
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1382
  %cmp = icmp uge i8* %1, %2, !dbg !1382
  %conv1 = zext i1 %cmp to i64, !dbg !1382
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1382
  %tobool = icmp eq i64 %expval, 0, !dbg !1382
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1382

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1382
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1382
  br label %cond.end, !dbg !1382

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1382
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1382
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1382
  store i8 %conv4, i8* %1, align 1, !dbg !1382
  %conv6 = and i32 %__c, 255, !dbg !1382
  br label %cond.end, !dbg !1382

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1382
  ret i32 %cond, !dbg !1383
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1384 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1392, metadata !DIExpression()), !dbg !1393
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1394
  ret i64 %call, !dbg !1395
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1396 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1398, metadata !DIExpression()), !dbg !1399
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1400
  %0 = load i32, i32* %_flags, align 8, !dbg !1400
  %and = lshr i32 %0, 4, !dbg !1400
  %and.lobit = and i32 %and, 1, !dbg !1400
  ret i32 %and.lobit, !dbg !1401
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1402 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1404, metadata !DIExpression()), !dbg !1405
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1406
  %0 = load i32, i32* %_flags, align 8, !dbg !1406
  %and = lshr i32 %0, 5, !dbg !1406
  %and.lobit = and i32 %and, 1, !dbg !1406
  ret i32 %and.lobit, !dbg !1407
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1408 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1411, metadata !DIExpression()), !dbg !1412
  %__c.off = add i32 %__c, 128, !dbg !1413
  %0 = icmp ult i32 %__c.off, 384, !dbg !1413
  br i1 %0, label %cond.true, label %cond.end, !dbg !1413

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1414
  %1 = load i32*, i32** %call, align 8, !dbg !1415
  %idxprom = sext i32 %__c to i64, !dbg !1416
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1416
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1416
  br label %cond.end, !dbg !1417

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1417
  ret i32 %cond, !dbg !1418
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1419 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1421, metadata !DIExpression()), !dbg !1422
  %__c.off = add i32 %__c, 128, !dbg !1423
  %0 = icmp ult i32 %__c.off, 384, !dbg !1423
  br i1 %0, label %cond.true, label %cond.end, !dbg !1423

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1424
  %1 = load i32*, i32** %call, align 8, !dbg !1425
  %idxprom = sext i32 %__c to i64, !dbg !1426
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1426
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1426
  br label %cond.end, !dbg !1427

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1427
  ret i32 %cond, !dbg !1428
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1429 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1434, metadata !DIExpression()), !dbg !1435
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1436
  %conv = trunc i64 %call to i32, !dbg !1437
  ret i32 %conv, !dbg !1438
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1439 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1443, metadata !DIExpression()), !dbg !1444
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1445
  ret i64 %call, !dbg !1446
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1447 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1452, metadata !DIExpression()), !dbg !1453
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1454
  ret i64 %call, !dbg !1455
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1456 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1462, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1463, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1464, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1465, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1466, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 0, metadata !1467, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1468, metadata !DIExpression()), !dbg !1472
  br label %while.cond, !dbg !1473

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1474
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1472
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1468, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1467, metadata !DIExpression()), !dbg !1472
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1475
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1473

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1476
  %div = lshr i64 %add, 1, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %div, metadata !1469, metadata !DIExpression()), !dbg !1472
  %mul = mul i64 %div, %__size, !dbg !1479
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1470, metadata !DIExpression()), !dbg !1472
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %call, metadata !1471, metadata !DIExpression()), !dbg !1472
  %cmp1 = icmp slt i32 %call, 0, !dbg !1482
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1484

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1485
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1487

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1467, metadata !DIExpression()), !dbg !1472
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1472
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1472
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1468, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1467, metadata !DIExpression()), !dbg !1472
  br label %while.cond, !dbg !1473, !llvm.loop !1489

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1472
  ret i8* %retval.0, !dbg !1491
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1492 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1498, metadata !DIExpression()), !dbg !1499
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1500
  ret double %call, !dbg !1501
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1502 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1511, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1512, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i32 %base, metadata !1513, metadata !DIExpression()), !dbg !1514
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1515
  ret i64 %call, !dbg !1516
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1517 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1523, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1524, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i32 %base, metadata !1525, metadata !DIExpression()), !dbg !1526
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1527
  ret i64 %call, !dbg !1528
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1529 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1540, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1541, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i32 %base, metadata !1542, metadata !DIExpression()), !dbg !1543
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1544
  ret i64 %call, !dbg !1545
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1546 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1550, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1551, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i32 %base, metadata !1552, metadata !DIExpression()), !dbg !1553
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1554
  ret i64 %call, !dbg !1555
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1556 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1596, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1597, metadata !DIExpression()), !dbg !1598
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1599
  ret i32 %call, !dbg !1600
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1601 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1603, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1604, metadata !DIExpression()), !dbg !1605
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1606
  ret i32 %call, !dbg !1607
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1608 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1612, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1613, metadata !DIExpression()), !dbg !1614
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1615
  ret i32 %call, !dbg !1616
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1617 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1621, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1622, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1623, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1624, metadata !DIExpression()), !dbg !1625
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1626
  ret i32 %call, !dbg !1627
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1628 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1632, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1633, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1634, metadata !DIExpression()), !dbg !1635
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1634, metadata !DIExpression(DW_OP_deref)), !dbg !1635
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1636
  ret i32 %call, !dbg !1637
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1638 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1642, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1643, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1644, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1645, metadata !DIExpression()), !dbg !1646
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1645, metadata !DIExpression(DW_OP_deref)), !dbg !1646
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1647
  ret i32 %call, !dbg !1648
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1649 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1673, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1674, metadata !DIExpression()), !dbg !1675
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1676
  ret i32 %call, !dbg !1677
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1678 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1680, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1681, metadata !DIExpression()), !dbg !1682
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1683
  ret i32 %call, !dbg !1684
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1685 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1689, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1690, metadata !DIExpression()), !dbg !1691
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1692
  ret i32 %call, !dbg !1693
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1694 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1698, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1699, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1700, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1701, metadata !DIExpression()), !dbg !1702
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1703
  ret i32 %call, !dbg !1704
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @register_attribute(%struct.attribute_spec* %attr) local_unnamed_addr #4 !dbg !1705 {
entry:
  %str = alloca %struct.substring, align 8
  call void @llvm.dbg.value(metadata %struct.attribute_spec* %attr, metadata !1709, metadata !DIExpression()), !dbg !1712
  %0 = bitcast %struct.substring* %str to i8*, !dbg !1713
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !1713
  %1 = bitcast %struct.attribute_spec* %attr to i64*, !dbg !1714
  %2 = load i64, i64* %1, align 8, !dbg !1714
  %3 = bitcast %struct.substring* %str to i64*, !dbg !1715
  store i64 %2, i64* %3, align 8, !dbg !1715
  %.cast = inttoptr i64 %2 to i8*, !dbg !1716
  %call = tail call i64 @strlen(i8* %.cast) #6, !dbg !1717
  %conv = trunc i64 %call to i32, !dbg !1717
  %length = getelementptr inbounds %struct.substring, %struct.substring* %str, i64 0, i32 1, !dbg !1718
  store i32 %conv, i32* %length, align 8, !dbg !1719
  %4 = load %struct.htab*, %struct.htab** @attribute_hash, align 8, !dbg !1720
  %call5 = tail call fastcc i32 @substring_hash(i8* %.cast, i32 %conv) #8, !dbg !1721
  %call6 = call i8** @htab_find_slot_with_hash(%struct.htab* %4, i8* nonnull %0, i32 %call5, i32 1) #6, !dbg !1722
  call void @llvm.dbg.value(metadata i8** %call6, metadata !1711, metadata !DIExpression()), !dbg !1712
  %5 = load i8*, i8** %call6, align 8, !dbg !1723
  %tobool = icmp eq i8* %5, null, !dbg !1723
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1723

cond.true:                                        ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1723
  br label %cond.end, !dbg !1723

cond.end:                                         ; preds = %entry, %cond.true
  %6 = bitcast i8** %call6 to %struct.attribute_spec**, !dbg !1724
  store %struct.attribute_spec* %attr, %struct.attribute_spec** %6, align 8, !dbg !1724
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !1725
  ret void, !dbg !1725
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @substring_hash(i8* %str, i32 %l) unnamed_addr #0 !dbg !1726 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !1730, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i32 %l, metadata !1731, metadata !DIExpression()), !dbg !1732
  %0 = load i8, i8* %str, align 1, !dbg !1733
  %conv = sext i8 %0 to i32, !dbg !1733
  %sub = add nsw i32 %l, -1, !dbg !1734
  %idxprom = sext i32 %sub to i64, !dbg !1735
  %arrayidx1 = getelementptr inbounds i8, i8* %str, i64 %idxprom, !dbg !1735
  %1 = load i8, i8* %arrayidx1, align 1, !dbg !1735
  %conv2 = sext i8 %1 to i32, !dbg !1735
  %mul = shl nsw i32 %conv2, 8, !dbg !1736
  %add = add nsw i32 %mul, %conv, !dbg !1737
  %mul3 = shl nsw i32 %l, 16, !dbg !1738
  %add4 = add nsw i32 %add, %mul3, !dbg !1739
  ret i32 %add4, !dbg !1740
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.attribute_spec* @lookup_attribute_spec(%union.tree_node* %name) local_unnamed_addr #4 !dbg !1741 {
entry:
  %attr = alloca %struct.substring, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !1745, metadata !DIExpression()), !dbg !1747
  %0 = bitcast %struct.substring* %attr to i8*, !dbg !1748
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !1748
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1749
  %1 = bitcast i32* %id to i64*, !dbg !1749
  %2 = load i64, i64* %1, align 8, !dbg !1749
  %3 = bitcast %struct.substring* %attr to i64*, !dbg !1750
  store i64 %2, i64* %3, align 8, !dbg !1750
  %4 = getelementptr inbounds i32, i32* %id, i64 2, !dbg !1751
  %5 = load i32, i32* %4, align 8, !dbg !1751
  %length = getelementptr inbounds %struct.substring, %struct.substring* %attr, i64 0, i32 1, !dbg !1752
  store i32 %5, i32* %length, align 8, !dbg !1753
  call void @llvm.dbg.value(metadata %struct.substring* %attr, metadata !1746, metadata !DIExpression(DW_OP_deref)), !dbg !1747
  call fastcc void @extract_attribute_substring(%struct.substring* nonnull %attr) #8, !dbg !1754
  %6 = load %struct.htab*, %struct.htab** @attribute_hash, align 8, !dbg !1755
  %str4 = getelementptr inbounds %struct.substring, %struct.substring* %attr, i64 0, i32 0, !dbg !1756
  %7 = load i8*, i8** %str4, align 8, !dbg !1756
  %8 = load i32, i32* %length, align 8, !dbg !1757
  %call = call fastcc i32 @substring_hash(i8* %7, i32 %8) #8, !dbg !1758
  %call6 = call i8* @htab_find_with_hash(%struct.htab* %6, i8* nonnull %0, i32 %call) #6, !dbg !1759
  %9 = bitcast i8* %call6 to %struct.attribute_spec*, !dbg !1760
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !1761
  ret %struct.attribute_spec* %9, !dbg !1762
}

; Function Attrs: nounwind uwtable
define internal fastcc void @extract_attribute_substring(%struct.substring* %str) unnamed_addr #4 !dbg !1763 {
entry:
  call void @llvm.dbg.value(metadata %struct.substring* %str, metadata !1768, metadata !DIExpression()), !dbg !1769
  %length = getelementptr inbounds %struct.substring, %struct.substring* %str, i64 0, i32 1, !dbg !1770
  %0 = load i32, i32* %length, align 8, !dbg !1770
  %cmp = icmp sgt i32 %0, 4, !dbg !1772
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1773

land.lhs.true:                                    ; preds = %entry
  %str1 = getelementptr inbounds %struct.substring, %struct.substring* %str, i64 0, i32 0, !dbg !1774
  %1 = load i8*, i8** %str1, align 8, !dbg !1774
  %2 = load i8, i8* %1, align 1, !dbg !1775
  %cmp2 = icmp eq i8 %2, 95, !dbg !1776
  br i1 %cmp2, label %land.lhs.true4, label %if.end, !dbg !1777

land.lhs.true4:                                   ; preds = %land.lhs.true
  %arrayidx6 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1778
  %3 = load i8, i8* %arrayidx6, align 1, !dbg !1778
  %cmp8 = icmp eq i8 %3, 95, !dbg !1779
  br i1 %cmp8, label %land.lhs.true10, label %if.end, !dbg !1780

land.lhs.true10:                                  ; preds = %land.lhs.true4
  %sub = add nsw i32 %0, -1, !dbg !1781
  %idxprom = sext i32 %sub to i64, !dbg !1782
  %arrayidx13 = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !1782
  %4 = load i8, i8* %arrayidx13, align 1, !dbg !1782
  %cmp15 = icmp eq i8 %4, 95, !dbg !1783
  br i1 %cmp15, label %land.lhs.true17, label %if.end, !dbg !1784

land.lhs.true17:                                  ; preds = %land.lhs.true10
  %sub20 = add nsw i32 %0, -2, !dbg !1785
  %idxprom21 = sext i32 %sub20 to i64, !dbg !1786
  %arrayidx22 = getelementptr inbounds i8, i8* %1, i64 %idxprom21, !dbg !1786
  %5 = load i8, i8* %arrayidx22, align 1, !dbg !1786
  %cmp24 = icmp eq i8 %5, 95, !dbg !1787
  br i1 %cmp24, label %if.then, label %if.end, !dbg !1788

if.then:                                          ; preds = %land.lhs.true17
  %sub27 = add nsw i32 %0, -4, !dbg !1789
  store i32 %sub27, i32* %length, align 8, !dbg !1789
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1791
  store i8* %add.ptr, i8** %str1, align 8, !dbg !1791
  br label %if.end, !dbg !1792

if.end:                                           ; preds = %if.then, %land.lhs.true17, %land.lhs.true10, %land.lhs.true4, %land.lhs.true, %entry
  ret void, !dbg !1793
}

declare dso_local i8* @htab_find_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @decl_attributes(%union.tree_node** %node, %union.tree_node* %attributes, i32 %flags) local_unnamed_addr #4 !dbg !1794 {
entry:
  %attributes.addr = alloca %union.tree_node*, align 8
  %no_add_attrs = alloca i8, align 1
  %fn_ptr_tmp = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata %union.tree_node** %node, metadata !1798, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %union.tree_node* %attributes, metadata !1799, metadata !DIExpression()), !dbg !1833
  store %union.tree_node* %attributes, %union.tree_node** %attributes.addr, align 8
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1800, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !1802, metadata !DIExpression()), !dbg !1833
  %0 = bitcast %union.tree_node** %node to %struct.tree_common**, !dbg !1834
  %1 = load %struct.tree_common*, %struct.tree_common** %0, align 8, !dbg !1834
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 2, !dbg !1834
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !1834
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !1836
  %cmp = icmp eq %union.tree_node* %2, %3, !dbg !1837
  %4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 0, i32 0, !dbg !1838
  br i1 %cmp, label %cleanup419, label %if.end, !dbg !1838

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @attributes_initialized, align 1, !dbg !1839
  br i1 %.b, label %if.end.if.end2_crit_edge, label %if.then1, !dbg !1841

if.end.if.end2_crit_edge:                         ; preds = %if.end
  %.pre36 = bitcast %union.tree_node** %node to i64**, !dbg !1842
  br label %if.end2, !dbg !1841

if.then1:                                         ; preds = %if.end
  tail call fastcc void @init_attributes() #8, !dbg !1843
  %.phi.trans.insert = bitcast %union.tree_node** %node to i64**, !dbg !1844
  %.pre = load i64*, i64** %.phi.trans.insert, align 8, !dbg !1842
  br label %if.end2, !dbg !1843

if.end2:                                          ; preds = %if.end.if.end2_crit_edge, %if.then1
  %.pre-phi37 = phi i64** [ %.pre36, %if.end.if.end2_crit_edge ], [ %.phi.trans.insert, %if.then1 ], !dbg !1842
  %5 = phi i64* [ %4, %if.end.if.end2_crit_edge ], [ %.pre, %if.then1 ], !dbg !1842
  %bf.load = load i64, i64* %5, align 8, !dbg !1842
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !1845
  %cmp3 = icmp eq i64 %bf.cast3, 29, !dbg !1845
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 130), align 16, !dbg !1846
  %tobool4 = icmp ne %union.tree_node* %6, null, !dbg !1846
  %or.cond = and i1 %cmp3, %tobool4, !dbg !1847
  br i1 %or.cond, label %if.then5, label %if.end15, !dbg !1847

if.then5:                                         ; preds = %if.end2
  call void @llvm.dbg.value(metadata %union.tree_node* %attributes, metadata !1799, metadata !DIExpression()), !dbg !1833
  %call = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %union.tree_node* %attributes) #6, !dbg !1848
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !1803, metadata !DIExpression()), !dbg !1849
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 130), align 16, !dbg !1850
  %call6 = tail call %union.tree_node* @copy_list(%union.tree_node* %7) #6, !dbg !1851
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !1806, metadata !DIExpression()), !dbg !1849
  %tobool7 = icmp eq %union.tree_node* %call, null, !dbg !1852
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1854

if.then8:                                         ; preds = %if.then5
  %call9 = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1855
  call void @llvm.dbg.value(metadata %union.tree_node* %attributes, metadata !1799, metadata !DIExpression()), !dbg !1833
  %call10 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call9, %union.tree_node* %call6, %union.tree_node* %attributes) #6, !dbg !1855
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !1799, metadata !DIExpression()), !dbg !1833
  store %union.tree_node* %call10, %union.tree_node** %attributes.addr, align 8, !dbg !1856
  br label %if.end15, !dbg !1857

if.else:                                          ; preds = %if.then5
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1858
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !1858
  %call11 = tail call %union.tree_node* @chainon(%union.tree_node* %call6, %union.tree_node* %9) #6, !dbg !1859
  store %union.tree_node* %call11, %union.tree_node** %8, align 8, !dbg !1860
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.else, %if.end2
  %10 = phi %union.tree_node* [ %call10, %if.then8 ], [ %attributes, %if.else ], [ %attributes, %if.end2 ]
  %11 = load i64*, i64** %.pre-phi37, align 8, !dbg !1861
  %bf.load17 = load i64, i64* %11, align 8, !dbg !1861
  %bf.cast194 = and i64 %bf.load17, 65535, !dbg !1863
  %cmp20 = icmp eq i64 %bf.cast194, 29, !dbg !1863
  %12 = bitcast i64* %11 to %union.tree_node*, !dbg !1864
  br i1 %cmp20, label %land.lhs.true21, label %if.end28, !dbg !1864

land.lhs.true21:                                  ; preds = %if.end15
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 126), align 16, !dbg !1865
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 125), align 8, !dbg !1866
  %cmp22 = icmp eq %union.tree_node* %13, %14, !dbg !1867
  %15 = ptrtoint %union.tree_node* %13 to i64, !dbg !1868
  br i1 %cmp22, label %if.end28, label %land.lhs.true23, !dbg !1868

land.lhs.true23:                                  ; preds = %land.lhs.true21
  %function_specific_optimization = getelementptr inbounds i64, i64* %11, i64 26, !dbg !1869
  %16 = bitcast i64* %function_specific_optimization to %union.tree_node**, !dbg !1869
  %17 = load %union.tree_node*, %union.tree_node** %16, align 8, !dbg !1869
  %tobool24 = icmp eq %union.tree_node* %17, null, !dbg !1869
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !1870

if.then25:                                        ; preds = %land.lhs.true23
  store i64 %15, i64* %function_specific_optimization, align 8, !dbg !1871
  %.pre22 = load i64*, i64** %.pre-phi37, align 8, !dbg !1872
  %bf.load30.pre = load i64, i64* %.pre22, align 8, !dbg !1872
  %18 = bitcast i64* %.pre22 to %union.tree_node*, !dbg !1873
  br label %if.end28, !dbg !1873

if.end28:                                         ; preds = %land.lhs.true23, %land.lhs.true21, %if.then25, %if.end15
  %19 = phi %union.tree_node* [ %12, %land.lhs.true23 ], [ %12, %land.lhs.true21 ], [ %18, %if.then25 ], [ %12, %if.end15 ]
  %bf.load30 = phi i64 [ %bf.load17, %land.lhs.true23 ], [ %bf.load17, %land.lhs.true21 ], [ %bf.load30.pre, %if.then25 ], [ %bf.load17, %if.end15 ], !dbg !1872
  %bf.cast325 = and i64 %bf.load30, 65535, !dbg !1874
  %cmp33 = icmp eq i64 %bf.cast325, 29, !dbg !1874
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 129), align 8, !dbg !1875
  %tobool35 = icmp ne %union.tree_node* %20, null, !dbg !1875
  %or.cond1 = and i1 %cmp33, %tobool35, !dbg !1876
  br i1 %or.cond1, label %land.lhs.true36, label %if.end55, !dbg !1876

land.lhs.true36:                                  ; preds = %if.end28
  %21 = load i8 (%union.tree_node*, %union.tree_node*, %union.tree_node*, i32)*, i8 (%union.tree_node*, %union.tree_node*, %union.tree_node*, i32)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 107, i32 0), align 8, !dbg !1877
  %call37 = tail call zeroext i8 %21(%union.tree_node* %19, %union.tree_node* null, %union.tree_node* nonnull %20, i32 0) #6, !dbg !1878
  %tobool38 = icmp eq i8 %call37, 0, !dbg !1878
  br i1 %tobool38, label %if.end55, label %if.then39, !dbg !1879

if.then39:                                        ; preds = %land.lhs.true36
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !1799, metadata !DIExpression()), !dbg !1833
  %call41 = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %union.tree_node* %10) #6, !dbg !1880
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !1807, metadata !DIExpression()), !dbg !1881
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 129), align 8, !dbg !1882
  %call43 = tail call %union.tree_node* @copy_list(%union.tree_node* %22) #6, !dbg !1883
  call void @llvm.dbg.value(metadata %union.tree_node* %call43, metadata !1810, metadata !DIExpression()), !dbg !1881
  %tobool44 = icmp eq %union.tree_node* %call41, null, !dbg !1884
  br i1 %tobool44, label %if.then45, label %if.else48, !dbg !1886

if.then45:                                        ; preds = %if.then39
  %call46 = tail call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1887
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !1799, metadata !DIExpression()), !dbg !1833
  %call47 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call46, %union.tree_node* %call43, %union.tree_node* %10) #6, !dbg !1887
  call void @llvm.dbg.value(metadata %union.tree_node* %call47, metadata !1799, metadata !DIExpression()), !dbg !1833
  store %union.tree_node* %call47, %union.tree_node** %attributes.addr, align 8, !dbg !1888
  br label %if.end55, !dbg !1889

if.else48:                                        ; preds = %if.then39
  %23 = getelementptr inbounds %union.tree_node, %union.tree_node* %call41, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1890
  %24 = load %union.tree_node*, %union.tree_node** %23, align 8, !dbg !1890
  %call51 = tail call %union.tree_node* @chainon(%union.tree_node* %call43, %union.tree_node* %24) #6, !dbg !1891
  store %union.tree_node* %call51, %union.tree_node** %23, align 8, !dbg !1892
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true36, %if.then45, %if.else48, %if.end28
  %25 = load void (%union.tree_node*, %union.tree_node**)*, void (%union.tree_node*, %union.tree_node**)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 16), align 8, !dbg !1893
  %26 = load %union.tree_node*, %union.tree_node** %node, align 8, !dbg !1894
  call void @llvm.dbg.value(metadata %union.tree_node** %attributes.addr, metadata !1799, metadata !DIExpression(DW_OP_deref)), !dbg !1833
  call void %25(%union.tree_node* %26, %union.tree_node** nonnull %attributes.addr) #6, !dbg !1895
  %27 = bitcast %union.tree_node** %fn_ptr_tmp to i8*, !dbg !1896
  %28 = bitcast %union.tree_node** %fn_ptr_tmp to i64*, !dbg !1897
  %29 = bitcast %union.tree_node** %node to i64*, !dbg !1902
  br label %for.cond, !dbg !1907

for.cond:                                         ; preds = %cleanup, %if.end55
  %returned_attrs.0 = phi %union.tree_node* [ null, %if.end55 ], [ %returned_attrs.2, %cleanup ], !dbg !1908
  %a.0.in = phi %union.tree_node** [ %attributes.addr, %if.end55 ], [ %chain417, %cleanup ]
  %flags.addr.0 = phi i32 [ %flags, %if.end55 ], [ %flags.addr.5, %cleanup ]
  %a.0 = load %union.tree_node*, %union.tree_node** %a.0.in, align 8, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %flags.addr.0, metadata !1800, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %union.tree_node* %a.0, metadata !1801, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %union.tree_node* %returned_attrs.0, metadata !1802, metadata !DIExpression()), !dbg !1833
  %tobool56 = icmp eq %union.tree_node* %a.0, null, !dbg !1910
  br i1 %tobool56, label %cleanup419.loopexit, label %for.body, !dbg !1910

for.body:                                         ; preds = %for.cond
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %a.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1911
  %30 = bitcast i32* %purpose to %union.tree_node**, !dbg !1911
  %31 = load %union.tree_node*, %union.tree_node** %30, align 8, !dbg !1911
  call void @llvm.dbg.value(metadata %union.tree_node* %31, metadata !1811, metadata !DIExpression()), !dbg !1896
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %a.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1912
  %33 = load %union.tree_node*, %union.tree_node** %32, align 8, !dbg !1912
  call void @llvm.dbg.value(metadata %union.tree_node* %33, metadata !1815, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %union.tree_node** %node, metadata !1816, metadata !DIExpression()), !dbg !1896
  %call60 = call %struct.attribute_spec* @lookup_attribute_spec(%union.tree_node* %31) #8, !dbg !1913
  call void @llvm.dbg.value(metadata %struct.attribute_spec* %call60, metadata !1817, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %no_add_attrs, metadata !1818, metadata !DIExpression(DW_OP_deref)), !dbg !1896
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %no_add_attrs) #7, !dbg !1914
  call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1896
  store i8 0, i8* %no_add_attrs, align 1, !dbg !1915
  call void @llvm.dbg.value(metadata i32 0, metadata !1819, metadata !DIExpression()), !dbg !1896
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #7, !dbg !1916
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !1820, metadata !DIExpression()), !dbg !1896
  store %union.tree_node* null, %union.tree_node** %fn_ptr_tmp, align 8, !dbg !1917
  %cmp61 = icmp eq %struct.attribute_spec* %call60, null, !dbg !1918
  br i1 %cmp61, label %if.then63, label %if.else65, !dbg !1920

if.then63:                                        ; preds = %for.body
  %call64 = call zeroext i8 (i32, i8*, ...) @warning(i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), %union.tree_node* %31) #6, !dbg !1921
  br label %cleanup, !dbg !1923

if.else65:                                        ; preds = %for.body
  %call66 = call i32 @list_length(%union.tree_node* %33) #6, !dbg !1924
  %min_length = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %call60, i64 0, i32 1, !dbg !1926
  %34 = load i32, i32* %min_length, align 8, !dbg !1926
  %cmp67 = icmp slt i32 %call66, %34, !dbg !1927
  br i1 %cmp67, label %if.then76, label %lor.lhs.false, !dbg !1928

lor.lhs.false:                                    ; preds = %if.else65
  %max_length = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %call60, i64 0, i32 2, !dbg !1929
  %35 = load i32, i32* %max_length, align 4, !dbg !1929
  %cmp69 = icmp sgt i32 %35, -1, !dbg !1930
  br i1 %cmp69, label %land.lhs.true71, label %if.end78, !dbg !1931

land.lhs.true71:                                  ; preds = %lor.lhs.false
  %call72 = call i32 @list_length(%union.tree_node* %33) #6, !dbg !1932
  %36 = load i32, i32* %max_length, align 4, !dbg !1933
  %cmp74 = icmp sgt i32 %call72, %36, !dbg !1934
  br i1 %cmp74, label %if.then76, label %if.end78, !dbg !1935

if.then76:                                        ; preds = %land.lhs.true71, %if.else65
  call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), %union.tree_node* %31) #6, !dbg !1936
  br label %cleanup, !dbg !1938

if.end78:                                         ; preds = %lor.lhs.false, %land.lhs.true71
  %name79 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %call60, i64 0, i32 0, !dbg !1939
  %37 = load i8*, i8** %name79, align 8, !dbg !1939
  %call80 = call i32 @is_attribute_p(i8* %37, %union.tree_node* %31) #6, !dbg !1939
  %tobool81 = icmp eq i32 %call80, 0, !dbg !1939
  br i1 %tobool81, label %cond.true, label %cond.end, !dbg !1939

cond.true:                                        ; preds = %if.end78
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1939
  br label %cond.end, !dbg !1939

cond.end:                                         ; preds = %if.end78, %cond.true
  %decl_required = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %call60, i64 0, i32 3, !dbg !1940
  %38 = load i8, i8* %decl_required, align 8, !dbg !1940
  %tobool83 = icmp eq i8 %38, 0, !dbg !1942
  br i1 %tobool83, label %if.end97, label %land.lhs.true84, !dbg !1943

land.lhs.true84:                                  ; preds = %cond.end
  %39 = load i64*, i64** %.pre-phi37, align 8, !dbg !1944
  %bf.load86 = load i64, i64* %39, align 8, !dbg !1944
  %bf.cast88 = and i64 %bf.load86, 65535, !dbg !1944
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast88, !dbg !1944
  %40 = load i32, i32* %arrayidx, align 4, !dbg !1944
  %cmp89 = icmp eq i32 %40, 3, !dbg !1944
  br i1 %cmp89, label %if.end97, label %if.then91, !dbg !1945

if.then91:                                        ; preds = %land.lhs.true84
  %and = and i32 %flags.addr.0, 7, !dbg !1946
  %tobool92 = icmp eq i32 %and, 0, !dbg !1946
  br i1 %tobool92, label %if.else95, label %if.then93, !dbg !1949

if.then93:                                        ; preds = %if.then91
  %call94 = call %union.tree_node* @tree_cons_stat(%union.tree_node* %31, %union.tree_node* %33, %union.tree_node* %returned_attrs.0) #6, !dbg !1950
  call void @llvm.dbg.value(metadata %union.tree_node* %call94, metadata !1802, metadata !DIExpression()), !dbg !1833
  br label %cleanup, !dbg !1952

if.else95:                                        ; preds = %if.then91
  %call96 = call zeroext i8 (i32, i8*, ...) @warning(i32 45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), %union.tree_node* %31) #6, !dbg !1953
  br label %cleanup, !dbg !1955

if.end97:                                         ; preds = %cond.end, %land.lhs.true84
  %type_required = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %call60, i64 0, i32 4, !dbg !1956
  %41 = load i8, i8* %type_required, align 1, !dbg !1956
  %tobool99 = icmp eq i8 %41, 0, !dbg !1958
  br i1 %tobool99, label %if.end129, label %land.lhs.true100, !dbg !1959

land.lhs.true100:                                 ; preds = %if.end97
  %42 = load i64*, i64** %.pre-phi37, align 8, !dbg !1960
  %bf.load102 = load i64, i64* %42, align 8, !dbg !1960
  %bf.cast104 = and i64 %bf.load102, 65535, !dbg !1960
  %arrayidx106 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast104, !dbg !1960
  %43 = load i32, i32* %arrayidx106, align 4, !dbg !1960
  %cmp107 = icmp eq i32 %43, 3, !dbg !1960
  br i1 %cmp107, label %if.then109, label %if.end129, !dbg !1961

if.then109:                                       ; preds = %land.lhs.true100
  %type111 = getelementptr inbounds i64, i64* %42, i64 2, !dbg !1962
  %44 = bitcast i64* %type111 to %union.tree_node**, !dbg !1962
  call void @llvm.dbg.value(metadata %union.tree_node** %44, metadata !1816, metadata !DIExpression()), !dbg !1896
  %45 = bitcast i64* %type111 to i64**, !dbg !1964
  %46 = load i64*, i64** %45, align 8, !dbg !1964
  %bf.load113 = load i64, i64* %46, align 8, !dbg !1964
  %bf.cast11521 = and i64 %bf.load113, 65535, !dbg !1966
  %cmp116 = icmp eq i64 %bf.cast11521, 35, !dbg !1966
  br i1 %cmp116, label %land.lhs.true118, label %if.then126, !dbg !1967

land.lhs.true118:                                 ; preds = %if.then109
  %47 = bitcast i64* %46 to %union.tree_node*, !dbg !1967
  %type120 = getelementptr inbounds i64, i64* %46, i64 2, !dbg !1968
  %48 = bitcast i64* %type120 to %struct.tree_type**, !dbg !1968
  %49 = load %struct.tree_type*, %struct.tree_type** %48, align 8, !dbg !1968
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %49, i64 0, i32 16, !dbg !1968
  %50 = bitcast %union.tree_node** %main_variant to %struct.tree_type**, !dbg !1968
  %51 = load %struct.tree_type*, %struct.tree_type** %50, align 8, !dbg !1968
  %name123 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %51, i64 0, i32 12, !dbg !1968
  %52 = load %union.tree_node*, %union.tree_node** %name123, align 8, !dbg !1968
  %cmp124 = icmp eq %union.tree_node* %52, %47, !dbg !1969
  br i1 %cmp124, label %if.end129, label %if.then126, !dbg !1970

if.then126:                                       ; preds = %land.lhs.true118, %if.then109
  %and127 = and i32 %flags.addr.0, -9, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %and127, metadata !1800, metadata !DIExpression()), !dbg !1833
  br label %if.end129, !dbg !1972

if.end129:                                        ; preds = %if.end97, %land.lhs.true118, %if.then126, %land.lhs.true100
  %anode.0 = phi %union.tree_node** [ %node, %land.lhs.true100 ], [ %node, %if.end97 ], [ %44, %if.then126 ], [ %44, %land.lhs.true118 ], !dbg !1896
  %flags.addr.2 = phi i32 [ %flags.addr.0, %land.lhs.true100 ], [ %flags.addr.0, %if.end97 ], [ %and127, %if.then126 ], [ %flags.addr.0, %land.lhs.true118 ]
  call void @llvm.dbg.value(metadata i32 %flags.addr.2, metadata !1800, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %union.tree_node** %anode.0, metadata !1816, metadata !DIExpression()), !dbg !1896
  %function_type_required = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %call60, i64 0, i32 5, !dbg !1973
  %53 = load i8, i8* %function_type_required, align 2, !dbg !1973
  %tobool131 = icmp eq i8 %53, 0, !dbg !1974
  br i1 %tobool131, label %if.end129.if.end220_crit_edge, label %land.lhs.true132, !dbg !1975

if.end129.if.end220_crit_edge:                    ; preds = %if.end129
  %.phi.trans.insert27 = bitcast %union.tree_node** %anode.0 to i64**, !dbg !1976
  %.pre28 = load i64*, i64** %.phi.trans.insert27, align 8, !dbg !1978
  %bf.load222.pre = load i64, i64* %.pre28, align 8, !dbg !1978
  %.pre33 = and i64 %bf.load222.pre, 65535, !dbg !1978
  br label %if.end220, !dbg !1975

land.lhs.true132:                                 ; preds = %if.end129
  %54 = bitcast %union.tree_node** %anode.0 to i64**, !dbg !1979
  %55 = load i64*, i64** %54, align 8, !dbg !1979
  %bf.load134 = load i64, i64* %55, align 8, !dbg !1979
  %bf.cast13611 = and i64 %bf.load134, 65535, !dbg !1980
  %cmp137 = icmp eq i64 %bf.cast13611, 20, !dbg !1980
  %56 = bitcast i64* %55 to %struct.tree_type*, !dbg !1981
  br i1 %cmp137, label %if.end220, label %land.lhs.true139, !dbg !1981

land.lhs.true139:                                 ; preds = %land.lhs.true132
  %cmp144 = icmp eq i64 %bf.cast13611, 21, !dbg !1982
  br i1 %cmp144, label %if.end220, label %if.then146, !dbg !1983

if.then146:                                       ; preds = %land.lhs.true139
  %cmp151 = icmp eq i64 %bf.cast13611, 10, !dbg !1984
  br i1 %cmp151, label %land.lhs.true153, label %if.else197, !dbg !1985

land.lhs.true153:                                 ; preds = %if.then146
  %type155 = getelementptr inbounds i64, i64* %55, i64 2, !dbg !1986
  %57 = bitcast i64* %type155 to i64**, !dbg !1986
  %58 = load i64*, i64** %57, align 8, !dbg !1986
  %bf.load157 = load i64, i64* %58, align 8, !dbg !1986
  %bf.cast15916 = and i64 %bf.load157, 65535, !dbg !1987
  %cmp160 = icmp eq i64 %bf.cast15916, 20, !dbg !1987
  %59 = ptrtoint i64* %58 to i64, !dbg !1988
  br i1 %cmp160, label %if.then171, label %lor.lhs.false162, !dbg !1988

lor.lhs.false162:                                 ; preds = %land.lhs.true153
  %cmp169 = icmp eq i64 %bf.cast15916, 21, !dbg !1989
  br i1 %cmp169, label %if.then171, label %if.else197, !dbg !1990

if.then171:                                       ; preds = %lor.lhs.false162, %land.lhs.true153
  store i64 %59, i64* %28, align 8, !dbg !1991
  %bf.load175 = load i64, i64* %55, align 8, !dbg !1992
  %bf.lshr = lshr i64 %bf.load175, 20, !dbg !1992
  %60 = trunc i64 %bf.lshr to i32, !dbg !1992
  %bf.cast177 = and i32 %60, 1, !dbg !1992
  %61 = lshr i64 %bf.load175, 18, !dbg !1992
  %62 = trunc i64 %61 to i32, !dbg !1992
  %mul183 = and i32 %62, 2, !dbg !1992
  %or = or i32 %bf.cast177, %mul183, !dbg !1992
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %56, i64 0, i32 6, !dbg !1992
  %bf.load185 = load i32, i32* %restrict_flag, align 4, !dbg !1992
  %63 = lshr i32 %bf.load185, 11, !dbg !1992
  %mul188 = and i32 %63, 4, !dbg !1992
  %or189 = or i32 %or, %mul188, !dbg !1992
  %64 = lshr i64 %bf.load175, 48, !dbg !1992
  %65 = trunc i64 %64 to i32, !dbg !1992
  %shl = and i32 %65, 65280, !dbg !1992
  %or195 = or i32 %or189, %shl, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %or195, metadata !1819, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %union.tree_node** %fn_ptr_tmp, metadata !1816, metadata !DIExpression()), !dbg !1896
  %and196 = and i32 %flags.addr.2, -9, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %and196, metadata !1800, metadata !DIExpression()), !dbg !1833
  %.phi.trans.insert24 = bitcast %union.tree_node** %fn_ptr_tmp to i64**, !dbg !1994
  %bf.load205.pre = load i64, i64* %58, align 8, !dbg !1996
  %.pre35 = and i64 %bf.load205.pre, 65535, !dbg !1997
  br label %if.end203, !dbg !1998

if.else197:                                       ; preds = %lor.lhs.false162, %if.then146
  %and198 = and i32 %flags.addr.2, 2, !dbg !1999
  %tobool199 = icmp eq i32 %and198, 0, !dbg !1999
  br i1 %tobool199, label %if.end203, label %if.then200, !dbg !2001

if.then200:                                       ; preds = %if.else197
  %call201 = call %union.tree_node* @tree_cons_stat(%union.tree_node* %31, %union.tree_node* %33, %union.tree_node* %returned_attrs.0) #6, !dbg !2002
  call void @llvm.dbg.value(metadata %union.tree_node* %call201, metadata !1802, metadata !DIExpression()), !dbg !1833
  br label %cleanup, !dbg !2004

if.end203:                                        ; preds = %if.else197, %if.then171
  %bf.cast20714.pre-phi = phi i64 [ %bf.cast13611, %if.else197 ], [ %.pre35, %if.then171 ], !dbg !1997
  %.pre-phi34 = phi i64** [ %54, %if.else197 ], [ %.phi.trans.insert24, %if.then171 ], !dbg !1996
  %anode.1 = phi %union.tree_node** [ %anode.0, %if.else197 ], [ %fn_ptr_tmp, %if.then171 ], !dbg !1896
  %fn_ptr_quals.0 = phi i32 [ 0, %if.else197 ], [ %or195, %if.then171 ], !dbg !1896
  %flags.addr.3 = phi i32 [ %flags.addr.2, %if.else197 ], [ %and196, %if.then171 ]
  call void @llvm.dbg.value(metadata i32 %flags.addr.3, metadata !1800, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i32 %fn_ptr_quals.0, metadata !1819, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %union.tree_node** %anode.1, metadata !1816, metadata !DIExpression()), !dbg !1896
  %cmp208 = icmp eq i64 %bf.cast20714.pre-phi, 20, !dbg !1997
  br i1 %cmp208, label %if.end220, label %land.lhs.true210, !dbg !2005

land.lhs.true210:                                 ; preds = %if.end203
  %cmp215 = icmp eq i64 %bf.cast20714.pre-phi, 21, !dbg !2006
  br i1 %cmp215, label %if.end220, label %if.then217, !dbg !2007

if.then217:                                       ; preds = %land.lhs.true210
  %call218 = call zeroext i8 (i32, i8*, ...) @warning(i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), %union.tree_node* %31) #6, !dbg !2008
  br label %cleanup, !dbg !2010

if.end220:                                        ; preds = %if.end129.if.end220_crit_edge, %land.lhs.true210, %if.end203, %land.lhs.true139, %land.lhs.true132
  %.pre-phi = phi i64** [ %.phi.trans.insert27, %if.end129.if.end220_crit_edge ], [ %.pre-phi34, %land.lhs.true210 ], [ %.pre-phi34, %if.end203 ], [ %54, %land.lhs.true139 ], [ %54, %land.lhs.true132 ], !dbg !1978
  %bf.cast224.pre-phi = phi i64 [ %.pre33, %if.end129.if.end220_crit_edge ], [ 21, %land.lhs.true210 ], [ 20, %if.end203 ], [ 21, %land.lhs.true139 ], [ 20, %land.lhs.true132 ], !dbg !1978
  %anode.2 = phi %union.tree_node** [ %anode.0, %if.end129.if.end220_crit_edge ], [ %anode.1, %land.lhs.true210 ], [ %anode.1, %if.end203 ], [ %anode.0, %land.lhs.true139 ], [ %anode.0, %land.lhs.true132 ], !dbg !1896
  %fn_ptr_quals.1 = phi i32 [ 0, %if.end129.if.end220_crit_edge ], [ %fn_ptr_quals.0, %land.lhs.true210 ], [ %fn_ptr_quals.0, %if.end203 ], [ 0, %land.lhs.true139 ], [ 0, %land.lhs.true132 ], !dbg !1896
  %flags.addr.4 = phi i32 [ %flags.addr.2, %if.end129.if.end220_crit_edge ], [ %flags.addr.3, %land.lhs.true210 ], [ %flags.addr.3, %if.end203 ], [ %flags.addr.2, %land.lhs.true139 ], [ %flags.addr.2, %land.lhs.true132 ]
  call void @llvm.dbg.value(metadata i32 %flags.addr.4, metadata !1800, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i32 %fn_ptr_quals.1, metadata !1819, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %union.tree_node** %anode.2, metadata !1816, metadata !DIExpression()), !dbg !1896
  %arrayidx226 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast224.pre-phi, !dbg !1978
  %66 = load i32, i32* %arrayidx226, align 4, !dbg !1978
  %cmp227 = icmp eq i32 %66, 2, !dbg !1978
  %and230 = and i32 %flags.addr.4, 8, !dbg !2011
  %tobool231 = icmp ne i32 %and230, 0, !dbg !2011
  %or.cond2 = and i1 %cmp227, %tobool231, !dbg !2012
  br i1 %or.cond2, label %land.lhs.true232, label %if.end238, !dbg !2012

land.lhs.true232:                                 ; preds = %if.end220
  %67 = bitcast %union.tree_node** %anode.2 to %struct.tree_type**, !dbg !2013
  %68 = load %struct.tree_type*, %struct.tree_type** %67, align 8, !dbg !2013
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %68, i64 0, i32 2, !dbg !2013
  %69 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !2013
  %cmp234 = icmp eq %union.tree_node* %69, null, !dbg !2014
  br i1 %cmp234, label %if.end238, label %if.then236, !dbg !2015

if.then236:                                       ; preds = %land.lhs.true232
  %call237 = call zeroext i8 (i32, i8*, ...) @warning(i32 45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2016
  br label %cleanup, !dbg !2018

if.end238:                                        ; preds = %land.lhs.true232, %if.end220
  %handler = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %call60, i64 0, i32 6, !dbg !2019
  %70 = load %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)*, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)** %handler, align 8, !dbg !2019
  %cmp239 = icmp eq %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* %70, null, !dbg !2021
  br i1 %cmp239, label %if.end245, label %if.then241, !dbg !2022

if.then241:                                       ; preds = %if.end238
  call void @llvm.dbg.value(metadata i8* %no_add_attrs, metadata !1818, metadata !DIExpression(DW_OP_deref)), !dbg !1896
  %call243 = call %union.tree_node* %70(%union.tree_node** %anode.2, %union.tree_node* %31, %union.tree_node* %33, i32 %flags.addr.4, i8* nonnull %no_add_attrs) #6, !dbg !2023
  %call244 = call %union.tree_node* @chainon(%union.tree_node* %call243, %union.tree_node* %returned_attrs.0) #6, !dbg !2024
  call void @llvm.dbg.value(metadata %union.tree_node* %call244, metadata !1802, metadata !DIExpression()), !dbg !1833
  %.pre30 = load i8, i8* %type_required, align 1, !dbg !2025
  br label %if.end245, !dbg !2027

if.end245:                                        ; preds = %if.end238, %if.then241
  %71 = phi i8 [ %.pre30, %if.then241 ], [ %41, %if.end238 ], !dbg !2025
  %returned_attrs.1 = phi %union.tree_node* [ %call244, %if.then241 ], [ %returned_attrs.0, %if.end238 ], !dbg !1833
  call void @llvm.dbg.value(metadata %union.tree_node* %returned_attrs.1, metadata !1802, metadata !DIExpression()), !dbg !1833
  %tobool248 = icmp eq i8 %71, 0, !dbg !2028
  br i1 %tobool248, label %if.end280, label %land.lhs.true249, !dbg !2029

land.lhs.true249:                                 ; preds = %if.end245
  %72 = load i64*, i64** %.pre-phi37, align 8, !dbg !2030
  %bf.load251 = load i64, i64* %72, align 8, !dbg !2030
  %bf.cast253 = and i64 %bf.load251, 65535, !dbg !2030
  %arrayidx255 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast253, !dbg !2030
  %73 = load i32, i32* %arrayidx255, align 4, !dbg !2030
  %cmp256 = icmp eq i32 %73, 3, !dbg !2030
  %74 = bitcast i64* %72 to %union.tree_node*, !dbg !2031
  br i1 %cmp256, label %land.lhs.true258, label %if.end280, !dbg !2031

land.lhs.true258:                                 ; preds = %land.lhs.true249
  %cmp263 = icmp eq i64 %bf.cast253, 32, !dbg !2032
  br i1 %cmp263, label %if.then279, label %lor.lhs.false265, !dbg !2033

lor.lhs.false265:                                 ; preds = %land.lhs.true258
  %cmp270 = icmp eq i64 %bf.cast253, 34, !dbg !2034
  br i1 %cmp270, label %if.then279, label %lor.lhs.false272, !dbg !2035

lor.lhs.false272:                                 ; preds = %lor.lhs.false265
  %cmp277 = icmp eq i64 %bf.cast253, 36, !dbg !2036
  br i1 %cmp277, label %if.then279, label %if.end280, !dbg !2037

if.then279:                                       ; preds = %lor.lhs.false272, %lor.lhs.false265, %land.lhs.true258
  call void @relayout_decl(%union.tree_node* %74) #6, !dbg !2038
  br label %if.end280, !dbg !2038

if.end280:                                        ; preds = %if.end245, %if.then279, %lor.lhs.false272, %land.lhs.true249
  %75 = load i8, i8* %no_add_attrs, align 1, !dbg !2039
  call void @llvm.dbg.value(metadata i8 %75, metadata !1818, metadata !DIExpression()), !dbg !1896
  %tobool281 = icmp eq i8 %75, 0, !dbg !2039
  br i1 %tobool281, label %if.then282, label %if.end377, !dbg !2040

if.then282:                                       ; preds = %if.end280
  %76 = load i64*, i64** %.pre-phi, align 8, !dbg !2041
  %bf.load285 = load i64, i64* %76, align 8, !dbg !2041
  %bf.cast287 = and i64 %bf.load285, 65535, !dbg !2041
  %arrayidx289 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast287, !dbg !2041
  %77 = load i32, i32* %arrayidx289, align 4, !dbg !2041
  %cmp290 = icmp eq i32 %77, 3, !dbg !2041
  br i1 %cmp290, label %if.then292, label %if.else294, !dbg !2043

if.then292:                                       ; preds = %if.then282
  %attributes293 = getelementptr inbounds i64, i64* %76, i64 11, !dbg !2044
  br label %if.end297, !dbg !2045

if.else294:                                       ; preds = %if.then282
  %attributes296 = getelementptr inbounds i64, i64* %76, i64 6, !dbg !2046
  br label %if.end297

if.end297:                                        ; preds = %if.else294, %if.then292
  %old_attrs.0.in.in = phi i64* [ %attributes293, %if.then292 ], [ %attributes296, %if.else294 ]
  %old_attrs.0.in = bitcast i64* %old_attrs.0.in.in to %union.tree_node**, !dbg !2047
  %old_attrs.0 = load %union.tree_node*, %union.tree_node** %old_attrs.0.in, align 8, !dbg !2047
  call void @llvm.dbg.value(metadata %union.tree_node* %old_attrs.0, metadata !1821, metadata !DIExpression()), !dbg !2048
  %78 = load i8*, i8** %name79, align 8, !dbg !2049
  %call299 = call %union.tree_node* @lookup_attribute(i8* %78, %union.tree_node* %old_attrs.0) #6, !dbg !2051
  call void @llvm.dbg.value(metadata %union.tree_node* %call299, metadata !1824, metadata !DIExpression()), !dbg !2048
  br label %for.cond300, !dbg !2052

for.cond300:                                      ; preds = %for.inc, %if.end297
  %a283.0 = phi %union.tree_node* [ %call299, %if.end297 ], [ %call313, %for.inc ], !dbg !2053
  call void @llvm.dbg.value(metadata %union.tree_node* %a283.0, metadata !1824, metadata !DIExpression()), !dbg !2048
  %cond = icmp eq %union.tree_node* %a283.0, null, !dbg !2054
  br i1 %cond, label %if.then316.loopexit, label %for.body303, !dbg !2054

for.body303:                                      ; preds = %for.cond300
  %79 = getelementptr inbounds %union.tree_node, %union.tree_node* %a283.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2055
  %80 = load %union.tree_node*, %union.tree_node** %79, align 8, !dbg !2055
  %call306 = call i32 @simple_cst_equal(%union.tree_node* %80, %union.tree_node* %33) #6, !dbg !2059
  %cmp307 = icmp eq i32 %call306, 1, !dbg !2060
  br i1 %cmp307, label %for.end, label %for.inc, !dbg !2061

for.inc:                                          ; preds = %for.body303
  %81 = load i8*, i8** %name79, align 8, !dbg !2062
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %a283.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2063
  %82 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !2063
  %call313 = call %union.tree_node* @lookup_attribute(i8* %81, %union.tree_node* %82) #6, !dbg !2064
  call void @llvm.dbg.value(metadata %union.tree_node* %call313, metadata !1824, metadata !DIExpression()), !dbg !2048
  br label %for.cond300, !dbg !2065, !llvm.loop !2066

for.end:                                          ; preds = %for.body303
  br label %if.end377, !dbg !2068

if.then316.loopexit:                              ; preds = %for.cond300
  %83 = load i64*, i64** %.pre-phi, align 8, !dbg !2069
  %bf.load318 = load i64, i64* %83, align 8, !dbg !2069
  %bf.cast320 = and i64 %bf.load318, 65535, !dbg !2069
  %arrayidx322 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast320, !dbg !2069
  %84 = load i32, i32* %arrayidx322, align 4, !dbg !2069
  %cmp323 = icmp eq i32 %84, 3, !dbg !2069
  %85 = bitcast i64* %83 to %union.tree_node*, !dbg !2070
  br i1 %cmp323, label %if.then325, label %if.else329, !dbg !2070

if.then325:                                       ; preds = %if.then316.loopexit
  %call326 = call %union.tree_node* @tree_cons_stat(%union.tree_node* %31, %union.tree_node* %33, %union.tree_node* %old_attrs.0) #6, !dbg !2071
  %86 = bitcast %union.tree_node** %anode.2 to %struct.tree_decl_common**, !dbg !2072
  %87 = load %struct.tree_decl_common*, %struct.tree_decl_common** %86, align 8, !dbg !2072
  %attributes328 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %87, i64 0, i32 6, !dbg !2072
  store %union.tree_node* %call326, %union.tree_node** %attributes328, align 8, !dbg !2073
  br label %if.end377, !dbg !2072

if.else329:                                       ; preds = %if.then316.loopexit
  %tobool331 = icmp eq i32 %and230, 0, !dbg !2074
  br i1 %tobool331, label %if.else371, label %if.then332, !dbg !2075

if.then332:                                       ; preds = %if.else329
  %call333 = call %union.tree_node* @tree_cons_stat(%union.tree_node* %31, %union.tree_node* %33, %union.tree_node* %old_attrs.0) #6, !dbg !2076
  %88 = bitcast %union.tree_node** %anode.2 to %struct.tree_type**, !dbg !2077
  %89 = load %struct.tree_type*, %struct.tree_type** %88, align 8, !dbg !2077
  %attributes335 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %89, i64 0, i32 4, !dbg !2077
  store %union.tree_node* %call333, %union.tree_node** %attributes335, align 8, !dbg !2078
  %90 = load %union.tree_node*, %union.tree_node** %anode.2, align 8, !dbg !2079
  %91 = getelementptr inbounds %union.tree_node, %union.tree_node* %90, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !2080
  %92 = load %union.tree_node*, %union.tree_node** %91, align 8, !dbg !2080
  %cmp338 = icmp eq %union.tree_node* %90, %92, !dbg !2081
  br i1 %cmp338, label %if.then340, label %if.end377, !dbg !2082

if.then340:                                       ; preds = %if.then332
  br label %for.cond341, !dbg !2083

for.cond341:                                      ; preds = %for.inc367, %if.then340
  %variant.0 = phi %union.tree_node* [ %90, %if.then340 ], [ %variant.0.pre, %for.inc367 ], !dbg !2085
  call void @llvm.dbg.value(metadata %union.tree_node* %variant.0, metadata !1825, metadata !DIExpression()), !dbg !2086
  %tobool342 = icmp eq %union.tree_node* %variant.0, null, !dbg !2087
  br i1 %tobool342, label %if.end377.loopexit, label %for.body343, !dbg !2087

for.body343:                                      ; preds = %for.cond341
  %93 = getelementptr inbounds %union.tree_node, %union.tree_node* %variant.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2088
  %94 = load %union.tree_node*, %union.tree_node** %93, align 8, !dbg !2088
  %cmp346 = icmp eq %union.tree_node* %94, %old_attrs.0, !dbg !2092
  br i1 %cmp346, label %if.then348, label %if.else353, !dbg !2093

if.then348:                                       ; preds = %for.body343
  %95 = load %struct.tree_type*, %struct.tree_type** %88, align 8, !dbg !2094
  %attributes350 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %95, i64 0, i32 4, !dbg !2094
  %96 = bitcast %union.tree_node** %attributes350 to i64*, !dbg !2094
  %97 = load i64, i64* %96, align 8, !dbg !2094
  %98 = bitcast %union.tree_node** %93 to i64*, !dbg !2095
  store i64 %97, i64* %98, align 8, !dbg !2095
  br label %for.inc367, !dbg !2096

if.else353:                                       ; preds = %for.body343
  %99 = load i8*, i8** %name79, align 8, !dbg !2097
  %call357 = call %union.tree_node* @lookup_attribute(i8* %99, %union.tree_node* %94) #6, !dbg !2099
  %tobool358 = icmp eq %union.tree_node* %call357, null, !dbg !2099
  br i1 %tobool358, label %if.then359, label %for.inc367, !dbg !2100

if.then359:                                       ; preds = %if.else353
  %100 = load %union.tree_node*, %union.tree_node** %93, align 8, !dbg !2101
  %call362 = call %union.tree_node* @tree_cons_stat(%union.tree_node* %31, %union.tree_node* %33, %union.tree_node* %100) #6, !dbg !2101
  store %union.tree_node* %call362, %union.tree_node** %93, align 8, !dbg !2102
  br label %for.inc367, !dbg !2103

for.inc367:                                       ; preds = %if.else353, %if.then348, %if.then359
  %101 = getelementptr inbounds %union.tree_node, %union.tree_node* %variant.0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2104
  %variant.0.pre = load %union.tree_node*, %union.tree_node** %101, align 8, !dbg !2085
  br label %for.cond341, !dbg !2105, !llvm.loop !2106

if.else371:                                       ; preds = %if.else329
  %call372 = call %union.tree_node* @tree_cons_stat(%union.tree_node* %31, %union.tree_node* %33, %union.tree_node* %old_attrs.0) #6, !dbg !2108
  %call373 = call %union.tree_node* @build_type_attribute_variant(%union.tree_node* %85, %union.tree_node* %call372) #6, !dbg !2109
  store %union.tree_node* %call373, %union.tree_node** %anode.2, align 8, !dbg !2110
  br label %if.end377

if.end377.loopexit:                               ; preds = %for.cond341
  br label %if.end377, !dbg !2111

if.end377:                                        ; preds = %for.end, %if.end377.loopexit, %if.end280, %if.else371, %if.then332, %if.then325
  %102 = load %union.tree_node*, %union.tree_node** %fn_ptr_tmp, align 8, !dbg !2111
  call void @llvm.dbg.value(metadata %union.tree_node* %102, metadata !1820, metadata !DIExpression()), !dbg !1896
  %tobool378 = icmp eq %union.tree_node* %102, null, !dbg !2111
  br i1 %tobool378, label %cleanup, label %if.then379, !dbg !2112

if.then379:                                       ; preds = %if.end377
  call void @llvm.dbg.value(metadata %union.tree_node* %102, metadata !1820, metadata !DIExpression()), !dbg !1896
  %call380 = call %union.tree_node* @build_pointer_type(%union.tree_node* nonnull %102) #6, !dbg !2113
  call void @llvm.dbg.value(metadata %union.tree_node* %call380, metadata !1820, metadata !DIExpression()), !dbg !1896
  store %union.tree_node* %call380, %union.tree_node** %fn_ptr_tmp, align 8, !dbg !2114
  %tobool381 = icmp eq i32 %fn_ptr_quals.1, 0, !dbg !2115
  %103 = ptrtoint %union.tree_node* %call380 to i64, !dbg !2117
  br i1 %tobool381, label %if.end384, label %if.then382, !dbg !2117

if.then382:                                       ; preds = %if.then379
  call void @llvm.dbg.value(metadata %union.tree_node* %call380, metadata !1820, metadata !DIExpression()), !dbg !1896
  %call383 = call %union.tree_node* @build_qualified_type(%union.tree_node* %call380, i32 %fn_ptr_quals.1) #6, !dbg !2118
  call void @llvm.dbg.value(metadata %union.tree_node* %call383, metadata !1820, metadata !DIExpression()), !dbg !1896
  store %union.tree_node* %call383, %union.tree_node** %fn_ptr_tmp, align 8, !dbg !2119
  %104 = ptrtoint %union.tree_node* %call383 to i64, !dbg !2120
  br label %if.end384, !dbg !2120

if.end384:                                        ; preds = %if.then379, %if.then382
  %105 = phi i64 [ %103, %if.then379 ], [ %104, %if.then382 ]
  %106 = phi i64 [ %103, %if.then379 ], [ %104, %if.then382 ]
  %107 = load i64*, i64** %.pre-phi37, align 8, !dbg !2121
  %bf.load386 = load i64, i64* %107, align 8, !dbg !2121
  %bf.cast388 = and i64 %bf.load386, 65535, !dbg !2121
  %arrayidx390 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast388, !dbg !2121
  %108 = load i32, i32* %arrayidx390, align 4, !dbg !2121
  %cmp391 = icmp eq i32 %108, 3, !dbg !2121
  br i1 %cmp391, label %if.then393, label %if.else396, !dbg !2122

if.then393:                                       ; preds = %if.end384
  %type395 = getelementptr inbounds i64, i64* %107, i64 2, !dbg !2123
  store i64 %105, i64* %type395, align 8, !dbg !2124
  br label %cleanup, !dbg !2123

if.else396:                                       ; preds = %if.end384
  %cmp401 = icmp eq i64 %bf.cast388, 10, !dbg !2125
  br i1 %cmp401, label %cond.end405, label %cond.true403, !dbg !2125

cond.true403:                                     ; preds = %if.else396
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 461, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2125
  %.pre32 = load i64, i64* %28, align 8, !dbg !2126
  br label %cond.end405, !dbg !2125

cond.end405:                                      ; preds = %if.else396, %cond.true403
  %109 = phi i64 [ %106, %if.else396 ], [ %.pre32, %cond.true403 ], !dbg !2126
  store i64 %109, i64* %29, align 8, !dbg !2127
  br label %cleanup

cleanup:                                          ; preds = %if.end377, %cond.end405, %if.then393, %if.then236, %if.then217, %if.then200, %if.else95, %if.then93, %if.then76, %if.then63
  %returned_attrs.2 = phi %union.tree_node* [ %returned_attrs.0, %if.then63 ], [ %returned_attrs.0, %if.then76 ], [ %returned_attrs.0, %if.then217 ], [ %returned_attrs.0, %if.then236 ], [ %call201, %if.then200 ], [ %call94, %if.then93 ], [ %returned_attrs.0, %if.else95 ], [ %returned_attrs.1, %if.then393 ], [ %returned_attrs.1, %cond.end405 ], [ %returned_attrs.1, %if.end377 ], !dbg !1833
  %flags.addr.5 = phi i32 [ %flags.addr.0, %if.then63 ], [ %flags.addr.0, %if.then76 ], [ %flags.addr.3, %if.then217 ], [ %flags.addr.4, %if.then236 ], [ %flags.addr.2, %if.then200 ], [ %flags.addr.0, %if.then93 ], [ %flags.addr.0, %if.else95 ], [ %flags.addr.4, %if.then393 ], [ %flags.addr.4, %cond.end405 ], [ %flags.addr.4, %if.end377 ]
  call void @llvm.dbg.value(metadata i32 %flags.addr.5, metadata !1800, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %union.tree_node* %returned_attrs.2, metadata !1802, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !2128
  call void @llvm.dbg.value(metadata i8* %no_add_attrs, metadata !1818, metadata !DIExpression(DW_OP_deref)), !dbg !1896
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %no_add_attrs) #7, !dbg !2128
  %chain417 = getelementptr inbounds %union.tree_node, %union.tree_node* %a.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2129
  br label %for.cond, !dbg !2130, !llvm.loop !2131

cleanup419.loopexit:                              ; preds = %for.cond
  %returned_attrs.0.lcssa = phi %union.tree_node* [ %returned_attrs.0, %for.cond ], !dbg !1908
  call void @llvm.dbg.value(metadata %union.tree_node* %returned_attrs.0.lcssa, metadata !1802, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %union.tree_node* %returned_attrs.0.lcssa, metadata !1802, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata %union.tree_node* %returned_attrs.0.lcssa, metadata !1802, metadata !DIExpression()), !dbg !1833
  br label %cleanup419, !dbg !2133

cleanup419:                                       ; preds = %cleanup419.loopexit, %entry
  %retval.0 = phi %union.tree_node* [ null, %entry ], [ %returned_attrs.0.lcssa, %cleanup419.loopexit ], !dbg !1833
  ret %union.tree_node* %retval.0, !dbg !2133
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_attributes() unnamed_addr #4 !dbg !2134 {
entry:
  %0 = load i64, i64* bitcast (%struct.attribute_spec** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 28) to i64*), align 8, !dbg !2140
  store i64 %0, i64* bitcast ([4 x %struct.attribute_spec*]* @attribute_tables to i64*), align 16, !dbg !2141
  %1 = load i64, i64* bitcast (%struct.attribute_spec** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 27) to i64*), align 8, !dbg !2142
  store i64 %1, i64* bitcast (%struct.attribute_spec** getelementptr inbounds ([4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i64 0, i64 1) to i64*), align 8, !dbg !2143
  %2 = load i64, i64* bitcast (%struct.attribute_spec** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 29) to i64*), align 8, !dbg !2144
  store i64 %2, i64* bitcast (%struct.attribute_spec** getelementptr inbounds ([4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i64 0, i64 2) to i64*), align 16, !dbg !2145
  %3 = load i64, i64* bitcast (%struct.attribute_spec** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i64 0, i32 13) to i64*), align 8, !dbg !2146
  store i64 %3, i64* bitcast (%struct.attribute_spec** getelementptr inbounds ([4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i64 0, i64 3) to i64*), align 8, !dbg !2147
  call void @llvm.dbg.value(metadata i64 0, metadata !2138, metadata !DIExpression()), !dbg !2148
  br label %for.cond, !dbg !2149

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2151
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2138, metadata !DIExpression()), !dbg !2148
  %exitcond1 = icmp eq i64 %i.0, 4, !dbg !2152
  br i1 %exitcond1, label %for.end, label %for.body, !dbg !2154

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i64 0, i64 %i.0, !dbg !2155
  %4 = load %struct.attribute_spec*, %struct.attribute_spec** %arrayidx, align 8, !dbg !2155
  %cmp1 = icmp eq %struct.attribute_spec* %4, null, !dbg !2157
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !2158

if.then:                                          ; preds = %for.body
  store %struct.attribute_spec* getelementptr inbounds ([1 x %struct.attribute_spec], [1 x %struct.attribute_spec]* @empty_attribute_table, i64 0, i64 0), %struct.attribute_spec** %arrayidx, align 8, !dbg !2159
  br label %for.inc, !dbg !2160

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %i.0, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2138, metadata !DIExpression()), !dbg !2148
  br label %for.cond, !dbg !2162, !llvm.loop !2163

for.end:                                          ; preds = %for.cond
  %call = tail call %struct.htab* @htab_create(i64 200, i32 (i8*)* nonnull @hash_attr, i32 (i8*, i8*)* nonnull @eq_attr, void (i8*)* null) #6, !dbg !2165
  store %struct.htab* %call, %struct.htab** @attribute_hash, align 8, !dbg !2166
  call void @llvm.dbg.value(metadata i64 0, metadata !2138, metadata !DIExpression()), !dbg !2148
  br label %for.cond3, !dbg !2167

for.cond3:                                        ; preds = %for.inc17, %for.end
  %i.1 = phi i64 [ 0, %for.end ], [ %inc18, %for.inc17 ], !dbg !2169
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !2138, metadata !DIExpression()), !dbg !2148
  %exitcond = icmp eq i64 %i.1, 4, !dbg !2170
  br i1 %exitcond, label %for.end19, label %for.cond6.preheader, !dbg !2172

for.cond6.preheader:                              ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds [4 x %struct.attribute_spec*], [4 x %struct.attribute_spec*]* @attribute_tables, i64 0, i64 %i.1, !dbg !2173
  br label %for.cond6, !dbg !2176

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body10
  %indvars.iv = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next, %for.body10 ], !dbg !2177
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2139, metadata !DIExpression()), !dbg !2148
  %5 = load %struct.attribute_spec*, %struct.attribute_spec** %arrayidx7, align 8, !dbg !2178
  %name = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %5, i64 %indvars.iv, i32 0, !dbg !2179
  %6 = load i8*, i8** %name, align 8, !dbg !2179
  %cmp9 = icmp eq i8* %6, null, !dbg !2180
  br i1 %cmp9, label %for.inc17, label %for.body10, !dbg !2176

for.body10:                                       ; preds = %for.cond6
  %arrayidx13 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %5, i64 %indvars.iv, !dbg !2181
  tail call void @register_attribute(%struct.attribute_spec* %arrayidx13) #8, !dbg !2183
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i32 undef, metadata !2139, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2148
  br label %for.cond6, !dbg !2185, !llvm.loop !2186

for.inc17:                                        ; preds = %for.cond6
  %inc18 = add nuw nsw i64 %i.1, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %inc18, metadata !2138, metadata !DIExpression()), !dbg !2148
  br label %for.cond3, !dbg !2189, !llvm.loop !2190

for.end19:                                        ; preds = %for.cond3
  %call20 = tail call i32 @invoke_plugin_callbacks(i32 11, i8* null) #6, !dbg !2192
  store i1 true, i1* @attributes_initialized, align 1, !dbg !2193
  ret void, !dbg !2194
}

declare dso_local %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @copy_list(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @tree_cons_stat(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #1

declare dso_local %union.tree_node* @chainon(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #1

declare dso_local i32 @list_length(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

declare dso_local i32 @is_attribute_p(i8*, %union.tree_node*) local_unnamed_addr #1

declare dso_local void @relayout_decl(%union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @simple_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_type_attribute_variant(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_pointer_type(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_qualified_type(%union.tree_node*, i32) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @hash_attr(i8* %p) #4 !dbg !2195 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2197, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8* %p, metadata !2198, metadata !DIExpression()), !dbg !2201
  %name = bitcast i8* %p to i8**, !dbg !2202
  %0 = load i8*, i8** %name, align 8, !dbg !2202
  %call = tail call i64 @strlen(i8* %0) #6, !dbg !2203
  %conv = trunc i64 %call to i32, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2200, metadata !DIExpression()), !dbg !2201
  %1 = load i8*, i8** %name, align 8, !dbg !2204
  %call2 = tail call fastcc i32 @substring_hash(i8* %1, i32 %conv) #8, !dbg !2205
  ret i32 %call2, !dbg !2206
}

; Function Attrs: nounwind uwtable
define internal i32 @eq_attr(i8* %p, i8* %q) #4 !dbg !2207 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2209, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8* %q, metadata !2210, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8* %p, metadata !2211, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8* %q, metadata !2212, metadata !DIExpression()), !dbg !2214
  %name = bitcast i8* %p to i8**, !dbg !2215
  %0 = load i8*, i8** %name, align 8, !dbg !2215
  %str1 = bitcast i8* %q to i8**, !dbg !2216
  %1 = load i8*, i8** %str1, align 8, !dbg !2216
  %length = getelementptr inbounds i8, i8* %q, i64 8, !dbg !2217
  %2 = bitcast i8* %length to i32*, !dbg !2217
  %3 = load i32, i32* %2, align 8, !dbg !2217
  %conv = sext i32 %3 to i64, !dbg !2218
  %call = tail call i32 @strncmp(i8* %0, i8* %1, i64 %conv) #6, !dbg !2219
  %tobool = icmp eq i32 %call, 0, !dbg !2219
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2220

land.rhs:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %q, metadata !2212, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8* %p, metadata !2211, metadata !DIExpression()), !dbg !2214
  %4 = load i8*, i8** %name, align 8, !dbg !2221
  %5 = load i32, i32* %2, align 8, !dbg !2222
  %idxprom = sext i32 %5 to i64, !dbg !2223
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom, !dbg !2223
  %6 = load i8, i8* %arrayidx, align 1, !dbg !2223
  %tobool4 = icmp eq i8 %6, 0, !dbg !2224
  %phitmp = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %7 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %7, !dbg !2225
}

declare dso_local i32 @invoke_plugin_callbacks(i32, i8*) local_unnamed_addr #1

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1255, !1256, !1257}
!llvm.ident = !{!1258}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "attribute_hash", scope: !2, file: !3, line: 46, type: !1205, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !361, globals: !1194, nameTableKind: None)
!3 = !DIFile(filename: "attribs.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !153, !160, !167}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!137 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!144 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!145 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!146 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!147 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!148 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!149 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!150 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!151 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!152 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163, !164, !165, !166}
!162 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !135, line: 39, baseType: !7, size: 32, elements: !168)
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!169 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!170 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!173 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!174 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!175 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!176 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!177 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!178 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!179 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!180 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!181 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!182 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!183 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!184 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!185 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!186 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!187 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!188 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!189 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!190 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!191 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!192 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!193 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!194 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!195 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!196 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!197 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!198 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!199 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!200 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!201 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!202 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!203 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!204 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!205 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!206 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!207 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!208 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!209 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!210 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!211 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!212 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!213 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!214 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!215 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!216 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!217 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!218 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!219 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!220 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!221 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!222 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!223 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!224 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!225 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!226 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!227 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!228 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!229 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!230 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!231 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!232 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!233 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!234 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!235 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!236 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!237 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!238 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!239 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!240 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!241 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!242 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!243 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!244 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!245 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!246 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!247 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!248 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!249 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!250 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!251 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!252 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!253 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!254 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!255 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!256 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!257 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!258 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!259 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!260 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!261 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!262 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!264 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!265 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!266 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!267 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!268 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!269 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!270 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!271 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!272 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!273 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!274 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!275 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!276 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!277 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!278 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!279 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!280 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!281 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!282 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!283 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!284 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!285 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!286 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!287 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!288 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!289 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!290 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!291 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!292 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!293 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!294 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!295 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!296 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!297 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!298 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!299 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!300 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!301 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!302 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!303 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!304 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!305 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!306 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!307 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!308 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!309 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!310 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!311 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!312 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!313 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!314 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!315 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!316 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!317 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!318 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!319 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!320 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!321 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!322 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!323 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!324 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!325 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!326 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!327 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!328 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!329 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!330 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!331 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!332 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!333 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!334 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!335 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!336 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!337 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!338 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!339 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!340 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!341 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!342 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!343 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!344 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!345 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!346 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!347 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!348 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!349 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!350 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!351 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!352 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!353 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!354 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!355 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!356 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!357 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!358 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!359 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!360 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!361 = !{!362, !363, !364, !365, !368, !369, !371, !1186, !388, !167, !1188}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!364 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_spec", file: !135, line: 4046, size: 256, elements: !373)
!373 = !{!374, !376, !378, !379, !381, !382, !383}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !135, line: 4050, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !372, file: !135, line: 4052, baseType: !377, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "max_length", scope: !372, file: !135, line: 4055, baseType: !377, size: 32, offset: 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "decl_required", scope: !372, file: !135, line: 4063, baseType: !380, size: 8, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "type_required", scope: !372, file: !135, line: 4066, baseType: !380, size: 8, offset: 136)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "function_type_required", scope: !372, file: !135, line: 4071, baseType: !380, size: 8, offset: 144)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !372, file: !135, line: 4086, baseType: !384, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!388, !901, !388, !388, !364, !362}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !389, line: 56, baseType: !390)
!389 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !392)
!392 = !{!393, !426, !432, !445, !464, !475, !480, !489, !495, !507, !519, !557, !710, !738, !746, !747, !752, !761, !767, !772, !776, !780, !809, !856, !862, !869, !876, !902, !927, !944, !956, !978, !996, !1168}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !391, file: !135, line: 3372, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !394, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !394, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !394, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !394, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !394, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !394, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !394, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !394, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !394, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !394, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !394, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !394, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !394, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !394, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !394, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !394, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !394, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !394, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !394, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !394, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !394, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !394, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !394, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !394, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !394, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !394, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !394, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !394, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !394, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !394, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !391, file: !135, line: 3373, baseType: !427, size: 192)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !428)
!428 = !{!429, !430, !431}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !427, file: !135, line: 403, baseType: !394, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !427, file: !135, line: 404, baseType: !388, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !135, line: 405, baseType: !388, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !391, file: !135, line: 3374, baseType: !433, size: 320)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !433, file: !135, line: 1385, baseType: !427, size: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !433, file: !135, line: 1386, baseType: !437, size: 128, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !438, line: 58, baseType: !439)
!438 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !438, line: 54, size: 128, elements: !440)
!440 = !{!441, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !439, file: !438, line: 56, baseType: !442, size: 64)
!442 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !439, file: !438, line: 57, baseType: !444, size: 64, offset: 64)
!444 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !391, file: !135, line: 3375, baseType: !446, size: 256)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !446, file: !135, line: 1398, baseType: !427, size: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !446, file: !135, line: 1399, baseType: !450, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !452, line: 52, size: 256, elements: !453)
!452 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!453 = !{!454, !455, !456, !457, !458, !459, !460}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !451, file: !452, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !451, file: !452, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !451, file: !452, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !451, file: !452, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !451, file: !452, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !451, file: !452, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !451, file: !452, line: 62, baseType: !461, size: 192, offset: 64)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 192, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 3)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !391, file: !135, line: 3376, baseType: !465, size: 256)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !465, file: !135, line: 1409, baseType: !427, size: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !465, file: !135, line: 1410, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !471, line: 27, size: 192, elements: !472)
!471 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !470, file: !471, line: 29, baseType: !437, size: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !470, file: !471, line: 30, baseType: !5, size: 32, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !391, file: !135, line: 3377, baseType: !476, size: 256)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !476, file: !135, line: 1438, baseType: !427, size: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !476, file: !135, line: 1439, baseType: !388, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !391, file: !135, line: 3378, baseType: !481, size: 256)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !481, file: !135, line: 1419, baseType: !427, size: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !481, file: !135, line: 1420, baseType: !364, size: 32, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !481, file: !135, line: 1421, baseType: !486, size: 8, offset: 224)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 8, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 1)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !391, file: !135, line: 3379, baseType: !490, size: 320)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !491)
!491 = !{!492, !493, !494}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !490, file: !135, line: 1429, baseType: !427, size: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !490, file: !135, line: 1430, baseType: !388, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !490, file: !135, line: 1431, baseType: !388, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !391, file: !135, line: 3380, baseType: !496, size: 320)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !496, file: !135, line: 1461, baseType: !427, size: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !496, file: !135, line: 1462, baseType: !500, size: 128, offset: 192)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !501, line: 31, size: 128, elements: !502)
!501 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!502 = !{!503, !505, !506}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !500, file: !501, line: 32, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !500, file: !501, line: 33, baseType: !7, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !500, file: !501, line: 34, baseType: !7, size: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !391, file: !135, line: 3381, baseType: !508, size: 384)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !509)
!509 = !{!510, !511, !516, !517, !518}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !508, file: !135, line: 2508, baseType: !427, size: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !508, file: !135, line: 2509, baseType: !512, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !513, line: 58, baseType: !514)
!513 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !515, line: 44, baseType: !7)
!515 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!516 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !508, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !508, file: !135, line: 2511, baseType: !388, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !508, file: !135, line: 2512, baseType: !388, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !391, file: !135, line: 3382, baseType: !520, size: 896)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !520, file: !135, line: 2653, baseType: !508, size: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !520, file: !135, line: 2654, baseType: !388, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !520, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !520, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !520, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !520, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !520, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !520, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !520, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !520, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !520, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !520, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !520, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !520, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !520, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !520, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !520, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !520, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !520, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !520, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !520, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !520, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !520, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !520, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !520, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !520, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !520, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !520, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !520, file: !135, line: 2705, baseType: !388, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !520, file: !135, line: 2706, baseType: !388, size: 64, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !520, file: !135, line: 2707, baseType: !388, size: 64, offset: 704)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !520, file: !135, line: 2708, baseType: !388, size: 64, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !520, file: !135, line: 2711, baseType: !555, size: 64, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !391, file: !135, line: 3383, baseType: !558, size: 960)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !558, file: !135, line: 2757, baseType: !520, size: 896)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !558, file: !135, line: 2758, baseType: !562, size: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !389, line: 50, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !565, line: 240, size: 384, elements: !566)
!565 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !564, file: !565, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !564, file: !565, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !564, file: !565, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !564, file: !565, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !564, file: !565, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !564, file: !565, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !564, file: !565, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !564, file: !565, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !564, file: !565, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !564, file: !565, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !564, file: !565, line: 321, baseType: !578, size: 320, offset: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !565, line: 315, size: 320, elements: !579)
!579 = !{!580, !643, !645, !708, !709}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !578, file: !565, line: 316, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 64, elements: !487)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !565, line: 183, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !565, line: 166, size: 64, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !597, !598, !610, !613, !616, !617, !620, !633, !640}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !583, file: !565, line: 168, baseType: !364, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !583, file: !565, line: 169, baseType: !7, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !583, file: !565, line: 170, baseType: !369, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !583, file: !565, line: 171, baseType: !562, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !583, file: !565, line: 172, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !389, line: 53, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !565, line: 359, size: 128, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !592, file: !565, line: 360, baseType: !364, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !592, file: !565, line: 361, baseType: !596, size: 64, offset: 64)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 64, elements: !487)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !583, file: !565, line: 173, baseType: !5, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !583, file: !565, line: 174, baseType: !599, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !565, line: 133, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 115, size: 32, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !600, file: !565, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !600, file: !565, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !600, file: !565, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !600, file: !565, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !600, file: !565, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !600, file: !565, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !600, file: !565, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !600, file: !565, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !583, file: !565, line: 175, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !565, line: 175, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !583, file: !565, line: 176, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !389, line: 46, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !583, file: !565, line: 177, baseType: !388, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !583, file: !565, line: 178, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !389, line: 110, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !583, file: !565, line: 179, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !565, line: 150, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !565, line: 142, size: 320, elements: !624)
!624 = !{!625, !626, !627, !628, !631, !632}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !623, file: !565, line: 144, baseType: !388, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !623, file: !565, line: 145, baseType: !562, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !623, file: !565, line: 146, baseType: !562, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !623, file: !565, line: 147, baseType: !629, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !630, line: 31, baseType: !364)
!630 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!631 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !623, file: !565, line: 148, baseType: !7, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !623, file: !565, line: 149, baseType: !363, size: 8, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !583, file: !565, line: 180, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !565, line: 162, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !565, line: 159, size: 128, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !636, file: !565, line: 160, baseType: !388, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !636, file: !565, line: 161, baseType: !444, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !583, file: !565, line: 181, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !565, line: 181, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !578, file: !565, line: 317, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 64, elements: !487)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !578, file: !565, line: 318, baseType: !646, size: 320)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !565, line: 188, size: 320, elements: !647)
!647 = !{!648, !650, !707}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !646, file: !565, line: 190, baseType: !649, size: 192)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 192, elements: !462)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !646, file: !565, line: 193, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !565, line: 206, size: 320, elements: !653)
!653 = !{!654, !692, !693, !694, !706}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !652, file: !565, line: 208, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !389, line: 62, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !658, line: 538, size: 256, elements: !659)
!658 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!659 = !{!660, !664, !670, !683}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !657, file: !658, line: 539, baseType: !661, size: 32)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !658, line: 482, size: 32, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !658, line: 484, baseType: !7, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !657, file: !658, line: 540, baseType: !665, size: 192)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !658, line: 488, size: 192, elements: !666)
!666 = !{!667, !668, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !665, file: !658, line: 489, baseType: !661, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !665, file: !658, line: 492, baseType: !369, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !665, file: !658, line: 496, baseType: !388, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !657, file: !658, line: 541, baseType: !671, size: 256)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !658, line: 504, size: 256, elements: !672)
!672 = !{!673, !674, !681, !682}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !671, file: !658, line: 505, baseType: !661, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !671, file: !658, line: 509, baseType: !675, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !658, line: 501, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !671, file: !658, line: 510, baseType: !679, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !671, file: !658, line: 513, baseType: !655, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !657, file: !658, line: 542, baseType: !684, size: 128)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !658, line: 530, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !684, file: !658, line: 531, baseType: !661, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !684, file: !658, line: 534, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !658, line: 525, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!363, !388, !369, !442, !442}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !652, file: !565, line: 211, baseType: !7, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !652, file: !565, line: 214, baseType: !444, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !652, file: !565, line: 224, baseType: !695, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !565, line: 202, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !565, line: 202, size: 128, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !697, file: !565, line: 202, baseType: !700, size: 128)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !565, line: 200, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !565, line: 200, size: 128, elements: !702)
!702 = !{!703, !704, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !701, file: !565, line: 200, baseType: !7, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !701, file: !565, line: 200, baseType: !7, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !701, file: !565, line: 200, baseType: !596, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !652, file: !565, line: 234, baseType: !695, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !646, file: !565, line: 197, baseType: !444, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !578, file: !565, line: 319, baseType: !451, size: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !578, file: !565, line: 320, baseType: !470, size: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !391, file: !135, line: 3384, baseType: !711, size: 1472)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !712)
!712 = !{!713, !734, !735, !736, !737}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !711, file: !135, line: 3115, baseType: !714, size: 1216)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !714, file: !135, line: 2985, baseType: !558, size: 960)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !714, file: !135, line: 2986, baseType: !388, size: 64, offset: 960)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !714, file: !135, line: 2987, baseType: !388, size: 64, offset: 1024)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !714, file: !135, line: 2988, baseType: !388, size: 64, offset: 1088)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !714, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !714, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !714, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !714, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !714, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !714, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !714, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !714, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !714, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !714, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !714, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !714, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !714, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !714, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !711, file: !135, line: 3117, baseType: !388, size: 64, offset: 1216)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !711, file: !135, line: 3119, baseType: !388, size: 64, offset: 1280)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !711, file: !135, line: 3121, baseType: !388, size: 64, offset: 1344)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !711, file: !135, line: 3123, baseType: !388, size: 64, offset: 1408)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !391, file: !135, line: 3385, baseType: !739, size: 1088)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !740)
!740 = !{!741, !742, !743}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !739, file: !135, line: 2875, baseType: !558, size: 960)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !739, file: !135, line: 2876, baseType: !562, size: 64, offset: 960)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !739, file: !135, line: 2877, baseType: !744, size: 64, offset: 1024)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !135, line: 2856, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !391, file: !135, line: 3386, baseType: !714, size: 1216)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !391, file: !135, line: 3387, baseType: !748, size: 1280)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !748, file: !135, line: 3094, baseType: !714, size: 1216)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !748, file: !135, line: 3095, baseType: !744, size: 64, offset: 1216)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !391, file: !135, line: 3388, baseType: !753, size: 1216)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !753, file: !135, line: 2825, baseType: !520, size: 896)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !753, file: !135, line: 2827, baseType: !388, size: 64, offset: 896)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !753, file: !135, line: 2828, baseType: !388, size: 64, offset: 960)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !753, file: !135, line: 2829, baseType: !388, size: 64, offset: 1024)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !753, file: !135, line: 2830, baseType: !388, size: 64, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !753, file: !135, line: 2831, baseType: !388, size: 64, offset: 1152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !391, file: !135, line: 3389, baseType: !762, size: 1024)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !763)
!763 = !{!764, !765, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !762, file: !135, line: 2851, baseType: !558, size: 960)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !762, file: !135, line: 2852, baseType: !364, size: 32, offset: 960)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !762, file: !135, line: 2853, baseType: !364, size: 32, offset: 992)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !391, file: !135, line: 3390, baseType: !768, size: 1024)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !768, file: !135, line: 2858, baseType: !558, size: 960)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !768, file: !135, line: 2859, baseType: !744, size: 64, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !391, file: !135, line: 3391, baseType: !773, size: 960)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !773, file: !135, line: 2863, baseType: !558, size: 960)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !391, file: !135, line: 3392, baseType: !777, size: 1472)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !777, file: !135, line: 3305, baseType: !711, size: 1472)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !391, file: !135, line: 3393, baseType: !781, size: 1792)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !782)
!782 = !{!783, !784, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !781, file: !135, line: 3249, baseType: !711, size: 1472)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !781, file: !135, line: 3251, baseType: !785, size: 64, offset: 1472)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !787, line: 41, flags: DIFlagFwdDecl)
!787 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !781, file: !135, line: 3254, baseType: !388, size: 64, offset: 1536)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !781, file: !135, line: 3257, baseType: !388, size: 64, offset: 1600)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !781, file: !135, line: 3258, baseType: !388, size: 64, offset: 1664)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !781, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !781, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !781, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !781, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !781, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !781, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !781, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !781, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !781, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !781, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !781, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !781, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !781, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !781, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !781, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !781, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !781, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !781, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !391, file: !135, line: 3394, baseType: !810, size: 1344)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !845, !846, !847, !848, !849, !850, !851, !852, !853}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !810, file: !135, line: 2280, baseType: !427, size: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !810, file: !135, line: 2281, baseType: !388, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !810, file: !135, line: 2282, baseType: !388, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !810, file: !135, line: 2283, baseType: !388, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !810, file: !135, line: 2284, baseType: !388, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !810, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !810, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !810, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !810, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !810, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !810, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !810, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !810, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !810, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !810, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !810, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !810, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !810, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !810, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !810, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !810, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !810, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !810, file: !135, line: 2306, baseType: !629, size: 32, offset: 544)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !810, file: !135, line: 2307, baseType: !388, size: 64, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !810, file: !135, line: 2308, baseType: !388, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !810, file: !135, line: 2314, baseType: !838, size: 64, offset: 704)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !839)
!839 = !{!840, !841, !842}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !838, file: !135, line: 2310, baseType: !364, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !838, file: !135, line: 2311, baseType: !369, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !838, file: !135, line: 2312, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !810, file: !135, line: 2315, baseType: !388, size: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !810, file: !135, line: 2316, baseType: !388, size: 64, offset: 832)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !810, file: !135, line: 2317, baseType: !388, size: 64, offset: 896)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !810, file: !135, line: 2318, baseType: !388, size: 64, offset: 960)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !810, file: !135, line: 2319, baseType: !388, size: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !810, file: !135, line: 2320, baseType: !388, size: 64, offset: 1088)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !810, file: !135, line: 2321, baseType: !388, size: 64, offset: 1152)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !810, file: !135, line: 2322, baseType: !388, size: 64, offset: 1216)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !810, file: !135, line: 2324, baseType: !854, size: 64, offset: 1280)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !391, file: !135, line: 3395, baseType: !857, size: 320)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !858)
!858 = !{!859, !860, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !857, file: !135, line: 1470, baseType: !427, size: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !857, file: !135, line: 1471, baseType: !388, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !857, file: !135, line: 1472, baseType: !388, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !391, file: !135, line: 3396, baseType: !863, size: 320)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !863, file: !135, line: 1483, baseType: !427, size: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !863, file: !135, line: 1484, baseType: !364, size: 32, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !863, file: !135, line: 1485, baseType: !868, size: 64, offset: 256)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 64, elements: !487)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !391, file: !135, line: 3397, baseType: !870, size: 384)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !870, file: !135, line: 1830, baseType: !427, size: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !870, file: !135, line: 1831, baseType: !512, size: 32, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !870, file: !135, line: 1832, baseType: !388, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !870, file: !135, line: 1835, baseType: !868, size: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !391, file: !135, line: 3398, baseType: !877, size: 704)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !878)
!878 = !{!879, !880, !881, !885, !886, !889}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !877, file: !135, line: 1899, baseType: !427, size: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !877, file: !135, line: 1902, baseType: !388, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !877, file: !135, line: 1905, baseType: !882, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !389, line: 58, baseType: !883)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !389, line: 57, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !877, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !877, file: !135, line: 1911, baseType: !887, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !135, line: 1876, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !877, file: !135, line: 1914, baseType: !890, size: 256, offset: 448)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !891)
!891 = !{!892, !894, !895, !900}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !890, file: !135, line: 1884, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !890, file: !135, line: 1885, baseType: !893, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !890, file: !135, line: 1891, baseType: !896, size: 64, offset: 128)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !135, line: 1891, size: 64, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !896, file: !135, line: 1891, baseType: !882, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !896, file: !135, line: 1891, baseType: !388, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !890, file: !135, line: 1892, baseType: !901, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !391, file: !135, line: 3399, baseType: !903, size: 704)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910, !922, !923, !924, !925, !926}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !903, file: !135, line: 2009, baseType: !427, size: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !903, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !903, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !903, file: !135, line: 2014, baseType: !512, size: 32, offset: 224)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !903, file: !135, line: 2016, baseType: !388, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !903, file: !135, line: 2017, baseType: !911, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !913, file: !135, line: 183, baseType: !916, size: 128)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !917)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !917, file: !135, line: 182, baseType: !7, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !917, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !917, file: !135, line: 182, baseType: !868, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !903, file: !135, line: 2019, baseType: !388, size: 64, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !903, file: !135, line: 2020, baseType: !388, size: 64, offset: 448)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !903, file: !135, line: 2021, baseType: !388, size: 64, offset: 512)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !903, file: !135, line: 2022, baseType: !388, size: 64, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !903, file: !135, line: 2023, baseType: !388, size: 64, offset: 640)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !391, file: !135, line: 3400, baseType: !928, size: 832)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936, !937, !938, !939}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !928, file: !135, line: 2431, baseType: !427, size: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !928, file: !135, line: 2433, baseType: !388, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !928, file: !135, line: 2434, baseType: !388, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !928, file: !135, line: 2435, baseType: !388, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !928, file: !135, line: 2436, baseType: !388, size: 64, offset: 384)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !928, file: !135, line: 2437, baseType: !911, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !928, file: !135, line: 2438, baseType: !388, size: 64, offset: 512)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !928, file: !135, line: 2440, baseType: !388, size: 64, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !928, file: !135, line: 2441, baseType: !388, size: 64, offset: 640)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !928, file: !135, line: 2443, baseType: !940, size: 128, offset: 704)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !942)
!942 = !{!943}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !941, file: !135, line: 182, baseType: !916, size: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !391, file: !135, line: 3401, baseType: !945, size: 320)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !946)
!946 = !{!947, !948, !955}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !945, file: !135, line: 3329, baseType: !427, size: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !945, file: !135, line: 3330, baseType: !949, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !951)
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !950, file: !135, line: 3322, baseType: !949, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !950, file: !135, line: 3323, baseType: !949, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !950, file: !135, line: 3324, baseType: !388, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !945, file: !135, line: 3331, baseType: !949, size: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !391, file: !135, line: 3402, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !957, file: !135, line: 1541, baseType: !427, size: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !957, file: !135, line: 1542, baseType: !961, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !963, file: !135, line: 1538, baseType: !966, size: 192)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !967, file: !135, line: 1537, baseType: !7, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !967, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !967, file: !135, line: 1537, baseType: !972, size: 128, offset: 64)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !973, size: 128, elements: !487)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !974, file: !135, line: 1533, baseType: !388, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !974, file: !135, line: 1534, baseType: !388, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !391, file: !135, line: 3403, baseType: !979, size: 512)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !980)
!980 = !{!981, !982, !983, !984, !990, !994, !995}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !979, file: !135, line: 1939, baseType: !427, size: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !979, file: !135, line: 1940, baseType: !512, size: 32, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !979, file: !135, line: 1941, baseType: !134, size: 32, offset: 224)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !979, file: !135, line: 1946, baseType: !985, size: 32, offset: 256)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !985, file: !135, line: 1943, baseType: !153, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !985, file: !135, line: 1944, baseType: !160, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !985, file: !135, line: 1945, baseType: !167, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !979, file: !135, line: 1950, baseType: !991, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !389, line: 66, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !389, line: 65, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !979, file: !135, line: 1951, baseType: !991, size: 64, offset: 384)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !979, file: !135, line: 1953, baseType: !868, size: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !391, file: !135, line: 3404, baseType: !997, size: 1664)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !997, file: !135, line: 3338, baseType: !427, size: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !997, file: !135, line: 3341, baseType: !1001, size: 1472, offset: 192)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1002, line: 410, size: 1472, elements: !1003)
!1002 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1001, file: !1002, line: 412, baseType: !364, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1001, file: !1002, line: 413, baseType: !364, size: 32, offset: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1001, file: !1002, line: 414, baseType: !364, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1001, file: !1002, line: 415, baseType: !364, size: 32, offset: 96)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1001, file: !1002, line: 416, baseType: !364, size: 32, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1001, file: !1002, line: 417, baseType: !364, size: 32, offset: 160)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1001, file: !1002, line: 418, baseType: !363, size: 8, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1001, file: !1002, line: 419, baseType: !363, size: 8, offset: 200)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1001, file: !1002, line: 420, baseType: !1013, size: 8, offset: 208)
!1013 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1001, file: !1002, line: 421, baseType: !1013, size: 8, offset: 216)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1001, file: !1002, line: 422, baseType: !1013, size: 8, offset: 224)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1001, file: !1002, line: 423, baseType: !1013, size: 8, offset: 232)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1001, file: !1002, line: 424, baseType: !1013, size: 8, offset: 240)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1001, file: !1002, line: 425, baseType: !1013, size: 8, offset: 248)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1001, file: !1002, line: 426, baseType: !1013, size: 8, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1001, file: !1002, line: 427, baseType: !1013, size: 8, offset: 264)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1001, file: !1002, line: 428, baseType: !1013, size: 8, offset: 272)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1001, file: !1002, line: 429, baseType: !1013, size: 8, offset: 280)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1001, file: !1002, line: 430, baseType: !1013, size: 8, offset: 288)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1001, file: !1002, line: 431, baseType: !1013, size: 8, offset: 296)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1001, file: !1002, line: 432, baseType: !1013, size: 8, offset: 304)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1001, file: !1002, line: 433, baseType: !1013, size: 8, offset: 312)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1001, file: !1002, line: 434, baseType: !1013, size: 8, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1001, file: !1002, line: 435, baseType: !1013, size: 8, offset: 328)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1001, file: !1002, line: 436, baseType: !1013, size: 8, offset: 336)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1001, file: !1002, line: 437, baseType: !1013, size: 8, offset: 344)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1001, file: !1002, line: 438, baseType: !1013, size: 8, offset: 352)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1001, file: !1002, line: 439, baseType: !1013, size: 8, offset: 360)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1001, file: !1002, line: 440, baseType: !1013, size: 8, offset: 368)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1001, file: !1002, line: 441, baseType: !1013, size: 8, offset: 376)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1001, file: !1002, line: 442, baseType: !1013, size: 8, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1001, file: !1002, line: 443, baseType: !1013, size: 8, offset: 392)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1001, file: !1002, line: 444, baseType: !1013, size: 8, offset: 400)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1001, file: !1002, line: 445, baseType: !1013, size: 8, offset: 408)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1001, file: !1002, line: 446, baseType: !1013, size: 8, offset: 416)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1001, file: !1002, line: 447, baseType: !1013, size: 8, offset: 424)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1001, file: !1002, line: 448, baseType: !1013, size: 8, offset: 432)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1001, file: !1002, line: 449, baseType: !1013, size: 8, offset: 440)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1001, file: !1002, line: 450, baseType: !1013, size: 8, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1001, file: !1002, line: 451, baseType: !1013, size: 8, offset: 456)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1001, file: !1002, line: 452, baseType: !1013, size: 8, offset: 464)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1001, file: !1002, line: 453, baseType: !1013, size: 8, offset: 472)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1001, file: !1002, line: 454, baseType: !1013, size: 8, offset: 480)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1001, file: !1002, line: 455, baseType: !1013, size: 8, offset: 488)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1001, file: !1002, line: 456, baseType: !1013, size: 8, offset: 496)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1001, file: !1002, line: 457, baseType: !1013, size: 8, offset: 504)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1001, file: !1002, line: 458, baseType: !1013, size: 8, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1001, file: !1002, line: 459, baseType: !1013, size: 8, offset: 520)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1001, file: !1002, line: 460, baseType: !1013, size: 8, offset: 528)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1001, file: !1002, line: 461, baseType: !1013, size: 8, offset: 536)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1001, file: !1002, line: 462, baseType: !1013, size: 8, offset: 544)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1001, file: !1002, line: 463, baseType: !1013, size: 8, offset: 552)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1001, file: !1002, line: 464, baseType: !1013, size: 8, offset: 560)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1001, file: !1002, line: 465, baseType: !1013, size: 8, offset: 568)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1001, file: !1002, line: 466, baseType: !1013, size: 8, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1001, file: !1002, line: 467, baseType: !1013, size: 8, offset: 584)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1001, file: !1002, line: 468, baseType: !1013, size: 8, offset: 592)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1001, file: !1002, line: 469, baseType: !1013, size: 8, offset: 600)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1001, file: !1002, line: 470, baseType: !1013, size: 8, offset: 608)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1001, file: !1002, line: 471, baseType: !1013, size: 8, offset: 616)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1001, file: !1002, line: 472, baseType: !1013, size: 8, offset: 624)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1001, file: !1002, line: 473, baseType: !1013, size: 8, offset: 632)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1001, file: !1002, line: 474, baseType: !1013, size: 8, offset: 640)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1001, file: !1002, line: 475, baseType: !1013, size: 8, offset: 648)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1001, file: !1002, line: 476, baseType: !1013, size: 8, offset: 656)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1001, file: !1002, line: 477, baseType: !1013, size: 8, offset: 664)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1001, file: !1002, line: 478, baseType: !1013, size: 8, offset: 672)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1001, file: !1002, line: 479, baseType: !1013, size: 8, offset: 680)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1001, file: !1002, line: 480, baseType: !1013, size: 8, offset: 688)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1001, file: !1002, line: 481, baseType: !1013, size: 8, offset: 696)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1001, file: !1002, line: 482, baseType: !1013, size: 8, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1001, file: !1002, line: 483, baseType: !1013, size: 8, offset: 712)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1001, file: !1002, line: 484, baseType: !1013, size: 8, offset: 720)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1001, file: !1002, line: 485, baseType: !1013, size: 8, offset: 728)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1001, file: !1002, line: 486, baseType: !1013, size: 8, offset: 736)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1001, file: !1002, line: 487, baseType: !1013, size: 8, offset: 744)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1001, file: !1002, line: 488, baseType: !1013, size: 8, offset: 752)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1001, file: !1002, line: 489, baseType: !1013, size: 8, offset: 760)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1001, file: !1002, line: 490, baseType: !1013, size: 8, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1001, file: !1002, line: 491, baseType: !1013, size: 8, offset: 776)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1001, file: !1002, line: 492, baseType: !1013, size: 8, offset: 784)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1001, file: !1002, line: 493, baseType: !1013, size: 8, offset: 792)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1001, file: !1002, line: 494, baseType: !1013, size: 8, offset: 800)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1001, file: !1002, line: 495, baseType: !1013, size: 8, offset: 808)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1001, file: !1002, line: 496, baseType: !1013, size: 8, offset: 816)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1001, file: !1002, line: 497, baseType: !1013, size: 8, offset: 824)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1001, file: !1002, line: 498, baseType: !1013, size: 8, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1001, file: !1002, line: 499, baseType: !1013, size: 8, offset: 840)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1001, file: !1002, line: 500, baseType: !1013, size: 8, offset: 848)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1001, file: !1002, line: 501, baseType: !1013, size: 8, offset: 856)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1001, file: !1002, line: 502, baseType: !1013, size: 8, offset: 864)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1001, file: !1002, line: 503, baseType: !1013, size: 8, offset: 872)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1001, file: !1002, line: 504, baseType: !1013, size: 8, offset: 880)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1001, file: !1002, line: 505, baseType: !1013, size: 8, offset: 888)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1001, file: !1002, line: 506, baseType: !1013, size: 8, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1001, file: !1002, line: 507, baseType: !1013, size: 8, offset: 904)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1001, file: !1002, line: 508, baseType: !1013, size: 8, offset: 912)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1001, file: !1002, line: 509, baseType: !1013, size: 8, offset: 920)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1001, file: !1002, line: 510, baseType: !1013, size: 8, offset: 928)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1001, file: !1002, line: 511, baseType: !1013, size: 8, offset: 936)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1001, file: !1002, line: 512, baseType: !1013, size: 8, offset: 944)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1001, file: !1002, line: 513, baseType: !1013, size: 8, offset: 952)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1001, file: !1002, line: 514, baseType: !1013, size: 8, offset: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1001, file: !1002, line: 515, baseType: !1013, size: 8, offset: 968)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1001, file: !1002, line: 516, baseType: !1013, size: 8, offset: 976)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1001, file: !1002, line: 517, baseType: !1013, size: 8, offset: 984)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1001, file: !1002, line: 518, baseType: !1013, size: 8, offset: 992)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1001, file: !1002, line: 519, baseType: !1013, size: 8, offset: 1000)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1001, file: !1002, line: 520, baseType: !1013, size: 8, offset: 1008)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1001, file: !1002, line: 521, baseType: !1013, size: 8, offset: 1016)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1001, file: !1002, line: 522, baseType: !1013, size: 8, offset: 1024)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1001, file: !1002, line: 523, baseType: !1013, size: 8, offset: 1032)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1001, file: !1002, line: 524, baseType: !1013, size: 8, offset: 1040)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1001, file: !1002, line: 525, baseType: !1013, size: 8, offset: 1048)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1001, file: !1002, line: 526, baseType: !1013, size: 8, offset: 1056)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1001, file: !1002, line: 527, baseType: !1013, size: 8, offset: 1064)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1001, file: !1002, line: 528, baseType: !1013, size: 8, offset: 1072)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1001, file: !1002, line: 529, baseType: !1013, size: 8, offset: 1080)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1001, file: !1002, line: 530, baseType: !1013, size: 8, offset: 1088)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1001, file: !1002, line: 531, baseType: !1013, size: 8, offset: 1096)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1001, file: !1002, line: 532, baseType: !1013, size: 8, offset: 1104)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1001, file: !1002, line: 533, baseType: !1013, size: 8, offset: 1112)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1001, file: !1002, line: 534, baseType: !1013, size: 8, offset: 1120)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1001, file: !1002, line: 535, baseType: !1013, size: 8, offset: 1128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1001, file: !1002, line: 536, baseType: !1013, size: 8, offset: 1136)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1001, file: !1002, line: 537, baseType: !1013, size: 8, offset: 1144)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1001, file: !1002, line: 538, baseType: !1013, size: 8, offset: 1152)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1001, file: !1002, line: 539, baseType: !1013, size: 8, offset: 1160)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1001, file: !1002, line: 540, baseType: !1013, size: 8, offset: 1168)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1001, file: !1002, line: 541, baseType: !1013, size: 8, offset: 1176)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1001, file: !1002, line: 542, baseType: !1013, size: 8, offset: 1184)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1001, file: !1002, line: 543, baseType: !1013, size: 8, offset: 1192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1001, file: !1002, line: 544, baseType: !1013, size: 8, offset: 1200)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1001, file: !1002, line: 545, baseType: !1013, size: 8, offset: 1208)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1001, file: !1002, line: 546, baseType: !1013, size: 8, offset: 1216)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1001, file: !1002, line: 547, baseType: !1013, size: 8, offset: 1224)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1001, file: !1002, line: 548, baseType: !1013, size: 8, offset: 1232)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1001, file: !1002, line: 549, baseType: !1013, size: 8, offset: 1240)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1001, file: !1002, line: 550, baseType: !1013, size: 8, offset: 1248)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1001, file: !1002, line: 551, baseType: !1013, size: 8, offset: 1256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1001, file: !1002, line: 552, baseType: !1013, size: 8, offset: 1264)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1001, file: !1002, line: 553, baseType: !1013, size: 8, offset: 1272)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1001, file: !1002, line: 554, baseType: !1013, size: 8, offset: 1280)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1001, file: !1002, line: 555, baseType: !1013, size: 8, offset: 1288)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1001, file: !1002, line: 556, baseType: !1013, size: 8, offset: 1296)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1001, file: !1002, line: 557, baseType: !1013, size: 8, offset: 1304)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1001, file: !1002, line: 558, baseType: !1013, size: 8, offset: 1312)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1001, file: !1002, line: 559, baseType: !1013, size: 8, offset: 1320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1001, file: !1002, line: 560, baseType: !1013, size: 8, offset: 1328)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1001, file: !1002, line: 561, baseType: !1013, size: 8, offset: 1336)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1001, file: !1002, line: 562, baseType: !1013, size: 8, offset: 1344)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1001, file: !1002, line: 563, baseType: !1013, size: 8, offset: 1352)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1001, file: !1002, line: 564, baseType: !1013, size: 8, offset: 1360)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1001, file: !1002, line: 565, baseType: !1013, size: 8, offset: 1368)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1001, file: !1002, line: 566, baseType: !1013, size: 8, offset: 1376)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1001, file: !1002, line: 567, baseType: !1013, size: 8, offset: 1384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1001, file: !1002, line: 568, baseType: !1013, size: 8, offset: 1392)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1001, file: !1002, line: 569, baseType: !1013, size: 8, offset: 1400)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1001, file: !1002, line: 570, baseType: !1013, size: 8, offset: 1408)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1001, file: !1002, line: 571, baseType: !1013, size: 8, offset: 1416)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1001, file: !1002, line: 572, baseType: !1013, size: 8, offset: 1424)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1001, file: !1002, line: 573, baseType: !1013, size: 8, offset: 1432)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1001, file: !1002, line: 574, baseType: !1013, size: 8, offset: 1440)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !391, file: !135, line: 3405, baseType: !1169, size: 384)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1169, file: !135, line: 3353, baseType: !427, size: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1169, file: !135, line: 3356, baseType: !1173, size: 192, offset: 192)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1002, line: 578, size: 192, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1173, file: !1002, line: 580, baseType: !364, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1173, file: !1002, line: 581, baseType: !364, size: 32, offset: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1173, file: !1002, line: 582, baseType: !364, size: 32, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1173, file: !1002, line: 583, baseType: !364, size: 32, offset: 96)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1173, file: !1002, line: 584, baseType: !363, size: 8, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1173, file: !1002, line: 585, baseType: !363, size: 8, offset: 136)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1173, file: !1002, line: 586, baseType: !363, size: 8, offset: 144)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1173, file: !1002, line: 587, baseType: !363, size: 8, offset: 152)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1173, file: !1002, line: 588, baseType: !363, size: 8, offset: 160)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1173, file: !1002, line: 589, baseType: !363, size: 8, offset: 168)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1173, file: !1002, line: 590, baseType: !363, size: 8, offset: 176)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "substring", file: !3, line: 50, size: 128, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1190, file: !3, line: 52, baseType: !369, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1190, file: !3, line: 53, baseType: !364, size: 32, offset: 64)
!1194 = !{!0, !1195, !1197, !1202}
!1195 = !DIGlobalVariableExpression(var: !1196, expr: !DIExpression())
!1196 = distinct !DIGlobalVariable(name: "attributes_initialized", scope: !2, file: !3, line: 56, type: !363, isLocal: true, isDefinition: true)
!1197 = !DIGlobalVariableExpression(var: !1198, expr: !DIExpression())
!1198 = distinct !DIGlobalVariable(name: "attribute_tables", scope: !2, file: !3, line: 43, type: !1199, isLocal: true, isDefinition: true)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 256, elements: !1200)
!1200 = !{!1201}
!1201 = !DISubrange(count: 4)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(name: "empty_attribute_table", scope: !2, file: !3, line: 60, type: !1204, isLocal: true, isDefinition: true)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1187, size: 256, elements: !487)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1206, line: 144, baseType: !1207)
!1206 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1206, line: 100, size: 896, elements: !1209)
!1209 = !{!1210, !1216, !1221, !1226, !1228, !1231, !1232, !1233, !1234, !1235, !1240, !1242, !1243, !1248, !1253}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1208, file: !1206, line: 102, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1206, line: 52, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1215, !679}
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1206, line: 47, baseType: !7)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1208, file: !1206, line: 105, baseType: !1217, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1206, line: 59, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!364, !679, !679}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1208, file: !1206, line: 108, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1206, line: 63, baseType: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !368}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1208, file: !1206, line: 111, baseType: !1227, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1208, file: !1206, line: 114, baseType: !1229, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1230, line: 46, baseType: !442)
!1230 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1208, file: !1206, line: 117, baseType: !1229, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1208, file: !1206, line: 120, baseType: !1229, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1208, file: !1206, line: 124, baseType: !7, size: 32, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1208, file: !1206, line: 128, baseType: !7, size: 32, offset: 480)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1208, file: !1206, line: 131, baseType: !1236, size: 64, offset: 512)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1206, line: 75, baseType: !1237)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!368, !1229, !1229}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1208, file: !1206, line: 132, baseType: !1241, size: 64, offset: 576)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1206, line: 78, baseType: !1223)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1208, file: !1206, line: 135, baseType: !368, size: 64, offset: 640)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1208, file: !1206, line: 136, baseType: !1244, size: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1206, line: 82, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!368, !368, !1229, !1229}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1208, file: !1206, line: 137, baseType: !1249, size: 64, offset: 768)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1206, line: 83, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !368, !368}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1208, file: !1206, line: 141, baseType: !7, size: 32, offset: 832)
!1254 = !DIGlobalVariableExpression(var: !1196, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1255 = !{i32 2, !"Dwarf Version", i32 4}
!1256 = !{i32 2, !"Debug Info Version", i32 3}
!1257 = !{i32 1, !"wchar_size", i32 4}
!1258 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1259 = distinct !DISubprogram(name: "vprintf", scope: !1260, file: !1260, line: 39, type: !1261, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1271)
!1260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!364, !1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !369)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1265, file: !3, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1265, file: !3, baseType: !7, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1265, file: !3, baseType: !368, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1265, file: !3, baseType: !368, size: 64, offset: 128)
!1271 = !{!1272, !1273}
!1272 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1259, file: !1260, line: 39, type: !1263)
!1273 = !DILocalVariable(name: "__arg", arg: 2, scope: !1259, file: !1260, line: 39, type: !1264)
!1274 = !DILocation(line: 0, scope: !1259)
!1275 = !DILocation(line: 41, column: 20, scope: !1259)
!1276 = !DILocation(line: 41, column: 10, scope: !1259)
!1277 = !DILocation(line: 41, column: 3, scope: !1259)
!1278 = distinct !DISubprogram(name: "getchar", scope: !1260, file: !1260, line: 47, type: !1279, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!364}
!1281 = !{}
!1282 = !DILocation(line: 49, column: 16, scope: !1278)
!1283 = !DILocation(line: 49, column: 10, scope: !1278)
!1284 = !DILocation(line: 49, column: 3, scope: !1278)
!1285 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1260, file: !1260, line: 56, type: !1286, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!364, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1290, line: 7, baseType: !1291)
!1290 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1292, line: 49, size: 1728, elements: !1293)
!1292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1309, !1311, !1312, !1313, !1316, !1318, !1319, !1320, !1323, !1325, !1328, !1331, !1332, !1333, !1334, !1335}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1291, file: !1292, line: 51, baseType: !364, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1291, file: !1292, line: 54, baseType: !366, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1291, file: !1292, line: 55, baseType: !366, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1291, file: !1292, line: 56, baseType: !366, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1291, file: !1292, line: 57, baseType: !366, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1291, file: !1292, line: 58, baseType: !366, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1291, file: !1292, line: 59, baseType: !366, size: 64, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1291, file: !1292, line: 60, baseType: !366, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1291, file: !1292, line: 61, baseType: !366, size: 64, offset: 512)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1291, file: !1292, line: 64, baseType: !366, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1291, file: !1292, line: 65, baseType: !366, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1291, file: !1292, line: 66, baseType: !366, size: 64, offset: 704)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1291, file: !1292, line: 68, baseType: !1307, size: 64, offset: 768)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1292, line: 36, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1291, file: !1292, line: 70, baseType: !1310, size: 64, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1291, file: !1292, line: 72, baseType: !364, size: 32, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1291, file: !1292, line: 73, baseType: !364, size: 32, offset: 928)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1291, file: !1292, line: 74, baseType: !1314, size: 64, offset: 960)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1315, line: 152, baseType: !444)
!1315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1291, file: !1292, line: 77, baseType: !1317, size: 16, offset: 1024)
!1317 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1291, file: !1292, line: 78, baseType: !1013, size: 8, offset: 1040)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1291, file: !1292, line: 79, baseType: !486, size: 8, offset: 1048)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1291, file: !1292, line: 81, baseType: !1321, size: 64, offset: 1088)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1292, line: 43, baseType: null)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1291, file: !1292, line: 89, baseType: !1324, size: 64, offset: 1152)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1315, line: 153, baseType: !444)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1291, file: !1292, line: 91, baseType: !1326, size: 64, offset: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1292, line: 37, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1291, file: !1292, line: 92, baseType: !1329, size: 64, offset: 1280)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1292, line: 38, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1291, file: !1292, line: 93, baseType: !1310, size: 64, offset: 1344)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1291, file: !1292, line: 94, baseType: !368, size: 64, offset: 1408)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1291, file: !1292, line: 95, baseType: !1229, size: 64, offset: 1472)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1291, file: !1292, line: 96, baseType: !364, size: 32, offset: 1536)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1291, file: !1292, line: 98, baseType: !1336, size: 160, offset: 1568)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 160, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 20)
!1339 = !{!1340}
!1340 = !DILocalVariable(name: "__fp", arg: 1, scope: !1285, file: !1260, line: 56, type: !1288)
!1341 = !DILocation(line: 0, scope: !1285)
!1342 = !DILocation(line: 58, column: 10, scope: !1285)
!1343 = !DILocation(line: 58, column: 3, scope: !1285)
!1344 = distinct !DISubprogram(name: "getc_unlocked", scope: !1260, file: !1260, line: 66, type: !1286, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1345)
!1345 = !{!1346}
!1346 = !DILocalVariable(name: "__fp", arg: 1, scope: !1344, file: !1260, line: 66, type: !1288)
!1347 = !DILocation(line: 0, scope: !1344)
!1348 = !DILocation(line: 68, column: 10, scope: !1344)
!1349 = !DILocation(line: 68, column: 3, scope: !1344)
!1350 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1260, file: !1260, line: 73, type: !1279, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1351 = !DILocation(line: 75, column: 10, scope: !1350)
!1352 = !DILocation(line: 75, column: 3, scope: !1350)
!1353 = distinct !DISubprogram(name: "putchar", scope: !1260, file: !1260, line: 82, type: !1354, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!364, !364}
!1356 = !{!1357}
!1357 = !DILocalVariable(name: "__c", arg: 1, scope: !1353, file: !1260, line: 82, type: !364)
!1358 = !DILocation(line: 0, scope: !1353)
!1359 = !DILocation(line: 84, column: 21, scope: !1353)
!1360 = !DILocation(line: 84, column: 10, scope: !1353)
!1361 = !DILocation(line: 84, column: 3, scope: !1353)
!1362 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1260, file: !1260, line: 91, type: !1363, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!364, !364, !1288}
!1365 = !{!1366, !1367}
!1366 = !DILocalVariable(name: "__c", arg: 1, scope: !1362, file: !1260, line: 91, type: !364)
!1367 = !DILocalVariable(name: "__stream", arg: 2, scope: !1362, file: !1260, line: 91, type: !1288)
!1368 = !DILocation(line: 0, scope: !1362)
!1369 = !DILocation(line: 93, column: 10, scope: !1362)
!1370 = !DILocation(line: 93, column: 3, scope: !1362)
!1371 = distinct !DISubprogram(name: "putc_unlocked", scope: !1260, file: !1260, line: 101, type: !1363, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1372)
!1372 = !{!1373, !1374}
!1373 = !DILocalVariable(name: "__c", arg: 1, scope: !1371, file: !1260, line: 101, type: !364)
!1374 = !DILocalVariable(name: "__stream", arg: 2, scope: !1371, file: !1260, line: 101, type: !1288)
!1375 = !DILocation(line: 0, scope: !1371)
!1376 = !DILocation(line: 103, column: 10, scope: !1371)
!1377 = !DILocation(line: 103, column: 3, scope: !1371)
!1378 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1260, file: !1260, line: 108, type: !1354, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1379)
!1379 = !{!1380}
!1380 = !DILocalVariable(name: "__c", arg: 1, scope: !1378, file: !1260, line: 108, type: !364)
!1381 = !DILocation(line: 0, scope: !1378)
!1382 = !DILocation(line: 110, column: 10, scope: !1378)
!1383 = !DILocation(line: 110, column: 3, scope: !1378)
!1384 = distinct !DISubprogram(name: "getline", scope: !1260, file: !1260, line: 118, type: !1385, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1389)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1387, !365, !1388, !1288}
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1315, line: 193, baseType: !444)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1389 = !{!1390, !1391, !1392}
!1390 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1384, file: !1260, line: 118, type: !365)
!1391 = !DILocalVariable(name: "__n", arg: 2, scope: !1384, file: !1260, line: 118, type: !1388)
!1392 = !DILocalVariable(name: "__stream", arg: 3, scope: !1384, file: !1260, line: 118, type: !1288)
!1393 = !DILocation(line: 0, scope: !1384)
!1394 = !DILocation(line: 120, column: 10, scope: !1384)
!1395 = !DILocation(line: 120, column: 3, scope: !1384)
!1396 = distinct !DISubprogram(name: "feof_unlocked", scope: !1260, file: !1260, line: 128, type: !1286, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1397)
!1397 = !{!1398}
!1398 = !DILocalVariable(name: "__stream", arg: 1, scope: !1396, file: !1260, line: 128, type: !1288)
!1399 = !DILocation(line: 0, scope: !1396)
!1400 = !DILocation(line: 130, column: 10, scope: !1396)
!1401 = !DILocation(line: 130, column: 3, scope: !1396)
!1402 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1260, file: !1260, line: 135, type: !1286, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1403)
!1403 = !{!1404}
!1404 = !DILocalVariable(name: "__stream", arg: 1, scope: !1402, file: !1260, line: 135, type: !1288)
!1405 = !DILocation(line: 0, scope: !1402)
!1406 = !DILocation(line: 137, column: 10, scope: !1402)
!1407 = !DILocation(line: 137, column: 3, scope: !1402)
!1408 = distinct !DISubprogram(name: "tolower", scope: !1409, file: !1409, line: 207, type: !1354, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1410)
!1409 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1410 = !{!1411}
!1411 = !DILocalVariable(name: "__c", arg: 1, scope: !1408, file: !1409, line: 207, type: !364)
!1412 = !DILocation(line: 0, scope: !1408)
!1413 = !DILocation(line: 209, column: 22, scope: !1408)
!1414 = !DILocation(line: 209, column: 39, scope: !1408)
!1415 = !DILocation(line: 209, column: 38, scope: !1408)
!1416 = !DILocation(line: 209, column: 37, scope: !1408)
!1417 = !DILocation(line: 209, column: 10, scope: !1408)
!1418 = !DILocation(line: 209, column: 3, scope: !1408)
!1419 = distinct !DISubprogram(name: "toupper", scope: !1409, file: !1409, line: 213, type: !1354, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1420)
!1420 = !{!1421}
!1421 = !DILocalVariable(name: "__c", arg: 1, scope: !1419, file: !1409, line: 213, type: !364)
!1422 = !DILocation(line: 0, scope: !1419)
!1423 = !DILocation(line: 215, column: 22, scope: !1419)
!1424 = !DILocation(line: 215, column: 39, scope: !1419)
!1425 = !DILocation(line: 215, column: 38, scope: !1419)
!1426 = !DILocation(line: 215, column: 37, scope: !1419)
!1427 = !DILocation(line: 215, column: 10, scope: !1419)
!1428 = !DILocation(line: 215, column: 3, scope: !1419)
!1429 = distinct !DISubprogram(name: "atoi", scope: !1430, file: !1430, line: 361, type: !1431, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1433)
!1430 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!364, !369}
!1433 = !{!1434}
!1434 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1429, file: !1430, line: 361, type: !369)
!1435 = !DILocation(line: 0, scope: !1429)
!1436 = !DILocation(line: 363, column: 16, scope: !1429)
!1437 = !DILocation(line: 363, column: 10, scope: !1429)
!1438 = !DILocation(line: 363, column: 3, scope: !1429)
!1439 = distinct !DISubprogram(name: "atol", scope: !1430, file: !1430, line: 366, type: !1440, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!444, !369}
!1442 = !{!1443}
!1443 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1439, file: !1430, line: 366, type: !369)
!1444 = !DILocation(line: 0, scope: !1439)
!1445 = !DILocation(line: 368, column: 10, scope: !1439)
!1446 = !DILocation(line: 368, column: 3, scope: !1439)
!1447 = distinct !DISubprogram(name: "atoll", scope: !1430, file: !1430, line: 373, type: !1448, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1451)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1450, !369}
!1450 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1451 = !{!1452}
!1452 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1447, file: !1430, line: 373, type: !369)
!1453 = !DILocation(line: 0, scope: !1447)
!1454 = !DILocation(line: 375, column: 10, scope: !1447)
!1455 = !DILocation(line: 375, column: 3, scope: !1447)
!1456 = distinct !DISubprogram(name: "bsearch", scope: !1457, file: !1457, line: 20, type: !1458, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1461)
!1457 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!368, !679, !679, !1229, !1229, !1460}
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1430, line: 808, baseType: !1218)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471}
!1462 = !DILocalVariable(name: "__key", arg: 1, scope: !1456, file: !1457, line: 20, type: !679)
!1463 = !DILocalVariable(name: "__base", arg: 2, scope: !1456, file: !1457, line: 20, type: !679)
!1464 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1456, file: !1457, line: 20, type: !1229)
!1465 = !DILocalVariable(name: "__size", arg: 4, scope: !1456, file: !1457, line: 20, type: !1229)
!1466 = !DILocalVariable(name: "__compar", arg: 5, scope: !1456, file: !1457, line: 21, type: !1460)
!1467 = !DILocalVariable(name: "__l", scope: !1456, file: !1457, line: 23, type: !1229)
!1468 = !DILocalVariable(name: "__u", scope: !1456, file: !1457, line: 23, type: !1229)
!1469 = !DILocalVariable(name: "__idx", scope: !1456, file: !1457, line: 23, type: !1229)
!1470 = !DILocalVariable(name: "__p", scope: !1456, file: !1457, line: 24, type: !679)
!1471 = !DILocalVariable(name: "__comparison", scope: !1456, file: !1457, line: 25, type: !364)
!1472 = !DILocation(line: 0, scope: !1456)
!1473 = !DILocation(line: 29, column: 3, scope: !1456)
!1474 = !DILocation(line: 27, column: 7, scope: !1456)
!1475 = !DILocation(line: 29, column: 14, scope: !1456)
!1476 = !DILocation(line: 31, column: 20, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1456, file: !1457, line: 30, column: 5)
!1478 = !DILocation(line: 31, column: 27, scope: !1477)
!1479 = !DILocation(line: 32, column: 56, scope: !1477)
!1480 = !DILocation(line: 32, column: 47, scope: !1477)
!1481 = !DILocation(line: 33, column: 22, scope: !1477)
!1482 = !DILocation(line: 34, column: 24, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !1457, line: 34, column: 11)
!1484 = !DILocation(line: 34, column: 11, scope: !1477)
!1485 = !DILocation(line: 36, column: 29, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !1457, line: 36, column: 16)
!1487 = !DILocation(line: 36, column: 16, scope: !1483)
!1488 = !DILocation(line: 37, column: 14, scope: !1486)
!1489 = distinct !{!1489, !1473, !1490}
!1490 = !DILocation(line: 40, column: 5, scope: !1456)
!1491 = !DILocation(line: 43, column: 1, scope: !1456)
!1492 = distinct !DISubprogram(name: "atof", scope: !1493, file: !1493, line: 25, type: !1494, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1497)
!1493 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1496, !369}
!1496 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1497 = !{!1498}
!1498 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1492, file: !1493, line: 25, type: !369)
!1499 = !DILocation(line: 0, scope: !1492)
!1500 = !DILocation(line: 27, column: 10, scope: !1492)
!1501 = !DILocation(line: 27, column: 3, scope: !1492)
!1502 = distinct !DISubprogram(name: "strtoimax", scope: !1503, file: !1503, line: 324, type: !1504, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1510)
!1503 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!1506, !1263, !1509, !364}
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1507, line: 101, baseType: !1508)
!1507 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1315, line: 72, baseType: !444)
!1509 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !365)
!1510 = !{!1511, !1512, !1513}
!1511 = !DILocalVariable(name: "nptr", arg: 1, scope: !1502, file: !1503, line: 324, type: !1263)
!1512 = !DILocalVariable(name: "endptr", arg: 2, scope: !1502, file: !1503, line: 324, type: !1509)
!1513 = !DILocalVariable(name: "base", arg: 3, scope: !1502, file: !1503, line: 324, type: !364)
!1514 = !DILocation(line: 0, scope: !1502)
!1515 = !DILocation(line: 327, column: 10, scope: !1502)
!1516 = !DILocation(line: 327, column: 3, scope: !1502)
!1517 = distinct !DISubprogram(name: "strtoumax", scope: !1503, file: !1503, line: 336, type: !1518, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1522)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1520, !1263, !1509, !364}
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1507, line: 102, baseType: !1521)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1315, line: 73, baseType: !442)
!1522 = !{!1523, !1524, !1525}
!1523 = !DILocalVariable(name: "nptr", arg: 1, scope: !1517, file: !1503, line: 336, type: !1263)
!1524 = !DILocalVariable(name: "endptr", arg: 2, scope: !1517, file: !1503, line: 336, type: !1509)
!1525 = !DILocalVariable(name: "base", arg: 3, scope: !1517, file: !1503, line: 336, type: !364)
!1526 = !DILocation(line: 0, scope: !1517)
!1527 = !DILocation(line: 339, column: 10, scope: !1517)
!1528 = !DILocation(line: 339, column: 3, scope: !1517)
!1529 = distinct !DISubprogram(name: "wcstoimax", scope: !1503, file: !1503, line: 348, type: !1530, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1539)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1506, !1532, !1536, !364}
!1532 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1533)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1503, line: 34, baseType: !364)
!1536 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1539 = !{!1540, !1541, !1542}
!1540 = !DILocalVariable(name: "nptr", arg: 1, scope: !1529, file: !1503, line: 348, type: !1532)
!1541 = !DILocalVariable(name: "endptr", arg: 2, scope: !1529, file: !1503, line: 348, type: !1536)
!1542 = !DILocalVariable(name: "base", arg: 3, scope: !1529, file: !1503, line: 348, type: !364)
!1543 = !DILocation(line: 0, scope: !1529)
!1544 = !DILocation(line: 351, column: 10, scope: !1529)
!1545 = !DILocation(line: 351, column: 3, scope: !1529)
!1546 = distinct !DISubprogram(name: "wcstoumax", scope: !1503, file: !1503, line: 362, type: !1547, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!1520, !1532, !1536, !364}
!1549 = !{!1550, !1551, !1552}
!1550 = !DILocalVariable(name: "nptr", arg: 1, scope: !1546, file: !1503, line: 362, type: !1532)
!1551 = !DILocalVariable(name: "endptr", arg: 2, scope: !1546, file: !1503, line: 362, type: !1536)
!1552 = !DILocalVariable(name: "base", arg: 3, scope: !1546, file: !1503, line: 362, type: !364)
!1553 = !DILocation(line: 0, scope: !1546)
!1554 = !DILocation(line: 365, column: 10, scope: !1546)
!1555 = !DILocation(line: 365, column: 3, scope: !1546)
!1556 = distinct !DISubprogram(name: "stat", scope: !1557, file: !1557, line: 453, type: !1558, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1595)
!1557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!364, !369, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1562, line: 46, size: 1152, elements: !1563)
!1562 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1563 = !{!1564, !1566, !1568, !1570, !1572, !1574, !1576, !1577, !1578, !1579, !1581, !1583, !1591, !1592, !1593}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1561, file: !1562, line: 48, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1315, line: 145, baseType: !442)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1561, file: !1562, line: 53, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1315, line: 148, baseType: !442)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1561, file: !1562, line: 61, baseType: !1569, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1315, line: 151, baseType: !442)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1561, file: !1562, line: 62, baseType: !1571, size: 32, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1315, line: 150, baseType: !7)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1561, file: !1562, line: 64, baseType: !1573, size: 32, offset: 224)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1315, line: 146, baseType: !7)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1561, file: !1562, line: 65, baseType: !1575, size: 32, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1315, line: 147, baseType: !7)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1561, file: !1562, line: 67, baseType: !364, size: 32, offset: 288)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1561, file: !1562, line: 69, baseType: !1565, size: 64, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1561, file: !1562, line: 74, baseType: !1314, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1561, file: !1562, line: 78, baseType: !1580, size: 64, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1315, line: 174, baseType: !444)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1561, file: !1562, line: 80, baseType: !1582, size: 64, offset: 512)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1315, line: 179, baseType: !444)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1561, file: !1562, line: 91, baseType: !1584, size: 128, offset: 576)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1585, line: 10, size: 128, elements: !1586)
!1585 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1586 = !{!1587, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1584, file: !1585, line: 12, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1315, line: 160, baseType: !444)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1584, file: !1585, line: 16, baseType: !1590, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1315, line: 196, baseType: !444)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1561, file: !1562, line: 92, baseType: !1584, size: 128, offset: 704)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1561, file: !1562, line: 93, baseType: !1584, size: 128, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1561, file: !1562, line: 106, baseType: !1594, size: 192, offset: 960)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1590, size: 192, elements: !462)
!1595 = !{!1596, !1597}
!1596 = !DILocalVariable(name: "__path", arg: 1, scope: !1556, file: !1557, line: 453, type: !369)
!1597 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1556, file: !1557, line: 453, type: !1560)
!1598 = !DILocation(line: 0, scope: !1556)
!1599 = !DILocation(line: 455, column: 10, scope: !1556)
!1600 = !DILocation(line: 455, column: 3, scope: !1556)
!1601 = distinct !DISubprogram(name: "lstat", scope: !1557, file: !1557, line: 460, type: !1558, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1602)
!1602 = !{!1603, !1604}
!1603 = !DILocalVariable(name: "__path", arg: 1, scope: !1601, file: !1557, line: 460, type: !369)
!1604 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1601, file: !1557, line: 460, type: !1560)
!1605 = !DILocation(line: 0, scope: !1601)
!1606 = !DILocation(line: 462, column: 10, scope: !1601)
!1607 = !DILocation(line: 462, column: 3, scope: !1601)
!1608 = distinct !DISubprogram(name: "fstat", scope: !1557, file: !1557, line: 467, type: !1609, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1611)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!364, !364, !1560}
!1611 = !{!1612, !1613}
!1612 = !DILocalVariable(name: "__fd", arg: 1, scope: !1608, file: !1557, line: 467, type: !364)
!1613 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1608, file: !1557, line: 467, type: !1560)
!1614 = !DILocation(line: 0, scope: !1608)
!1615 = !DILocation(line: 469, column: 10, scope: !1608)
!1616 = !DILocation(line: 469, column: 3, scope: !1608)
!1617 = distinct !DISubprogram(name: "fstatat", scope: !1557, file: !1557, line: 474, type: !1618, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1620)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!364, !364, !369, !1560, !364}
!1620 = !{!1621, !1622, !1623, !1624}
!1621 = !DILocalVariable(name: "__fd", arg: 1, scope: !1617, file: !1557, line: 474, type: !364)
!1622 = !DILocalVariable(name: "__filename", arg: 2, scope: !1617, file: !1557, line: 474, type: !369)
!1623 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1617, file: !1557, line: 474, type: !1560)
!1624 = !DILocalVariable(name: "__flag", arg: 4, scope: !1617, file: !1557, line: 474, type: !364)
!1625 = !DILocation(line: 0, scope: !1617)
!1626 = !DILocation(line: 477, column: 10, scope: !1617)
!1627 = !DILocation(line: 477, column: 3, scope: !1617)
!1628 = distinct !DISubprogram(name: "mknod", scope: !1557, file: !1557, line: 483, type: !1629, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1631)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!364, !369, !1571, !1565}
!1631 = !{!1632, !1633, !1634}
!1632 = !DILocalVariable(name: "__path", arg: 1, scope: !1628, file: !1557, line: 483, type: !369)
!1633 = !DILocalVariable(name: "__mode", arg: 2, scope: !1628, file: !1557, line: 483, type: !1571)
!1634 = !DILocalVariable(name: "__dev", arg: 3, scope: !1628, file: !1557, line: 483, type: !1565)
!1635 = !DILocation(line: 0, scope: !1628)
!1636 = !DILocation(line: 485, column: 10, scope: !1628)
!1637 = !DILocation(line: 485, column: 3, scope: !1628)
!1638 = distinct !DISubprogram(name: "mknodat", scope: !1557, file: !1557, line: 491, type: !1639, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1641)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!364, !364, !369, !1571, !1565}
!1641 = !{!1642, !1643, !1644, !1645}
!1642 = !DILocalVariable(name: "__fd", arg: 1, scope: !1638, file: !1557, line: 491, type: !364)
!1643 = !DILocalVariable(name: "__path", arg: 2, scope: !1638, file: !1557, line: 491, type: !369)
!1644 = !DILocalVariable(name: "__mode", arg: 3, scope: !1638, file: !1557, line: 491, type: !1571)
!1645 = !DILocalVariable(name: "__dev", arg: 4, scope: !1638, file: !1557, line: 491, type: !1565)
!1646 = !DILocation(line: 0, scope: !1638)
!1647 = !DILocation(line: 494, column: 10, scope: !1638)
!1648 = !DILocation(line: 494, column: 3, scope: !1638)
!1649 = distinct !DISubprogram(name: "stat64", scope: !1557, file: !1557, line: 502, type: !1650, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1672)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!364, !369, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1562, line: 119, size: 1152, elements: !1654)
!1654 = !{!1655, !1656, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1668, !1669, !1670, !1671}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1653, file: !1562, line: 121, baseType: !1565, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1653, file: !1562, line: 123, baseType: !1657, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1315, line: 149, baseType: !442)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1653, file: !1562, line: 124, baseType: !1569, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1653, file: !1562, line: 125, baseType: !1571, size: 32, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1653, file: !1562, line: 132, baseType: !1573, size: 32, offset: 224)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1653, file: !1562, line: 133, baseType: !1575, size: 32, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1653, file: !1562, line: 135, baseType: !364, size: 32, offset: 288)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1653, file: !1562, line: 136, baseType: !1565, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1653, file: !1562, line: 137, baseType: !1314, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1653, file: !1562, line: 143, baseType: !1580, size: 64, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1653, file: !1562, line: 144, baseType: !1667, size: 64, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1315, line: 180, baseType: !444)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1653, file: !1562, line: 152, baseType: !1584, size: 128, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1653, file: !1562, line: 153, baseType: !1584, size: 128, offset: 704)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1653, file: !1562, line: 154, baseType: !1584, size: 128, offset: 832)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1653, file: !1562, line: 164, baseType: !1594, size: 192, offset: 960)
!1672 = !{!1673, !1674}
!1673 = !DILocalVariable(name: "__path", arg: 1, scope: !1649, file: !1557, line: 502, type: !369)
!1674 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1649, file: !1557, line: 502, type: !1652)
!1675 = !DILocation(line: 0, scope: !1649)
!1676 = !DILocation(line: 504, column: 10, scope: !1649)
!1677 = !DILocation(line: 504, column: 3, scope: !1649)
!1678 = distinct !DISubprogram(name: "lstat64", scope: !1557, file: !1557, line: 509, type: !1650, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1679)
!1679 = !{!1680, !1681}
!1680 = !DILocalVariable(name: "__path", arg: 1, scope: !1678, file: !1557, line: 509, type: !369)
!1681 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1678, file: !1557, line: 509, type: !1652)
!1682 = !DILocation(line: 0, scope: !1678)
!1683 = !DILocation(line: 511, column: 10, scope: !1678)
!1684 = !DILocation(line: 511, column: 3, scope: !1678)
!1685 = distinct !DISubprogram(name: "fstat64", scope: !1557, file: !1557, line: 516, type: !1686, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!364, !364, !1652}
!1688 = !{!1689, !1690}
!1689 = !DILocalVariable(name: "__fd", arg: 1, scope: !1685, file: !1557, line: 516, type: !364)
!1690 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1685, file: !1557, line: 516, type: !1652)
!1691 = !DILocation(line: 0, scope: !1685)
!1692 = !DILocation(line: 518, column: 10, scope: !1685)
!1693 = !DILocation(line: 518, column: 3, scope: !1685)
!1694 = distinct !DISubprogram(name: "fstatat64", scope: !1557, file: !1557, line: 523, type: !1695, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!364, !364, !369, !1652, !364}
!1697 = !{!1698, !1699, !1700, !1701}
!1698 = !DILocalVariable(name: "__fd", arg: 1, scope: !1694, file: !1557, line: 523, type: !364)
!1699 = !DILocalVariable(name: "__filename", arg: 2, scope: !1694, file: !1557, line: 523, type: !369)
!1700 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1694, file: !1557, line: 523, type: !1652)
!1701 = !DILocalVariable(name: "__flag", arg: 4, scope: !1694, file: !1557, line: 523, type: !364)
!1702 = !DILocation(line: 0, scope: !1694)
!1703 = !DILocation(line: 526, column: 10, scope: !1694)
!1704 = !DILocation(line: 526, column: 3, scope: !1694)
!1705 = distinct !DISubprogram(name: "register_attribute", scope: !3, file: !3, line: 196, type: !1706, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1708)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1186}
!1708 = !{!1709, !1710, !1711}
!1709 = !DILocalVariable(name: "attr", arg: 1, scope: !1705, file: !3, line: 196, type: !1186)
!1710 = !DILocalVariable(name: "str", scope: !1705, file: !3, line: 198, type: !1190)
!1711 = !DILocalVariable(name: "slot", scope: !1705, file: !3, line: 199, type: !1227)
!1712 = !DILocation(line: 0, scope: !1705)
!1713 = !DILocation(line: 198, column: 3, scope: !1705)
!1714 = !DILocation(line: 201, column: 19, scope: !1705)
!1715 = !DILocation(line: 201, column: 11, scope: !1705)
!1716 = !DILocation(line: 202, column: 28, scope: !1705)
!1717 = !DILocation(line: 202, column: 16, scope: !1705)
!1718 = !DILocation(line: 202, column: 7, scope: !1705)
!1719 = !DILocation(line: 202, column: 14, scope: !1705)
!1720 = !DILocation(line: 203, column: 36, scope: !1705)
!1721 = !DILocation(line: 204, column: 8, scope: !1705)
!1722 = !DILocation(line: 203, column: 10, scope: !1705)
!1723 = !DILocation(line: 206, column: 3, scope: !1705)
!1724 = !DILocation(line: 207, column: 9, scope: !1705)
!1725 = !DILocation(line: 208, column: 1, scope: !1705)
!1726 = distinct !DISubprogram(name: "substring_hash", scope: !3, file: !3, line: 82, type: !1727, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1215, !369, !364}
!1729 = !{!1730, !1731}
!1730 = !DILocalVariable(name: "str", arg: 1, scope: !1726, file: !3, line: 82, type: !369)
!1731 = !DILocalVariable(name: "l", arg: 2, scope: !1726, file: !3, line: 82, type: !364)
!1732 = !DILocation(line: 0, scope: !1726)
!1733 = !DILocation(line: 84, column: 10, scope: !1726)
!1734 = !DILocation(line: 84, column: 25, scope: !1726)
!1735 = !DILocation(line: 84, column: 19, scope: !1726)
!1736 = !DILocation(line: 84, column: 30, scope: !1726)
!1737 = !DILocation(line: 84, column: 17, scope: !1726)
!1738 = !DILocation(line: 84, column: 40, scope: !1726)
!1739 = !DILocation(line: 84, column: 36, scope: !1726)
!1740 = !DILocation(line: 84, column: 3, scope: !1726)
!1741 = distinct !DISubprogram(name: "lookup_attribute_spec", scope: !3, file: !3, line: 213, type: !1742, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1186, !388}
!1744 = !{!1745, !1746}
!1745 = !DILocalVariable(name: "name", arg: 1, scope: !1741, file: !3, line: 213, type: !388)
!1746 = !DILocalVariable(name: "attr", scope: !1741, file: !3, line: 215, type: !1190)
!1747 = !DILocation(line: 0, scope: !1741)
!1748 = !DILocation(line: 215, column: 3, scope: !1741)
!1749 = !DILocation(line: 217, column: 14, scope: !1741)
!1750 = !DILocation(line: 217, column: 12, scope: !1741)
!1751 = !DILocation(line: 218, column: 17, scope: !1741)
!1752 = !DILocation(line: 218, column: 8, scope: !1741)
!1753 = !DILocation(line: 218, column: 15, scope: !1741)
!1754 = !DILocation(line: 219, column: 3, scope: !1741)
!1755 = !DILocation(line: 221, column: 26, scope: !1741)
!1756 = !DILocation(line: 222, column: 26, scope: !1741)
!1757 = !DILocation(line: 222, column: 36, scope: !1741)
!1758 = !DILocation(line: 222, column: 5, scope: !1741)
!1759 = !DILocation(line: 221, column: 5, scope: !1741)
!1760 = !DILocation(line: 220, column: 10, scope: !1741)
!1761 = !DILocation(line: 223, column: 1, scope: !1741)
!1762 = !DILocation(line: 220, column: 3, scope: !1741)
!1763 = distinct !DISubprogram(name: "extract_attribute_substring", scope: !3, file: !3, line: 69, type: !1764, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1767 = !{!1768}
!1768 = !DILocalVariable(name: "str", arg: 1, scope: !1763, file: !3, line: 69, type: !1766)
!1769 = !DILocation(line: 0, scope: !1763)
!1770 = !DILocation(line: 71, column: 12, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 71, column: 7)
!1772 = !DILocation(line: 71, column: 19, scope: !1771)
!1773 = !DILocation(line: 71, column: 23, scope: !1771)
!1774 = !DILocation(line: 71, column: 31, scope: !1771)
!1775 = !DILocation(line: 71, column: 26, scope: !1771)
!1776 = !DILocation(line: 71, column: 38, scope: !1771)
!1777 = !DILocation(line: 71, column: 45, scope: !1771)
!1778 = !DILocation(line: 71, column: 48, scope: !1771)
!1779 = !DILocation(line: 71, column: 60, scope: !1771)
!1780 = !DILocation(line: 72, column: 7, scope: !1771)
!1781 = !DILocation(line: 72, column: 31, scope: !1771)
!1782 = !DILocation(line: 72, column: 10, scope: !1771)
!1783 = !DILocation(line: 72, column: 36, scope: !1771)
!1784 = !DILocation(line: 72, column: 43, scope: !1771)
!1785 = !DILocation(line: 72, column: 67, scope: !1771)
!1786 = !DILocation(line: 72, column: 46, scope: !1771)
!1787 = !DILocation(line: 72, column: 72, scope: !1771)
!1788 = !DILocation(line: 71, column: 7, scope: !1763)
!1789 = !DILocation(line: 74, column: 19, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 73, column: 5)
!1791 = !DILocation(line: 75, column: 16, scope: !1790)
!1792 = !DILocation(line: 76, column: 5, scope: !1790)
!1793 = !DILocation(line: 77, column: 1, scope: !1763)
!1794 = distinct !DISubprogram(name: "decl_attributes", scope: !3, file: !3, line: 235, type: !1795, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!388, !901, !388, !364}
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1806, !1807, !1810, !1811, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1824, !1825}
!1798 = !DILocalVariable(name: "node", arg: 1, scope: !1794, file: !3, line: 235, type: !901)
!1799 = !DILocalVariable(name: "attributes", arg: 2, scope: !1794, file: !3, line: 235, type: !388)
!1800 = !DILocalVariable(name: "flags", arg: 3, scope: !1794, file: !3, line: 235, type: !364)
!1801 = !DILocalVariable(name: "a", scope: !1794, file: !3, line: 237, type: !388)
!1802 = !DILocalVariable(name: "returned_attrs", scope: !1794, file: !3, line: 238, type: !388)
!1803 = !DILocalVariable(name: "cur_attr", scope: !1804, file: !3, line: 250, type: !388)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 249, column: 5)
!1805 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 248, column: 7)
!1806 = !DILocalVariable(name: "opts", scope: !1804, file: !3, line: 251, type: !388)
!1807 = !DILocalVariable(name: "cur_attr", scope: !1808, file: !3, line: 272, type: !388)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 271, column: 5)
!1809 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 267, column: 7)
!1810 = !DILocalVariable(name: "opts", scope: !1808, file: !3, line: 273, type: !388)
!1811 = !DILocalVariable(name: "name", scope: !1812, file: !3, line: 285, type: !388)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 284, column: 5)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 283, column: 3)
!1814 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 283, column: 3)
!1815 = !DILocalVariable(name: "args", scope: !1812, file: !3, line: 286, type: !388)
!1816 = !DILocalVariable(name: "anode", scope: !1812, file: !3, line: 287, type: !901)
!1817 = !DILocalVariable(name: "spec", scope: !1812, file: !3, line: 288, type: !1186)
!1818 = !DILocalVariable(name: "no_add_attrs", scope: !1812, file: !3, line: 289, type: !363)
!1819 = !DILocalVariable(name: "fn_ptr_quals", scope: !1812, file: !3, line: 290, type: !364)
!1820 = !DILocalVariable(name: "fn_ptr_tmp", scope: !1812, file: !3, line: 291, type: !388)
!1821 = !DILocalVariable(name: "old_attrs", scope: !1822, file: !3, line: 401, type: !388)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 400, column: 2)
!1823 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 399, column: 11)
!1824 = !DILocalVariable(name: "a", scope: !1822, file: !3, line: 402, type: !388)
!1825 = !DILocalVariable(name: "variant", scope: !1826, file: !3, line: 429, type: !388)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 428, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 427, column: 9)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 423, column: 3)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 422, column: 17)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 420, column: 12)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 418, column: 6)
!1832 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 417, column: 8)
!1833 = !DILocation(line: 0, scope: !1794)
!1834 = !DILocation(line: 240, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 240, column: 7)
!1836 = !DILocation(line: 240, column: 28, scope: !1835)
!1837 = !DILocation(line: 240, column: 25, scope: !1835)
!1838 = !DILocation(line: 240, column: 7, scope: !1794)
!1839 = !DILocation(line: 243, column: 8, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 243, column: 7)
!1841 = !DILocation(line: 243, column: 7, scope: !1794)
!1842 = !DILocation(line: 248, column: 7, scope: !1805)
!1843 = !DILocation(line: 244, column: 5, scope: !1840)
!1844 = !DILocation(line: 0, scope: !1805)
!1845 = !DILocation(line: 248, column: 25, scope: !1805)
!1846 = !DILocation(line: 248, column: 45, scope: !1805)
!1847 = !DILocation(line: 248, column: 42, scope: !1805)
!1848 = !DILocation(line: 250, column: 23, scope: !1804)
!1849 = !DILocation(line: 0, scope: !1804)
!1850 = !DILocation(line: 251, column: 30, scope: !1804)
!1851 = !DILocation(line: 251, column: 19, scope: !1804)
!1852 = !DILocation(line: 253, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 253, column: 11)
!1854 = !DILocation(line: 253, column: 11, scope: !1804)
!1855 = !DILocation(line: 255, column: 6, scope: !1853)
!1856 = !DILocation(line: 255, column: 4, scope: !1853)
!1857 = !DILocation(line: 254, column: 2, scope: !1853)
!1858 = !DILocation(line: 257, column: 41, scope: !1853)
!1859 = !DILocation(line: 257, column: 26, scope: !1853)
!1860 = !DILocation(line: 257, column: 24, scope: !1853)
!1861 = !DILocation(line: 260, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 260, column: 7)
!1863 = !DILocation(line: 260, column: 25, scope: !1862)
!1864 = !DILocation(line: 261, column: 7, scope: !1862)
!1865 = !DILocation(line: 261, column: 10, scope: !1862)
!1866 = !DILocation(line: 261, column: 39, scope: !1862)
!1867 = !DILocation(line: 261, column: 36, scope: !1862)
!1868 = !DILocation(line: 262, column: 7, scope: !1862)
!1869 = !DILocation(line: 262, column: 11, scope: !1862)
!1870 = !DILocation(line: 260, column: 7, scope: !1794)
!1871 = !DILocation(line: 263, column: 49, scope: !1862)
!1872 = !DILocation(line: 267, column: 7, scope: !1809)
!1873 = !DILocation(line: 263, column: 5, scope: !1862)
!1874 = !DILocation(line: 267, column: 25, scope: !1809)
!1875 = !DILocation(line: 268, column: 10, scope: !1809)
!1876 = !DILocation(line: 268, column: 7, scope: !1809)
!1877 = !DILocation(line: 269, column: 32, scope: !1809)
!1878 = !DILocation(line: 269, column: 10, scope: !1809)
!1879 = !DILocation(line: 267, column: 7, scope: !1794)
!1880 = !DILocation(line: 272, column: 23, scope: !1808)
!1881 = !DILocation(line: 0, scope: !1808)
!1882 = !DILocation(line: 273, column: 30, scope: !1808)
!1883 = !DILocation(line: 273, column: 19, scope: !1808)
!1884 = !DILocation(line: 275, column: 13, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 275, column: 11)
!1886 = !DILocation(line: 275, column: 11, scope: !1808)
!1887 = !DILocation(line: 276, column: 15, scope: !1885)
!1888 = !DILocation(line: 276, column: 13, scope: !1885)
!1889 = !DILocation(line: 276, column: 2, scope: !1885)
!1890 = !DILocation(line: 278, column: 41, scope: !1885)
!1891 = !DILocation(line: 278, column: 26, scope: !1885)
!1892 = !DILocation(line: 278, column: 24, scope: !1885)
!1893 = !DILocation(line: 281, column: 11, scope: !1794)
!1894 = !DILocation(line: 281, column: 30, scope: !1794)
!1895 = !DILocation(line: 281, column: 3, scope: !1794)
!1896 = !DILocation(line: 0, scope: !1812)
!1897 = !DILocation(line: 0, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 347, column: 6)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 344, column: 8)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 343, column: 2)
!1901 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 341, column: 11)
!1902 = !DILocation(line: 0, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 460, column: 6)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 457, column: 8)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 451, column: 2)
!1906 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 450, column: 11)
!1907 = !DILocation(line: 283, column: 8, scope: !1814)
!1908 = !DILocation(line: 238, column: 8, scope: !1794)
!1909 = !DILocation(line: 0, scope: !1814)
!1910 = !DILocation(line: 283, column: 3, scope: !1814)
!1911 = !DILocation(line: 285, column: 19, scope: !1812)
!1912 = !DILocation(line: 286, column: 19, scope: !1812)
!1913 = !DILocation(line: 288, column: 43, scope: !1812)
!1914 = !DILocation(line: 289, column: 7, scope: !1812)
!1915 = !DILocation(line: 289, column: 12, scope: !1812)
!1916 = !DILocation(line: 291, column: 7, scope: !1812)
!1917 = !DILocation(line: 291, column: 12, scope: !1812)
!1918 = !DILocation(line: 293, column: 16, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 293, column: 11)
!1920 = !DILocation(line: 293, column: 11, scope: !1812)
!1921 = !DILocation(line: 295, column: 4, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 294, column: 2)
!1923 = !DILocation(line: 297, column: 4, scope: !1922)
!1924 = !DILocation(line: 299, column: 16, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 299, column: 16)
!1926 = !DILocation(line: 299, column: 43, scope: !1925)
!1927 = !DILocation(line: 299, column: 35, scope: !1925)
!1928 = !DILocation(line: 300, column: 9, scope: !1925)
!1929 = !DILocation(line: 300, column: 19, scope: !1925)
!1930 = !DILocation(line: 300, column: 30, scope: !1925)
!1931 = !DILocation(line: 301, column: 6, scope: !1925)
!1932 = !DILocation(line: 301, column: 9, scope: !1925)
!1933 = !DILocation(line: 301, column: 36, scope: !1925)
!1934 = !DILocation(line: 301, column: 28, scope: !1925)
!1935 = !DILocation(line: 299, column: 16, scope: !1919)
!1936 = !DILocation(line: 303, column: 4, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 302, column: 2)
!1938 = !DILocation(line: 305, column: 4, scope: !1937)
!1939 = !DILocation(line: 307, column: 7, scope: !1812)
!1940 = !DILocation(line: 309, column: 17, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 309, column: 11)
!1942 = !DILocation(line: 309, column: 11, scope: !1941)
!1943 = !DILocation(line: 309, column: 31, scope: !1941)
!1944 = !DILocation(line: 309, column: 35, scope: !1941)
!1945 = !DILocation(line: 309, column: 11, scope: !1812)
!1946 = !DILocation(line: 311, column: 14, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 311, column: 8)
!1948 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 310, column: 2)
!1949 = !DILocation(line: 311, column: 8, scope: !1948)
!1950 = !DILocation(line: 316, column: 25, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 314, column: 6)
!1952 = !DILocation(line: 317, column: 8, scope: !1951)
!1953 = !DILocation(line: 321, column: 8, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 320, column: 6)
!1955 = !DILocation(line: 323, column: 8, scope: !1954)
!1956 = !DILocation(line: 331, column: 17, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 331, column: 11)
!1958 = !DILocation(line: 331, column: 11, scope: !1957)
!1959 = !DILocation(line: 331, column: 31, scope: !1957)
!1960 = !DILocation(line: 331, column: 34, scope: !1957)
!1961 = !DILocation(line: 331, column: 11, scope: !1812)
!1962 = !DILocation(line: 333, column: 13, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 332, column: 2)
!1964 = !DILocation(line: 335, column: 10, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 335, column: 8)
!1966 = !DILocation(line: 335, column: 29, scope: !1965)
!1967 = !DILocation(line: 336, column: 3, scope: !1965)
!1968 = !DILocation(line: 336, column: 16, scope: !1965)
!1969 = !DILocation(line: 336, column: 13, scope: !1965)
!1970 = !DILocation(line: 335, column: 8, scope: !1963)
!1971 = !DILocation(line: 338, column: 12, scope: !1965)
!1972 = !DILocation(line: 338, column: 6, scope: !1965)
!1973 = !DILocation(line: 341, column: 17, scope: !1901)
!1974 = !DILocation(line: 341, column: 11, scope: !1901)
!1975 = !DILocation(line: 341, column: 40, scope: !1901)
!1976 = !DILocation(line: 0, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 379, column: 11)
!1978 = !DILocation(line: 379, column: 11, scope: !1977)
!1979 = !DILocation(line: 341, column: 43, scope: !1901)
!1980 = !DILocation(line: 341, column: 62, scope: !1901)
!1981 = !DILocation(line: 342, column: 4, scope: !1901)
!1982 = !DILocation(line: 342, column: 26, scope: !1901)
!1983 = !DILocation(line: 341, column: 11, scope: !1812)
!1984 = !DILocation(line: 344, column: 27, scope: !1899)
!1985 = !DILocation(line: 345, column: 8, scope: !1899)
!1986 = !DILocation(line: 345, column: 12, scope: !1899)
!1987 = !DILocation(line: 345, column: 43, scope: !1899)
!1988 = !DILocation(line: 346, column: 5, scope: !1899)
!1989 = !DILocation(line: 346, column: 39, scope: !1899)
!1990 = !DILocation(line: 344, column: 8, scope: !1900)
!1991 = !DILocation(line: 357, column: 19, scope: !1898)
!1992 = !DILocation(line: 358, column: 23, scope: !1898)
!1993 = !DILocation(line: 360, column: 14, scope: !1898)
!1994 = !DILocation(line: 0, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 369, column: 8)
!1996 = !DILocation(line: 369, column: 8, scope: !1995)
!1997 = !DILocation(line: 369, column: 27, scope: !1995)
!1998 = !DILocation(line: 361, column: 6, scope: !1898)
!1999 = !DILocation(line: 362, column: 19, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 362, column: 13)
!2001 = !DILocation(line: 362, column: 13, scope: !1899)
!2002 = !DILocation(line: 365, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 363, column: 6)
!2004 = !DILocation(line: 366, column: 8, scope: !2003)
!2005 = !DILocation(line: 370, column: 8, scope: !1995)
!2006 = !DILocation(line: 370, column: 30, scope: !1995)
!2007 = !DILocation(line: 369, column: 8, scope: !1900)
!2008 = !DILocation(line: 372, column: 8, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 371, column: 6)
!2010 = !DILocation(line: 375, column: 8, scope: !2009)
!2011 = !DILocation(line: 380, column: 14, scope: !1977)
!2012 = !DILocation(line: 380, column: 4, scope: !1977)
!2013 = !DILocation(line: 381, column: 7, scope: !1977)
!2014 = !DILocation(line: 381, column: 26, scope: !1977)
!2015 = !DILocation(line: 379, column: 11, scope: !1812)
!2016 = !DILocation(line: 383, column: 4, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 382, column: 2)
!2018 = !DILocation(line: 384, column: 4, scope: !2017)
!2019 = !DILocation(line: 387, column: 17, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 387, column: 11)
!2021 = !DILocation(line: 387, column: 25, scope: !2020)
!2022 = !DILocation(line: 387, column: 11, scope: !1812)
!2023 = !DILocation(line: 388, column: 28, scope: !2020)
!2024 = !DILocation(line: 388, column: 19, scope: !2020)
!2025 = !DILocation(line: 393, column: 17, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 393, column: 11)
!2027 = !DILocation(line: 388, column: 2, scope: !2020)
!2028 = !DILocation(line: 393, column: 11, scope: !2026)
!2029 = !DILocation(line: 393, column: 31, scope: !2026)
!2030 = !DILocation(line: 393, column: 34, scope: !2026)
!2031 = !DILocation(line: 394, column: 4, scope: !2026)
!2032 = !DILocation(line: 394, column: 26, scope: !2026)
!2033 = !DILocation(line: 395, column: 8, scope: !2026)
!2034 = !DILocation(line: 395, column: 29, scope: !2026)
!2035 = !DILocation(line: 396, column: 8, scope: !2026)
!2036 = !DILocation(line: 396, column: 29, scope: !2026)
!2037 = !DILocation(line: 393, column: 11, scope: !1812)
!2038 = !DILocation(line: 397, column: 2, scope: !2026)
!2039 = !DILocation(line: 399, column: 12, scope: !1823)
!2040 = !DILocation(line: 399, column: 11, scope: !1812)
!2041 = !DILocation(line: 404, column: 8, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 404, column: 8)
!2043 = !DILocation(line: 404, column: 8, scope: !1822)
!2044 = !DILocation(line: 405, column: 18, scope: !2042)
!2045 = !DILocation(line: 405, column: 6, scope: !2042)
!2046 = !DILocation(line: 407, column: 18, scope: !2042)
!2047 = !DILocation(line: 0, scope: !2042)
!2048 = !DILocation(line: 0, scope: !1822)
!2049 = !DILocation(line: 409, column: 37, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 409, column: 4)
!2051 = !DILocation(line: 409, column: 13, scope: !2050)
!2052 = !DILocation(line: 409, column: 9, scope: !2050)
!2053 = !DILocation(line: 0, scope: !2050)
!2054 = !DILocation(line: 409, column: 4, scope: !2050)
!2055 = !DILocation(line: 413, column: 30, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 413, column: 12)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 412, column: 6)
!2058 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 409, column: 4)
!2059 = !DILocation(line: 413, column: 12, scope: !2056)
!2060 = !DILocation(line: 413, column: 52, scope: !2056)
!2061 = !DILocation(line: 413, column: 12, scope: !2057)
!2062 = !DILocation(line: 411, column: 37, scope: !2058)
!2063 = !DILocation(line: 411, column: 43, scope: !2058)
!2064 = !DILocation(line: 411, column: 13, scope: !2058)
!2065 = !DILocation(line: 409, column: 4, scope: !2058)
!2066 = distinct !{!2066, !2054, !2067}
!2067 = !DILocation(line: 415, column: 6, scope: !2050)
!2068 = !DILocation(line: 417, column: 8, scope: !1822)
!2069 = !DILocation(line: 420, column: 12, scope: !1830)
!2070 = !DILocation(line: 420, column: 12, scope: !1831)
!2071 = !DILocation(line: 421, column: 30, scope: !1830)
!2072 = !DILocation(line: 421, column: 3, scope: !1830)
!2073 = !DILocation(line: 421, column: 28, scope: !1830)
!2074 = !DILocation(line: 422, column: 23, scope: !1829)
!2075 = !DILocation(line: 422, column: 17, scope: !1830)
!2076 = !DILocation(line: 424, column: 32, scope: !1828)
!2077 = !DILocation(line: 424, column: 5, scope: !1828)
!2078 = !DILocation(line: 424, column: 30, scope: !1828)
!2079 = !DILocation(line: 427, column: 9, scope: !1827)
!2080 = !DILocation(line: 427, column: 19, scope: !1827)
!2081 = !DILocation(line: 427, column: 16, scope: !1827)
!2082 = !DILocation(line: 427, column: 9, scope: !1828)
!2083 = !DILocation(line: 430, column: 14, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 430, column: 9)
!2085 = !DILocation(line: 0, scope: !2084)
!2086 = !DILocation(line: 0, scope: !1826)
!2087 = !DILocation(line: 430, column: 9, scope: !2084)
!2088 = !DILocation(line: 433, column: 10, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 433, column: 10)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 432, column: 4)
!2091 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 430, column: 9)
!2092 = !DILocation(line: 433, column: 36, scope: !2089)
!2093 = !DILocation(line: 433, column: 10, scope: !2090)
!2094 = !DILocation(line: 435, column: 12, scope: !2089)
!2095 = !DILocation(line: 435, column: 10, scope: !2089)
!2096 = !DILocation(line: 434, column: 8, scope: !2089)
!2097 = !DILocation(line: 437, column: 15, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 436, column: 15)
!2099 = !DILocation(line: 436, column: 16, scope: !2098)
!2100 = !DILocation(line: 436, column: 15, scope: !2089)
!2101 = !DILocation(line: 438, column: 36, scope: !2098)
!2102 = !DILocation(line: 438, column: 34, scope: !2098)
!2103 = !DILocation(line: 438, column: 8, scope: !2098)
!2104 = !DILocation(line: 431, column: 17, scope: !2091)
!2105 = !DILocation(line: 430, column: 9, scope: !2091)
!2106 = distinct !{!2106, !2087, !2107}
!2107 = !DILocation(line: 440, column: 4, scope: !2084)
!2108 = !DILocation(line: 445, column: 14, scope: !1829)
!2109 = !DILocation(line: 444, column: 12, scope: !1829)
!2110 = !DILocation(line: 444, column: 10, scope: !1829)
!2111 = !DILocation(line: 450, column: 11, scope: !1906)
!2112 = !DILocation(line: 450, column: 11, scope: !1812)
!2113 = !DILocation(line: 454, column: 17, scope: !1905)
!2114 = !DILocation(line: 454, column: 15, scope: !1905)
!2115 = !DILocation(line: 455, column: 8, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 455, column: 8)
!2117 = !DILocation(line: 455, column: 8, scope: !1905)
!2118 = !DILocation(line: 456, column: 19, scope: !2116)
!2119 = !DILocation(line: 456, column: 17, scope: !2116)
!2120 = !DILocation(line: 456, column: 6, scope: !2116)
!2121 = !DILocation(line: 457, column: 8, scope: !1904)
!2122 = !DILocation(line: 457, column: 8, scope: !1905)
!2123 = !DILocation(line: 458, column: 6, scope: !1904)
!2124 = !DILocation(line: 458, column: 24, scope: !1904)
!2125 = !DILocation(line: 461, column: 8, scope: !1903)
!2126 = !DILocation(line: 462, column: 16, scope: !1903)
!2127 = !DILocation(line: 462, column: 14, scope: !1903)
!2128 = !DILocation(line: 465, column: 5, scope: !1813)
!2129 = !DILocation(line: 283, column: 31, scope: !1813)
!2130 = !DILocation(line: 283, column: 3, scope: !1813)
!2131 = distinct !{!2131, !1910, !2132}
!2132 = !DILocation(line: 465, column: 5, scope: !1814)
!2133 = !DILocation(line: 468, column: 1, scope: !1794)
!2134 = distinct !DISubprogram(name: "init_attributes", scope: !3, file: !3, line: 113, type: !2135, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null}
!2137 = !{!2138, !2139}
!2138 = !DILocalVariable(name: "i", scope: !2134, file: !3, line: 115, type: !1229)
!2139 = !DILocalVariable(name: "k", scope: !2134, file: !3, line: 116, type: !364)
!2140 = !DILocation(line: 118, column: 36, scope: !2134)
!2141 = !DILocation(line: 118, column: 23, scope: !2134)
!2142 = !DILocation(line: 119, column: 36, scope: !2134)
!2143 = !DILocation(line: 119, column: 23, scope: !2134)
!2144 = !DILocation(line: 120, column: 36, scope: !2134)
!2145 = !DILocation(line: 120, column: 23, scope: !2134)
!2146 = !DILocation(line: 121, column: 33, scope: !2134)
!2147 = !DILocation(line: 121, column: 23, scope: !2134)
!2148 = !DILocation(line: 0, scope: !2134)
!2149 = !DILocation(line: 124, column: 8, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 124, column: 3)
!2151 = !DILocation(line: 0, scope: !2150)
!2152 = !DILocation(line: 124, column: 17, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 124, column: 3)
!2154 = !DILocation(line: 124, column: 3, scope: !2150)
!2155 = !DILocation(line: 125, column: 9, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 125, column: 9)
!2157 = !DILocation(line: 125, column: 29, scope: !2156)
!2158 = !DILocation(line: 125, column: 9, scope: !2153)
!2159 = !DILocation(line: 126, column: 27, scope: !2156)
!2160 = !DILocation(line: 126, column: 7, scope: !2156)
!2161 = !DILocation(line: 124, column: 51, scope: !2153)
!2162 = !DILocation(line: 124, column: 3, scope: !2153)
!2163 = distinct !{!2163, !2154, !2164}
!2164 = !DILocation(line: 126, column: 29, scope: !2150)
!2165 = !DILocation(line: 183, column: 20, scope: !2134)
!2166 = !DILocation(line: 183, column: 18, scope: !2134)
!2167 = !DILocation(line: 184, column: 8, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 184, column: 3)
!2169 = !DILocation(line: 0, scope: !2168)
!2170 = !DILocation(line: 184, column: 17, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 184, column: 3)
!2172 = !DILocation(line: 184, column: 3, scope: !2168)
!2173 = !DILocation(line: 0, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 185, column: 5)
!2175 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 185, column: 5)
!2176 = !DILocation(line: 185, column: 5, scope: !2175)
!2177 = !DILocation(line: 0, scope: !2175)
!2178 = !DILocation(line: 185, column: 17, scope: !2174)
!2179 = !DILocation(line: 185, column: 40, scope: !2174)
!2180 = !DILocation(line: 185, column: 45, scope: !2174)
!2181 = !DILocation(line: 187, column: 30, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 186, column: 7)
!2183 = !DILocation(line: 187, column: 9, scope: !2182)
!2184 = !DILocation(line: 185, column: 55, scope: !2174)
!2185 = !DILocation(line: 185, column: 5, scope: !2174)
!2186 = distinct !{!2186, !2176, !2187}
!2187 = !DILocation(line: 188, column: 7, scope: !2175)
!2188 = !DILocation(line: 184, column: 51, scope: !2171)
!2189 = !DILocation(line: 184, column: 3, scope: !2171)
!2190 = distinct !{!2190, !2172, !2191}
!2191 = !DILocation(line: 188, column: 7, scope: !2168)
!2192 = !DILocation(line: 189, column: 3, scope: !2134)
!2193 = !DILocation(line: 190, column: 26, scope: !2134)
!2194 = !DILocation(line: 191, column: 1, scope: !2134)
!2195 = distinct !DISubprogram(name: "hash_attr", scope: !3, file: !3, line: 90, type: !1213, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2196)
!2196 = !{!2197, !2198, !2200}
!2197 = !DILocalVariable(name: "p", arg: 1, scope: !2195, file: !3, line: 90, type: !679)
!2198 = !DILocalVariable(name: "spec", scope: !2195, file: !3, line: 92, type: !2199)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1186)
!2200 = !DILocalVariable(name: "l", scope: !2195, file: !3, line: 93, type: !377)
!2201 = !DILocation(line: 0, scope: !2195)
!2202 = !DILocation(line: 93, column: 31, scope: !2195)
!2203 = !DILocation(line: 93, column: 17, scope: !2195)
!2204 = !DILocation(line: 95, column: 32, scope: !2195)
!2205 = !DILocation(line: 95, column: 10, scope: !2195)
!2206 = !DILocation(line: 95, column: 3, scope: !2195)
!2207 = distinct !DISubprogram(name: "eq_attr", scope: !3, file: !3, line: 101, type: !1219, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2208 = !{!2209, !2210, !2211, !2212}
!2209 = !DILocalVariable(name: "p", arg: 1, scope: !2207, file: !3, line: 101, type: !679)
!2210 = !DILocalVariable(name: "q", arg: 2, scope: !2207, file: !3, line: 101, type: !679)
!2211 = !DILocalVariable(name: "spec", scope: !2207, file: !3, line: 103, type: !2199)
!2212 = !DILocalVariable(name: "str", scope: !2207, file: !3, line: 104, type: !2213)
!2213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!2214 = !DILocation(line: 0, scope: !2207)
!2215 = !DILocation(line: 106, column: 27, scope: !2207)
!2216 = !DILocation(line: 106, column: 38, scope: !2207)
!2217 = !DILocation(line: 106, column: 48, scope: !2207)
!2218 = !DILocation(line: 106, column: 43, scope: !2207)
!2219 = !DILocation(line: 106, column: 12, scope: !2207)
!2220 = !DILocation(line: 106, column: 56, scope: !2207)
!2221 = !DILocation(line: 106, column: 66, scope: !2207)
!2222 = !DILocation(line: 106, column: 76, scope: !2207)
!2223 = !DILocation(line: 106, column: 60, scope: !2207)
!2224 = !DILocation(line: 106, column: 59, scope: !2207)
!2225 = !DILocation(line: 106, column: 3, scope: !2207)
