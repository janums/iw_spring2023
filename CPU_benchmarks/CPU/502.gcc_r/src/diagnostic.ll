; ModuleID = 'diagnostic.bc'
source_filename = "diagnostic.c"
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
%struct.function = type opaque
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.gimple_seq_d = type opaque
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8* (i8*, i64)* }
%struct.cl_option = type { i8*, i8*, i16, i8, i32, i32, i8*, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.expanded_location = type { i8*, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@global_diagnostic_context = internal global %struct.diagnostic_context zeroinitializer, align 8, !dbg !0
@global_dc = dso_local local_unnamed_addr global %struct.diagnostic_context* @global_diagnostic_context, align 8, !dbg !1066
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@diagnostic_build_prefix.diagnostic_kind_text = internal unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)], align 16, !dbg !1123
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fatal error: \00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"benchmark internal error: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"error: \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"sorry, unimplemented: \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"warning: \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"anachronism: \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"note: \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"debug: \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"pedwarn: \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"permerror: \00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"must-not-happen\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"diagnostic.c\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@progname = external dso_local local_unnamed_addr global i8*, align 8
@flag_show_column = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"%s:%d:%d: %s\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@input_location = external dso_local local_unnamed_addr global i32, align 4
@line_table = external dso_local local_unnamed_addr global %struct.line_maps*, align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"In file included from %s:%d:%d\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"In file included from %s:%d\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c",\0A                 from %s:%d\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c":\00", align 1
@inhibit_warnings = external dso_local local_unnamed_addr global i32, align 4
@warn_system_headers = external dso_local local_unnamed_addr global i32, align 4
@flag_pedantic_errors = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [38 x i8] c"%s: warnings being treated as errors\0A\00", align 1
@.str.23 = private unnamed_addr constant [129 x i8] c"*** WARNING *** there are active plugins, do not report this as a bug unless you can reproduce it without enabling any plugins.\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"%s:%d: confused by earlier errors, bailing out\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@cl_options = external dso_local local_unnamed_addr constant [0 x %struct.cl_option], align 8
@.str.26 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@libiberty_concat_ptr = external dso_local local_unnamed_addr global i8*, align 8
@trim_filename.this_file = internal unnamed_addr constant [13 x i8] c"diagnostic.c\00", align 1, !dbg !1143
@flag_permissive = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c"in %s, at %s:%d\00", align 1
@flag_fatal_errors = external dso_local local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [47 x i8] c"compilation terminated due to -Wfatal-errors.\0A\00", align 1
@.str.29 = private unnamed_addr constant [453 x i8] c"The 502.gcc_r benchmark binary 'cpugcc_r' has encountered an internal error.\0AIt is possible that there is an error in the benchmark 502.gcc_r\0Asource code, but it is more likely that your compiler\0Ahas mis-optimized or otherwise generated bad code for\0Athe benchmark.  You might try reducing the optimization\0Alevel; see your compiler documentation.\0AIf you think the error is in the benchmark source code, see\0A   www.spec.org/cpu2017/Docs/techsupport.html\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"compilation terminated.\0A\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"Internal compiler error: Error reporting routines re-entered.\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1157 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1164, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1165, metadata !DIExpression()), !dbg !1166
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1167
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #7, !dbg !1168
  ret i32 %call, !dbg !1169
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1170 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1174
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #7, !dbg !1175
  ret i32 %call, !dbg !1176
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1177 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1181, metadata !DIExpression()), !dbg !1182
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1183
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1183
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1183
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1183
  %cmp = icmp uge i8* %0, %1, !dbg !1183
  %conv1 = zext i1 %cmp to i64, !dbg !1183
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1183
  %tobool = icmp eq i64 %expval, 0, !dbg !1183
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1183

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !1183
  br label %cond.end, !dbg !1183

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1183
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1183
  %2 = load i8, i8* %0, align 1, !dbg !1183
  %conv3 = zext i8 %2 to i32, !dbg !1183
  br label %cond.end, !dbg !1183

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1183
  ret i32 %cond, !dbg !1184
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1185 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1187, metadata !DIExpression()), !dbg !1188
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1189
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1189
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1189
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1189
  %cmp = icmp uge i8* %0, %1, !dbg !1189
  %conv1 = zext i1 %cmp to i64, !dbg !1189
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1189
  %tobool = icmp eq i64 %expval, 0, !dbg !1189
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1189

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !1189
  br label %cond.end, !dbg !1189

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1189
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1189
  %2 = load i8, i8* %0, align 1, !dbg !1189
  %conv3 = zext i8 %2 to i32, !dbg !1189
  br label %cond.end, !dbg !1189

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1189
  ret i32 %cond, !dbg !1190
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1191 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1192
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1192
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1192
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1192
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1192
  %cmp = icmp uge i8* %1, %2, !dbg !1192
  %conv1 = zext i1 %cmp to i64, !dbg !1192
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1192
  %tobool = icmp eq i64 %expval, 0, !dbg !1192
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1192

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #7, !dbg !1192
  br label %cond.end, !dbg !1192

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1192
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1192
  %3 = load i8, i8* %1, align 1, !dbg !1192
  %conv3 = zext i8 %3 to i32, !dbg !1192
  br label %cond.end, !dbg !1192

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1192
  ret i32 %cond, !dbg !1193
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1194 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1198, metadata !DIExpression()), !dbg !1199
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1200
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #7, !dbg !1201
  ret i32 %call, !dbg !1202
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1203 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1207, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1208, metadata !DIExpression()), !dbg !1209
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1210
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1210
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1210
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1210
  %cmp = icmp uge i8* %0, %1, !dbg !1210
  %conv1 = zext i1 %cmp to i64, !dbg !1210
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1210
  %tobool = icmp eq i64 %expval, 0, !dbg !1210
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1210

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1210
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !1210
  br label %cond.end, !dbg !1210

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1210
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1210
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1210
  store i8 %conv2, i8* %0, align 1, !dbg !1210
  %conv6 = and i32 %__c, 255, !dbg !1210
  br label %cond.end, !dbg !1210

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1210
  ret i32 %cond, !dbg !1211
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1212 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1214, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1215, metadata !DIExpression()), !dbg !1216
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1217
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1217
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1217
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1217
  %cmp = icmp uge i8* %0, %1, !dbg !1217
  %conv1 = zext i1 %cmp to i64, !dbg !1217
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1217
  %tobool = icmp eq i64 %expval, 0, !dbg !1217
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1217

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1217
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !1217
  br label %cond.end, !dbg !1217

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1217
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1217
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1217
  store i8 %conv2, i8* %0, align 1, !dbg !1217
  %conv6 = and i32 %__c, 255, !dbg !1217
  br label %cond.end, !dbg !1217

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1217
  ret i32 %cond, !dbg !1218
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1219 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1221, metadata !DIExpression()), !dbg !1222
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1223
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1223
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1223
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1223
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1223
  %cmp = icmp uge i8* %1, %2, !dbg !1223
  %conv1 = zext i1 %cmp to i64, !dbg !1223
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1223
  %tobool = icmp eq i64 %expval, 0, !dbg !1223
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1223

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1223
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #7, !dbg !1223
  br label %cond.end, !dbg !1223

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1223
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1223
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1223
  store i8 %conv4, i8* %1, align 1, !dbg !1223
  %conv6 = and i32 %__c, 255, !dbg !1223
  br label %cond.end, !dbg !1223

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1223
  ret i32 %cond, !dbg !1224
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1225 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1231, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1232, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1233, metadata !DIExpression()), !dbg !1234
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #7, !dbg !1235
  ret i64 %call, !dbg !1236
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1237 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1239, metadata !DIExpression()), !dbg !1240
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1241
  %0 = load i32, i32* %_flags, align 8, !dbg !1241
  %and = lshr i32 %0, 4, !dbg !1241
  %and.lobit = and i32 %and, 1, !dbg !1241
  ret i32 %and.lobit, !dbg !1242
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1243 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1245, metadata !DIExpression()), !dbg !1246
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1247
  %0 = load i32, i32* %_flags, align 8, !dbg !1247
  %and = lshr i32 %0, 5, !dbg !1247
  %and.lobit = and i32 %and, 1, !dbg !1247
  ret i32 %and.lobit, !dbg !1248
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1249 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1252, metadata !DIExpression()), !dbg !1253
  %__c.off = add i32 %__c, 128, !dbg !1254
  %0 = icmp ult i32 %__c.off, 384, !dbg !1254
  br i1 %0, label %cond.true, label %cond.end, !dbg !1254

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #7, !dbg !1255
  %1 = load i32*, i32** %call, align 8, !dbg !1256
  %idxprom = sext i32 %__c to i64, !dbg !1257
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1257
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1257
  br label %cond.end, !dbg !1258

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1258
  ret i32 %cond, !dbg !1259
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1260 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1262, metadata !DIExpression()), !dbg !1263
  %__c.off = add i32 %__c, 128, !dbg !1264
  %0 = icmp ult i32 %__c.off, 384, !dbg !1264
  br i1 %0, label %cond.true, label %cond.end, !dbg !1264

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #7, !dbg !1265
  %1 = load i32*, i32** %call, align 8, !dbg !1266
  %idxprom = sext i32 %__c to i64, !dbg !1267
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1267
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1267
  br label %cond.end, !dbg !1268

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1268
  ret i32 %cond, !dbg !1269
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1270 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1275, metadata !DIExpression()), !dbg !1276
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !1277
  %conv = trunc i64 %call to i32, !dbg !1278
  ret i32 %conv, !dbg !1279
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1280 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1284, metadata !DIExpression()), !dbg !1285
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !1286
  ret i64 %call, !dbg !1287
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1288 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1293, metadata !DIExpression()), !dbg !1294
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #7, !dbg !1295
  ret i64 %call, !dbg !1296
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1297 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1308, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1309, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1310, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1311, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1312, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 0, metadata !1313, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1314, metadata !DIExpression()), !dbg !1318
  br label %while.cond, !dbg !1319

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1320
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1318
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1314, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1313, metadata !DIExpression()), !dbg !1318
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1321
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1319

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1322
  %div = lshr i64 %add, 1, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %div, metadata !1315, metadata !DIExpression()), !dbg !1318
  %mul = mul i64 %div, %__size, !dbg !1325
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1316, metadata !DIExpression()), !dbg !1318
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #7, !dbg !1327
  call void @llvm.dbg.value(metadata i32 %call, metadata !1317, metadata !DIExpression()), !dbg !1318
  %cmp1 = icmp slt i32 %call, 0, !dbg !1328
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1330

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1331
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1333

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1313, metadata !DIExpression()), !dbg !1318
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1318
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1318
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1314, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1313, metadata !DIExpression()), !dbg !1318
  br label %while.cond, !dbg !1319, !llvm.loop !1335

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1318
  ret i8* %retval.0, !dbg !1337
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1338 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1344, metadata !DIExpression()), !dbg !1345
  %call = tail call double @strtod(i8* %__nptr, i8** null) #7, !dbg !1346
  ret double %call, !dbg !1347
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1348 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1357, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1358, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i32 %base, metadata !1359, metadata !DIExpression()), !dbg !1360
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #7, !dbg !1361
  ret i64 %call, !dbg !1362
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1363 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1369, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1370, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 %base, metadata !1371, metadata !DIExpression()), !dbg !1372
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #7, !dbg !1373
  ret i64 %call, !dbg !1374
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1375 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1386, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1387, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %base, metadata !1388, metadata !DIExpression()), !dbg !1389
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #7, !dbg !1390
  ret i64 %call, !dbg !1391
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1392 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1396, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1397, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i32 %base, metadata !1398, metadata !DIExpression()), !dbg !1399
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #7, !dbg !1400
  ret i64 %call, !dbg !1401
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1402 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1444, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1445, metadata !DIExpression()), !dbg !1446
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #7, !dbg !1447
  ret i32 %call, !dbg !1448
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1449 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1451, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1452, metadata !DIExpression()), !dbg !1453
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #7, !dbg !1454
  ret i32 %call, !dbg !1455
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1456 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1460, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1461, metadata !DIExpression()), !dbg !1462
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #7, !dbg !1463
  ret i32 %call, !dbg !1464
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1465 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1469, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1470, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1471, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1472, metadata !DIExpression()), !dbg !1473
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #7, !dbg !1474
  ret i32 %call, !dbg !1475
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1476 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1480, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1481, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1482, metadata !DIExpression()), !dbg !1483
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1482, metadata !DIExpression(DW_OP_deref)), !dbg !1483
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #7, !dbg !1484
  ret i32 %call, !dbg !1485
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1486 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1490, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1491, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1492, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1493, metadata !DIExpression()), !dbg !1494
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1493, metadata !DIExpression(DW_OP_deref)), !dbg !1494
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #7, !dbg !1495
  ret i32 %call, !dbg !1496
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1497 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1521, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1522, metadata !DIExpression()), !dbg !1523
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #7, !dbg !1524
  ret i32 %call, !dbg !1525
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1526 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1528, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1529, metadata !DIExpression()), !dbg !1530
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #7, !dbg !1531
  ret i32 %call, !dbg !1532
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1533 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1537, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1538, metadata !DIExpression()), !dbg !1539
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #7, !dbg !1540
  ret i32 %call, !dbg !1541
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1542 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1546, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1547, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1548, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1549, metadata !DIExpression()), !dbg !1550
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #7, !dbg !1551
  ret i32 %call, !dbg !1552
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @file_name_as_prefix(i8* %f) local_unnamed_addr #5 !dbg !1553 {
entry:
  call void @llvm.dbg.value(metadata i8* %f, metadata !1557, metadata !DIExpression()), !dbg !1558
  %call = tail call i8* (i8*, ...) @build_message_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %f) #8, !dbg !1559
  ret i8* %call, !dbg !1560
}

; Function Attrs: nounwind uwtable
define internal i8* @build_message_string(i8* %msg, ...) unnamed_addr #5 !dbg !1561 {
entry:
  %str = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %msg, metadata !1565, metadata !DIExpression()), !dbg !1568
  %0 = bitcast i8** %str to i8*, !dbg !1569
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !1569
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1570
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !1570
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !1567, metadata !DIExpression()), !dbg !1571
  call void @llvm.va_start(i8* %1), !dbg !1572
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !1573
  call void @llvm.dbg.value(metadata i8** %str, metadata !1566, metadata !DIExpression(DW_OP_deref)), !dbg !1568
  %call = call i32 @vasprintf(i8** nonnull %str, i8* %msg, %struct.__va_list_tag* nonnull %arraydecay2) #7, !dbg !1574
  call void @llvm.va_end(i8* nonnull %1), !dbg !1575
  %2 = load i8*, i8** %str, align 8, !dbg !1576
  call void @llvm.dbg.value(metadata i8* %2, metadata !1566, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !1577
  ret i8* %2, !dbg !1578
}

; Function Attrs: nounwind uwtable
define dso_local void @diagnostic_initialize(%struct.diagnostic_context* %context) local_unnamed_addr #5 !dbg !1579 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !1583, metadata !DIExpression()), !dbg !1584
  %call = tail call i8* @xmalloc(i64 56) #7, !dbg !1585
  %0 = bitcast %struct.diagnostic_context* %context to i8**, !dbg !1586
  store i8* %call, i8** %0, align 8, !dbg !1586
  %.cast = bitcast i8* %call to %struct.pretty_print_info*, !dbg !1587
  tail call void @pp_construct(%struct.pretty_print_info* %.cast, i8* null, i32 0) #7, !dbg !1588
  %1 = load i64, i64* bitcast (%struct._IO_FILE** @stderr to i64*), align 8, !dbg !1589
  %printer2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 0, !dbg !1590
  %2 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer2, align 8, !dbg !1590
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %2, i64 0, i32 0, !dbg !1591
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1591
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i64 0, i32 4, !dbg !1592
  %4 = bitcast %struct._IO_FILE** %stream to i64*, !dbg !1593
  store i64 %1, i64* %4, align 8, !dbg !1593
  %5 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer2, align 8, !dbg !1594
  %rule = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %5, i64 0, i32 5, i32 0, !dbg !1595
  store i32 0, i32* %rule, align 4, !dbg !1596
  %arraydecay = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 1, i64 0, !dbg !1597
  %6 = bitcast i32* %arraydecay to i8*, !dbg !1597
  %call4 = tail call i8* @memset(i8* nonnull %6, i32 0, i64 48) #7, !dbg !1598
  %issue_warnings_are_errors_message = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 2, !dbg !1599
  store i8 1, i8* %issue_warnings_are_errors_message, align 8, !dbg !1600
  %warning_as_error_requested = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 3, !dbg !1601
  store i8 0, i8* %warning_as_error_requested, align 1, !dbg !1602
  %arraydecay5 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 4, i64 0, !dbg !1603
  %7 = bitcast i32* %arraydecay5 to i8*, !dbg !1603
  %call6 = tail call i8* @memset(i8* nonnull %7, i32 0, i64 3480) #7, !dbg !1604
  %show_option_requested = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 5, !dbg !1605
  store i8 0, i8* %show_option_requested, align 4, !dbg !1606
  %abort_on_error = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 6, !dbg !1607
  store i8 0, i8* %abort_on_error, align 1, !dbg !1608
  %internal_error = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 9, !dbg !1609
  store void (i8*, [1 x %struct.__va_list_tag]*)* null, void (i8*, [1 x %struct.__va_list_tag]*)** %internal_error, align 8, !dbg !1610
  %begin_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 7, !dbg !1611
  store void (%struct.diagnostic_context*, %struct.diagnostic_info*)* @default_diagnostic_starter, void (%struct.diagnostic_context*, %struct.diagnostic_info*)** %begin_diagnostic, align 8, !dbg !1612
  %end_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 8, !dbg !1613
  store void (%struct.diagnostic_context*, %struct.diagnostic_info*)* @default_diagnostic_finalizer, void (%struct.diagnostic_context*, %struct.diagnostic_info*)** %end_diagnostic, align 8, !dbg !1614
  %last_module = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 11, !dbg !1615
  store %struct.line_map* null, %struct.line_map** %last_module, align 8, !dbg !1616
  %last_function = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 10, !dbg !1617
  store %union.tree_node* null, %union.tree_node** %last_function, align 8, !dbg !1618
  %lock = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 12, !dbg !1619
  store i32 0, i32* %lock, align 8, !dbg !1620
  %inhibit_notes_p = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 13, !dbg !1621
  store i8 0, i8* %inhibit_notes_p, align 4, !dbg !1622
  ret void, !dbg !1623
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local void @pp_construct(%struct.pretty_print_info*, i8*, i32) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @default_diagnostic_starter(%struct.diagnostic_context* %context, %struct.diagnostic_info* %diagnostic) #5 !dbg !1624 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !1626, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1627, metadata !DIExpression()), !dbg !1628
  tail call void @diagnostic_report_current_function(%struct.diagnostic_context* %context, %struct.diagnostic_info* %diagnostic) #8, !dbg !1629
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 0, !dbg !1630
  %0 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1630
  %call = tail call i8* @diagnostic_build_prefix(%struct.diagnostic_info* %diagnostic) #8, !dbg !1630
  tail call void @pp_base_set_prefix(%struct.pretty_print_info* %0, i8* %call) #7, !dbg !1630
  ret void, !dbg !1631
}

; Function Attrs: nounwind uwtable
define dso_local void @default_diagnostic_finalizer(%struct.diagnostic_context* %context, %struct.diagnostic_info* %diagnostic) #5 !dbg !1632 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !1634, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1635, metadata !DIExpression()), !dbg !1636
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 0, !dbg !1637
  %0 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1637
  tail call void @pp_base_destroy_prefix(%struct.pretty_print_info* %0) #7, !dbg !1637
  ret void, !dbg !1638
}

; Function Attrs: nounwind uwtable
define dso_local void @diagnostic_set_info_translated(%struct.diagnostic_info* %diagnostic, i8* %msg, [1 x %struct.__va_list_tag]* %args, i32 %location, i32 %kind) local_unnamed_addr #5 !dbg !1639 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1643, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8* %msg, metadata !1644, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata [1 x %struct.__va_list_tag]* %args, metadata !1645, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 %location, metadata !1646, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 %kind, metadata !1647, metadata !DIExpression()), !dbg !1648
  %call = tail call i32* @__errno_location() #7, !dbg !1649
  %0 = load i32, i32* %call, align 4, !dbg !1649
  %err_no = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 0, i32 2, !dbg !1650
  store i32 %0, i32* %err_no, align 8, !dbg !1651
  %args_ptr = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 0, i32 1, !dbg !1652
  store [1 x %struct.__va_list_tag]* %args, [1 x %struct.__va_list_tag]** %args_ptr, align 8, !dbg !1653
  %format_spec = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 0, i32 0, !dbg !1654
  store i8* %msg, i8** %format_spec, align 8, !dbg !1655
  %location3 = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 1, !dbg !1656
  store i32 %location, i32* %location3, align 8, !dbg !1657
  %override_column = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 2, !dbg !1658
  store i32 0, i32* %override_column, align 4, !dbg !1659
  %kind4 = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 4, !dbg !1660
  store i32 %kind, i32* %kind4, align 8, !dbg !1661
  %option_index = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !1662
  store i32 0, i32* %option_index, align 4, !dbg !1663
  ret void, !dbg !1664
}

declare dso_local i32* @__errno_location() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @diagnostic_set_info(%struct.diagnostic_info* %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* %args, i32 %location, i32 %kind) local_unnamed_addr #5 !dbg !1665 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1667, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !1668, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata [1 x %struct.__va_list_tag]* %args, metadata !1669, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i32 %location, metadata !1670, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i32 %kind, metadata !1671, metadata !DIExpression()), !dbg !1672
  tail call void @diagnostic_set_info_translated(%struct.diagnostic_info* %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* %args, i32 %location, i32 %kind) #8, !dbg !1673
  ret void, !dbg !1674
}

; Function Attrs: nounwind uwtable
define dso_local i8* @diagnostic_build_prefix(%struct.diagnostic_info* %diagnostic) local_unnamed_addr #5 !dbg !1125 {
entry:
  %s = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1129, metadata !DIExpression()), !dbg !1675
  %kind = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 4, !dbg !1676
  %0 = load i32, i32* %kind, align 8, !dbg !1676
  %idxprom = zext i32 %0 to i64, !dbg !1676
  %arrayidx = getelementptr inbounds [13 x i8*], [13 x i8*]* @diagnostic_build_prefix.diagnostic_kind_text, i64 0, i64 %idxprom, !dbg !1676
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !1676
  call void @llvm.dbg.value(metadata i8* %1, metadata !1130, metadata !DIExpression()), !dbg !1675
  %2 = bitcast %struct.expanded_location* %s to i8*, !dbg !1677
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #6, !dbg !1677
  %location = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 1, !dbg !1678
  %3 = load i32, i32* %location, align 8, !dbg !1678
  call void @llvm.dbg.value(metadata %struct.expanded_location* %s, metadata !1131, metadata !DIExpression(DW_OP_deref)), !dbg !1675
  call void @expand_location(%struct.expanded_location* nonnull sret %s, i32 %3) #7, !dbg !1679
  %override_column = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 2, !dbg !1680
  %4 = load i32, i32* %override_column, align 4, !dbg !1680
  %tobool = icmp eq i32 %4, 0, !dbg !1682
  br i1 %tobool, label %if.end, label %if.then, !dbg !1683

if.then:                                          ; preds = %entry
  %column = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 2, !dbg !1684
  store i32 %4, i32* %column, align 4, !dbg !1685
  br label %if.end, !dbg !1686

if.end:                                           ; preds = %entry, %if.then
  %5 = load i32, i32* %kind, align 8, !dbg !1687
  %cmp = icmp ult i32 %5, 12, !dbg !1687
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1687

cond.true:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !1687
  br label %cond.end, !dbg !1687

cond.end:                                         ; preds = %if.end, %cond.true
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 0, !dbg !1688
  %6 = load i8*, i8** %file, align 8, !dbg !1688
  %cmp3 = icmp eq i8* %6, null, !dbg !1689
  br i1 %cmp3, label %cond.true4, label %cond.false5, !dbg !1690

cond.true4:                                       ; preds = %cond.end
  %7 = load i8*, i8** @progname, align 8, !dbg !1691
  %call = call i8* (i8*, ...) @build_message_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %7, i8* %1) #8, !dbg !1692
  br label %cond.end17, !dbg !1690

cond.false5:                                      ; preds = %cond.end
  %8 = load i32, i32* @flag_show_column, align 4, !dbg !1693
  %tobool6 = icmp eq i32 %8, 0, !dbg !1693
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 1, !dbg !1675
  %9 = load i32, i32* %line, align 8, !dbg !1675
  br i1 %tobool6, label %cond.false11, label %cond.true7, !dbg !1693

cond.true7:                                       ; preds = %cond.false5
  %column9 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 2, !dbg !1694
  %10 = load i32, i32* %column9, align 4, !dbg !1694
  %call10 = call i8* (i8*, ...) @build_message_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* nonnull %6, i32 %9, i32 %10, i8* %1) #8, !dbg !1695
  br label %cond.end17, !dbg !1693

cond.false11:                                     ; preds = %cond.false5
  %call14 = call i8* (i8*, ...) @build_message_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* nonnull %6, i32 %9, i8* %1) #8, !dbg !1696
  br label %cond.end17, !dbg !1693

cond.end17:                                       ; preds = %cond.true7, %cond.false11, %cond.true4
  %cond18 = phi i8* [ %call, %cond.true4 ], [ %call10, %cond.true7 ], [ %call14, %cond.false11 ], !dbg !1690
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #6, !dbg !1697
  ret i8* %cond18, !dbg !1698
}

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fancy_abort(i8* %file, i32 %line, i8* %function) local_unnamed_addr #5 !dbg !1699 {
entry:
  call void @llvm.dbg.value(metadata i8* %file, metadata !1703, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %line, metadata !1704, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8* %function, metadata !1705, metadata !DIExpression()), !dbg !1706
  %call = tail call i8* @trim_filename(i8* %file) #8, !dbg !1707
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* %function, i8* %call, i32 %line) #8, !dbg !1708
  ret void, !dbg !1709
}

; Function Attrs: nounwind uwtable
define dso_local void @diagnostic_report_current_function(%struct.diagnostic_context* %context, %struct.diagnostic_info* %diagnostic) local_unnamed_addr #5 !dbg !1710 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !1712, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1713, metadata !DIExpression()), !dbg !1714
  tail call void @diagnostic_report_current_module(%struct.diagnostic_context* %context) #8, !dbg !1715
  %0 = load void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 25), align 8, !dbg !1716
  %1 = load i32, i32* @input_location, align 4, !dbg !1717
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %1) #7, !dbg !1717
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 0, !dbg !1717
  %2 = load i8*, i8** %file, align 8, !dbg !1717
  call void %0(%struct.diagnostic_context* %context, i8* %2, %struct.diagnostic_info* %diagnostic) #7, !dbg !1718
  ret void, !dbg !1719
}

; Function Attrs: nounwind uwtable
define dso_local void @diagnostic_report_current_module(%struct.diagnostic_context* %context) local_unnamed_addr #5 !dbg !1720 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !1722, metadata !DIExpression()), !dbg !1724
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 0, !dbg !1725
  %0 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1725
  %need_newline = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %0, i64 0, i32 8, !dbg !1725
  %1 = load i8, i8* %need_newline, align 1, !dbg !1725
  %tobool = icmp eq i8 %1, 0, !dbg !1725
  br i1 %tobool, label %if.end, label %if.then, !dbg !1727

if.then:                                          ; preds = %entry
  tail call void @pp_base_newline(%struct.pretty_print_info* %0) #7, !dbg !1728
  %2 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1730
  %need_newline3 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %2, i64 0, i32 8, !dbg !1730
  store i8 0, i8* %need_newline3, align 1, !dbg !1731
  br label %if.end, !dbg !1732

if.end:                                           ; preds = %entry, %if.then
  %3 = load i32, i32* @input_location, align 4, !dbg !1733
  %cmp = icmp ult i32 %3, 2, !dbg !1735
  br i1 %cmp, label %cleanup.cont, label %if.end5, !dbg !1736

if.end5:                                          ; preds = %if.end
  %4 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1737
  %call = tail call %struct.line_map* @linemap_lookup(%struct.line_maps* %4, i32 %3) #7, !dbg !1738
  call void @llvm.dbg.value(metadata %struct.line_map* %call, metadata !1723, metadata !DIExpression()), !dbg !1724
  %tobool6 = icmp eq %struct.line_map* %call, null, !dbg !1739
  br i1 %tobool6, label %cleanup.cont, label %land.lhs.true, !dbg !1741

land.lhs.true:                                    ; preds = %if.end5
  %last_module = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 11, !dbg !1742
  %5 = load %struct.line_map*, %struct.line_map** %last_module, align 8, !dbg !1742
  %cmp7 = icmp eq %struct.line_map* %5, %call, !dbg !1742
  br i1 %cmp7, label %cleanup.cont, label %if.then8, !dbg !1743

if.then8:                                         ; preds = %land.lhs.true
  store %struct.line_map* %call, %struct.line_map** %last_module, align 8, !dbg !1744
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 3, !dbg !1746
  %6 = load i32, i32* %included_from, align 8, !dbg !1746
  %cmp10 = icmp slt i32 %6, 0, !dbg !1746
  br i1 %cmp10, label %cleanup.cont, label %if.then11, !dbg !1748

if.then11:                                        ; preds = %if.then8
  %7 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1749
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %7, i64 0, i32 0, !dbg !1749
  %8 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !1749
  %idxprom = sext i32 %6 to i64, !dbg !1749
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %8, i64 %idxprom, !dbg !1749
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx, metadata !1723, metadata !DIExpression()), !dbg !1724
  %9 = load i32, i32* @flag_show_column, align 4, !dbg !1751
  %tobool13 = icmp eq i32 %9, 0, !dbg !1751
  %10 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1753
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx, i64 0, i32 0, !dbg !1753
  %11 = load i8*, i8** %to_file, align 8, !dbg !1753
  %arrayidx16 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx, i64 1, !dbg !1753
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx16, i64 0, i32 2, !dbg !1753
  %12 = load i32, i32* %start_location, align 4, !dbg !1753
  %start_location17 = getelementptr inbounds %struct.line_map, %struct.line_map* %8, i64 %idxprom, i32 2, !dbg !1753
  %13 = load i32, i32* %start_location17, align 4, !dbg !1753
  %14 = xor i32 %13, -1, !dbg !1753
  %sub18 = add i32 %12, %14, !dbg !1753
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %8, i64 %idxprom, i32 6, !dbg !1753
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !1753
  %bf.cast = zext i8 %bf.load to i32, !dbg !1753
  %notmask = shl nsw i32 -1, %bf.cast, !dbg !1753
  %and = and i32 %sub18, %notmask, !dbg !1753
  %shr = lshr i32 %and, %bf.cast, !dbg !1753
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %8, i64 %idxprom, i32 1, !dbg !1753
  %15 = load i32, i32* %to_line, align 8, !dbg !1753
  %add26 = add i32 %shr, %15, !dbg !1753
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !1754

if.then14:                                        ; preds = %if.then11
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %11, i32 %add26, i32 0) #7, !dbg !1755
  br label %if.end73, !dbg !1755

if.else:                                          ; preds = %if.then11
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8* %11, i32 %add26) #7, !dbg !1756
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.then14
  br label %while.cond, !dbg !1757

while.cond:                                       ; preds = %while.body, %if.end73
  %map.0 = phi %struct.line_map* [ %arrayidx, %if.end73 ], [ %arrayidx79, %while.body ], !dbg !1758
  call void @llvm.dbg.value(metadata %struct.line_map* %map.0, metadata !1723, metadata !DIExpression()), !dbg !1724
  %included_from74 = getelementptr inbounds %struct.line_map, %struct.line_map* %map.0, i64 0, i32 3, !dbg !1759
  %16 = load i32, i32* %included_from74, align 8, !dbg !1759
  %cmp75 = icmp sgt i32 %16, -1, !dbg !1759
  br i1 %cmp75, label %while.body, label %while.end, !dbg !1757

while.body:                                       ; preds = %while.cond
  %17 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1760
  %maps76 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %17, i64 0, i32 0, !dbg !1760
  %18 = load %struct.line_map*, %struct.line_map** %maps76, align 8, !dbg !1760
  %idxprom78 = sext i32 %16 to i64, !dbg !1760
  %arrayidx79 = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i64 %idxprom78, !dbg !1760
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx79, metadata !1723, metadata !DIExpression()), !dbg !1724
  %19 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1762
  %to_file81 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx79, i64 0, i32 0, !dbg !1763
  %20 = load i8*, i8** %to_file81, align 8, !dbg !1763
  %arrayidx82 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx79, i64 1, !dbg !1764
  %start_location83 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx82, i64 0, i32 2, !dbg !1764
  %21 = load i32, i32* %start_location83, align 4, !dbg !1764
  %start_location85 = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i64 %idxprom78, i32 2, !dbg !1764
  %22 = load i32, i32* %start_location85, align 4, !dbg !1764
  %23 = xor i32 %22, -1, !dbg !1764
  %sub86 = add i32 %21, %23, !dbg !1764
  %column_bits87 = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i64 %idxprom78, i32 6, !dbg !1764
  %bf.load88 = load i8, i8* %column_bits87, align 2, !dbg !1764
  %bf.cast89 = zext i8 %bf.load88 to i32, !dbg !1764
  %notmask1 = shl nsw i32 -1, %bf.cast89, !dbg !1764
  %and93 = and i32 %sub86, %notmask1, !dbg !1764
  %shr101 = lshr i32 %and93, %bf.cast89, !dbg !1764
  %to_line102 = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i64 %idxprom78, i32 1, !dbg !1764
  %24 = load i32, i32* %to_line102, align 8, !dbg !1764
  %add103 = add i32 %shr101, %24, !dbg !1764
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i8* %20, i32 %add103) #7, !dbg !1765
  br label %while.cond, !dbg !1757, !llvm.loop !1766

while.end:                                        ; preds = %while.cond
  %25 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1768
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1769
  %26 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1770
  tail call void @pp_base_newline(%struct.pretty_print_info* %26) #7, !dbg !1770
  br label %cleanup.cont, !dbg !1771

cleanup.cont:                                     ; preds = %land.lhs.true, %if.end5, %if.end, %if.then8, %while.end
  ret void, !dbg !1772
}

declare dso_local void @pp_base_newline(%struct.pretty_print_info*) local_unnamed_addr #2

declare dso_local %struct.line_map* @linemap_lookup(%struct.line_maps*, i32) local_unnamed_addr #2

declare dso_local void @pp_verbatim(%struct.pretty_print_info*, i8*, ...) local_unnamed_addr #2

declare dso_local void @pp_base_set_prefix(%struct.pretty_print_info*, i8*) local_unnamed_addr #2

declare dso_local void @pp_base_destroy_prefix(%struct.pretty_print_info*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @diagnostic_classify_diagnostic(%struct.diagnostic_context* %context, i32 %option_index, i32 %new_kind) local_unnamed_addr #5 !dbg !1773 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !1777, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %option_index, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %new_kind, metadata !1779, metadata !DIExpression()), !dbg !1781
  %option_index.off = add i32 %option_index, -1, !dbg !1782
  %0 = icmp ugt i32 %option_index.off, 868, !dbg !1782
  %cmp3 = icmp ugt i32 %new_kind, 11, !dbg !1784
  %or.cond1 = or i1 %0, %cmp3, !dbg !1782
  br i1 %or.cond1, label %cleanup, label %if.end, !dbg !1782

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %option_index to i64, !dbg !1785
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 4, i64 %idxprom, !dbg !1785
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %1, metadata !1780, metadata !DIExpression()), !dbg !1781
  store i32 %new_kind, i32* %arrayidx, align 4, !dbg !1786
  br label %cleanup, !dbg !1787

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry ], !dbg !1781
  ret i32 %retval.0, !dbg !1788
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %context, %struct.diagnostic_info* %diagnostic) local_unnamed_addr #5 !dbg !1789 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  %s = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !1793, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1794, metadata !DIExpression()), !dbg !1803
  %location1 = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 1, !dbg !1804
  %0 = load i32, i32* %location1, align 8, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %0, metadata !1795, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1796, metadata !DIExpression()), !dbg !1803
  %kind = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 4, !dbg !1805
  %1 = load i32, i32* %kind, align 8, !dbg !1805
  %cmp = icmp eq i32 %1, 6, !dbg !1807
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !1808

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %1, 10, !dbg !1809
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !1810

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* @inhibit_warnings, align 4, !dbg !1811
  %tobool = icmp eq i32 %2, 0, !dbg !1811
  br i1 %tobool, label %land.lhs.true4, label %cleanup, !dbg !1811

land.lhs.true4:                                   ; preds = %land.lhs.true
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %0) #7, !dbg !1811
  %sysp = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 3, !dbg !1811
  %3 = load i8, i8* %sysp, align 8, !dbg !1811
  %cmp5 = icmp eq i8 %3, 0, !dbg !1811
  %4 = load i32, i32* @warn_system_headers, align 4, !dbg !1811
  %tobool8 = icmp ne i32 %4, 0, !dbg !1811
  %or.cond = or i1 %cmp5, %tobool8, !dbg !1811
  br i1 %or.cond, label %land.lhs.true4.if.end_crit_edge, label %cleanup, !dbg !1811

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  %.pre = load i32, i32* %kind, align 8, !dbg !1812
  br label %if.end, !dbg !1811

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %lor.lhs.false
  %5 = phi i32 [ %.pre, %land.lhs.true4.if.end_crit_edge ], [ %1, %lor.lhs.false ], !dbg !1812
  %cmp10 = icmp eq i32 %5, 10, !dbg !1814
  br i1 %cmp10, label %if.then12, label %if.end15, !dbg !1815

if.then12:                                        ; preds = %if.end
  %6 = load i32, i32* @flag_pedantic_errors, align 4, !dbg !1816
  %tobool13 = icmp eq i32 %6, 0, !dbg !1816
  %cond = select i1 %tobool13, i32 6, i32 4, !dbg !1816
  store i32 %cond, i32* %kind, align 8, !dbg !1817
  br label %if.end15, !dbg !1818

if.end15:                                         ; preds = %if.then12, %if.end
  %7 = phi i32 [ %cond, %if.then12 ], [ %5, %if.end ], !dbg !1819
  %cmp17 = icmp eq i32 %7, 8, !dbg !1821
  br i1 %cmp17, label %land.lhs.true19, label %if.end23, !dbg !1822

land.lhs.true19:                                  ; preds = %if.end15
  %inhibit_notes_p = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 13, !dbg !1823
  %8 = load i8, i8* %inhibit_notes_p, align 4, !dbg !1823
  %tobool21 = icmp eq i8 %8, 0, !dbg !1824
  br i1 %tobool21, label %if.end23, label %cleanup, !dbg !1825

if.end23:                                         ; preds = %land.lhs.true19, %if.end15
  %lock = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 12, !dbg !1826
  %9 = load i32, i32* %lock, align 8, !dbg !1826
  %cmp24 = icmp sgt i32 %9, 0, !dbg !1828
  br i1 %cmp24, label %if.then26, label %if.end36, !dbg !1829

if.then26:                                        ; preds = %if.end23
  %cmp28 = icmp eq i32 %7, 3, !dbg !1830
  br i1 %cmp28, label %land.lhs.true30, label %if.else, !dbg !1833

land.lhs.true30:                                  ; preds = %if.then26
  %cmp32 = icmp eq i32 %9, 1, !dbg !1834
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !1835

if.then34:                                        ; preds = %land.lhs.true30
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 0, !dbg !1836
  %10 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1836
  call void @pp_base_flush(%struct.pretty_print_info* %10) #7, !dbg !1836
  br label %if.end36, !dbg !1836

if.else:                                          ; preds = %land.lhs.true30, %if.then26
  call fastcc void @error_recursion(%struct.diagnostic_context* %context) #8, !dbg !1837
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.else, %if.end23
  %warning_as_error_requested = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 3, !dbg !1838
  %11 = load i8, i8* %warning_as_error_requested, align 1, !dbg !1838
  %tobool38 = icmp eq i8 %11, 0, !dbg !1840
  br i1 %tobool38, label %if.end45, label %land.lhs.true39, !dbg !1841

land.lhs.true39:                                  ; preds = %if.end36
  %12 = load i32, i32* %kind, align 8, !dbg !1842
  %cmp41 = icmp eq i32 %12, 6, !dbg !1843
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !1844

if.then43:                                        ; preds = %land.lhs.true39
  store i32 4, i32* %kind, align 8, !dbg !1845
  call void @llvm.dbg.value(metadata i8 1, metadata !1796, metadata !DIExpression()), !dbg !1803
  br label %if.end45, !dbg !1847

if.end45:                                         ; preds = %if.end36, %if.then43, %land.lhs.true39
  %maybe_print_warnings_as_errors_message.0 = phi i8 [ 1, %if.then43 ], [ 0, %land.lhs.true39 ], [ 0, %if.end36 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %maybe_print_warnings_as_errors_message.0, metadata !1796, metadata !DIExpression()), !dbg !1803
  %option_index = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !1848
  %13 = load i32, i32* %option_index, align 4, !dbg !1848
  %tobool46 = icmp eq i32 %13, 0, !dbg !1850
  br i1 %tobool46, label %if.end67, label %if.then47, !dbg !1851

if.then47:                                        ; preds = %if.end45
  %call = call i32 @option_enabled(i32 %13) #7, !dbg !1852
  %tobool49 = icmp eq i32 %call, 0, !dbg !1852
  br i1 %tobool49, label %cleanup, label %if.end51, !dbg !1855

if.end51:                                         ; preds = %if.then47
  %14 = load i32, i32* %option_index, align 4, !dbg !1856
  %idxprom = sext i32 %14 to i64, !dbg !1858
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 4, i64 %idxprom, !dbg !1858
  %15 = load i32, i32* %arrayidx, align 4, !dbg !1858
  %cmp53 = icmp eq i32 %15, 0, !dbg !1859
  br i1 %cmp53, label %if.end51.if.end61_crit_edge, label %if.then55, !dbg !1860

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  %.pre2 = load i32, i32* %kind, align 8, !dbg !1861
  br label %if.end61, !dbg !1860

if.then55:                                        ; preds = %if.end51
  store i32 %15, i32* %kind, align 8, !dbg !1863
  call void @llvm.dbg.value(metadata i8 0, metadata !1796, metadata !DIExpression()), !dbg !1803
  br label %if.end61, !dbg !1865

if.end61:                                         ; preds = %if.end51.if.end61_crit_edge, %if.then55
  %16 = phi i32 [ %15, %if.then55 ], [ %.pre2, %if.end51.if.end61_crit_edge ], !dbg !1861
  %maybe_print_warnings_as_errors_message.1 = phi i8 [ 0, %if.then55 ], [ %maybe_print_warnings_as_errors_message.0, %if.end51.if.end61_crit_edge ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %maybe_print_warnings_as_errors_message.1, metadata !1796, metadata !DIExpression()), !dbg !1803
  %cmp63 = icmp eq i32 %16, 1, !dbg !1866
  br i1 %cmp63, label %cleanup, label %if.end67, !dbg !1867

if.end67:                                         ; preds = %if.end45, %if.end61
  %maybe_print_warnings_as_errors_message.2 = phi i8 [ %maybe_print_warnings_as_errors_message.0, %if.end45 ], [ %maybe_print_warnings_as_errors_message.1, %if.end61 ], !dbg !1803
  call void @llvm.dbg.value(metadata i8 %maybe_print_warnings_as_errors_message.2, metadata !1796, metadata !DIExpression()), !dbg !1803
  %issue_warnings_are_errors_message = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 2, !dbg !1868
  %17 = load i8, i8* %issue_warnings_are_errors_message, align 8, !dbg !1868
  %tobool69 = icmp ne i8 %17, 0, !dbg !1870
  %tobool72 = icmp ne i8 %maybe_print_warnings_as_errors_message.2, 0, !dbg !1871
  %or.cond1 = and i1 %tobool69, %tobool72, !dbg !1872
  br i1 %or.cond1, label %if.then73, label %if.end76, !dbg !1872

if.then73:                                        ; preds = %if.end67
  %printer74 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 0, !dbg !1873
  %18 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer74, align 8, !dbg !1873
  %19 = load i8*, i8** @progname, align 8, !dbg !1875
  call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* %19) #7, !dbg !1876
  store i8 0, i8* %issue_warnings_are_errors_message, align 8, !dbg !1877
  br label %if.end76, !dbg !1878

if.end76:                                         ; preds = %if.then73, %if.end67
  %20 = load i32, i32* %lock, align 8, !dbg !1879
  %inc = add nsw i32 %20, 1, !dbg !1879
  store i32 %inc, i32* %lock, align 8, !dbg !1879
  %21 = load i32, i32* %kind, align 8, !dbg !1880
  %cmp79 = icmp eq i32 %21, 3, !dbg !1882
  br i1 %cmp79, label %land.lhs.true81, label %if.end86, !dbg !1883

land.lhs.true81:                                  ; preds = %if.end76
  %call82 = call zeroext i8 @plugins_active_p() #7, !dbg !1884
  %tobool84 = icmp eq i8 %call82, 0, !dbg !1884
  br i1 %tobool84, label %if.end86, label %if.then85, !dbg !1885

if.then85:                                        ; preds = %land.lhs.true81
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1886
  call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %22, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !1888
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1889
  call void @dump_active_plugins(%struct._IO_FILE* %23) #7, !dbg !1890
  br label %if.end86, !dbg !1891

if.end86:                                         ; preds = %land.lhs.true81, %if.then85, %if.end76
  %24 = load i32, i32* %kind, align 8, !dbg !1892
  %cmp88 = icmp eq i32 %24, 3, !dbg !1893
  br i1 %cmp88, label %if.then90, label %if.end109, !dbg !1894

if.then90:                                        ; preds = %if.end86
  %arrayidx91 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 1, i64 4, !dbg !1895
  %25 = load i32, i32* %arrayidx91, align 8, !dbg !1895
  %cmp92 = icmp sgt i32 %25, 0, !dbg !1896
  br i1 %cmp92, label %land.lhs.true99, label %lor.lhs.false94, !dbg !1897

lor.lhs.false94:                                  ; preds = %if.then90
  %arrayidx96 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 1, i64 5, !dbg !1898
  %26 = load i32, i32* %arrayidx96, align 4, !dbg !1898
  %cmp97 = icmp sgt i32 %26, 0, !dbg !1899
  br i1 %cmp97, label %land.lhs.true99, label %if.end103, !dbg !1900

land.lhs.true99:                                  ; preds = %lor.lhs.false94, %if.then90
  %abort_on_error = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 6, !dbg !1901
  %27 = load i8, i8* %abort_on_error, align 1, !dbg !1901
  %tobool100 = icmp eq i8 %27, 0, !dbg !1902
  br i1 %tobool100, label %if.then101, label %if.end103, !dbg !1903

if.then101:                                       ; preds = %land.lhs.true99
  %28 = bitcast %struct.expanded_location* %s to i8*, !dbg !1904
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28) #6, !dbg !1904
  %29 = load i32, i32* %location1, align 8, !dbg !1905
  call void @llvm.dbg.value(metadata %struct.expanded_location* %s, metadata !1798, metadata !DIExpression(DW_OP_deref)), !dbg !1906
  call void @expand_location(%struct.expanded_location* nonnull sret %s, i32 %29) #7, !dbg !1907
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1908
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 0, !dbg !1909
  %31 = load i8*, i8** %file, align 8, !dbg !1909
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 1, !dbg !1910
  %32 = load i32, i32* %line, align 8, !dbg !1910
  call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i64 0, i64 0), i8* %31, i32 %32) #8, !dbg !1911
  call void @exit(i32 4) #7, !dbg !1912
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28) #6, !dbg !1913
  br label %if.end103, !dbg !1914

if.end103:                                        ; preds = %land.lhs.true99, %if.then101, %lor.lhs.false94
  %internal_error = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 9, !dbg !1915
  %33 = load void (i8*, [1 x %struct.__va_list_tag]*)*, void (i8*, [1 x %struct.__va_list_tag]*)** %internal_error, align 8, !dbg !1915
  %tobool104 = icmp eq void (i8*, [1 x %struct.__va_list_tag]*)* %33, null, !dbg !1917
  br i1 %tobool104, label %if.end109, label %if.then105, !dbg !1918

if.then105:                                       ; preds = %if.end103
  %format_spec = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 0, i32 0, !dbg !1919
  %34 = load i8*, i8** %format_spec, align 8, !dbg !1919
  %args_ptr = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 0, i32 1, !dbg !1920
  %35 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr, align 8, !dbg !1920
  call void %33(i8* %34, [1 x %struct.__va_list_tag]* %35) #7, !dbg !1921
  br label %if.end109, !dbg !1921

if.end109:                                        ; preds = %if.end103, %if.then105, %if.end86
  %36 = load i32, i32* %kind, align 8, !dbg !1922
  %idxprom112 = sext i32 %36 to i64, !dbg !1922
  %arrayidx113 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 1, i64 %idxprom112, !dbg !1922
  %37 = load i32, i32* %arrayidx113, align 4, !dbg !1923
  %inc114 = add nsw i32 %37, 1, !dbg !1923
  store i32 %inc114, i32* %arrayidx113, align 4, !dbg !1923
  %38 = bitcast %struct.diagnostic_info* %diagnostic to i64*, !dbg !1924
  %39 = load i64, i64* %38, align 8, !dbg !1924
  %show_option_requested = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 5, !dbg !1925
  %40 = load i8, i8* %show_option_requested, align 4, !dbg !1925
  %tobool118 = icmp eq i8 %40, 0, !dbg !1927
  %41 = inttoptr i64 %39 to i8*, !dbg !1928
  br i1 %tobool118, label %if.end138, label %land.lhs.true119, !dbg !1928

land.lhs.true119:                                 ; preds = %if.end109
  %42 = load i32, i32* %option_index, align 4, !dbg !1929
  %tobool121 = icmp eq i32 %42, 0, !dbg !1930
  br i1 %tobool121, label %if.end138, label %if.then122, !dbg !1931

if.then122:                                       ; preds = %land.lhs.true119
  %format_spec124 = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 0, i32 0, !dbg !1932
  %idxprom126 = sext i32 %42 to i64, !dbg !1932
  %opt_text = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %idxprom126, i32 0, !dbg !1932
  %43 = load i8*, i8** %opt_text, align 8, !dbg !1932
  %call128 = call i64 (i8*, ...) @concat_length(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8* null) #7, !dbg !1932
  %add = add i64 %call128, 1, !dbg !1932
  %44 = alloca i8, i64 %add, align 16, !dbg !1932
  store i8* %44, i8** @libiberty_concat_ptr, align 8, !dbg !1932
  %45 = load i8*, i8** %format_spec124, align 8, !dbg !1932
  %46 = load i32, i32* %option_index, align 4, !dbg !1932
  %idxprom132 = sext i32 %46 to i64, !dbg !1932
  %opt_text134 = getelementptr inbounds [0 x %struct.cl_option], [0 x %struct.cl_option]* @cl_options, i64 0, i64 %idxprom132, i32 0, !dbg !1932
  %47 = load i8*, i8** %opt_text134, align 8, !dbg !1932
  %call135 = call i8* (i8*, ...) @concat_copy2(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8* null) #7, !dbg !1932
  store i8* %call135, i8** %format_spec124, align 8, !dbg !1933
  br label %if.end138, !dbg !1934

if.end138:                                        ; preds = %land.lhs.true119, %if.end109, %if.then122
  %locus = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 0, i32 3, !dbg !1935
  store i32* %location1, i32** %locus, align 8, !dbg !1936
  %abstract_origin = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 3, !dbg !1937
  %abstract_origin142 = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 0, i32 4, !dbg !1938
  store %union.tree_node** %abstract_origin, %union.tree_node*** %abstract_origin142, align 8, !dbg !1939
  store %union.tree_node* null, %union.tree_node** %abstract_origin, align 8, !dbg !1940
  %printer144 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 0, !dbg !1941
  %48 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer144, align 8, !dbg !1941
  %message145 = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 0, !dbg !1941
  call void @pp_base_format(%struct.pretty_print_info* %48, %struct.text_info* %message145) #7, !dbg !1941
  %begin_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 7, !dbg !1942
  %49 = load void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)** %begin_diagnostic, align 8, !dbg !1942
  call void %49(%struct.diagnostic_context* %context, %struct.diagnostic_info* %diagnostic) #7, !dbg !1943
  %50 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer144, align 8, !dbg !1944
  call void @pp_base_output_formatted_text(%struct.pretty_print_info* %50) #7, !dbg !1944
  %end_diagnostic = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 8, !dbg !1945
  %51 = load void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)** %end_diagnostic, align 8, !dbg !1945
  call void %51(%struct.diagnostic_context* %context, %struct.diagnostic_info* %diagnostic) #7, !dbg !1946
  %52 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer144, align 8, !dbg !1947
  call void @pp_base_flush(%struct.pretty_print_info* %52) #7, !dbg !1947
  call fastcc void @diagnostic_action_after_output(%struct.diagnostic_context* %context, %struct.diagnostic_info* %diagnostic) #8, !dbg !1948
  store i64 %39, i64* %38, align 8, !dbg !1949
  store %union.tree_node* null, %union.tree_node** %abstract_origin, align 8, !dbg !1950
  %53 = load i32, i32* %lock, align 8, !dbg !1951
  %dec = add nsw i32 %53, -1, !dbg !1951
  store i32 %dec, i32* %lock, align 8, !dbg !1951
  br label %cleanup, !dbg !1952

cleanup:                                          ; preds = %land.lhs.true, %land.lhs.true19, %if.then47, %if.end61, %land.lhs.true4, %if.end138
  %retval.0 = phi i8 [ 1, %if.end138 ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true19 ], [ 0, %if.then47 ], [ 0, %if.end61 ], !dbg !1803
  ret i8 %retval.0, !dbg !1953
}

declare dso_local void @pp_base_flush(%struct.pretty_print_info*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @error_recursion(%struct.diagnostic_context* %context) unnamed_addr #5 !dbg !1954 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !1956, metadata !DIExpression()), !dbg !1958
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !1959
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !1959
  %lock = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 12, !dbg !1960
  %1 = load i32, i32* %lock, align 8, !dbg !1960
  %cmp = icmp slt i32 %1, 3, !dbg !1962
  br i1 %cmp, label %if.then, label %if.end, !dbg !1963

if.then:                                          ; preds = %entry
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 0, !dbg !1964
  %2 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !1964
  tail call void @pp_base_flush(%struct.pretty_print_info* %2) #7, !dbg !1964
  br label %if.end, !dbg !1964

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1965
  tail call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !1966
  %kind = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 4, !dbg !1967
  store i32 3, i32* %kind, align 8, !dbg !1968
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1957, metadata !DIExpression(DW_OP_deref)), !dbg !1958
  call fastcc void @diagnostic_action_after_output(%struct.diagnostic_context* %context, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !1969
  call fastcc void @real_abort() #8, !dbg !1970
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !1971
  ret void, !dbg !1971
}

declare dso_local i32 @option_enabled(i32) local_unnamed_addr #2

declare dso_local zeroext i8 @plugins_active_p() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fnotice(%struct._IO_FILE* %file, i8* %cmsgid, ...) local_unnamed_addr #5 !dbg !1972 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !1976, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8* %cmsgid, metadata !1977, metadata !DIExpression()), !dbg !1979
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1980
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6, !dbg !1980
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !1978, metadata !DIExpression()), !dbg !1981
  call void @llvm.va_start(i8* %0), !dbg !1982
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !1983
  %call = call i32 @vfprintf(%struct._IO_FILE* %file, i8* %cmsgid, %struct.__va_list_tag* nonnull %arraydecay2) #7, !dbg !1984
  call void @llvm.va_end(i8* nonnull %0), !dbg !1985
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6, !dbg !1986
  ret void, !dbg !1986
}

declare dso_local void @dump_active_plugins(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @exit(i32) local_unnamed_addr #2

declare dso_local i64 @concat_length(i8*, ...) local_unnamed_addr #2

declare dso_local i8* @concat_copy2(i8*, ...) local_unnamed_addr #2

declare dso_local void @pp_base_format(%struct.pretty_print_info*, %struct.text_info*) local_unnamed_addr #2

declare dso_local void @pp_base_output_formatted_text(%struct.pretty_print_info*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @diagnostic_action_after_output(%struct.diagnostic_context* %context, %struct.diagnostic_info* %diagnostic) unnamed_addr #5 !dbg !1987 {
entry:
  call void @llvm.dbg.value(metadata %struct.diagnostic_context* %context, metadata !1989, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1990, metadata !DIExpression()), !dbg !1991
  %kind = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 4, !dbg !1992
  %0 = load i32, i32* %kind, align 8, !dbg !1992
  switch i32 %0, label %sw.default [
    i32 9, label %sw.epilog
    i32 8, label %sw.epilog
    i32 7, label %sw.epilog
    i32 6, label %sw.epilog
    i32 4, label %sw.bb1
    i32 5, label %sw.bb1
    i32 3, label %sw.bb5
    i32 2, label %sw.bb10
  ], !dbg !1993

sw.bb1:                                           ; preds = %entry, %entry
  %abort_on_error = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 6, !dbg !1994
  %1 = load i8, i8* %abort_on_error, align 1, !dbg !1994
  %tobool = icmp eq i8 %1, 0, !dbg !1997
  br i1 %tobool, label %if.end, label %if.then, !dbg !1998

if.then:                                          ; preds = %sw.bb1
  tail call fastcc void @real_abort() #8, !dbg !1999
  br label %if.end, !dbg !1999

if.end:                                           ; preds = %sw.bb1, %if.then
  %2 = load i32, i32* @flag_fatal_errors, align 4, !dbg !2000
  %tobool2 = icmp eq i32 %2, 0, !dbg !2000
  br i1 %tobool2, label %sw.epilog, label %if.then3, !dbg !2002

if.then3:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2003
  tail call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !2005
  tail call void @exit(i32 1) #7, !dbg !2006
  br label %sw.epilog, !dbg !2007

sw.bb5:                                           ; preds = %entry
  %abort_on_error6 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 6, !dbg !2008
  %4 = load i8, i8* %abort_on_error6, align 1, !dbg !2008
  %tobool7 = icmp eq i8 %4, 0, !dbg !2010
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2011

if.then8:                                         ; preds = %sw.bb5
  tail call fastcc void @real_abort() #8, !dbg !2012
  br label %if.end9, !dbg !2012

if.end9:                                          ; preds = %sw.bb5, %if.then8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2013
  tail call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %5, i8* getelementptr inbounds ([453 x i8], [453 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !2014
  tail call void @exit(i32 4) #7, !dbg !2015
  br label %sw.bb10, !dbg !2015

sw.bb10:                                          ; preds = %entry, %if.end9
  %abort_on_error11 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %context, i64 0, i32 6, !dbg !2016
  %6 = load i8, i8* %abort_on_error11, align 1, !dbg !2016
  %tobool12 = icmp eq i8 %6, 0, !dbg !2018
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2019

if.then13:                                        ; preds = %sw.bb10
  tail call fastcc void @real_abort() #8, !dbg !2020
  br label %if.end14, !dbg !2020

if.end14:                                         ; preds = %sw.bb10, %if.then13
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2021
  tail call void (%struct._IO_FILE*, i8*, ...) @fnotice(%struct._IO_FILE* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !2022
  tail call void @exit(i32 1) #7, !dbg !2023
  br label %sw.default, !dbg !2023

sw.default:                                       ; preds = %entry, %if.end14
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !2024
  br label %sw.epilog, !dbg !2025

sw.epilog:                                        ; preds = %if.end, %if.then3, %entry, %entry, %entry, %entry, %sw.default
  ret void, !dbg !2026
}

; Function Attrs: nounwind uwtable
define dso_local i8* @trim_filename(i8* %name) local_unnamed_addr #5 !dbg !1145 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !1149, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %name, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @trim_filename.this_file, i64 0, i64 0), metadata !1151, metadata !DIExpression()), !dbg !2027
  br label %while.cond, !dbg !2028

while.cond:                                       ; preds = %while.body, %entry
  %p.0 = phi i8* [ %name, %entry ], [ %add.ptr, %while.body ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1150, metadata !DIExpression()), !dbg !2027
  %0 = load i8, i8* %p.0, align 1, !dbg !2029
  %cmp = icmp eq i8 %0, 46, !dbg !2030
  br i1 %cmp, label %land.lhs.true, label %while.end, !dbg !2031

land.lhs.true:                                    ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !2032
  %1 = load i8, i8* %arrayidx2, align 1, !dbg !2032
  %cmp4 = icmp eq i8 %1, 46, !dbg !2033
  br i1 %cmp4, label %land.rhs, label %while.end, !dbg !2034

land.rhs:                                         ; preds = %land.lhs.true
  %arrayidx6 = getelementptr inbounds i8, i8* %p.0, i64 2, !dbg !2035
  %2 = load i8, i8* %arrayidx6, align 1, !dbg !2035
  %cmp8 = icmp eq i8 %2, 47, !dbg !2035
  br i1 %cmp8, label %while.body, label %while.end, !dbg !2028

while.body:                                       ; preds = %land.rhs
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 3, !dbg !2036
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1150, metadata !DIExpression()), !dbg !2027
  br label %while.cond, !dbg !2028, !llvm.loop !2037

while.end:                                        ; preds = %while.cond, %land.lhs.true, %land.rhs
  %p.0.lcssa = phi i8* [ %p.0, %while.cond ], [ %p.0, %land.lhs.true ], [ %p.0, %land.rhs ], !dbg !2027
  %.lcssa = phi i8 [ %0, %while.cond ], [ %0, %land.lhs.true ], [ %0, %land.rhs ], !dbg !2029
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @trim_filename.this_file, i64 0, i64 0), metadata !1151, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @trim_filename.this_file, i64 0, i64 0), metadata !1151, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @trim_filename.this_file, i64 0, i64 0), metadata !1151, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([13 x i8], [13 x i8]* @trim_filename.this_file, i64 0, i64 0), metadata !1151, metadata !DIExpression()), !dbg !2027
  br label %while.cond29, !dbg !2039

while.cond29:                                     ; preds = %while.body43, %while.end
  %3 = phi i8 [ %.lcssa, %while.end ], [ %.pre, %while.body43 ], !dbg !2040
  %p.1 = phi i8* [ %p.0.lcssa, %while.end ], [ %incdec.ptr, %while.body43 ], !dbg !2027
  %q.1 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @trim_filename.this_file, i64 0, i64 0), %while.end ], [ %incdec.ptr44, %while.body43 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !1151, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !1150, metadata !DIExpression()), !dbg !2027
  %4 = load i8, i8* %q.1, align 1, !dbg !2041
  %cmp32 = icmp eq i8 %3, %4, !dbg !2042
  br i1 %cmp32, label %land.lhs.true34, label %while.end45.loopexit, !dbg !2043

land.lhs.true34:                                  ; preds = %while.cond29
  %cmp36 = icmp eq i8 %3, 0, !dbg !2044
  br i1 %cmp36, label %while.end45.loopexit, label %land.rhs38, !dbg !2045

land.rhs38:                                       ; preds = %land.lhs.true34
  br i1 false, label %land.rhs38.while.end45_crit_edge, label %while.body43, !dbg !2039

land.rhs38.while.end45_crit_edge:                 ; preds = %land.rhs38
  %p.1.lcssa6 = phi i8* [ %p.0.lcssa, %land.rhs38 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa6, metadata !1150, metadata !DIExpression()), !dbg !2027
  br label %while.end45, !dbg !2039

while.body43:                                     ; preds = %land.rhs38
  %incdec.ptr = getelementptr inbounds i8, i8* %p.1, i64 1, !dbg !2046
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1150, metadata !DIExpression()), !dbg !2027
  %incdec.ptr44 = getelementptr inbounds i8, i8* %q.1, i64 1, !dbg !2047
  call void @llvm.dbg.value(metadata i8* %incdec.ptr44, metadata !1151, metadata !DIExpression()), !dbg !2027
  %.pre = load i8, i8* %incdec.ptr, align 1, !dbg !2040
  br label %while.cond29, !dbg !2039, !llvm.loop !2048

while.end45.loopexit:                             ; preds = %while.cond29, %land.lhs.true34
  %p.1.lcssa = phi i8* [ %p.1, %while.cond29 ], [ %p.1, %land.lhs.true34 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  br label %while.end45, !dbg !2049

while.end45:                                      ; preds = %while.end45.loopexit, %land.rhs38.while.end45_crit_edge
  %p.17 = phi i8* [ %p.1.lcssa, %while.end45.loopexit ], [ %p.1.lcssa6, %land.rhs38.while.end45_crit_edge ]
  call void @llvm.dbg.value(metadata i8* %p.17, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.17, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.17, metadata !1150, metadata !DIExpression()), !dbg !2027
  br label %while.cond46, !dbg !2049

while.cond46:                                     ; preds = %while.body55, %while.end45
  %p.2 = phi i8* [ %p.17, %while.end45 ], [ %arrayidx50, %while.body55 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !1150, metadata !DIExpression()), !dbg !2027
  %cmp47 = icmp ugt i8* %p.2, %name, !dbg !2050
  br i1 %cmp47, label %land.rhs49, label %while.end57, !dbg !2051

land.rhs49:                                       ; preds = %while.cond46
  %arrayidx50 = getelementptr inbounds i8, i8* %p.2, i64 -1, !dbg !2052
  %5 = load i8, i8* %arrayidx50, align 1, !dbg !2052
  %cmp52 = icmp eq i8 %5, 47, !dbg !2052
  br i1 %cmp52, label %while.end57, label %while.body55, !dbg !2049

while.body55:                                     ; preds = %land.rhs49
  call void @llvm.dbg.value(metadata i8* %arrayidx50, metadata !1150, metadata !DIExpression()), !dbg !2027
  br label %while.cond46, !dbg !2049, !llvm.loop !2053

while.end57:                                      ; preds = %land.rhs49, %while.cond46
  %p.2.lcssa = phi i8* [ %p.2, %land.rhs49 ], [ %p.2, %while.cond46 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !1150, metadata !DIExpression()), !dbg !2027
  ret i8* %p.2.lcssa, !dbg !2055
}

; Function Attrs: nounwind uwtable
define dso_local void @verbatim(i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2056 {
entry:
  %text = alloca %struct.text_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2060, metadata !DIExpression()), !dbg !2063
  %0 = bitcast %struct.text_info* %text to i8*, !dbg !2064
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #6, !dbg !2064
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2065
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2065
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2062, metadata !DIExpression()), !dbg !2066
  call void @llvm.va_start(i8* %1), !dbg !2067
  %call = call i32* @__errno_location() #7, !dbg !2068
  %2 = load i32, i32* %call, align 4, !dbg !2068
  %err_no = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 2, !dbg !2069
  store i32 %2, i32* %err_no, align 8, !dbg !2070
  %args_ptr = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 1, !dbg !2071
  store [1 x %struct.__va_list_tag]* %ap, [1 x %struct.__va_list_tag]** %args_ptr, align 8, !dbg !2072
  %format_spec = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 0, !dbg !2073
  store i8* %gmsgid, i8** %format_spec, align 8, !dbg !2074
  %locus = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 3, !dbg !2075
  store i32* null, i32** %locus, align 8, !dbg !2076
  %abstract_origin = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 4, !dbg !2077
  store %union.tree_node** null, %union.tree_node*** %abstract_origin, align 8, !dbg !2078
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2079
  %printer = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %3, i64 0, i32 0, !dbg !2079
  %4 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer, align 8, !dbg !2079
  call void @llvm.dbg.value(metadata %struct.text_info* %text, metadata !2061, metadata !DIExpression(DW_OP_deref)), !dbg !2063
  call void @pp_base_format_verbatim(%struct.pretty_print_info* %4, %struct.text_info* nonnull %text) #7, !dbg !2079
  %5 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2080
  %printer2 = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %5, i64 0, i32 0, !dbg !2080
  %6 = load %struct.pretty_print_info*, %struct.pretty_print_info** %printer2, align 8, !dbg !2080
  call void @pp_base_flush(%struct.pretty_print_info* %6) #7, !dbg !2080
  call void @llvm.va_end(i8* nonnull %1), !dbg !2081
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2082
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #6, !dbg !2082
  ret void, !dbg !2082
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare dso_local void @pp_base_format_verbatim(%struct.pretty_print_info*, %struct.text_info*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @emit_diagnostic(i32 %kind, i32 %location, i32 %opt, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2083 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %kind, metadata !2087, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %location, metadata !2088, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %opt, metadata !2089, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2090, metadata !DIExpression()), !dbg !2094
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2095
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2095
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2096
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2096
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2092, metadata !DIExpression()), !dbg !2097
  call void @llvm.va_start(i8* %1), !dbg !2098
  %cmp = icmp eq i32 %kind, 11, !dbg !2099
  br i1 %cmp, label %if.then, label %if.else, !dbg !2101

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @flag_permissive, align 4, !dbg !2102
  %tobool = icmp eq i32 %2, 0, !dbg !2102
  %cond = select i1 %tobool, i32 4, i32 6, !dbg !2102
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2091, metadata !DIExpression(DW_OP_deref)), !dbg !2094
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 %cond) #8, !dbg !2104
  %option_index = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !2105
  store i32 525, i32* %option_index, align 4, !dbg !2106
  br label %if.end6, !dbg !2107

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2091, metadata !DIExpression(DW_OP_deref)), !dbg !2094
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 %kind) #8, !dbg !2108
  switch i32 %kind, label %if.end6 [
    i32 6, label %if.then4
    i32 10, label %if.then4
  ], !dbg !2110

if.then4:                                         ; preds = %if.else, %if.else
  %option_index5 = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !2112
  store i32 %opt, i32* %option_index5, align 4, !dbg !2113
  br label %if.end6, !dbg !2114

if.end6:                                          ; preds = %if.then4, %if.else, %if.then
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2115
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2091, metadata !DIExpression(DW_OP_deref)), !dbg !2094
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %3, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2115
  call void @llvm.dbg.value(metadata i8 %call, metadata !2093, metadata !DIExpression()), !dbg !2094
  call void @llvm.va_end(i8* nonnull %1), !dbg !2116
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2117
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2117
  ret i8 %call, !dbg !2118
}

; Function Attrs: nounwind uwtable
define dso_local void @inform(i32 %location, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2119 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %location, metadata !2123, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2124, metadata !DIExpression()), !dbg !2127
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2128
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2128
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2129
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2129
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2126, metadata !DIExpression()), !dbg !2130
  call void @llvm.va_start(i8* %1), !dbg !2131
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2125, metadata !DIExpression(DW_OP_deref)), !dbg !2127
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 8) #8, !dbg !2132
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2133
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2125, metadata !DIExpression(DW_OP_deref)), !dbg !2127
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %2, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2133
  call void @llvm.va_end(i8* nonnull %1), !dbg !2134
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2135
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2135
  ret void, !dbg !2135
}

; Function Attrs: nounwind uwtable
define dso_local void @inform_n(i32 %location, i32 %n, i8* %singular_gmsgid, i8* %plural_gmsgid, ...) local_unnamed_addr #5 !dbg !2136 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %location, metadata !2140, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 %n, metadata !2141, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %singular_gmsgid, metadata !2142, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %plural_gmsgid, metadata !2143, metadata !DIExpression()), !dbg !2146
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2147
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2147
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2148
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2148
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2145, metadata !DIExpression()), !dbg !2149
  call void @llvm.va_start(i8* %1), !dbg !2150
  %conv = sext i32 %n to i64, !dbg !2151
  %call = call i8* @fake_ngettext(i8* %singular_gmsgid, i8* %plural_gmsgid, i64 %conv) #7, !dbg !2151
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2144, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  call void @diagnostic_set_info_translated(%struct.diagnostic_info* nonnull %diagnostic, i8* %call, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 8) #8, !dbg !2152
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2153
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2144, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  %call2 = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %2, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2153
  call void @llvm.va_end(i8* nonnull %1), !dbg !2154
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2155
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2155
  ret void, !dbg !2155
}

declare dso_local i8* @fake_ngettext(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @warning(i32 %opt, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2156 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %opt, metadata !2160, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2161, metadata !DIExpression()), !dbg !2165
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2166
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2166
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2167
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2167
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2163, metadata !DIExpression()), !dbg !2168
  call void @llvm.va_start(i8* %1), !dbg !2169
  %2 = load i32, i32* @input_location, align 4, !dbg !2170
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2162, metadata !DIExpression(DW_OP_deref)), !dbg !2165
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %2, i32 6) #8, !dbg !2171
  %option_index = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !2172
  store i32 %opt, i32* %option_index, align 4, !dbg !2173
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2174
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2162, metadata !DIExpression(DW_OP_deref)), !dbg !2165
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %3, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2174
  call void @llvm.dbg.value(metadata i8 %call, metadata !2164, metadata !DIExpression()), !dbg !2165
  call void @llvm.va_end(i8* nonnull %1), !dbg !2175
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2176
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2176
  ret i8 %call, !dbg !2177
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @warning_at(i32 %location, i32 %opt, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2178 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %location, metadata !2182, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i32 %opt, metadata !2183, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2184, metadata !DIExpression()), !dbg !2188
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2189
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2189
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2190
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2190
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2186, metadata !DIExpression()), !dbg !2191
  call void @llvm.va_start(i8* %1), !dbg !2192
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2185, metadata !DIExpression(DW_OP_deref)), !dbg !2188
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 6) #8, !dbg !2193
  %option_index = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !2194
  store i32 %opt, i32* %option_index, align 4, !dbg !2195
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2196
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2185, metadata !DIExpression(DW_OP_deref)), !dbg !2188
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %2, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2196
  call void @llvm.dbg.value(metadata i8 %call, metadata !2187, metadata !DIExpression()), !dbg !2188
  call void @llvm.va_end(i8* nonnull %1), !dbg !2197
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2198
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2198
  ret i8 %call, !dbg !2199
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @pedwarn(i32 %location, i32 %opt, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2200 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %location, metadata !2202, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i32 %opt, metadata !2203, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2204, metadata !DIExpression()), !dbg !2208
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2209
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2209
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2210
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2210
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2206, metadata !DIExpression()), !dbg !2211
  call void @llvm.va_start(i8* %1), !dbg !2212
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2205, metadata !DIExpression(DW_OP_deref)), !dbg !2208
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 10) #8, !dbg !2213
  %option_index = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !2214
  store i32 %opt, i32* %option_index, align 4, !dbg !2215
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2216
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2205, metadata !DIExpression(DW_OP_deref)), !dbg !2208
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %2, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2216
  call void @llvm.dbg.value(metadata i8 %call, metadata !2207, metadata !DIExpression()), !dbg !2208
  call void @llvm.va_end(i8* nonnull %1), !dbg !2217
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2218
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2218
  ret i8 %call, !dbg !2219
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @permerror(i32 %location, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2220 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %location, metadata !2224, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2225, metadata !DIExpression()), !dbg !2229
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2230
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2230
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2231
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2227, metadata !DIExpression()), !dbg !2232
  call void @llvm.va_start(i8* %1), !dbg !2233
  %2 = load i32, i32* @flag_permissive, align 4, !dbg !2234
  %tobool = icmp eq i32 %2, 0, !dbg !2234
  %cond = select i1 %tobool, i32 4, i32 6, !dbg !2234
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2226, metadata !DIExpression(DW_OP_deref)), !dbg !2229
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 %cond) #8, !dbg !2235
  %option_index = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !2236
  store i32 525, i32* %option_index, align 4, !dbg !2237
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2238
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2226, metadata !DIExpression(DW_OP_deref)), !dbg !2229
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %3, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2238
  call void @llvm.dbg.value(metadata i8 %call, metadata !2228, metadata !DIExpression()), !dbg !2229
  call void @llvm.va_end(i8* nonnull %1), !dbg !2239
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2240
  ret i8 %call, !dbg !2241
}

; Function Attrs: nounwind uwtable
define dso_local void @error(i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2242 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2244, metadata !DIExpression()), !dbg !2247
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2248
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2249
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2249
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2246, metadata !DIExpression()), !dbg !2250
  call void @llvm.va_start(i8* %1), !dbg !2251
  %2 = load i32, i32* @input_location, align 4, !dbg !2252
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2245, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %2, i32 4) #8, !dbg !2253
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2254
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2245, metadata !DIExpression(DW_OP_deref)), !dbg !2247
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %3, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2254
  call void @llvm.va_end(i8* nonnull %1), !dbg !2255
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2256
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2256
  ret void, !dbg !2256
}

; Function Attrs: nounwind uwtable
define dso_local void @error_n(i32 %location, i32 %n, i8* %singular_gmsgid, i8* %plural_gmsgid, ...) local_unnamed_addr #5 !dbg !2257 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %location, metadata !2259, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %n, metadata !2260, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %singular_gmsgid, metadata !2261, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %plural_gmsgid, metadata !2262, metadata !DIExpression()), !dbg !2265
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2266
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2266
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2267
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2267
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2264, metadata !DIExpression()), !dbg !2268
  call void @llvm.va_start(i8* %1), !dbg !2269
  %conv = sext i32 %n to i64, !dbg !2270
  %call = call i8* @fake_ngettext(i8* %singular_gmsgid, i8* %plural_gmsgid, i64 %conv) #7, !dbg !2270
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2263, metadata !DIExpression(DW_OP_deref)), !dbg !2265
  call void @diagnostic_set_info_translated(%struct.diagnostic_info* nonnull %diagnostic, i8* %call, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 4) #8, !dbg !2271
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2272
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2263, metadata !DIExpression(DW_OP_deref)), !dbg !2265
  %call2 = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %2, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2272
  call void @llvm.va_end(i8* nonnull %1), !dbg !2273
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2274
  ret void, !dbg !2274
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at(i32 %loc, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2275 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %loc, metadata !2277, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2278, metadata !DIExpression()), !dbg !2281
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2282
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2282
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2283
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2283
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2280, metadata !DIExpression()), !dbg !2284
  call void @llvm.va_start(i8* %1), !dbg !2285
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2279, metadata !DIExpression(DW_OP_deref)), !dbg !2281
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %loc, i32 4) #8, !dbg !2286
  %2 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2287
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2279, metadata !DIExpression(DW_OP_deref)), !dbg !2281
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %2, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2287
  call void @llvm.va_end(i8* nonnull %1), !dbg !2288
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2289
  ret void, !dbg !2289
}

; Function Attrs: nounwind uwtable
define dso_local void @sorry(i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2290 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2292, metadata !DIExpression()), !dbg !2295
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2296
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2296
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2297
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2297
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2294, metadata !DIExpression()), !dbg !2298
  call void @llvm.va_start(i8* %1), !dbg !2299
  %2 = load i32, i32* @input_location, align 4, !dbg !2300
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2293, metadata !DIExpression(DW_OP_deref)), !dbg !2295
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %2, i32 5) #8, !dbg !2301
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2302
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2293, metadata !DIExpression(DW_OP_deref)), !dbg !2295
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %3, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2302
  call void @llvm.va_end(i8* nonnull %1), !dbg !2303
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2304
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2304
  ret void, !dbg !2304
}

; Function Attrs: nounwind uwtable
define dso_local void @fatal_error(i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2305 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2307, metadata !DIExpression()), !dbg !2310
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2311
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2311
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2312
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2312
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2309, metadata !DIExpression()), !dbg !2313
  call void @llvm.va_start(i8* %1), !dbg !2314
  %2 = load i32, i32* @input_location, align 4, !dbg !2315
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2308, metadata !DIExpression(DW_OP_deref)), !dbg !2310
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %2, i32 2) #8, !dbg !2316
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2317
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2308, metadata !DIExpression(DW_OP_deref)), !dbg !2310
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %3, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2317
  call void @llvm.va_end(i8* nonnull %1), !dbg !2318
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 724, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !2319
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2320
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2320
  ret void, !dbg !2320
}

; Function Attrs: nounwind uwtable
define dso_local void @internal_error(i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !2321 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !2323, metadata !DIExpression()), !dbg !2326
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !2327
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2327
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2328
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2328
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2325, metadata !DIExpression()), !dbg !2329
  call void @llvm.va_start(i8* %1), !dbg !2330
  %2 = load i32, i32* @input_location, align 4, !dbg !2331
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2324, metadata !DIExpression(DW_OP_deref)), !dbg !2326
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %2, i32 3) #8, !dbg !2332
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !2333
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !2324, metadata !DIExpression(DW_OP_deref)), !dbg !2326
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %3, %struct.diagnostic_info* nonnull %diagnostic) #8, !dbg !2333
  call void @llvm.va_end(i8* nonnull %1), !dbg !2334
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 742, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !2335
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2336
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !2336
  ret void, !dbg !2336
}

declare dso_local i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @real_abort() unnamed_addr #5 !dbg !2337 {
entry:
  tail call void @abort() #7, !dbg !2340
  ret void, !dbg !2341
}

declare dso_local void @abort() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1153, !1154, !1155}
!llvm.ident = !{!1156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global_diagnostic_context", scope: !2, file: !3, line: 58, type: !1069, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !260, globals: !1065, nameTableKind: None)
!3 = !DIFile(filename: "diagnostic.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !12, !17, !36, !43, !50, !244}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 104, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "pp_none", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "pp_before", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "pp_after", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !13)
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_ONCE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_NEVER", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !18, line: 280, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!20 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!24 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!27 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!30 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!31 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!32 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!33 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!34 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !18, line: 1817, baseType: !7, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !18, line: 1805, baseType: !7, size: 32, elements: !44)
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!46 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!47 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!48 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!49 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !18, line: 39, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!52 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!57 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!58 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!59 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!60 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!61 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!62 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!63 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!64 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!65 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!66 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!67 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!68 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!69 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!70 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!71 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!72 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!73 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!74 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!75 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!76 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!77 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!78 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!79 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!80 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!81 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!82 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!83 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!84 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!85 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!86 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!87 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!88 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!89 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!90 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!91 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!92 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!93 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!94 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!95 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!96 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!97 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!98 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!99 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!100 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!101 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!102 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!103 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!104 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!105 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!106 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!107 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!108 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!109 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!110 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!111 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!112 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!113 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!114 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!115 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!116 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!117 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!118 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!119 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!120 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!121 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!122 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!123 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!124 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!125 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!126 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!127 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!128 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!129 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!130 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!131 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!132 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!133 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!134 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!135 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!136 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!137 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!138 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!139 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!140 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!141 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!142 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!143 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!144 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!145 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!146 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!147 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!148 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!149 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!150 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!151 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!152 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!153 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!154 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!155 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!156 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!157 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!158 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!159 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!160 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!161 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!162 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!163 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!164 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!165 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!166 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!167 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!168 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!169 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!170 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!171 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!172 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!173 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!174 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!175 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!176 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!177 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!178 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!179 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!180 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!181 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!182 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!183 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!184 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!185 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!186 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!187 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!188 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!189 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!190 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!191 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!192 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!193 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!194 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!195 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!196 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!197 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!198 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!199 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!200 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!201 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!202 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!203 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!204 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!205 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!206 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!207 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!208 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!214 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!216 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!217 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!218 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!219 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!220 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!221 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!222 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!223 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!224 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!225 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!226 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!227 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!228 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!229 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!230 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!231 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!232 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!233 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!234 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!235 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!236 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!237 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!238 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!239 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!240 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!241 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!242 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!243 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 29, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "./diagnostic.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!247 = !DIEnumerator(name: "DK_UNSPECIFIED", value: 0, isUnsigned: true)
!248 = !DIEnumerator(name: "DK_IGNORED", value: 1, isUnsigned: true)
!249 = !DIEnumerator(name: "DK_FATAL", value: 2, isUnsigned: true)
!250 = !DIEnumerator(name: "DK_ICE", value: 3, isUnsigned: true)
!251 = !DIEnumerator(name: "DK_ERROR", value: 4, isUnsigned: true)
!252 = !DIEnumerator(name: "DK_SORRY", value: 5, isUnsigned: true)
!253 = !DIEnumerator(name: "DK_WARNING", value: 6, isUnsigned: true)
!254 = !DIEnumerator(name: "DK_ANACHRONISM", value: 7, isUnsigned: true)
!255 = !DIEnumerator(name: "DK_NOTE", value: 8, isUnsigned: true)
!256 = !DIEnumerator(name: "DK_DEBUG", value: 9, isUnsigned: true)
!257 = !DIEnumerator(name: "DK_PEDWARN", value: 10, isUnsigned: true)
!258 = !DIEnumerator(name: "DK_PERMERROR", value: 11, isUnsigned: true)
!259 = !DIEnumerator(name: "DK_LAST_DIAGNOSTIC_KIND", value: 12, isUnsigned: true)
!260 = !{!261, !262, !263, !264, !267, !268, !270, !429, !265}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!263 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pretty_printer", file: !6, line: 134, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pretty_print_info", file: !6, line: 158, size: 448, elements: !273)
!273 = !{!274, !388, !389, !391, !392, !393, !400, !1062, !1063, !1064}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !272, file: !6, line: 161, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_buffer", file: !6, line: 99, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 74, size: 2688, elements: !278)
!278 = !{!279, !312, !313, !315, !324, !383, !384}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "formatted_obstack", scope: !277, file: !6, line: 77, baseType: !280, size: 704)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !281, line: 164, size: 704, elements: !282)
!281 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!282 = !{!283, !285, !295, !296, !297, !298, !299, !300, !304, !308, !309, !310, !311}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !280, file: !281, line: 166, baseType: !284, size: 64)
!284 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !280, file: !281, line: 167, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !281, line: 157, size: 192, elements: !288)
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !287, file: !281, line: 159, baseType: !265, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !287, file: !281, line: 160, baseType: !286, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !287, file: !281, line: 161, baseType: !292, size: 32, offset: 128)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 32, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 4)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !280, file: !281, line: 168, baseType: !265, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !280, file: !281, line: 169, baseType: !265, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !280, file: !281, line: 170, baseType: !265, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !280, file: !281, line: 171, baseType: !284, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !280, file: !281, line: 172, baseType: !263, size: 32, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !280, file: !281, line: 176, baseType: !301, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!286, !267, !284}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !280, file: !281, line: 177, baseType: !305, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !267, !286}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !280, file: !281, line: 178, baseType: !267, size: 64, offset: 576)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !280, file: !281, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !280, file: !281, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !280, file: !281, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_obstack", scope: !277, file: !6, line: 81, baseType: !280, size: 704, offset: 704)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !277, file: !6, line: 85, baseType: !314, size: 64, offset: 1408)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chunk_array", scope: !277, file: !6, line: 88, baseType: !316, size: 64, offset: 1472)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_info", file: !6, line: 58, size: 3904, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !317, file: !6, line: 61, baseType: !316, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !317, file: !6, line: 69, baseType: !321, size: 3840, offset: 64)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 3840, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 60)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !277, file: !6, line: 91, baseType: !325, size: 64, offset: 1536)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !327, line: 7, baseType: !328)
!327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !329, line: 49, size: 1728, elements: !330)
!329 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !346, !348, !349, !350, !353, !355, !357, !361, !364, !366, !369, !372, !373, !374, !378, !379}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !328, file: !329, line: 51, baseType: !263, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !328, file: !329, line: 54, baseType: !265, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !328, file: !329, line: 55, baseType: !265, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !328, file: !329, line: 56, baseType: !265, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !328, file: !329, line: 57, baseType: !265, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !328, file: !329, line: 58, baseType: !265, size: 64, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !328, file: !329, line: 59, baseType: !265, size: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !328, file: !329, line: 60, baseType: !265, size: 64, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !328, file: !329, line: 61, baseType: !265, size: 64, offset: 512)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !328, file: !329, line: 64, baseType: !265, size: 64, offset: 576)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !328, file: !329, line: 65, baseType: !265, size: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !328, file: !329, line: 66, baseType: !265, size: 64, offset: 704)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !328, file: !329, line: 68, baseType: !344, size: 64, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !329, line: 36, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !328, file: !329, line: 70, baseType: !347, size: 64, offset: 832)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !328, file: !329, line: 72, baseType: !263, size: 32, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !328, file: !329, line: 73, baseType: !263, size: 32, offset: 928)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !328, file: !329, line: 74, baseType: !351, size: 64, offset: 960)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !352, line: 152, baseType: !284)
!352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !328, file: !329, line: 77, baseType: !354, size: 16, offset: 1024)
!354 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !328, file: !329, line: 78, baseType: !356, size: 8, offset: 1040)
!356 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !328, file: !329, line: 79, baseType: !358, size: 8, offset: 1048)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 8, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 1)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !328, file: !329, line: 81, baseType: !362, size: 64, offset: 1088)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !329, line: 43, baseType: null)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !328, file: !329, line: 89, baseType: !365, size: 64, offset: 1152)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !352, line: 153, baseType: !284)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !328, file: !329, line: 91, baseType: !367, size: 64, offset: 1216)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !329, line: 37, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !328, file: !329, line: 92, baseType: !370, size: 64, offset: 1280)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !329, line: 38, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !328, file: !329, line: 93, baseType: !347, size: 64, offset: 1344)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !328, file: !329, line: 94, baseType: !267, size: 64, offset: 1408)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !328, file: !329, line: 95, baseType: !375, size: 64, offset: 1472)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !376, line: 46, baseType: !377)
!376 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!377 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !328, file: !329, line: 96, baseType: !263, size: 32, offset: 1536)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !328, file: !329, line: 98, baseType: !380, size: 160, offset: 1568)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 160, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 20)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !277, file: !6, line: 94, baseType: !263, size: 32, offset: 1600)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "digit_buffer", scope: !277, file: !6, line: 98, baseType: !385, size: 1024, offset: 1632)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 1024, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !272, file: !6, line: 164, baseType: !268, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !272, file: !6, line: 167, baseType: !390, size: 32, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_padding", file: !6, line: 107, baseType: !5)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_length", scope: !272, file: !6, line: 171, baseType: !263, size: 32, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "indent_skip", scope: !272, file: !6, line: 174, baseType: !263, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wrapping", scope: !272, file: !6, line: 177, baseType: !394, size: 64, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_wrapping_mode_t", file: !6, line: 119, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 111, size: 64, elements: !396)
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rule", scope: !395, file: !6, line: 114, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_prefixing_rule_t", file: !6, line: 51, baseType: !12)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "line_cutoff", scope: !395, file: !6, line: 118, baseType: !263, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "format_decoder", scope: !272, file: !6, line: 187, baseType: !401, size: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "printer_fn", file: !6, line: 135, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!262, !270, !405, !268, !263, !262, !262, !262}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !6, line: 39, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 32, size: 320, elements: !408)
!408 = !{!409, !410, !424, !425, !431}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !407, file: !6, line: 34, baseType: !268, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !407, file: !6, line: 35, baseType: !411, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !413, line: 52, baseType: !414)
!413 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !415, line: 32, baseType: !416)
!415 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 59, baseType: !417)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 192, elements: !359)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !419)
!419 = !{!420, !421, !422, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !418, file: !3, baseType: !7, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !418, file: !3, baseType: !7, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !418, file: !3, baseType: !267, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !418, file: !3, baseType: !267, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !407, file: !6, line: 36, baseType: !263, size: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !407, file: !6, line: 37, baseType: !426, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !428, line: 58, baseType: !429)
!428 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !430, line: 44, baseType: !7)
!430 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!431 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !407, file: !6, line: 38, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !434, line: 56, baseType: !435)
!434 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !18, line: 3371, size: 1792, elements: !437)
!437 = !{!438, !471, !477, !488, !495, !502, !507, !513, !519, !532, !540, !578, !586, !614, !622, !623, !628, !637, !643, !648, !652, !656, !685, !734, !740, !747, !754, !779, !804, !821, !833, !855, !873, !1044}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !436, file: !18, line: 3372, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !18, line: 360, size: 64, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !439, file: !18, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !439, file: !18, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !439, file: !18, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !439, file: !18, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !439, file: !18, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !439, file: !18, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !439, file: !18, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !439, file: !18, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !439, file: !18, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !439, file: !18, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !439, file: !18, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !439, file: !18, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !439, file: !18, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !439, file: !18, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !439, file: !18, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !439, file: !18, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !439, file: !18, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !439, file: !18, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !439, file: !18, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !439, file: !18, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !439, file: !18, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !439, file: !18, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !439, file: !18, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !439, file: !18, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !439, file: !18, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !439, file: !18, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !439, file: !18, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !439, file: !18, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !439, file: !18, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !439, file: !18, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !436, file: !18, line: 3373, baseType: !472, size: 192)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !18, line: 402, size: 192, elements: !473)
!473 = !{!474, !475, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !472, file: !18, line: 403, baseType: !439, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !472, file: !18, line: 404, baseType: !433, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !18, line: 405, baseType: !433, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !436, file: !18, line: 3374, baseType: !478, size: 320)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !18, line: 1384, size: 320, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !478, file: !18, line: 1385, baseType: !472, size: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !478, file: !18, line: 1386, baseType: !482, size: 128, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !483, line: 58, baseType: !484)
!483 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !483, line: 54, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !484, file: !483, line: 56, baseType: !377, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !484, file: !483, line: 57, baseType: !284, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !436, file: !18, line: 3375, baseType: !489, size: 256)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !18, line: 1397, size: 256, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !489, file: !18, line: 1398, baseType: !472, size: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !489, file: !18, line: 1399, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !18, line: 1392, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !436, file: !18, line: 3376, baseType: !496, size: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !18, line: 1408, size: 256, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !496, file: !18, line: 1409, baseType: !472, size: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !496, file: !18, line: 1410, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !18, line: 1403, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !436, file: !18, line: 3377, baseType: !503, size: 256)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !18, line: 1437, size: 256, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !503, file: !18, line: 1438, baseType: !472, size: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !503, file: !18, line: 1439, baseType: !433, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !436, file: !18, line: 3378, baseType: !508, size: 256)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !18, line: 1418, size: 256, elements: !509)
!509 = !{!510, !511, !512}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !508, file: !18, line: 1419, baseType: !472, size: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !508, file: !18, line: 1420, baseType: !263, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !508, file: !18, line: 1421, baseType: !358, size: 8, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !436, file: !18, line: 3379, baseType: !514, size: 320)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !18, line: 1428, size: 320, elements: !515)
!515 = !{!516, !517, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !514, file: !18, line: 1429, baseType: !472, size: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !514, file: !18, line: 1430, baseType: !433, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !514, file: !18, line: 1431, baseType: !433, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !436, file: !18, line: 3380, baseType: !520, size: 320)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !18, line: 1460, size: 320, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !520, file: !18, line: 1461, baseType: !472, size: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !520, file: !18, line: 1462, baseType: !524, size: 128, offset: 192)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !525, line: 31, size: 128, elements: !526)
!525 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!526 = !{!527, !530, !531}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !524, file: !525, line: 32, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !524, file: !525, line: 33, baseType: !7, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !524, file: !525, line: 34, baseType: !7, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !436, file: !18, line: 3381, baseType: !533, size: 384)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !18, line: 2507, size: 384, elements: !534)
!534 = !{!535, !536, !537, !538, !539}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !533, file: !18, line: 2508, baseType: !472, size: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !533, file: !18, line: 2509, baseType: !427, size: 32, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !533, file: !18, line: 2510, baseType: !7, size: 32, offset: 224)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !533, file: !18, line: 2511, baseType: !433, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !533, file: !18, line: 2512, baseType: !433, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !436, file: !18, line: 3382, baseType: !541, size: 896)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !18, line: 2652, size: 896, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !541, file: !18, line: 2653, baseType: !533, size: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !541, file: !18, line: 2654, baseType: !433, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !541, file: !18, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !541, file: !18, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !541, file: !18, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !541, file: !18, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !541, file: !18, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !541, file: !18, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !541, file: !18, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !541, file: !18, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !541, file: !18, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !541, file: !18, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !541, file: !18, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !541, file: !18, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !541, file: !18, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !541, file: !18, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !541, file: !18, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !541, file: !18, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !541, file: !18, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !541, file: !18, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !541, file: !18, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !541, file: !18, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !541, file: !18, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !541, file: !18, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !541, file: !18, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !541, file: !18, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !541, file: !18, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !541, file: !18, line: 2703, baseType: !7, size: 32, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !541, file: !18, line: 2705, baseType: !433, size: 64, offset: 576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !541, file: !18, line: 2706, baseType: !433, size: 64, offset: 640)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !541, file: !18, line: 2707, baseType: !433, size: 64, offset: 704)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !541, file: !18, line: 2708, baseType: !433, size: 64, offset: 768)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !541, file: !18, line: 2711, baseType: !576, size: 64, offset: 832)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !18, line: 2711, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !436, file: !18, line: 3383, baseType: !579, size: 960)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !18, line: 2756, size: 960, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !579, file: !18, line: 2757, baseType: !541, size: 896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !579, file: !18, line: 2758, baseType: !583, size: 64, offset: 896)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !434, line: 50, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !434, line: 49, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !436, file: !18, line: 3384, baseType: !587, size: 1472)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !18, line: 3114, size: 1472, elements: !588)
!588 = !{!589, !610, !611, !612, !613}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !587, file: !18, line: 3115, baseType: !590, size: 1216)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !18, line: 2984, size: 1216, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !590, file: !18, line: 2985, baseType: !579, size: 960)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !590, file: !18, line: 2986, baseType: !433, size: 64, offset: 960)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !590, file: !18, line: 2987, baseType: !433, size: 64, offset: 1024)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !590, file: !18, line: 2988, baseType: !433, size: 64, offset: 1088)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !590, file: !18, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !590, file: !18, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !590, file: !18, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !590, file: !18, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !590, file: !18, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !590, file: !18, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !590, file: !18, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !590, file: !18, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !590, file: !18, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !590, file: !18, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !590, file: !18, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !590, file: !18, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !590, file: !18, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !590, file: !18, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !587, file: !18, line: 3117, baseType: !433, size: 64, offset: 1216)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !587, file: !18, line: 3119, baseType: !433, size: 64, offset: 1280)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !587, file: !18, line: 3121, baseType: !433, size: 64, offset: 1344)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !587, file: !18, line: 3123, baseType: !433, size: 64, offset: 1408)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !436, file: !18, line: 3385, baseType: !615, size: 1088)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !18, line: 2874, size: 1088, elements: !616)
!616 = !{!617, !618, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !615, file: !18, line: 2875, baseType: !579, size: 960)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !615, file: !18, line: 2876, baseType: !583, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !615, file: !18, line: 2877, baseType: !620, size: 64, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !18, line: 2856, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !436, file: !18, line: 3386, baseType: !590, size: 1216)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !436, file: !18, line: 3387, baseType: !624, size: 1280)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !18, line: 3093, size: 1280, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !624, file: !18, line: 3094, baseType: !590, size: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !624, file: !18, line: 3095, baseType: !620, size: 64, offset: 1216)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !436, file: !18, line: 3388, baseType: !629, size: 1216)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !18, line: 2824, size: 1216, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !629, file: !18, line: 2825, baseType: !541, size: 896)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !629, file: !18, line: 2827, baseType: !433, size: 64, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !629, file: !18, line: 2828, baseType: !433, size: 64, offset: 960)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !629, file: !18, line: 2829, baseType: !433, size: 64, offset: 1024)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !629, file: !18, line: 2830, baseType: !433, size: 64, offset: 1088)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !629, file: !18, line: 2831, baseType: !433, size: 64, offset: 1152)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !436, file: !18, line: 3389, baseType: !638, size: 1024)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !18, line: 2850, size: 1024, elements: !639)
!639 = !{!640, !641, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !638, file: !18, line: 2851, baseType: !579, size: 960)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !638, file: !18, line: 2852, baseType: !263, size: 32, offset: 960)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !638, file: !18, line: 2853, baseType: !263, size: 32, offset: 992)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !436, file: !18, line: 3390, baseType: !644, size: 1024)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !18, line: 2857, size: 1024, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !644, file: !18, line: 2858, baseType: !579, size: 960)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !644, file: !18, line: 2859, baseType: !620, size: 64, offset: 960)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !436, file: !18, line: 3391, baseType: !649, size: 960)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !18, line: 2862, size: 960, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !649, file: !18, line: 2863, baseType: !579, size: 960)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !436, file: !18, line: 3392, baseType: !653, size: 1472)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !18, line: 3304, size: 1472, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !653, file: !18, line: 3305, baseType: !587, size: 1472)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !436, file: !18, line: 3393, baseType: !657, size: 1792)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !18, line: 3248, size: 1792, elements: !658)
!658 = !{!659, !660, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !657, file: !18, line: 3249, baseType: !587, size: 1472)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !657, file: !18, line: 3251, baseType: !661, size: 64, offset: 1472)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !663, line: 41, flags: DIFlagFwdDecl)
!663 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!664 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !657, file: !18, line: 3254, baseType: !433, size: 64, offset: 1536)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !657, file: !18, line: 3257, baseType: !433, size: 64, offset: 1600)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !657, file: !18, line: 3258, baseType: !433, size: 64, offset: 1664)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !657, file: !18, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !657, file: !18, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !657, file: !18, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !657, file: !18, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !657, file: !18, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !657, file: !18, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !657, file: !18, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !657, file: !18, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !657, file: !18, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !657, file: !18, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !657, file: !18, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !657, file: !18, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !657, file: !18, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !657, file: !18, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !657, file: !18, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !657, file: !18, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !657, file: !18, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !657, file: !18, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !436, file: !18, line: 3394, baseType: !686, size: 1344)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !18, line: 2279, size: 1344, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !713, !714, !715, !723, !724, !725, !726, !727, !728, !729, !730, !731}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !686, file: !18, line: 2280, baseType: !472, size: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !686, file: !18, line: 2281, baseType: !433, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !686, file: !18, line: 2282, baseType: !433, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !686, file: !18, line: 2283, baseType: !433, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !686, file: !18, line: 2284, baseType: !433, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !686, file: !18, line: 2285, baseType: !7, size: 32, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !686, file: !18, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !686, file: !18, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !686, file: !18, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !686, file: !18, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !686, file: !18, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !686, file: !18, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !686, file: !18, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !686, file: !18, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !686, file: !18, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !686, file: !18, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !686, file: !18, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !686, file: !18, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !686, file: !18, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !686, file: !18, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !686, file: !18, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !686, file: !18, line: 2305, baseType: !7, size: 32, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !686, file: !18, line: 2306, baseType: !711, size: 32, offset: 544)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !712, line: 31, baseType: !263)
!712 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !686, file: !18, line: 2307, baseType: !433, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !686, file: !18, line: 2308, baseType: !433, size: 64, offset: 640)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !686, file: !18, line: 2314, baseType: !716, size: 64, offset: 704)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !18, line: 2309, size: 64, elements: !717)
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !716, file: !18, line: 2310, baseType: !263, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !716, file: !18, line: 2311, baseType: !268, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !716, file: !18, line: 2312, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !18, line: 2277, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !686, file: !18, line: 2315, baseType: !433, size: 64, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !686, file: !18, line: 2316, baseType: !433, size: 64, offset: 832)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !686, file: !18, line: 2317, baseType: !433, size: 64, offset: 896)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !686, file: !18, line: 2318, baseType: !433, size: 64, offset: 960)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !686, file: !18, line: 2319, baseType: !433, size: 64, offset: 1024)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !686, file: !18, line: 2320, baseType: !433, size: 64, offset: 1088)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !686, file: !18, line: 2321, baseType: !433, size: 64, offset: 1152)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !686, file: !18, line: 2322, baseType: !433, size: 64, offset: 1216)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !686, file: !18, line: 2324, baseType: !732, size: 64, offset: 1280)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !18, line: 2324, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !436, file: !18, line: 3395, baseType: !735, size: 320)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !18, line: 1469, size: 320, elements: !736)
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !735, file: !18, line: 1470, baseType: !472, size: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !735, file: !18, line: 1471, baseType: !433, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !18, line: 1472, baseType: !433, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !436, file: !18, line: 3396, baseType: !741, size: 320)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !18, line: 1482, size: 320, elements: !742)
!742 = !{!743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !741, file: !18, line: 1483, baseType: !472, size: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !741, file: !18, line: 1484, baseType: !263, size: 32, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !741, file: !18, line: 1485, baseType: !746, size: 64, offset: 256)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 64, elements: !359)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !436, file: !18, line: 3397, baseType: !748, size: 384)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !18, line: 1829, size: 384, elements: !749)
!749 = !{!750, !751, !752, !753}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !748, file: !18, line: 1830, baseType: !472, size: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !748, file: !18, line: 1831, baseType: !427, size: 32, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !748, file: !18, line: 1832, baseType: !433, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !748, file: !18, line: 1835, baseType: !746, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !436, file: !18, line: 3398, baseType: !755, size: 704)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !18, line: 1898, size: 704, elements: !756)
!756 = !{!757, !758, !759, !763, !764, !767}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !755, file: !18, line: 1899, baseType: !472, size: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !755, file: !18, line: 1902, baseType: !433, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !755, file: !18, line: 1905, baseType: !760, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !434, line: 58, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !434, line: 57, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !755, file: !18, line: 1908, baseType: !7, size: 32, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !755, file: !18, line: 1911, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !18, line: 1876, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !755, file: !18, line: 1914, baseType: !768, size: 256, offset: 448)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !18, line: 1883, size: 256, elements: !769)
!769 = !{!770, !772, !773, !778}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !768, file: !18, line: 1884, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !768, file: !18, line: 1885, baseType: !771, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !768, file: !18, line: 1891, baseType: !774, size: 64, offset: 128)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !768, file: !18, line: 1891, size: 64, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !774, file: !18, line: 1891, baseType: !760, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !774, file: !18, line: 1891, baseType: !433, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !768, file: !18, line: 1892, baseType: !432, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !436, file: !18, line: 3399, baseType: !780, size: 704)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !18, line: 2008, size: 704, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !799, !800, !801, !802, !803}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !780, file: !18, line: 2009, baseType: !472, size: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !780, file: !18, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !780, file: !18, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !780, file: !18, line: 2014, baseType: !427, size: 32, offset: 224)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !780, file: !18, line: 2016, baseType: !433, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !780, file: !18, line: 2017, baseType: !788, size: 64, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !18, line: 183, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !18, line: 183, size: 128, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !790, file: !18, line: 183, baseType: !793, size: 128)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !18, line: 182, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !18, line: 182, size: 128, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !794, file: !18, line: 182, baseType: !7, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !794, file: !18, line: 182, baseType: !7, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !794, file: !18, line: 182, baseType: !746, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !780, file: !18, line: 2019, baseType: !433, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !780, file: !18, line: 2020, baseType: !433, size: 64, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !780, file: !18, line: 2021, baseType: !433, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !780, file: !18, line: 2022, baseType: !433, size: 64, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !780, file: !18, line: 2023, baseType: !433, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !436, file: !18, line: 3400, baseType: !805, size: 832)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !18, line: 2430, size: 832, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !805, file: !18, line: 2431, baseType: !472, size: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !805, file: !18, line: 2433, baseType: !433, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !805, file: !18, line: 2434, baseType: !433, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !805, file: !18, line: 2435, baseType: !433, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !805, file: !18, line: 2436, baseType: !433, size: 64, offset: 384)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !805, file: !18, line: 2437, baseType: !788, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !805, file: !18, line: 2438, baseType: !433, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !805, file: !18, line: 2440, baseType: !433, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !805, file: !18, line: 2441, baseType: !433, size: 64, offset: 640)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !805, file: !18, line: 2443, baseType: !817, size: 128, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !18, line: 182, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !18, line: 182, size: 128, elements: !819)
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !818, file: !18, line: 182, baseType: !793, size: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !436, file: !18, line: 3401, baseType: !822, size: 320)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !18, line: 3327, size: 320, elements: !823)
!823 = !{!824, !825, !832}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !822, file: !18, line: 3329, baseType: !472, size: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !822, file: !18, line: 3330, baseType: !826, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !18, line: 3320, size: 192, elements: !828)
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !827, file: !18, line: 3322, baseType: !826, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !827, file: !18, line: 3323, baseType: !826, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !827, file: !18, line: 3324, baseType: !433, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !822, file: !18, line: 3331, baseType: !826, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !436, file: !18, line: 3402, baseType: !834, size: 256)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !18, line: 1540, size: 256, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !834, file: !18, line: 1541, baseType: !472, size: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !834, file: !18, line: 1542, baseType: !838, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !18, line: 1538, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !18, line: 1538, size: 192, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !840, file: !18, line: 1538, baseType: !843, size: 192)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !18, line: 1537, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !18, line: 1537, size: 192, elements: !845)
!845 = !{!846, !847, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !844, file: !18, line: 1537, baseType: !7, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !844, file: !18, line: 1537, baseType: !7, size: 32, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !844, file: !18, line: 1537, baseType: !849, size: 128, offset: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 128, elements: !359)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !18, line: 1535, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !18, line: 1532, size: 128, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !851, file: !18, line: 1533, baseType: !433, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !851, file: !18, line: 1534, baseType: !433, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !436, file: !18, line: 3403, baseType: !856, size: 512)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !18, line: 1938, size: 512, elements: !857)
!857 = !{!858, !859, !860, !861, !867, !871, !872}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !856, file: !18, line: 1939, baseType: !472, size: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !856, file: !18, line: 1940, baseType: !427, size: 32, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !856, file: !18, line: 1941, baseType: !17, size: 32, offset: 224)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !856, file: !18, line: 1946, baseType: !862, size: 32, offset: 256)
!862 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !18, line: 1942, size: 32, elements: !863)
!863 = !{!864, !865, !866}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !862, file: !18, line: 1943, baseType: !36, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !862, file: !18, line: 1944, baseType: !43, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !862, file: !18, line: 1945, baseType: !50, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !856, file: !18, line: 1950, baseType: !868, size: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !434, line: 66, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !434, line: 65, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !856, file: !18, line: 1951, baseType: !868, size: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !856, file: !18, line: 1953, baseType: !746, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !436, file: !18, line: 3404, baseType: !874, size: 1664)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !18, line: 3337, size: 1664, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !874, file: !18, line: 3338, baseType: !472, size: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !874, file: !18, line: 3341, baseType: !878, size: 1472, offset: 192)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !879, line: 410, size: 1472, elements: !880)
!879 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!880 = !{!881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !878, file: !879, line: 412, baseType: !263, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !878, file: !879, line: 413, baseType: !263, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !878, file: !879, line: 414, baseType: !263, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !878, file: !879, line: 415, baseType: !263, size: 32, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !878, file: !879, line: 416, baseType: !263, size: 32, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !878, file: !879, line: 417, baseType: !263, size: 32, offset: 160)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !878, file: !879, line: 418, baseType: !262, size: 8, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !878, file: !879, line: 419, baseType: !262, size: 8, offset: 200)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !878, file: !879, line: 420, baseType: !356, size: 8, offset: 208)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !878, file: !879, line: 421, baseType: !356, size: 8, offset: 216)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !878, file: !879, line: 422, baseType: !356, size: 8, offset: 224)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !878, file: !879, line: 423, baseType: !356, size: 8, offset: 232)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !878, file: !879, line: 424, baseType: !356, size: 8, offset: 240)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !878, file: !879, line: 425, baseType: !356, size: 8, offset: 248)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !878, file: !879, line: 426, baseType: !356, size: 8, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !878, file: !879, line: 427, baseType: !356, size: 8, offset: 264)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !878, file: !879, line: 428, baseType: !356, size: 8, offset: 272)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !878, file: !879, line: 429, baseType: !356, size: 8, offset: 280)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !878, file: !879, line: 430, baseType: !356, size: 8, offset: 288)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !878, file: !879, line: 431, baseType: !356, size: 8, offset: 296)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !878, file: !879, line: 432, baseType: !356, size: 8, offset: 304)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !878, file: !879, line: 433, baseType: !356, size: 8, offset: 312)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !878, file: !879, line: 434, baseType: !356, size: 8, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !878, file: !879, line: 435, baseType: !356, size: 8, offset: 328)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !878, file: !879, line: 436, baseType: !356, size: 8, offset: 336)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !878, file: !879, line: 437, baseType: !356, size: 8, offset: 344)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !878, file: !879, line: 438, baseType: !356, size: 8, offset: 352)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !878, file: !879, line: 439, baseType: !356, size: 8, offset: 360)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !878, file: !879, line: 440, baseType: !356, size: 8, offset: 368)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !878, file: !879, line: 441, baseType: !356, size: 8, offset: 376)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !878, file: !879, line: 442, baseType: !356, size: 8, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !878, file: !879, line: 443, baseType: !356, size: 8, offset: 392)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !878, file: !879, line: 444, baseType: !356, size: 8, offset: 400)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !878, file: !879, line: 445, baseType: !356, size: 8, offset: 408)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !878, file: !879, line: 446, baseType: !356, size: 8, offset: 416)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !878, file: !879, line: 447, baseType: !356, size: 8, offset: 424)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !878, file: !879, line: 448, baseType: !356, size: 8, offset: 432)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !878, file: !879, line: 449, baseType: !356, size: 8, offset: 440)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !878, file: !879, line: 450, baseType: !356, size: 8, offset: 448)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !878, file: !879, line: 451, baseType: !356, size: 8, offset: 456)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !878, file: !879, line: 452, baseType: !356, size: 8, offset: 464)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !878, file: !879, line: 453, baseType: !356, size: 8, offset: 472)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !878, file: !879, line: 454, baseType: !356, size: 8, offset: 480)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !878, file: !879, line: 455, baseType: !356, size: 8, offset: 488)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !878, file: !879, line: 456, baseType: !356, size: 8, offset: 496)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !878, file: !879, line: 457, baseType: !356, size: 8, offset: 504)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !878, file: !879, line: 458, baseType: !356, size: 8, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !878, file: !879, line: 459, baseType: !356, size: 8, offset: 520)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !878, file: !879, line: 460, baseType: !356, size: 8, offset: 528)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !878, file: !879, line: 461, baseType: !356, size: 8, offset: 536)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !878, file: !879, line: 462, baseType: !356, size: 8, offset: 544)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !878, file: !879, line: 463, baseType: !356, size: 8, offset: 552)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !878, file: !879, line: 464, baseType: !356, size: 8, offset: 560)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !878, file: !879, line: 465, baseType: !356, size: 8, offset: 568)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !878, file: !879, line: 466, baseType: !356, size: 8, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !878, file: !879, line: 467, baseType: !356, size: 8, offset: 584)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !878, file: !879, line: 468, baseType: !356, size: 8, offset: 592)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !878, file: !879, line: 469, baseType: !356, size: 8, offset: 600)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !878, file: !879, line: 470, baseType: !356, size: 8, offset: 608)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !878, file: !879, line: 471, baseType: !356, size: 8, offset: 616)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !878, file: !879, line: 472, baseType: !356, size: 8, offset: 624)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !878, file: !879, line: 473, baseType: !356, size: 8, offset: 632)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !878, file: !879, line: 474, baseType: !356, size: 8, offset: 640)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !878, file: !879, line: 475, baseType: !356, size: 8, offset: 648)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !878, file: !879, line: 476, baseType: !356, size: 8, offset: 656)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !878, file: !879, line: 477, baseType: !356, size: 8, offset: 664)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !878, file: !879, line: 478, baseType: !356, size: 8, offset: 672)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !878, file: !879, line: 479, baseType: !356, size: 8, offset: 680)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !878, file: !879, line: 480, baseType: !356, size: 8, offset: 688)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !878, file: !879, line: 481, baseType: !356, size: 8, offset: 696)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !878, file: !879, line: 482, baseType: !356, size: 8, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !878, file: !879, line: 483, baseType: !356, size: 8, offset: 712)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !878, file: !879, line: 484, baseType: !356, size: 8, offset: 720)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !878, file: !879, line: 485, baseType: !356, size: 8, offset: 728)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !878, file: !879, line: 486, baseType: !356, size: 8, offset: 736)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !878, file: !879, line: 487, baseType: !356, size: 8, offset: 744)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !878, file: !879, line: 488, baseType: !356, size: 8, offset: 752)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !878, file: !879, line: 489, baseType: !356, size: 8, offset: 760)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !878, file: !879, line: 490, baseType: !356, size: 8, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !878, file: !879, line: 491, baseType: !356, size: 8, offset: 776)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !878, file: !879, line: 492, baseType: !356, size: 8, offset: 784)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !878, file: !879, line: 493, baseType: !356, size: 8, offset: 792)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !878, file: !879, line: 494, baseType: !356, size: 8, offset: 800)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !878, file: !879, line: 495, baseType: !356, size: 8, offset: 808)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !878, file: !879, line: 496, baseType: !356, size: 8, offset: 816)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !878, file: !879, line: 497, baseType: !356, size: 8, offset: 824)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !878, file: !879, line: 498, baseType: !356, size: 8, offset: 832)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !878, file: !879, line: 499, baseType: !356, size: 8, offset: 840)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !878, file: !879, line: 500, baseType: !356, size: 8, offset: 848)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !878, file: !879, line: 501, baseType: !356, size: 8, offset: 856)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !878, file: !879, line: 502, baseType: !356, size: 8, offset: 864)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !878, file: !879, line: 503, baseType: !356, size: 8, offset: 872)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !878, file: !879, line: 504, baseType: !356, size: 8, offset: 880)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !878, file: !879, line: 505, baseType: !356, size: 8, offset: 888)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !878, file: !879, line: 506, baseType: !356, size: 8, offset: 896)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !878, file: !879, line: 507, baseType: !356, size: 8, offset: 904)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !878, file: !879, line: 508, baseType: !356, size: 8, offset: 912)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !878, file: !879, line: 509, baseType: !356, size: 8, offset: 920)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !878, file: !879, line: 510, baseType: !356, size: 8, offset: 928)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !878, file: !879, line: 511, baseType: !356, size: 8, offset: 936)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !878, file: !879, line: 512, baseType: !356, size: 8, offset: 944)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !878, file: !879, line: 513, baseType: !356, size: 8, offset: 952)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !878, file: !879, line: 514, baseType: !356, size: 8, offset: 960)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !878, file: !879, line: 515, baseType: !356, size: 8, offset: 968)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !878, file: !879, line: 516, baseType: !356, size: 8, offset: 976)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !878, file: !879, line: 517, baseType: !356, size: 8, offset: 984)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !878, file: !879, line: 518, baseType: !356, size: 8, offset: 992)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !878, file: !879, line: 519, baseType: !356, size: 8, offset: 1000)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !878, file: !879, line: 520, baseType: !356, size: 8, offset: 1008)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !878, file: !879, line: 521, baseType: !356, size: 8, offset: 1016)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !878, file: !879, line: 522, baseType: !356, size: 8, offset: 1024)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !878, file: !879, line: 523, baseType: !356, size: 8, offset: 1032)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !878, file: !879, line: 524, baseType: !356, size: 8, offset: 1040)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !878, file: !879, line: 525, baseType: !356, size: 8, offset: 1048)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !878, file: !879, line: 526, baseType: !356, size: 8, offset: 1056)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !878, file: !879, line: 527, baseType: !356, size: 8, offset: 1064)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !878, file: !879, line: 528, baseType: !356, size: 8, offset: 1072)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !878, file: !879, line: 529, baseType: !356, size: 8, offset: 1080)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !878, file: !879, line: 530, baseType: !356, size: 8, offset: 1088)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !878, file: !879, line: 531, baseType: !356, size: 8, offset: 1096)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !878, file: !879, line: 532, baseType: !356, size: 8, offset: 1104)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !878, file: !879, line: 533, baseType: !356, size: 8, offset: 1112)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !878, file: !879, line: 534, baseType: !356, size: 8, offset: 1120)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !878, file: !879, line: 535, baseType: !356, size: 8, offset: 1128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !878, file: !879, line: 536, baseType: !356, size: 8, offset: 1136)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !878, file: !879, line: 537, baseType: !356, size: 8, offset: 1144)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !878, file: !879, line: 538, baseType: !356, size: 8, offset: 1152)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !878, file: !879, line: 539, baseType: !356, size: 8, offset: 1160)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !878, file: !879, line: 540, baseType: !356, size: 8, offset: 1168)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !878, file: !879, line: 541, baseType: !356, size: 8, offset: 1176)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !878, file: !879, line: 542, baseType: !356, size: 8, offset: 1184)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !878, file: !879, line: 543, baseType: !356, size: 8, offset: 1192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !878, file: !879, line: 544, baseType: !356, size: 8, offset: 1200)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !878, file: !879, line: 545, baseType: !356, size: 8, offset: 1208)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !878, file: !879, line: 546, baseType: !356, size: 8, offset: 1216)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !878, file: !879, line: 547, baseType: !356, size: 8, offset: 1224)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !878, file: !879, line: 548, baseType: !356, size: 8, offset: 1232)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !878, file: !879, line: 549, baseType: !356, size: 8, offset: 1240)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !878, file: !879, line: 550, baseType: !356, size: 8, offset: 1248)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !878, file: !879, line: 551, baseType: !356, size: 8, offset: 1256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !878, file: !879, line: 552, baseType: !356, size: 8, offset: 1264)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !878, file: !879, line: 553, baseType: !356, size: 8, offset: 1272)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !878, file: !879, line: 554, baseType: !356, size: 8, offset: 1280)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !878, file: !879, line: 555, baseType: !356, size: 8, offset: 1288)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !878, file: !879, line: 556, baseType: !356, size: 8, offset: 1296)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !878, file: !879, line: 557, baseType: !356, size: 8, offset: 1304)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !878, file: !879, line: 558, baseType: !356, size: 8, offset: 1312)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !878, file: !879, line: 559, baseType: !356, size: 8, offset: 1320)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !878, file: !879, line: 560, baseType: !356, size: 8, offset: 1328)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !878, file: !879, line: 561, baseType: !356, size: 8, offset: 1336)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !878, file: !879, line: 562, baseType: !356, size: 8, offset: 1344)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !878, file: !879, line: 563, baseType: !356, size: 8, offset: 1352)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !878, file: !879, line: 564, baseType: !356, size: 8, offset: 1360)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !878, file: !879, line: 565, baseType: !356, size: 8, offset: 1368)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !878, file: !879, line: 566, baseType: !356, size: 8, offset: 1376)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !878, file: !879, line: 567, baseType: !356, size: 8, offset: 1384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !878, file: !879, line: 568, baseType: !356, size: 8, offset: 1392)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !878, file: !879, line: 569, baseType: !356, size: 8, offset: 1400)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !878, file: !879, line: 570, baseType: !356, size: 8, offset: 1408)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !878, file: !879, line: 571, baseType: !356, size: 8, offset: 1416)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !878, file: !879, line: 572, baseType: !356, size: 8, offset: 1424)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !878, file: !879, line: 573, baseType: !356, size: 8, offset: 1432)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !878, file: !879, line: 574, baseType: !356, size: 8, offset: 1440)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !436, file: !18, line: 3405, baseType: !1045, size: 384)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !18, line: 3352, size: 384, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1045, file: !18, line: 3353, baseType: !472, size: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1045, file: !18, line: 3356, baseType: !1049, size: 192, offset: 192)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !879, line: 578, size: 192, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1049, file: !879, line: 580, baseType: !263, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1049, file: !879, line: 581, baseType: !263, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1049, file: !879, line: 582, baseType: !263, size: 32, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1049, file: !879, line: 583, baseType: !263, size: 32, offset: 96)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1049, file: !879, line: 584, baseType: !262, size: 8, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1049, file: !879, line: 585, baseType: !262, size: 8, offset: 136)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1049, file: !879, line: 586, baseType: !262, size: 8, offset: 144)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1049, file: !879, line: 587, baseType: !262, size: 8, offset: 152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1049, file: !879, line: 588, baseType: !262, size: 8, offset: 160)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1049, file: !879, line: 589, baseType: !262, size: 8, offset: 168)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1049, file: !879, line: 590, baseType: !262, size: 8, offset: 176)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "emitted_prefix", scope: !272, file: !6, line: 190, baseType: !262, size: 8, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "need_newline", scope: !272, file: !6, line: 193, baseType: !262, size: 8, offset: 392)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "translate_identifiers", scope: !272, file: !6, line: 197, baseType: !262, size: 8, offset: 400)
!1065 = !{!1066, !1123, !1143, !0}
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(name: "global_dc", scope: !2, file: !3, line: 59, type: !1068, isLocal: false, isDefinition: true)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_context", file: !245, line: 55, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_context", file: !245, line: 62, size: 28736, elements: !1071)
!1071 = !{!1072, !1073, !1077, !1078, !1079, !1084, !1085, !1086, !1101, !1103, !1107, !1108, !1121, !1122}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "printer", scope: !1070, file: !245, line: 65, baseType: !270, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "diagnostic_count", scope: !1070, file: !245, line: 68, baseType: !1074, size: 384, offset: 64)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 384, elements: !1075)
!1075 = !{!1076}
!1076 = !DISubrange(count: 12)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "issue_warnings_are_errors_message", scope: !1070, file: !245, line: 72, baseType: !262, size: 8, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "warning_as_error_requested", scope: !1070, file: !245, line: 75, baseType: !262, size: 8, offset: 456)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "classify_diagnostic", scope: !1070, file: !245, line: 82, baseType: !1080, size: 27840, offset: 480)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1081, size: 27840, elements: !1082)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_t", file: !245, line: 35, baseType: !244)
!1082 = !{!1083}
!1083 = !DISubrange(count: 870)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "show_option_requested", scope: !1070, file: !245, line: 86, baseType: !262, size: 8, offset: 28320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "abort_on_error", scope: !1070, file: !245, line: 89, baseType: !262, size: 8, offset: 28328)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "begin_diagnostic", scope: !1070, file: !245, line: 98, baseType: !1087, size: 64, offset: 28352)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_starter_fn", file: !245, line: 56, baseType: !1088)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1068, !1091}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_info", file: !245, line: 52, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_info", file: !245, line: 40, size: 512, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !1093, file: !245, line: 42, baseType: !406, size: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !1093, file: !245, line: 43, baseType: !427, size: 32, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "override_column", scope: !1093, file: !245, line: 44, baseType: !7, size: 32, offset: 352)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1093, file: !245, line: 47, baseType: !433, size: 64, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !1093, file: !245, line: 49, baseType: !1081, size: 32, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "option_index", scope: !1093, file: !245, line: 51, baseType: !263, size: 32, offset: 480)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "end_diagnostic", scope: !1070, file: !245, line: 101, baseType: !1102, size: 64, offset: 28416)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_finalizer_fn", file: !245, line: 58, baseType: !1087)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "internal_error", scope: !1070, file: !245, line: 104, baseType: !1104, size: 64, offset: 28480)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !268, !411}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "last_function", scope: !1070, file: !245, line: 109, baseType: !433, size: 64, offset: 28544)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "last_module", scope: !1070, file: !245, line: 113, baseType: !1109, size: 64, offset: 28608)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !430, line: 61, size: 192, elements: !1112)
!1112 = !{!1113, !1114, !1116, !1117, !1118, !1119, !1120}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !1111, file: !430, line: 62, baseType: !268, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !1111, file: !430, line: 63, baseType: !1115, size: 32, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !430, line: 39, baseType: !7)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !1111, file: !430, line: 64, baseType: !429, size: 32, offset: 96)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !1111, file: !430, line: 65, baseType: !263, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1111, file: !430, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !1111, file: !430, line: 68, baseType: !262, size: 8, offset: 168)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !1111, file: !430, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1070, file: !245, line: 115, baseType: !263, size: 32, offset: 28672)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit_notes_p", scope: !1070, file: !245, line: 117, baseType: !262, size: 8, offset: 28704)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression())
!1124 = distinct !DIGlobalVariable(name: "diagnostic_kind_text", scope: !1125, file: !3, line: 146, type: !1139, isLocal: true, isDefinition: true)
!1125 = distinct !DISubprogram(name: "diagnostic_build_prefix", scope: !3, file: !3, line: 144, type: !1126, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!265, !1091}
!1128 = !{!1129, !1130, !1131}
!1129 = !DILocalVariable(name: "diagnostic", arg: 1, scope: !1125, file: !3, line: 144, type: !1091)
!1130 = !DILocalVariable(name: "text", scope: !1125, file: !3, line: 152, type: !268)
!1131 = !DILocalVariable(name: "s", scope: !1125, file: !3, line: 153, type: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !428, line: 52, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 40, size: 192, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1133, file: !428, line: 43, baseType: !268, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1133, file: !428, line: 46, baseType: !263, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !1133, file: !428, line: 48, baseType: !263, size: 32, offset: 96)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !1133, file: !428, line: 51, baseType: !262, size: 8, offset: 128)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, size: 832, elements: !1141)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!1141 = !{!1142}
!1142 = !DISubrange(count: 13)
!1143 = !DIGlobalVariableExpression(var: !1144, expr: !DIExpression())
!1144 = distinct !DIGlobalVariable(name: "this_file", scope: !1145, file: !3, line: 461, type: !1152, isLocal: true, isDefinition: true)
!1145 = distinct !DISubprogram(name: "trim_filename", scope: !3, file: !3, line: 459, type: !1146, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!268, !268}
!1148 = !{!1149, !1150, !1151}
!1149 = !DILocalVariable(name: "name", arg: 1, scope: !1145, file: !3, line: 459, type: !268)
!1150 = !DILocalVariable(name: "p", scope: !1145, file: !3, line: 462, type: !268)
!1151 = !DILocalVariable(name: "q", scope: !1145, file: !3, line: 462, type: !268)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 104, elements: !1141)
!1153 = !{i32 2, !"Dwarf Version", i32 4}
!1154 = !{i32 2, !"Debug Info Version", i32 3}
!1155 = !{i32 1, !"wchar_size", i32 4}
!1156 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1157 = distinct !DISubprogram(name: "vprintf", scope: !1158, file: !1158, line: 39, type: !1159, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1163)
!1158 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!263, !1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1163 = !{!1164, !1165}
!1164 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1157, file: !1158, line: 39, type: !1161)
!1165 = !DILocalVariable(name: "__arg", arg: 2, scope: !1157, file: !1158, line: 39, type: !1162)
!1166 = !DILocation(line: 0, scope: !1157)
!1167 = !DILocation(line: 41, column: 20, scope: !1157)
!1168 = !DILocation(line: 41, column: 10, scope: !1157)
!1169 = !DILocation(line: 41, column: 3, scope: !1157)
!1170 = distinct !DISubprogram(name: "getchar", scope: !1158, file: !1158, line: 47, type: !1171, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!263}
!1173 = !{}
!1174 = !DILocation(line: 49, column: 16, scope: !1170)
!1175 = !DILocation(line: 49, column: 10, scope: !1170)
!1176 = !DILocation(line: 49, column: 3, scope: !1170)
!1177 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1158, file: !1158, line: 56, type: !1178, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1180)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!263, !325}
!1180 = !{!1181}
!1181 = !DILocalVariable(name: "__fp", arg: 1, scope: !1177, file: !1158, line: 56, type: !325)
!1182 = !DILocation(line: 0, scope: !1177)
!1183 = !DILocation(line: 58, column: 10, scope: !1177)
!1184 = !DILocation(line: 58, column: 3, scope: !1177)
!1185 = distinct !DISubprogram(name: "getc_unlocked", scope: !1158, file: !1158, line: 66, type: !1178, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1186)
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "__fp", arg: 1, scope: !1185, file: !1158, line: 66, type: !325)
!1188 = !DILocation(line: 0, scope: !1185)
!1189 = !DILocation(line: 68, column: 10, scope: !1185)
!1190 = !DILocation(line: 68, column: 3, scope: !1185)
!1191 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1158, file: !1158, line: 73, type: !1171, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1192 = !DILocation(line: 75, column: 10, scope: !1191)
!1193 = !DILocation(line: 75, column: 3, scope: !1191)
!1194 = distinct !DISubprogram(name: "putchar", scope: !1158, file: !1158, line: 82, type: !1195, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!263, !263}
!1197 = !{!1198}
!1198 = !DILocalVariable(name: "__c", arg: 1, scope: !1194, file: !1158, line: 82, type: !263)
!1199 = !DILocation(line: 0, scope: !1194)
!1200 = !DILocation(line: 84, column: 21, scope: !1194)
!1201 = !DILocation(line: 84, column: 10, scope: !1194)
!1202 = !DILocation(line: 84, column: 3, scope: !1194)
!1203 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1158, file: !1158, line: 91, type: !1204, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!263, !263, !325}
!1206 = !{!1207, !1208}
!1207 = !DILocalVariable(name: "__c", arg: 1, scope: !1203, file: !1158, line: 91, type: !263)
!1208 = !DILocalVariable(name: "__stream", arg: 2, scope: !1203, file: !1158, line: 91, type: !325)
!1209 = !DILocation(line: 0, scope: !1203)
!1210 = !DILocation(line: 93, column: 10, scope: !1203)
!1211 = !DILocation(line: 93, column: 3, scope: !1203)
!1212 = distinct !DISubprogram(name: "putc_unlocked", scope: !1158, file: !1158, line: 101, type: !1204, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1213)
!1213 = !{!1214, !1215}
!1214 = !DILocalVariable(name: "__c", arg: 1, scope: !1212, file: !1158, line: 101, type: !263)
!1215 = !DILocalVariable(name: "__stream", arg: 2, scope: !1212, file: !1158, line: 101, type: !325)
!1216 = !DILocation(line: 0, scope: !1212)
!1217 = !DILocation(line: 103, column: 10, scope: !1212)
!1218 = !DILocation(line: 103, column: 3, scope: !1212)
!1219 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1158, file: !1158, line: 108, type: !1195, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1220)
!1220 = !{!1221}
!1221 = !DILocalVariable(name: "__c", arg: 1, scope: !1219, file: !1158, line: 108, type: !263)
!1222 = !DILocation(line: 0, scope: !1219)
!1223 = !DILocation(line: 110, column: 10, scope: !1219)
!1224 = !DILocation(line: 110, column: 3, scope: !1219)
!1225 = distinct !DISubprogram(name: "getline", scope: !1158, file: !1158, line: 118, type: !1226, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1230)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1228, !264, !1229, !325}
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !352, line: 193, baseType: !284)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!1230 = !{!1231, !1232, !1233}
!1231 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1225, file: !1158, line: 118, type: !264)
!1232 = !DILocalVariable(name: "__n", arg: 2, scope: !1225, file: !1158, line: 118, type: !1229)
!1233 = !DILocalVariable(name: "__stream", arg: 3, scope: !1225, file: !1158, line: 118, type: !325)
!1234 = !DILocation(line: 0, scope: !1225)
!1235 = !DILocation(line: 120, column: 10, scope: !1225)
!1236 = !DILocation(line: 120, column: 3, scope: !1225)
!1237 = distinct !DISubprogram(name: "feof_unlocked", scope: !1158, file: !1158, line: 128, type: !1178, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1238)
!1238 = !{!1239}
!1239 = !DILocalVariable(name: "__stream", arg: 1, scope: !1237, file: !1158, line: 128, type: !325)
!1240 = !DILocation(line: 0, scope: !1237)
!1241 = !DILocation(line: 130, column: 10, scope: !1237)
!1242 = !DILocation(line: 130, column: 3, scope: !1237)
!1243 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1158, file: !1158, line: 135, type: !1178, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1244)
!1244 = !{!1245}
!1245 = !DILocalVariable(name: "__stream", arg: 1, scope: !1243, file: !1158, line: 135, type: !325)
!1246 = !DILocation(line: 0, scope: !1243)
!1247 = !DILocation(line: 137, column: 10, scope: !1243)
!1248 = !DILocation(line: 137, column: 3, scope: !1243)
!1249 = distinct !DISubprogram(name: "tolower", scope: !1250, file: !1250, line: 207, type: !1195, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1250 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1251 = !{!1252}
!1252 = !DILocalVariable(name: "__c", arg: 1, scope: !1249, file: !1250, line: 207, type: !263)
!1253 = !DILocation(line: 0, scope: !1249)
!1254 = !DILocation(line: 209, column: 22, scope: !1249)
!1255 = !DILocation(line: 209, column: 39, scope: !1249)
!1256 = !DILocation(line: 209, column: 38, scope: !1249)
!1257 = !DILocation(line: 209, column: 37, scope: !1249)
!1258 = !DILocation(line: 209, column: 10, scope: !1249)
!1259 = !DILocation(line: 209, column: 3, scope: !1249)
!1260 = distinct !DISubprogram(name: "toupper", scope: !1250, file: !1250, line: 213, type: !1195, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1261)
!1261 = !{!1262}
!1262 = !DILocalVariable(name: "__c", arg: 1, scope: !1260, file: !1250, line: 213, type: !263)
!1263 = !DILocation(line: 0, scope: !1260)
!1264 = !DILocation(line: 215, column: 22, scope: !1260)
!1265 = !DILocation(line: 215, column: 39, scope: !1260)
!1266 = !DILocation(line: 215, column: 38, scope: !1260)
!1267 = !DILocation(line: 215, column: 37, scope: !1260)
!1268 = !DILocation(line: 215, column: 10, scope: !1260)
!1269 = !DILocation(line: 215, column: 3, scope: !1260)
!1270 = distinct !DISubprogram(name: "atoi", scope: !1271, file: !1271, line: 361, type: !1272, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1274)
!1271 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!263, !268}
!1274 = !{!1275}
!1275 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1270, file: !1271, line: 361, type: !268)
!1276 = !DILocation(line: 0, scope: !1270)
!1277 = !DILocation(line: 363, column: 16, scope: !1270)
!1278 = !DILocation(line: 363, column: 10, scope: !1270)
!1279 = !DILocation(line: 363, column: 3, scope: !1270)
!1280 = distinct !DISubprogram(name: "atol", scope: !1271, file: !1271, line: 366, type: !1281, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!284, !268}
!1283 = !{!1284}
!1284 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1280, file: !1271, line: 366, type: !268)
!1285 = !DILocation(line: 0, scope: !1280)
!1286 = !DILocation(line: 368, column: 10, scope: !1280)
!1287 = !DILocation(line: 368, column: 3, scope: !1280)
!1288 = distinct !DISubprogram(name: "atoll", scope: !1271, file: !1271, line: 373, type: !1289, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1292)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!1291, !268}
!1291 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1292 = !{!1293}
!1293 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1288, file: !1271, line: 373, type: !268)
!1294 = !DILocation(line: 0, scope: !1288)
!1295 = !DILocation(line: 375, column: 10, scope: !1288)
!1296 = !DILocation(line: 375, column: 3, scope: !1288)
!1297 = distinct !DISubprogram(name: "bsearch", scope: !1298, file: !1298, line: 20, type: !1299, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1307)
!1298 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!267, !1301, !1301, !375, !375, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1271, line: 808, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!263, !1301, !1301}
!1307 = !{!1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1308 = !DILocalVariable(name: "__key", arg: 1, scope: !1297, file: !1298, line: 20, type: !1301)
!1309 = !DILocalVariable(name: "__base", arg: 2, scope: !1297, file: !1298, line: 20, type: !1301)
!1310 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1297, file: !1298, line: 20, type: !375)
!1311 = !DILocalVariable(name: "__size", arg: 4, scope: !1297, file: !1298, line: 20, type: !375)
!1312 = !DILocalVariable(name: "__compar", arg: 5, scope: !1297, file: !1298, line: 21, type: !1303)
!1313 = !DILocalVariable(name: "__l", scope: !1297, file: !1298, line: 23, type: !375)
!1314 = !DILocalVariable(name: "__u", scope: !1297, file: !1298, line: 23, type: !375)
!1315 = !DILocalVariable(name: "__idx", scope: !1297, file: !1298, line: 23, type: !375)
!1316 = !DILocalVariable(name: "__p", scope: !1297, file: !1298, line: 24, type: !1301)
!1317 = !DILocalVariable(name: "__comparison", scope: !1297, file: !1298, line: 25, type: !263)
!1318 = !DILocation(line: 0, scope: !1297)
!1319 = !DILocation(line: 29, column: 3, scope: !1297)
!1320 = !DILocation(line: 27, column: 7, scope: !1297)
!1321 = !DILocation(line: 29, column: 14, scope: !1297)
!1322 = !DILocation(line: 31, column: 20, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1297, file: !1298, line: 30, column: 5)
!1324 = !DILocation(line: 31, column: 27, scope: !1323)
!1325 = !DILocation(line: 32, column: 56, scope: !1323)
!1326 = !DILocation(line: 32, column: 47, scope: !1323)
!1327 = !DILocation(line: 33, column: 22, scope: !1323)
!1328 = !DILocation(line: 34, column: 24, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !1298, line: 34, column: 11)
!1330 = !DILocation(line: 34, column: 11, scope: !1323)
!1331 = !DILocation(line: 36, column: 29, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !1298, line: 36, column: 16)
!1333 = !DILocation(line: 36, column: 16, scope: !1329)
!1334 = !DILocation(line: 37, column: 14, scope: !1332)
!1335 = distinct !{!1335, !1319, !1336}
!1336 = !DILocation(line: 40, column: 5, scope: !1297)
!1337 = !DILocation(line: 43, column: 1, scope: !1297)
!1338 = distinct !DISubprogram(name: "atof", scope: !1339, file: !1339, line: 25, type: !1340, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1343)
!1339 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!1342, !268}
!1342 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1343 = !{!1344}
!1344 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1338, file: !1339, line: 25, type: !268)
!1345 = !DILocation(line: 0, scope: !1338)
!1346 = !DILocation(line: 27, column: 10, scope: !1338)
!1347 = !DILocation(line: 27, column: 3, scope: !1338)
!1348 = distinct !DISubprogram(name: "strtoimax", scope: !1349, file: !1349, line: 324, type: !1350, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1356)
!1349 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!1352, !1161, !1355, !263}
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1353, line: 101, baseType: !1354)
!1353 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !352, line: 72, baseType: !284)
!1355 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !264)
!1356 = !{!1357, !1358, !1359}
!1357 = !DILocalVariable(name: "nptr", arg: 1, scope: !1348, file: !1349, line: 324, type: !1161)
!1358 = !DILocalVariable(name: "endptr", arg: 2, scope: !1348, file: !1349, line: 324, type: !1355)
!1359 = !DILocalVariable(name: "base", arg: 3, scope: !1348, file: !1349, line: 324, type: !263)
!1360 = !DILocation(line: 0, scope: !1348)
!1361 = !DILocation(line: 327, column: 10, scope: !1348)
!1362 = !DILocation(line: 327, column: 3, scope: !1348)
!1363 = distinct !DISubprogram(name: "strtoumax", scope: !1349, file: !1349, line: 336, type: !1364, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1368)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!1366, !1161, !1355, !263}
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1353, line: 102, baseType: !1367)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !352, line: 73, baseType: !377)
!1368 = !{!1369, !1370, !1371}
!1369 = !DILocalVariable(name: "nptr", arg: 1, scope: !1363, file: !1349, line: 336, type: !1161)
!1370 = !DILocalVariable(name: "endptr", arg: 2, scope: !1363, file: !1349, line: 336, type: !1355)
!1371 = !DILocalVariable(name: "base", arg: 3, scope: !1363, file: !1349, line: 336, type: !263)
!1372 = !DILocation(line: 0, scope: !1363)
!1373 = !DILocation(line: 339, column: 10, scope: !1363)
!1374 = !DILocation(line: 339, column: 3, scope: !1363)
!1375 = distinct !DISubprogram(name: "wcstoimax", scope: !1349, file: !1349, line: 348, type: !1376, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1385)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!1352, !1378, !1382, !263}
!1378 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1349, line: 34, baseType: !263)
!1382 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1385 = !{!1386, !1387, !1388}
!1386 = !DILocalVariable(name: "nptr", arg: 1, scope: !1375, file: !1349, line: 348, type: !1378)
!1387 = !DILocalVariable(name: "endptr", arg: 2, scope: !1375, file: !1349, line: 348, type: !1382)
!1388 = !DILocalVariable(name: "base", arg: 3, scope: !1375, file: !1349, line: 348, type: !263)
!1389 = !DILocation(line: 0, scope: !1375)
!1390 = !DILocation(line: 351, column: 10, scope: !1375)
!1391 = !DILocation(line: 351, column: 3, scope: !1375)
!1392 = distinct !DISubprogram(name: "wcstoumax", scope: !1349, file: !1349, line: 362, type: !1393, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!1366, !1378, !1382, !263}
!1395 = !{!1396, !1397, !1398}
!1396 = !DILocalVariable(name: "nptr", arg: 1, scope: !1392, file: !1349, line: 362, type: !1378)
!1397 = !DILocalVariable(name: "endptr", arg: 2, scope: !1392, file: !1349, line: 362, type: !1382)
!1398 = !DILocalVariable(name: "base", arg: 3, scope: !1392, file: !1349, line: 362, type: !263)
!1399 = !DILocation(line: 0, scope: !1392)
!1400 = !DILocation(line: 365, column: 10, scope: !1392)
!1401 = !DILocation(line: 365, column: 3, scope: !1392)
!1402 = distinct !DISubprogram(name: "stat", scope: !1403, file: !1403, line: 453, type: !1404, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1443)
!1403 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!263, !268, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1408, line: 46, size: 1152, elements: !1409)
!1408 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1409 = !{!1410, !1412, !1414, !1416, !1418, !1420, !1422, !1423, !1424, !1425, !1427, !1429, !1437, !1438, !1439}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1407, file: !1408, line: 48, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !352, line: 145, baseType: !377)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1407, file: !1408, line: 53, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !352, line: 148, baseType: !377)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1407, file: !1408, line: 61, baseType: !1415, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !352, line: 151, baseType: !377)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1407, file: !1408, line: 62, baseType: !1417, size: 32, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !352, line: 150, baseType: !7)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1407, file: !1408, line: 64, baseType: !1419, size: 32, offset: 224)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !352, line: 146, baseType: !7)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1407, file: !1408, line: 65, baseType: !1421, size: 32, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !352, line: 147, baseType: !7)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1407, file: !1408, line: 67, baseType: !263, size: 32, offset: 288)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1407, file: !1408, line: 69, baseType: !1411, size: 64, offset: 320)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1407, file: !1408, line: 74, baseType: !351, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1407, file: !1408, line: 78, baseType: !1426, size: 64, offset: 448)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !352, line: 174, baseType: !284)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1407, file: !1408, line: 80, baseType: !1428, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !352, line: 179, baseType: !284)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1407, file: !1408, line: 91, baseType: !1430, size: 128, offset: 576)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1431, line: 10, size: 128, elements: !1432)
!1431 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1432 = !{!1433, !1435}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1430, file: !1431, line: 12, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !352, line: 160, baseType: !284)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1430, file: !1431, line: 16, baseType: !1436, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !352, line: 196, baseType: !284)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1407, file: !1408, line: 92, baseType: !1430, size: 128, offset: 704)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1407, file: !1408, line: 93, baseType: !1430, size: 128, offset: 832)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1407, file: !1408, line: 106, baseType: !1440, size: 192, offset: 960)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1436, size: 192, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 3)
!1443 = !{!1444, !1445}
!1444 = !DILocalVariable(name: "__path", arg: 1, scope: !1402, file: !1403, line: 453, type: !268)
!1445 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1402, file: !1403, line: 453, type: !1406)
!1446 = !DILocation(line: 0, scope: !1402)
!1447 = !DILocation(line: 455, column: 10, scope: !1402)
!1448 = !DILocation(line: 455, column: 3, scope: !1402)
!1449 = distinct !DISubprogram(name: "lstat", scope: !1403, file: !1403, line: 460, type: !1404, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1450)
!1450 = !{!1451, !1452}
!1451 = !DILocalVariable(name: "__path", arg: 1, scope: !1449, file: !1403, line: 460, type: !268)
!1452 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1449, file: !1403, line: 460, type: !1406)
!1453 = !DILocation(line: 0, scope: !1449)
!1454 = !DILocation(line: 462, column: 10, scope: !1449)
!1455 = !DILocation(line: 462, column: 3, scope: !1449)
!1456 = distinct !DISubprogram(name: "fstat", scope: !1403, file: !1403, line: 467, type: !1457, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!263, !263, !1406}
!1459 = !{!1460, !1461}
!1460 = !DILocalVariable(name: "__fd", arg: 1, scope: !1456, file: !1403, line: 467, type: !263)
!1461 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1456, file: !1403, line: 467, type: !1406)
!1462 = !DILocation(line: 0, scope: !1456)
!1463 = !DILocation(line: 469, column: 10, scope: !1456)
!1464 = !DILocation(line: 469, column: 3, scope: !1456)
!1465 = distinct !DISubprogram(name: "fstatat", scope: !1403, file: !1403, line: 474, type: !1466, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!263, !263, !268, !1406, !263}
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DILocalVariable(name: "__fd", arg: 1, scope: !1465, file: !1403, line: 474, type: !263)
!1470 = !DILocalVariable(name: "__filename", arg: 2, scope: !1465, file: !1403, line: 474, type: !268)
!1471 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1465, file: !1403, line: 474, type: !1406)
!1472 = !DILocalVariable(name: "__flag", arg: 4, scope: !1465, file: !1403, line: 474, type: !263)
!1473 = !DILocation(line: 0, scope: !1465)
!1474 = !DILocation(line: 477, column: 10, scope: !1465)
!1475 = !DILocation(line: 477, column: 3, scope: !1465)
!1476 = distinct !DISubprogram(name: "mknod", scope: !1403, file: !1403, line: 483, type: !1477, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!263, !268, !1417, !1411}
!1479 = !{!1480, !1481, !1482}
!1480 = !DILocalVariable(name: "__path", arg: 1, scope: !1476, file: !1403, line: 483, type: !268)
!1481 = !DILocalVariable(name: "__mode", arg: 2, scope: !1476, file: !1403, line: 483, type: !1417)
!1482 = !DILocalVariable(name: "__dev", arg: 3, scope: !1476, file: !1403, line: 483, type: !1411)
!1483 = !DILocation(line: 0, scope: !1476)
!1484 = !DILocation(line: 485, column: 10, scope: !1476)
!1485 = !DILocation(line: 485, column: 3, scope: !1476)
!1486 = distinct !DISubprogram(name: "mknodat", scope: !1403, file: !1403, line: 491, type: !1487, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!263, !263, !268, !1417, !1411}
!1489 = !{!1490, !1491, !1492, !1493}
!1490 = !DILocalVariable(name: "__fd", arg: 1, scope: !1486, file: !1403, line: 491, type: !263)
!1491 = !DILocalVariable(name: "__path", arg: 2, scope: !1486, file: !1403, line: 491, type: !268)
!1492 = !DILocalVariable(name: "__mode", arg: 3, scope: !1486, file: !1403, line: 491, type: !1417)
!1493 = !DILocalVariable(name: "__dev", arg: 4, scope: !1486, file: !1403, line: 491, type: !1411)
!1494 = !DILocation(line: 0, scope: !1486)
!1495 = !DILocation(line: 494, column: 10, scope: !1486)
!1496 = !DILocation(line: 494, column: 3, scope: !1486)
!1497 = distinct !DISubprogram(name: "stat64", scope: !1403, file: !1403, line: 502, type: !1498, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1520)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!263, !268, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1408, line: 119, size: 1152, elements: !1502)
!1502 = !{!1503, !1504, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1516, !1517, !1518, !1519}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1501, file: !1408, line: 121, baseType: !1411, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1501, file: !1408, line: 123, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !352, line: 149, baseType: !377)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1501, file: !1408, line: 124, baseType: !1415, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1501, file: !1408, line: 125, baseType: !1417, size: 32, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1501, file: !1408, line: 132, baseType: !1419, size: 32, offset: 224)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1501, file: !1408, line: 133, baseType: !1421, size: 32, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1501, file: !1408, line: 135, baseType: !263, size: 32, offset: 288)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1501, file: !1408, line: 136, baseType: !1411, size: 64, offset: 320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1501, file: !1408, line: 137, baseType: !351, size: 64, offset: 384)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1501, file: !1408, line: 143, baseType: !1426, size: 64, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1501, file: !1408, line: 144, baseType: !1515, size: 64, offset: 512)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !352, line: 180, baseType: !284)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1501, file: !1408, line: 152, baseType: !1430, size: 128, offset: 576)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1501, file: !1408, line: 153, baseType: !1430, size: 128, offset: 704)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1501, file: !1408, line: 154, baseType: !1430, size: 128, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1501, file: !1408, line: 164, baseType: !1440, size: 192, offset: 960)
!1520 = !{!1521, !1522}
!1521 = !DILocalVariable(name: "__path", arg: 1, scope: !1497, file: !1403, line: 502, type: !268)
!1522 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1497, file: !1403, line: 502, type: !1500)
!1523 = !DILocation(line: 0, scope: !1497)
!1524 = !DILocation(line: 504, column: 10, scope: !1497)
!1525 = !DILocation(line: 504, column: 3, scope: !1497)
!1526 = distinct !DISubprogram(name: "lstat64", scope: !1403, file: !1403, line: 509, type: !1498, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1527)
!1527 = !{!1528, !1529}
!1528 = !DILocalVariable(name: "__path", arg: 1, scope: !1526, file: !1403, line: 509, type: !268)
!1529 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1526, file: !1403, line: 509, type: !1500)
!1530 = !DILocation(line: 0, scope: !1526)
!1531 = !DILocation(line: 511, column: 10, scope: !1526)
!1532 = !DILocation(line: 511, column: 3, scope: !1526)
!1533 = distinct !DISubprogram(name: "fstat64", scope: !1403, file: !1403, line: 516, type: !1534, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!263, !263, !1500}
!1536 = !{!1537, !1538}
!1537 = !DILocalVariable(name: "__fd", arg: 1, scope: !1533, file: !1403, line: 516, type: !263)
!1538 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1533, file: !1403, line: 516, type: !1500)
!1539 = !DILocation(line: 0, scope: !1533)
!1540 = !DILocation(line: 518, column: 10, scope: !1533)
!1541 = !DILocation(line: 518, column: 3, scope: !1533)
!1542 = distinct !DISubprogram(name: "fstatat64", scope: !1403, file: !1403, line: 523, type: !1543, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1545)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!263, !263, !268, !1500, !263}
!1545 = !{!1546, !1547, !1548, !1549}
!1546 = !DILocalVariable(name: "__fd", arg: 1, scope: !1542, file: !1403, line: 523, type: !263)
!1547 = !DILocalVariable(name: "__filename", arg: 2, scope: !1542, file: !1403, line: 523, type: !268)
!1548 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1542, file: !1403, line: 523, type: !1500)
!1549 = !DILocalVariable(name: "__flag", arg: 4, scope: !1542, file: !1403, line: 523, type: !263)
!1550 = !DILocation(line: 0, scope: !1542)
!1551 = !DILocation(line: 526, column: 10, scope: !1542)
!1552 = !DILocation(line: 526, column: 3, scope: !1542)
!1553 = distinct !DISubprogram(name: "file_name_as_prefix", scope: !3, file: !3, line: 79, type: !1554, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1556)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!265, !268}
!1556 = !{!1557}
!1557 = !DILocalVariable(name: "f", arg: 1, scope: !1553, file: !3, line: 79, type: !268)
!1558 = !DILocation(line: 0, scope: !1553)
!1559 = !DILocation(line: 81, column: 10, scope: !1553)
!1560 = !DILocation(line: 81, column: 3, scope: !1553)
!1561 = distinct !DISubprogram(name: "build_message_string", scope: !3, file: !3, line: 65, type: !1562, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!265, !268, null}
!1564 = !{!1565, !1566, !1567}
!1565 = !DILocalVariable(name: "msg", arg: 1, scope: !1561, file: !3, line: 65, type: !268)
!1566 = !DILocalVariable(name: "str", scope: !1561, file: !3, line: 67, type: !265)
!1567 = !DILocalVariable(name: "ap", scope: !1561, file: !3, line: 68, type: !412)
!1568 = !DILocation(line: 0, scope: !1561)
!1569 = !DILocation(line: 67, column: 3, scope: !1561)
!1570 = !DILocation(line: 68, column: 3, scope: !1561)
!1571 = !DILocation(line: 68, column: 11, scope: !1561)
!1572 = !DILocation(line: 70, column: 3, scope: !1561)
!1573 = !DILocation(line: 71, column: 25, scope: !1561)
!1574 = !DILocation(line: 71, column: 3, scope: !1561)
!1575 = !DILocation(line: 72, column: 3, scope: !1561)
!1576 = !DILocation(line: 74, column: 10, scope: !1561)
!1577 = !DILocation(line: 75, column: 1, scope: !1561)
!1578 = !DILocation(line: 74, column: 3, scope: !1561)
!1579 = distinct !DISubprogram(name: "diagnostic_initialize", scope: !3, file: !3, line: 88, type: !1580, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !1068}
!1582 = !{!1583}
!1583 = !DILocalVariable(name: "context", arg: 1, scope: !1579, file: !3, line: 88, type: !1068)
!1584 = !DILocation(line: 0, scope: !1579)
!1585 = !DILocation(line: 92, column: 22, scope: !1579)
!1586 = !DILocation(line: 92, column: 20, scope: !1579)
!1587 = !DILocation(line: 93, column: 26, scope: !1579)
!1588 = !DILocation(line: 93, column: 3, scope: !1579)
!1589 = !DILocation(line: 95, column: 38, scope: !1579)
!1590 = !DILocation(line: 95, column: 12, scope: !1579)
!1591 = !DILocation(line: 95, column: 21, scope: !1579)
!1592 = !DILocation(line: 95, column: 29, scope: !1579)
!1593 = !DILocation(line: 95, column: 36, scope: !1579)
!1594 = !DILocation(line: 97, column: 12, scope: !1579)
!1595 = !DILocation(line: 97, column: 30, scope: !1579)
!1596 = !DILocation(line: 97, column: 35, scope: !1579)
!1597 = !DILocation(line: 99, column: 11, scope: !1579)
!1598 = !DILocation(line: 99, column: 3, scope: !1579)
!1599 = !DILocation(line: 100, column: 12, scope: !1579)
!1600 = !DILocation(line: 100, column: 46, scope: !1579)
!1601 = !DILocation(line: 101, column: 12, scope: !1579)
!1602 = !DILocation(line: 101, column: 39, scope: !1579)
!1603 = !DILocation(line: 102, column: 11, scope: !1579)
!1604 = !DILocation(line: 102, column: 3, scope: !1579)
!1605 = !DILocation(line: 104, column: 12, scope: !1579)
!1606 = !DILocation(line: 104, column: 34, scope: !1579)
!1607 = !DILocation(line: 105, column: 12, scope: !1579)
!1608 = !DILocation(line: 105, column: 27, scope: !1579)
!1609 = !DILocation(line: 106, column: 12, scope: !1579)
!1610 = !DILocation(line: 106, column: 27, scope: !1579)
!1611 = !DILocation(line: 107, column: 3, scope: !1579)
!1612 = !DILocation(line: 107, column: 32, scope: !1579)
!1613 = !DILocation(line: 108, column: 3, scope: !1579)
!1614 = !DILocation(line: 108, column: 34, scope: !1579)
!1615 = !DILocation(line: 109, column: 12, scope: !1579)
!1616 = !DILocation(line: 109, column: 24, scope: !1579)
!1617 = !DILocation(line: 110, column: 12, scope: !1579)
!1618 = !DILocation(line: 110, column: 26, scope: !1579)
!1619 = !DILocation(line: 111, column: 12, scope: !1579)
!1620 = !DILocation(line: 111, column: 17, scope: !1579)
!1621 = !DILocation(line: 112, column: 12, scope: !1579)
!1622 = !DILocation(line: 112, column: 28, scope: !1579)
!1623 = !DILocation(line: 113, column: 1, scope: !1579)
!1624 = distinct !DISubprogram(name: "default_diagnostic_starter", scope: !3, file: !3, line: 286, type: !1089, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1625)
!1625 = !{!1626, !1627}
!1626 = !DILocalVariable(name: "context", arg: 1, scope: !1624, file: !3, line: 286, type: !1068)
!1627 = !DILocalVariable(name: "diagnostic", arg: 2, scope: !1624, file: !3, line: 287, type: !1091)
!1628 = !DILocation(line: 0, scope: !1624)
!1629 = !DILocation(line: 289, column: 3, scope: !1624)
!1630 = !DILocation(line: 290, column: 3, scope: !1624)
!1631 = !DILocation(line: 291, column: 1, scope: !1624)
!1632 = distinct !DISubprogram(name: "default_diagnostic_finalizer", scope: !3, file: !3, line: 294, type: !1089, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1633)
!1633 = !{!1634, !1635}
!1634 = !DILocalVariable(name: "context", arg: 1, scope: !1632, file: !3, line: 294, type: !1068)
!1635 = !DILocalVariable(name: "diagnostic", arg: 2, scope: !1632, file: !3, line: 295, type: !1091)
!1636 = !DILocation(line: 0, scope: !1632)
!1637 = !DILocation(line: 297, column: 3, scope: !1632)
!1638 = !DILocation(line: 298, column: 1, scope: !1632)
!1639 = distinct !DISubprogram(name: "diagnostic_set_info_translated", scope: !3, file: !3, line: 118, type: !1640, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1091, !268, !411, !427, !1081}
!1642 = !{!1643, !1644, !1645, !1646, !1647}
!1643 = !DILocalVariable(name: "diagnostic", arg: 1, scope: !1639, file: !3, line: 118, type: !1091)
!1644 = !DILocalVariable(name: "msg", arg: 2, scope: !1639, file: !3, line: 118, type: !268)
!1645 = !DILocalVariable(name: "args", arg: 3, scope: !1639, file: !3, line: 119, type: !411)
!1646 = !DILocalVariable(name: "location", arg: 4, scope: !1639, file: !3, line: 119, type: !427)
!1647 = !DILocalVariable(name: "kind", arg: 5, scope: !1639, file: !3, line: 120, type: !1081)
!1648 = !DILocation(line: 0, scope: !1639)
!1649 = !DILocation(line: 122, column: 32, scope: !1639)
!1650 = !DILocation(line: 122, column: 23, scope: !1639)
!1651 = !DILocation(line: 122, column: 30, scope: !1639)
!1652 = !DILocation(line: 123, column: 23, scope: !1639)
!1653 = !DILocation(line: 123, column: 32, scope: !1639)
!1654 = !DILocation(line: 124, column: 23, scope: !1639)
!1655 = !DILocation(line: 124, column: 35, scope: !1639)
!1656 = !DILocation(line: 125, column: 15, scope: !1639)
!1657 = !DILocation(line: 125, column: 24, scope: !1639)
!1658 = !DILocation(line: 126, column: 15, scope: !1639)
!1659 = !DILocation(line: 126, column: 31, scope: !1639)
!1660 = !DILocation(line: 127, column: 15, scope: !1639)
!1661 = !DILocation(line: 127, column: 20, scope: !1639)
!1662 = !DILocation(line: 128, column: 15, scope: !1639)
!1663 = !DILocation(line: 128, column: 28, scope: !1639)
!1664 = !DILocation(line: 129, column: 1, scope: !1639)
!1665 = distinct !DISubprogram(name: "diagnostic_set_info", scope: !3, file: !3, line: 134, type: !1640, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1666)
!1666 = !{!1667, !1668, !1669, !1670, !1671}
!1667 = !DILocalVariable(name: "diagnostic", arg: 1, scope: !1665, file: !3, line: 134, type: !1091)
!1668 = !DILocalVariable(name: "gmsgid", arg: 2, scope: !1665, file: !3, line: 134, type: !268)
!1669 = !DILocalVariable(name: "args", arg: 3, scope: !1665, file: !3, line: 135, type: !411)
!1670 = !DILocalVariable(name: "location", arg: 4, scope: !1665, file: !3, line: 135, type: !427)
!1671 = !DILocalVariable(name: "kind", arg: 5, scope: !1665, file: !3, line: 136, type: !1081)
!1672 = !DILocation(line: 0, scope: !1665)
!1673 = !DILocation(line: 138, column: 3, scope: !1665)
!1674 = !DILocation(line: 139, column: 1, scope: !1665)
!1675 = !DILocation(line: 0, scope: !1125)
!1676 = !DILocation(line: 152, column: 22, scope: !1125)
!1677 = !DILocation(line: 153, column: 3, scope: !1125)
!1678 = !DILocation(line: 153, column: 54, scope: !1125)
!1679 = !DILocation(line: 153, column: 25, scope: !1125)
!1680 = !DILocation(line: 154, column: 19, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 154, column: 7)
!1682 = !DILocation(line: 154, column: 7, scope: !1681)
!1683 = !DILocation(line: 154, column: 7, scope: !1125)
!1684 = !DILocation(line: 155, column: 7, scope: !1681)
!1685 = !DILocation(line: 155, column: 14, scope: !1681)
!1686 = !DILocation(line: 155, column: 5, scope: !1681)
!1687 = !DILocation(line: 156, column: 3, scope: !1125)
!1688 = !DILocation(line: 159, column: 8, scope: !1125)
!1689 = !DILocation(line: 159, column: 13, scope: !1125)
!1690 = !DILocation(line: 159, column: 6, scope: !1125)
!1691 = !DILocation(line: 160, column: 40, scope: !1125)
!1692 = !DILocation(line: 160, column: 8, scope: !1125)
!1693 = !DILocation(line: 161, column: 8, scope: !1125)
!1694 = !DILocation(line: 162, column: 64, scope: !1125)
!1695 = !DILocation(line: 162, column: 8, scope: !1125)
!1696 = !DILocation(line: 163, column: 8, scope: !1125)
!1697 = !DILocation(line: 164, column: 1, scope: !1125)
!1698 = !DILocation(line: 158, column: 3, scope: !1125)
!1699 = distinct !DISubprogram(name: "fancy_abort", scope: !3, file: !3, line: 791, type: !1700, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !268, !263, !268}
!1702 = !{!1703, !1704, !1705}
!1703 = !DILocalVariable(name: "file", arg: 1, scope: !1699, file: !3, line: 791, type: !268)
!1704 = !DILocalVariable(name: "line", arg: 2, scope: !1699, file: !3, line: 791, type: !263)
!1705 = !DILocalVariable(name: "function", arg: 3, scope: !1699, file: !3, line: 791, type: !268)
!1706 = !DILocation(line: 0, scope: !1699)
!1707 = !DILocation(line: 793, column: 48, scope: !1699)
!1708 = !DILocation(line: 793, column: 3, scope: !1699)
!1709 = !DILocation(line: 794, column: 1, scope: !1699)
!1710 = distinct !DISubprogram(name: "diagnostic_report_current_function", scope: !3, file: !3, line: 235, type: !1089, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1711)
!1711 = !{!1712, !1713}
!1712 = !DILocalVariable(name: "context", arg: 1, scope: !1710, file: !3, line: 235, type: !1068)
!1713 = !DILocalVariable(name: "diagnostic", arg: 2, scope: !1710, file: !3, line: 236, type: !1091)
!1714 = !DILocation(line: 0, scope: !1710)
!1715 = !DILocation(line: 238, column: 3, scope: !1710)
!1716 = !DILocation(line: 239, column: 14, scope: !1710)
!1717 = !DILocation(line: 239, column: 45, scope: !1710)
!1718 = !DILocation(line: 239, column: 3, scope: !1710)
!1719 = !DILocation(line: 240, column: 1, scope: !1710)
!1720 = distinct !DISubprogram(name: "diagnostic_report_current_module", scope: !3, file: !3, line: 243, type: !1580, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1721)
!1721 = !{!1722, !1723}
!1722 = !DILocalVariable(name: "context", arg: 1, scope: !1720, file: !3, line: 243, type: !1068)
!1723 = !DILocalVariable(name: "map", scope: !1720, file: !3, line: 245, type: !1109)
!1724 = !DILocation(line: 0, scope: !1720)
!1725 = !DILocation(line: 247, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 247, column: 7)
!1727 = !DILocation(line: 247, column: 7, scope: !1720)
!1728 = !DILocation(line: 249, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 248, column: 5)
!1730 = !DILocation(line: 250, column: 7, scope: !1729)
!1731 = !DILocation(line: 250, column: 43, scope: !1729)
!1732 = !DILocation(line: 251, column: 5, scope: !1729)
!1733 = !DILocation(line: 253, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 253, column: 7)
!1735 = !DILocation(line: 253, column: 22, scope: !1734)
!1736 = !DILocation(line: 253, column: 7, scope: !1720)
!1737 = !DILocation(line: 256, column: 25, scope: !1720)
!1738 = !DILocation(line: 256, column: 9, scope: !1720)
!1739 = !DILocation(line: 257, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 257, column: 7)
!1741 = !DILocation(line: 257, column: 11, scope: !1740)
!1742 = !DILocation(line: 257, column: 14, scope: !1740)
!1743 = !DILocation(line: 257, column: 7, scope: !1720)
!1744 = !DILocation(line: 259, column: 7, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 258, column: 5)
!1746 = !DILocation(line: 260, column: 13, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 260, column: 11)
!1748 = !DILocation(line: 260, column: 11, scope: !1745)
!1749 = !DILocation(line: 262, column: 10, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 261, column: 2)
!1751 = !DILocation(line: 263, column: 8, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 263, column: 8)
!1753 = !DILocation(line: 0, scope: !1752)
!1754 = !DILocation(line: 263, column: 8, scope: !1750)
!1755 = !DILocation(line: 264, column: 6, scope: !1752)
!1756 = !DILocation(line: 269, column: 6, scope: !1752)
!1757 = !DILocation(line: 272, column: 4, scope: !1750)
!1758 = !DILocation(line: 0, scope: !1750)
!1759 = !DILocation(line: 272, column: 13, scope: !1750)
!1760 = !DILocation(line: 274, column: 14, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 273, column: 6)
!1762 = !DILocation(line: 275, column: 30, scope: !1761)
!1763 = !DILocation(line: 277, column: 12, scope: !1761)
!1764 = !DILocation(line: 277, column: 21, scope: !1761)
!1765 = !DILocation(line: 275, column: 8, scope: !1761)
!1766 = distinct !{!1766, !1757, !1767}
!1767 = !DILocation(line: 278, column: 6, scope: !1750)
!1768 = !DILocation(line: 279, column: 26, scope: !1750)
!1769 = !DILocation(line: 279, column: 4, scope: !1750)
!1770 = !DILocation(line: 280, column: 4, scope: !1750)
!1771 = !DILocation(line: 281, column: 2, scope: !1750)
!1772 = !DILocation(line: 283, column: 1, scope: !1720)
!1773 = distinct !DISubprogram(name: "diagnostic_classify_diagnostic", scope: !3, file: !3, line: 304, type: !1774, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1081, !1068, !263, !1081}
!1776 = !{!1777, !1778, !1779, !1780}
!1777 = !DILocalVariable(name: "context", arg: 1, scope: !1773, file: !3, line: 304, type: !1068)
!1778 = !DILocalVariable(name: "option_index", arg: 2, scope: !1773, file: !3, line: 305, type: !263)
!1779 = !DILocalVariable(name: "new_kind", arg: 3, scope: !1773, file: !3, line: 306, type: !1081)
!1780 = !DILocalVariable(name: "old_kind", scope: !1773, file: !3, line: 308, type: !1081)
!1781 = !DILocation(line: 0, scope: !1773)
!1782 = !DILocation(line: 311, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 310, column: 7)
!1784 = !DILocation(line: 312, column: 19, scope: !1783)
!1785 = !DILocation(line: 315, column: 14, scope: !1773)
!1786 = !DILocation(line: 316, column: 46, scope: !1773)
!1787 = !DILocation(line: 317, column: 3, scope: !1773)
!1788 = !DILocation(line: 318, column: 1, scope: !1773)
!1789 = distinct !DISubprogram(name: "diagnostic_report_diagnostic", scope: !3, file: !3, line: 328, type: !1790, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!262, !1068, !1091}
!1792 = !{!1793, !1794, !1795, !1796, !1797, !1798}
!1793 = !DILocalVariable(name: "context", arg: 1, scope: !1789, file: !3, line: 328, type: !1068)
!1794 = !DILocalVariable(name: "diagnostic", arg: 2, scope: !1789, file: !3, line: 329, type: !1091)
!1795 = !DILocalVariable(name: "location", scope: !1789, file: !3, line: 331, type: !427)
!1796 = !DILocalVariable(name: "maybe_print_warnings_as_errors_message", scope: !1789, file: !3, line: 332, type: !262)
!1797 = !DILocalVariable(name: "saved_format_spec", scope: !1789, file: !3, line: 333, type: !268)
!1798 = !DILocalVariable(name: "s", scope: !1799, file: !3, line: 418, type: !1132)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 417, column: 2)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 414, column: 11)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 409, column: 5)
!1802 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 408, column: 7)
!1803 = !DILocation(line: 0, scope: !1789)
!1804 = !DILocation(line: 331, column: 37, scope: !1789)
!1805 = !DILocation(line: 337, column: 20, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 337, column: 7)
!1807 = !DILocation(line: 337, column: 25, scope: !1806)
!1808 = !DILocation(line: 337, column: 39, scope: !1806)
!1809 = !DILocation(line: 337, column: 59, scope: !1806)
!1810 = !DILocation(line: 338, column: 7, scope: !1806)
!1811 = !DILocation(line: 338, column: 11, scope: !1806)
!1812 = !DILocation(line: 341, column: 19, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 341, column: 7)
!1814 = !DILocation(line: 341, column: 24, scope: !1813)
!1815 = !DILocation(line: 341, column: 7, scope: !1789)
!1816 = !DILocation(line: 342, column: 24, scope: !1813)
!1817 = !DILocation(line: 342, column: 22, scope: !1813)
!1818 = !DILocation(line: 342, column: 5, scope: !1813)
!1819 = !DILocation(line: 344, column: 19, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 344, column: 7)
!1821 = !DILocation(line: 344, column: 24, scope: !1820)
!1822 = !DILocation(line: 344, column: 35, scope: !1820)
!1823 = !DILocation(line: 344, column: 47, scope: !1820)
!1824 = !DILocation(line: 344, column: 38, scope: !1820)
!1825 = !DILocation(line: 344, column: 7, scope: !1789)
!1826 = !DILocation(line: 347, column: 16, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 347, column: 7)
!1828 = !DILocation(line: 347, column: 21, scope: !1827)
!1829 = !DILocation(line: 347, column: 7, scope: !1789)
!1830 = !DILocation(line: 352, column: 28, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 352, column: 11)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 348, column: 5)
!1833 = !DILocation(line: 352, column: 38, scope: !1831)
!1834 = !DILocation(line: 352, column: 55, scope: !1831)
!1835 = !DILocation(line: 352, column: 11, scope: !1832)
!1836 = !DILocation(line: 353, column: 2, scope: !1831)
!1837 = !DILocation(line: 355, column: 2, scope: !1831)
!1838 = !DILocation(line: 362, column: 16, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 362, column: 7)
!1840 = !DILocation(line: 362, column: 7, scope: !1839)
!1841 = !DILocation(line: 363, column: 7, scope: !1839)
!1842 = !DILocation(line: 363, column: 22, scope: !1839)
!1843 = !DILocation(line: 363, column: 27, scope: !1839)
!1844 = !DILocation(line: 362, column: 7, scope: !1789)
!1845 = !DILocation(line: 365, column: 24, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 364, column: 5)
!1847 = !DILocation(line: 367, column: 5, scope: !1846)
!1848 = !DILocation(line: 369, column: 19, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 369, column: 7)
!1850 = !DILocation(line: 369, column: 7, scope: !1849)
!1851 = !DILocation(line: 369, column: 7, scope: !1789)
!1852 = !DILocation(line: 373, column: 13, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 373, column: 11)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 370, column: 5)
!1855 = !DILocation(line: 373, column: 11, scope: !1854)
!1856 = !DILocation(line: 377, column: 52, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 377, column: 11)
!1858 = !DILocation(line: 377, column: 11, scope: !1857)
!1859 = !DILocation(line: 377, column: 66, scope: !1857)
!1860 = !DILocation(line: 377, column: 11, scope: !1854)
!1861 = !DILocation(line: 384, column: 23, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 384, column: 11)
!1863 = !DILocation(line: 379, column: 21, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 378, column: 2)
!1865 = !DILocation(line: 381, column: 2, scope: !1864)
!1866 = !DILocation(line: 384, column: 28, scope: !1862)
!1867 = !DILocation(line: 384, column: 11, scope: !1854)
!1868 = !DILocation(line: 390, column: 16, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 390, column: 7)
!1870 = !DILocation(line: 390, column: 7, scope: !1869)
!1871 = !DILocation(line: 391, column: 10, scope: !1869)
!1872 = !DILocation(line: 391, column: 7, scope: !1869)
!1873 = !DILocation(line: 393, column: 29, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 392, column: 5)
!1875 = !DILocation(line: 394, column: 48, scope: !1874)
!1876 = !DILocation(line: 393, column: 7, scope: !1874)
!1877 = !DILocation(line: 395, column: 50, scope: !1874)
!1878 = !DILocation(line: 396, column: 5, scope: !1874)
!1879 = !DILocation(line: 398, column: 16, scope: !1789)
!1880 = !DILocation(line: 400, column: 19, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 400, column: 7)
!1882 = !DILocation(line: 400, column: 24, scope: !1881)
!1883 = !DILocation(line: 400, column: 34, scope: !1881)
!1884 = !DILocation(line: 400, column: 37, scope: !1881)
!1885 = !DILocation(line: 400, column: 7, scope: !1789)
!1886 = !DILocation(line: 402, column: 16, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 401, column: 5)
!1888 = !DILocation(line: 402, column: 7, scope: !1887)
!1889 = !DILocation(line: 405, column: 28, scope: !1887)
!1890 = !DILocation(line: 405, column: 7, scope: !1887)
!1891 = !DILocation(line: 406, column: 5, scope: !1887)
!1892 = !DILocation(line: 408, column: 19, scope: !1802)
!1893 = !DILocation(line: 408, column: 24, scope: !1802)
!1894 = !DILocation(line: 408, column: 7, scope: !1789)
!1895 = !DILocation(line: 414, column: 12, scope: !1800)
!1896 = !DILocation(line: 414, column: 54, scope: !1800)
!1897 = !DILocation(line: 415, column: 5, scope: !1800)
!1898 = !DILocation(line: 415, column: 8, scope: !1800)
!1899 = !DILocation(line: 415, column: 50, scope: !1800)
!1900 = !DILocation(line: 416, column: 4, scope: !1800)
!1901 = !DILocation(line: 416, column: 17, scope: !1800)
!1902 = !DILocation(line: 416, column: 8, scope: !1800)
!1903 = !DILocation(line: 414, column: 11, scope: !1801)
!1904 = !DILocation(line: 418, column: 4, scope: !1799)
!1905 = !DILocation(line: 418, column: 55, scope: !1799)
!1906 = !DILocation(line: 0, scope: !1799)
!1907 = !DILocation(line: 418, column: 26, scope: !1799)
!1908 = !DILocation(line: 419, column: 13, scope: !1799)
!1909 = !DILocation(line: 420, column: 8, scope: !1799)
!1910 = !DILocation(line: 420, column: 16, scope: !1799)
!1911 = !DILocation(line: 419, column: 4, scope: !1799)
!1912 = !DILocation(line: 421, column: 4, scope: !1799)
!1913 = !DILocation(line: 422, column: 2, scope: !1800)
!1914 = !DILocation(line: 422, column: 2, scope: !1799)
!1915 = !DILocation(line: 424, column: 20, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 424, column: 11)
!1917 = !DILocation(line: 424, column: 11, scope: !1916)
!1918 = !DILocation(line: 424, column: 11, scope: !1801)
!1919 = !DILocation(line: 425, column: 50, scope: !1916)
!1920 = !DILocation(line: 426, column: 29, scope: !1916)
!1921 = !DILocation(line: 425, column: 2, scope: !1916)
!1922 = !DILocation(line: 428, column: 5, scope: !1789)
!1923 = !DILocation(line: 428, column: 3, scope: !1789)
!1924 = !DILocation(line: 430, column: 43, scope: !1789)
!1925 = !DILocation(line: 431, column: 16, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 431, column: 7)
!1927 = !DILocation(line: 431, column: 7, scope: !1926)
!1928 = !DILocation(line: 431, column: 38, scope: !1926)
!1929 = !DILocation(line: 431, column: 53, scope: !1926)
!1930 = !DILocation(line: 431, column: 41, scope: !1926)
!1931 = !DILocation(line: 431, column: 7, scope: !1789)
!1932 = !DILocation(line: 433, column: 9, scope: !1926)
!1933 = !DILocation(line: 433, column: 7, scope: !1926)
!1934 = !DILocation(line: 432, column: 5, scope: !1926)
!1935 = !DILocation(line: 436, column: 23, scope: !1789)
!1936 = !DILocation(line: 436, column: 29, scope: !1789)
!1937 = !DILocation(line: 437, column: 54, scope: !1789)
!1938 = !DILocation(line: 437, column: 23, scope: !1789)
!1939 = !DILocation(line: 437, column: 39, scope: !1789)
!1940 = !DILocation(line: 438, column: 31, scope: !1789)
!1941 = !DILocation(line: 439, column: 3, scope: !1789)
!1942 = !DILocation(line: 440, column: 5, scope: !1789)
!1943 = !DILocation(line: 440, column: 3, scope: !1789)
!1944 = !DILocation(line: 441, column: 3, scope: !1789)
!1945 = !DILocation(line: 442, column: 5, scope: !1789)
!1946 = !DILocation(line: 442, column: 3, scope: !1789)
!1947 = !DILocation(line: 443, column: 3, scope: !1789)
!1948 = !DILocation(line: 444, column: 3, scope: !1789)
!1949 = !DILocation(line: 445, column: 35, scope: !1789)
!1950 = !DILocation(line: 446, column: 31, scope: !1789)
!1951 = !DILocation(line: 448, column: 16, scope: !1789)
!1952 = !DILocation(line: 450, column: 3, scope: !1789)
!1953 = !DILocation(line: 451, column: 1, scope: !1789)
!1954 = distinct !DISubprogram(name: "error_recursion", scope: !3, file: !3, line: 766, type: !1580, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "context", arg: 1, scope: !1954, file: !3, line: 766, type: !1068)
!1957 = !DILocalVariable(name: "diagnostic", scope: !1954, file: !3, line: 768, type: !1092)
!1958 = !DILocation(line: 0, scope: !1954)
!1959 = !DILocation(line: 768, column: 3, scope: !1954)
!1960 = !DILocation(line: 770, column: 16, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 770, column: 7)
!1962 = !DILocation(line: 770, column: 21, scope: !1961)
!1963 = !DILocation(line: 770, column: 7, scope: !1954)
!1964 = !DILocation(line: 771, column: 5, scope: !1961)
!1965 = !DILocation(line: 773, column: 12, scope: !1954)
!1966 = !DILocation(line: 773, column: 3, scope: !1954)
!1967 = !DILocation(line: 778, column: 14, scope: !1954)
!1968 = !DILocation(line: 778, column: 19, scope: !1954)
!1969 = !DILocation(line: 779, column: 3, scope: !1954)
!1970 = !DILocation(line: 783, column: 3, scope: !1954)
!1971 = !DILocation(line: 784, column: 1, scope: !1954)
!1972 = distinct !DISubprogram(name: "fnotice", scope: !3, file: !3, line: 751, type: !1973, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !325, !268, null}
!1975 = !{!1976, !1977, !1978}
!1976 = !DILocalVariable(name: "file", arg: 1, scope: !1972, file: !3, line: 751, type: !325)
!1977 = !DILocalVariable(name: "cmsgid", arg: 2, scope: !1972, file: !3, line: 751, type: !268)
!1978 = !DILocalVariable(name: "ap", scope: !1972, file: !3, line: 753, type: !412)
!1979 = !DILocation(line: 0, scope: !1972)
!1980 = !DILocation(line: 753, column: 3, scope: !1972)
!1981 = !DILocation(line: 753, column: 11, scope: !1972)
!1982 = !DILocation(line: 755, column: 3, scope: !1972)
!1983 = !DILocation(line: 756, column: 30, scope: !1972)
!1984 = !DILocation(line: 756, column: 3, scope: !1972)
!1985 = !DILocation(line: 757, column: 3, scope: !1972)
!1986 = !DILocation(line: 758, column: 1, scope: !1972)
!1987 = distinct !DISubprogram(name: "diagnostic_action_after_output", scope: !3, file: !3, line: 169, type: !1089, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1988)
!1988 = !{!1989, !1990}
!1989 = !DILocalVariable(name: "context", arg: 1, scope: !1987, file: !3, line: 169, type: !1068)
!1990 = !DILocalVariable(name: "diagnostic", arg: 2, scope: !1987, file: !3, line: 170, type: !1091)
!1991 = !DILocation(line: 0, scope: !1987)
!1992 = !DILocation(line: 172, column: 23, scope: !1987)
!1993 = !DILocation(line: 172, column: 3, scope: !1987)
!1994 = !DILocation(line: 182, column: 20, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 182, column: 11)
!1996 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 173, column: 5)
!1997 = !DILocation(line: 182, column: 11, scope: !1995)
!1998 = !DILocation(line: 182, column: 11, scope: !1996)
!1999 = !DILocation(line: 183, column: 2, scope: !1995)
!2000 = !DILocation(line: 184, column: 11, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 184, column: 11)
!2002 = !DILocation(line: 184, column: 11, scope: !1996)
!2003 = !DILocation(line: 186, column: 13, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 185, column: 2)
!2005 = !DILocation(line: 186, column: 4, scope: !2004)
!2006 = !DILocation(line: 187, column: 4, scope: !2004)
!2007 = !DILocation(line: 188, column: 2, scope: !2004)
!2008 = !DILocation(line: 192, column: 20, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 192, column: 11)
!2010 = !DILocation(line: 192, column: 11, scope: !2009)
!2011 = !DILocation(line: 192, column: 11, scope: !1996)
!2012 = !DILocation(line: 193, column: 2, scope: !2009)
!2013 = !DILocation(line: 196, column: 16, scope: !1996)
!2014 = !DILocation(line: 196, column: 7, scope: !1996)
!2015 = !DILocation(line: 218, column: 7, scope: !1996)
!2016 = !DILocation(line: 221, column: 20, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 221, column: 11)
!2018 = !DILocation(line: 221, column: 11, scope: !2017)
!2019 = !DILocation(line: 221, column: 11, scope: !1996)
!2020 = !DILocation(line: 222, column: 2, scope: !2017)
!2021 = !DILocation(line: 224, column: 16, scope: !1996)
!2022 = !DILocation(line: 224, column: 7, scope: !1996)
!2023 = !DILocation(line: 225, column: 7, scope: !1996)
!2024 = !DILocation(line: 228, column: 7, scope: !1996)
!2025 = !DILocation(line: 229, column: 5, scope: !1996)
!2026 = !DILocation(line: 230, column: 1, scope: !1987)
!2027 = !DILocation(line: 0, scope: !1145)
!2028 = !DILocation(line: 466, column: 3, scope: !1145)
!2029 = !DILocation(line: 466, column: 10, scope: !1145)
!2030 = !DILocation(line: 466, column: 15, scope: !1145)
!2031 = !DILocation(line: 466, column: 22, scope: !1145)
!2032 = !DILocation(line: 466, column: 25, scope: !1145)
!2033 = !DILocation(line: 466, column: 30, scope: !1145)
!2034 = !DILocation(line: 466, column: 37, scope: !1145)
!2035 = !DILocation(line: 466, column: 40, scope: !1145)
!2036 = !DILocation(line: 467, column: 7, scope: !1145)
!2037 = distinct !{!2037, !2028, !2038}
!2038 = !DILocation(line: 467, column: 10, scope: !1145)
!2039 = !DILocation(line: 473, column: 3, scope: !1145)
!2040 = !DILocation(line: 473, column: 10, scope: !1145)
!2041 = !DILocation(line: 473, column: 16, scope: !1145)
!2042 = !DILocation(line: 473, column: 13, scope: !1145)
!2043 = !DILocation(line: 473, column: 19, scope: !1145)
!2044 = !DILocation(line: 473, column: 25, scope: !1145)
!2045 = !DILocation(line: 473, column: 30, scope: !1145)
!2046 = !DILocation(line: 474, column: 6, scope: !1145)
!2047 = !DILocation(line: 474, column: 11, scope: !1145)
!2048 = distinct !{!2048, !2039, !2047}
!2049 = !DILocation(line: 477, column: 3, scope: !1145)
!2050 = !DILocation(line: 477, column: 12, scope: !1145)
!2051 = !DILocation(line: 477, column: 19, scope: !1145)
!2052 = !DILocation(line: 477, column: 23, scope: !1145)
!2053 = distinct !{!2053, !2049, !2054}
!2054 = !DILocation(line: 478, column: 6, scope: !1145)
!2055 = !DILocation(line: 480, column: 3, scope: !1145)
!2056 = distinct !DISubprogram(name: "verbatim", scope: !3, file: !3, line: 489, type: !2057, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !268, null}
!2059 = !{!2060, !2061, !2062}
!2060 = !DILocalVariable(name: "gmsgid", arg: 1, scope: !2056, file: !3, line: 489, type: !268)
!2061 = !DILocalVariable(name: "text", scope: !2056, file: !3, line: 491, type: !406)
!2062 = !DILocalVariable(name: "ap", scope: !2056, file: !3, line: 492, type: !412)
!2063 = !DILocation(line: 0, scope: !2056)
!2064 = !DILocation(line: 491, column: 3, scope: !2056)
!2065 = !DILocation(line: 492, column: 3, scope: !2056)
!2066 = !DILocation(line: 492, column: 11, scope: !2056)
!2067 = !DILocation(line: 494, column: 3, scope: !2056)
!2068 = !DILocation(line: 495, column: 17, scope: !2056)
!2069 = !DILocation(line: 495, column: 8, scope: !2056)
!2070 = !DILocation(line: 495, column: 15, scope: !2056)
!2071 = !DILocation(line: 496, column: 8, scope: !2056)
!2072 = !DILocation(line: 496, column: 17, scope: !2056)
!2073 = !DILocation(line: 497, column: 8, scope: !2056)
!2074 = !DILocation(line: 497, column: 20, scope: !2056)
!2075 = !DILocation(line: 498, column: 8, scope: !2056)
!2076 = !DILocation(line: 498, column: 14, scope: !2056)
!2077 = !DILocation(line: 499, column: 8, scope: !2056)
!2078 = !DILocation(line: 499, column: 24, scope: !2056)
!2079 = !DILocation(line: 500, column: 3, scope: !2056)
!2080 = !DILocation(line: 501, column: 3, scope: !2056)
!2081 = !DILocation(line: 502, column: 3, scope: !2056)
!2082 = !DILocation(line: 503, column: 1, scope: !2056)
!2083 = distinct !DISubprogram(name: "emit_diagnostic", scope: !3, file: !3, line: 506, type: !2084, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!262, !1081, !427, !263, !268, null}
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2093}
!2087 = !DILocalVariable(name: "kind", arg: 1, scope: !2083, file: !3, line: 506, type: !1081)
!2088 = !DILocalVariable(name: "location", arg: 2, scope: !2083, file: !3, line: 506, type: !427)
!2089 = !DILocalVariable(name: "opt", arg: 3, scope: !2083, file: !3, line: 506, type: !263)
!2090 = !DILocalVariable(name: "gmsgid", arg: 4, scope: !2083, file: !3, line: 507, type: !268)
!2091 = !DILocalVariable(name: "diagnostic", scope: !2083, file: !3, line: 509, type: !1092)
!2092 = !DILocalVariable(name: "ap", scope: !2083, file: !3, line: 510, type: !412)
!2093 = !DILocalVariable(name: "ret", scope: !2083, file: !3, line: 511, type: !262)
!2094 = !DILocation(line: 0, scope: !2083)
!2095 = !DILocation(line: 509, column: 3, scope: !2083)
!2096 = !DILocation(line: 510, column: 3, scope: !2083)
!2097 = !DILocation(line: 510, column: 11, scope: !2083)
!2098 = !DILocation(line: 513, column: 3, scope: !2083)
!2099 = !DILocation(line: 514, column: 12, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 514, column: 7)
!2101 = !DILocation(line: 514, column: 7, scope: !2083)
!2102 = !DILocation(line: 517, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 515, column: 5)
!2104 = !DILocation(line: 516, column: 7, scope: !2103)
!2105 = !DILocation(line: 518, column: 18, scope: !2103)
!2106 = !DILocation(line: 518, column: 31, scope: !2103)
!2107 = !DILocation(line: 519, column: 5, scope: !2103)
!2108 = !DILocation(line: 521, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 520, column: 8)
!2110 = !DILocation(line: 522, column: 30, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 522, column: 11)
!2112 = !DILocation(line: 523, column: 13, scope: !2111)
!2113 = !DILocation(line: 523, column: 26, scope: !2111)
!2114 = !DILocation(line: 523, column: 2, scope: !2111)
!2115 = !DILocation(line: 526, column: 9, scope: !2083)
!2116 = !DILocation(line: 527, column: 3, scope: !2083)
!2117 = !DILocation(line: 529, column: 1, scope: !2083)
!2118 = !DILocation(line: 528, column: 3, scope: !2083)
!2119 = distinct !DISubprogram(name: "inform", scope: !3, file: !3, line: 534, type: !2120, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2122)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !427, !268, null}
!2122 = !{!2123, !2124, !2125, !2126}
!2123 = !DILocalVariable(name: "location", arg: 1, scope: !2119, file: !3, line: 534, type: !427)
!2124 = !DILocalVariable(name: "gmsgid", arg: 2, scope: !2119, file: !3, line: 534, type: !268)
!2125 = !DILocalVariable(name: "diagnostic", scope: !2119, file: !3, line: 536, type: !1092)
!2126 = !DILocalVariable(name: "ap", scope: !2119, file: !3, line: 537, type: !412)
!2127 = !DILocation(line: 0, scope: !2119)
!2128 = !DILocation(line: 536, column: 3, scope: !2119)
!2129 = !DILocation(line: 537, column: 3, scope: !2119)
!2130 = !DILocation(line: 537, column: 11, scope: !2119)
!2131 = !DILocation(line: 539, column: 3, scope: !2119)
!2132 = !DILocation(line: 540, column: 3, scope: !2119)
!2133 = !DILocation(line: 541, column: 3, scope: !2119)
!2134 = !DILocation(line: 542, column: 3, scope: !2119)
!2135 = !DILocation(line: 543, column: 1, scope: !2119)
!2136 = distinct !DISubprogram(name: "inform_n", scope: !3, file: !3, line: 548, type: !2137, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !427, !263, !268, !268, null}
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145}
!2140 = !DILocalVariable(name: "location", arg: 1, scope: !2136, file: !3, line: 548, type: !427)
!2141 = !DILocalVariable(name: "n", arg: 2, scope: !2136, file: !3, line: 548, type: !263)
!2142 = !DILocalVariable(name: "singular_gmsgid", arg: 3, scope: !2136, file: !3, line: 548, type: !268)
!2143 = !DILocalVariable(name: "plural_gmsgid", arg: 4, scope: !2136, file: !3, line: 549, type: !268)
!2144 = !DILocalVariable(name: "diagnostic", scope: !2136, file: !3, line: 551, type: !1092)
!2145 = !DILocalVariable(name: "ap", scope: !2136, file: !3, line: 552, type: !412)
!2146 = !DILocation(line: 0, scope: !2136)
!2147 = !DILocation(line: 551, column: 3, scope: !2136)
!2148 = !DILocation(line: 552, column: 3, scope: !2136)
!2149 = !DILocation(line: 552, column: 11, scope: !2136)
!2150 = !DILocation(line: 554, column: 3, scope: !2136)
!2151 = !DILocation(line: 556, column: 35, scope: !2136)
!2152 = !DILocation(line: 555, column: 3, scope: !2136)
!2153 = !DILocation(line: 558, column: 3, scope: !2136)
!2154 = !DILocation(line: 559, column: 3, scope: !2136)
!2155 = !DILocation(line: 560, column: 1, scope: !2136)
!2156 = distinct !DISubprogram(name: "warning", scope: !3, file: !3, line: 566, type: !2157, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!262, !263, !268, null}
!2159 = !{!2160, !2161, !2162, !2163, !2164}
!2160 = !DILocalVariable(name: "opt", arg: 1, scope: !2156, file: !3, line: 566, type: !263)
!2161 = !DILocalVariable(name: "gmsgid", arg: 2, scope: !2156, file: !3, line: 566, type: !268)
!2162 = !DILocalVariable(name: "diagnostic", scope: !2156, file: !3, line: 568, type: !1092)
!2163 = !DILocalVariable(name: "ap", scope: !2156, file: !3, line: 569, type: !412)
!2164 = !DILocalVariable(name: "ret", scope: !2156, file: !3, line: 570, type: !262)
!2165 = !DILocation(line: 0, scope: !2156)
!2166 = !DILocation(line: 568, column: 3, scope: !2156)
!2167 = !DILocation(line: 569, column: 3, scope: !2156)
!2168 = !DILocation(line: 569, column: 11, scope: !2156)
!2169 = !DILocation(line: 572, column: 3, scope: !2156)
!2170 = !DILocation(line: 573, column: 50, scope: !2156)
!2171 = !DILocation(line: 573, column: 3, scope: !2156)
!2172 = !DILocation(line: 574, column: 14, scope: !2156)
!2173 = !DILocation(line: 574, column: 27, scope: !2156)
!2174 = !DILocation(line: 576, column: 9, scope: !2156)
!2175 = !DILocation(line: 577, column: 3, scope: !2156)
!2176 = !DILocation(line: 579, column: 1, scope: !2156)
!2177 = !DILocation(line: 578, column: 3, scope: !2156)
!2178 = distinct !DISubprogram(name: "warning_at", scope: !3, file: !3, line: 586, type: !2179, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!262, !427, !263, !268, null}
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187}
!2182 = !DILocalVariable(name: "location", arg: 1, scope: !2178, file: !3, line: 586, type: !427)
!2183 = !DILocalVariable(name: "opt", arg: 2, scope: !2178, file: !3, line: 586, type: !263)
!2184 = !DILocalVariable(name: "gmsgid", arg: 3, scope: !2178, file: !3, line: 586, type: !268)
!2185 = !DILocalVariable(name: "diagnostic", scope: !2178, file: !3, line: 588, type: !1092)
!2186 = !DILocalVariable(name: "ap", scope: !2178, file: !3, line: 589, type: !412)
!2187 = !DILocalVariable(name: "ret", scope: !2178, file: !3, line: 590, type: !262)
!2188 = !DILocation(line: 0, scope: !2178)
!2189 = !DILocation(line: 588, column: 3, scope: !2178)
!2190 = !DILocation(line: 589, column: 3, scope: !2178)
!2191 = !DILocation(line: 589, column: 11, scope: !2178)
!2192 = !DILocation(line: 592, column: 3, scope: !2178)
!2193 = !DILocation(line: 593, column: 3, scope: !2178)
!2194 = !DILocation(line: 594, column: 14, scope: !2178)
!2195 = !DILocation(line: 594, column: 27, scope: !2178)
!2196 = !DILocation(line: 595, column: 9, scope: !2178)
!2197 = !DILocation(line: 596, column: 3, scope: !2178)
!2198 = !DILocation(line: 598, column: 1, scope: !2178)
!2199 = !DILocation(line: 597, column: 3, scope: !2178)
!2200 = distinct !DISubprogram(name: "pedwarn", scope: !3, file: !3, line: 614, type: !2179, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207}
!2202 = !DILocalVariable(name: "location", arg: 1, scope: !2200, file: !3, line: 614, type: !427)
!2203 = !DILocalVariable(name: "opt", arg: 2, scope: !2200, file: !3, line: 614, type: !263)
!2204 = !DILocalVariable(name: "gmsgid", arg: 3, scope: !2200, file: !3, line: 614, type: !268)
!2205 = !DILocalVariable(name: "diagnostic", scope: !2200, file: !3, line: 616, type: !1092)
!2206 = !DILocalVariable(name: "ap", scope: !2200, file: !3, line: 617, type: !412)
!2207 = !DILocalVariable(name: "ret", scope: !2200, file: !3, line: 618, type: !262)
!2208 = !DILocation(line: 0, scope: !2200)
!2209 = !DILocation(line: 616, column: 3, scope: !2200)
!2210 = !DILocation(line: 617, column: 3, scope: !2200)
!2211 = !DILocation(line: 617, column: 11, scope: !2200)
!2212 = !DILocation(line: 620, column: 3, scope: !2200)
!2213 = !DILocation(line: 621, column: 3, scope: !2200)
!2214 = !DILocation(line: 622, column: 14, scope: !2200)
!2215 = !DILocation(line: 622, column: 27, scope: !2200)
!2216 = !DILocation(line: 623, column: 9, scope: !2200)
!2217 = !DILocation(line: 624, column: 3, scope: !2200)
!2218 = !DILocation(line: 626, column: 1, scope: !2200)
!2219 = !DILocation(line: 625, column: 3, scope: !2200)
!2220 = distinct !DISubprogram(name: "permerror", scope: !3, file: !3, line: 636, type: !2221, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!262, !427, !268, null}
!2223 = !{!2224, !2225, !2226, !2227, !2228}
!2224 = !DILocalVariable(name: "location", arg: 1, scope: !2220, file: !3, line: 636, type: !427)
!2225 = !DILocalVariable(name: "gmsgid", arg: 2, scope: !2220, file: !3, line: 636, type: !268)
!2226 = !DILocalVariable(name: "diagnostic", scope: !2220, file: !3, line: 638, type: !1092)
!2227 = !DILocalVariable(name: "ap", scope: !2220, file: !3, line: 639, type: !412)
!2228 = !DILocalVariable(name: "ret", scope: !2220, file: !3, line: 640, type: !262)
!2229 = !DILocation(line: 0, scope: !2220)
!2230 = !DILocation(line: 638, column: 3, scope: !2220)
!2231 = !DILocation(line: 639, column: 3, scope: !2220)
!2232 = !DILocation(line: 639, column: 11, scope: !2220)
!2233 = !DILocation(line: 642, column: 3, scope: !2220)
!2234 = !DILocation(line: 644, column: 24, scope: !2220)
!2235 = !DILocation(line: 643, column: 3, scope: !2220)
!2236 = !DILocation(line: 645, column: 14, scope: !2220)
!2237 = !DILocation(line: 645, column: 27, scope: !2220)
!2238 = !DILocation(line: 646, column: 9, scope: !2220)
!2239 = !DILocation(line: 647, column: 3, scope: !2220)
!2240 = !DILocation(line: 649, column: 1, scope: !2220)
!2241 = !DILocation(line: 648, column: 3, scope: !2220)
!2242 = distinct !DISubprogram(name: "error", scope: !3, file: !3, line: 654, type: !2057, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2243)
!2243 = !{!2244, !2245, !2246}
!2244 = !DILocalVariable(name: "gmsgid", arg: 1, scope: !2242, file: !3, line: 654, type: !268)
!2245 = !DILocalVariable(name: "diagnostic", scope: !2242, file: !3, line: 656, type: !1092)
!2246 = !DILocalVariable(name: "ap", scope: !2242, file: !3, line: 657, type: !412)
!2247 = !DILocation(line: 0, scope: !2242)
!2248 = !DILocation(line: 656, column: 3, scope: !2242)
!2249 = !DILocation(line: 657, column: 3, scope: !2242)
!2250 = !DILocation(line: 657, column: 11, scope: !2242)
!2251 = !DILocation(line: 659, column: 3, scope: !2242)
!2252 = !DILocation(line: 660, column: 50, scope: !2242)
!2253 = !DILocation(line: 660, column: 3, scope: !2242)
!2254 = !DILocation(line: 661, column: 3, scope: !2242)
!2255 = !DILocation(line: 662, column: 3, scope: !2242)
!2256 = !DILocation(line: 663, column: 1, scope: !2242)
!2257 = distinct !DISubprogram(name: "error_n", scope: !3, file: !3, line: 668, type: !2137, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2264}
!2259 = !DILocalVariable(name: "location", arg: 1, scope: !2257, file: !3, line: 668, type: !427)
!2260 = !DILocalVariable(name: "n", arg: 2, scope: !2257, file: !3, line: 668, type: !263)
!2261 = !DILocalVariable(name: "singular_gmsgid", arg: 3, scope: !2257, file: !3, line: 668, type: !268)
!2262 = !DILocalVariable(name: "plural_gmsgid", arg: 4, scope: !2257, file: !3, line: 669, type: !268)
!2263 = !DILocalVariable(name: "diagnostic", scope: !2257, file: !3, line: 671, type: !1092)
!2264 = !DILocalVariable(name: "ap", scope: !2257, file: !3, line: 672, type: !412)
!2265 = !DILocation(line: 0, scope: !2257)
!2266 = !DILocation(line: 671, column: 3, scope: !2257)
!2267 = !DILocation(line: 672, column: 3, scope: !2257)
!2268 = !DILocation(line: 672, column: 11, scope: !2257)
!2269 = !DILocation(line: 674, column: 3, scope: !2257)
!2270 = !DILocation(line: 676, column: 35, scope: !2257)
!2271 = !DILocation(line: 675, column: 3, scope: !2257)
!2272 = !DILocation(line: 678, column: 3, scope: !2257)
!2273 = !DILocation(line: 679, column: 3, scope: !2257)
!2274 = !DILocation(line: 680, column: 1, scope: !2257)
!2275 = distinct !DISubprogram(name: "error_at", scope: !3, file: !3, line: 684, type: !2120, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2276 = !{!2277, !2278, !2279, !2280}
!2277 = !DILocalVariable(name: "loc", arg: 1, scope: !2275, file: !3, line: 684, type: !427)
!2278 = !DILocalVariable(name: "gmsgid", arg: 2, scope: !2275, file: !3, line: 684, type: !268)
!2279 = !DILocalVariable(name: "diagnostic", scope: !2275, file: !3, line: 686, type: !1092)
!2280 = !DILocalVariable(name: "ap", scope: !2275, file: !3, line: 687, type: !412)
!2281 = !DILocation(line: 0, scope: !2275)
!2282 = !DILocation(line: 686, column: 3, scope: !2275)
!2283 = !DILocation(line: 687, column: 3, scope: !2275)
!2284 = !DILocation(line: 687, column: 11, scope: !2275)
!2285 = !DILocation(line: 689, column: 3, scope: !2275)
!2286 = !DILocation(line: 690, column: 3, scope: !2275)
!2287 = !DILocation(line: 691, column: 3, scope: !2275)
!2288 = !DILocation(line: 692, column: 3, scope: !2275)
!2289 = !DILocation(line: 693, column: 1, scope: !2275)
!2290 = distinct !DISubprogram(name: "sorry", scope: !3, file: !3, line: 699, type: !2057, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2291)
!2291 = !{!2292, !2293, !2294}
!2292 = !DILocalVariable(name: "gmsgid", arg: 1, scope: !2290, file: !3, line: 699, type: !268)
!2293 = !DILocalVariable(name: "diagnostic", scope: !2290, file: !3, line: 701, type: !1092)
!2294 = !DILocalVariable(name: "ap", scope: !2290, file: !3, line: 702, type: !412)
!2295 = !DILocation(line: 0, scope: !2290)
!2296 = !DILocation(line: 701, column: 3, scope: !2290)
!2297 = !DILocation(line: 702, column: 3, scope: !2290)
!2298 = !DILocation(line: 702, column: 11, scope: !2290)
!2299 = !DILocation(line: 704, column: 3, scope: !2290)
!2300 = !DILocation(line: 705, column: 50, scope: !2290)
!2301 = !DILocation(line: 705, column: 3, scope: !2290)
!2302 = !DILocation(line: 706, column: 3, scope: !2290)
!2303 = !DILocation(line: 707, column: 3, scope: !2290)
!2304 = !DILocation(line: 708, column: 1, scope: !2290)
!2305 = distinct !DISubprogram(name: "fatal_error", scope: !3, file: !3, line: 714, type: !2057, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DILocalVariable(name: "gmsgid", arg: 1, scope: !2305, file: !3, line: 714, type: !268)
!2308 = !DILocalVariable(name: "diagnostic", scope: !2305, file: !3, line: 716, type: !1092)
!2309 = !DILocalVariable(name: "ap", scope: !2305, file: !3, line: 717, type: !412)
!2310 = !DILocation(line: 0, scope: !2305)
!2311 = !DILocation(line: 716, column: 3, scope: !2305)
!2312 = !DILocation(line: 717, column: 3, scope: !2305)
!2313 = !DILocation(line: 717, column: 11, scope: !2305)
!2314 = !DILocation(line: 719, column: 3, scope: !2305)
!2315 = !DILocation(line: 720, column: 50, scope: !2305)
!2316 = !DILocation(line: 720, column: 3, scope: !2305)
!2317 = !DILocation(line: 721, column: 3, scope: !2305)
!2318 = !DILocation(line: 722, column: 3, scope: !2305)
!2319 = !DILocation(line: 724, column: 3, scope: !2305)
!2320 = !DILocation(line: 725, column: 1, scope: !2305)
!2321 = distinct !DISubprogram(name: "internal_error", scope: !3, file: !3, line: 732, type: !2057, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2322)
!2322 = !{!2323, !2324, !2325}
!2323 = !DILocalVariable(name: "gmsgid", arg: 1, scope: !2321, file: !3, line: 732, type: !268)
!2324 = !DILocalVariable(name: "diagnostic", scope: !2321, file: !3, line: 734, type: !1092)
!2325 = !DILocalVariable(name: "ap", scope: !2321, file: !3, line: 735, type: !412)
!2326 = !DILocation(line: 0, scope: !2321)
!2327 = !DILocation(line: 734, column: 3, scope: !2321)
!2328 = !DILocation(line: 735, column: 3, scope: !2321)
!2329 = !DILocation(line: 735, column: 11, scope: !2321)
!2330 = !DILocation(line: 737, column: 3, scope: !2321)
!2331 = !DILocation(line: 738, column: 50, scope: !2321)
!2332 = !DILocation(line: 738, column: 3, scope: !2321)
!2333 = !DILocation(line: 739, column: 3, scope: !2321)
!2334 = !DILocation(line: 740, column: 3, scope: !2321)
!2335 = !DILocation(line: 742, column: 3, scope: !2321)
!2336 = !DILocation(line: 743, column: 1, scope: !2321)
!2337 = distinct !DISubprogram(name: "real_abort", scope: !3, file: !3, line: 801, type: !2338, scopeLine: 802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null}
!2340 = !DILocation(line: 803, column: 3, scope: !2337)
!2341 = !DILocation(line: 804, column: 1, scope: !2337)
