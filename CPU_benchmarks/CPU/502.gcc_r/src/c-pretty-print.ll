; ModuleID = 'c-pretty-print.bc'
source_filename = "c-pretty-print.c"
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
%struct.c_pretty_print_info = type { %struct.pretty_print_info, i32*, i32, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)* }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.real_value = type { i32, [3 x i64] }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.call_expr_arg_iterator_d = type { %union.tree_node*, i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, %union.tree_node*, [1 x %union.tree_node*] }
%struct.VEC_constructor_elt_gc = type { %struct.VEC_constructor_elt_base }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { %union.tree_node*, %union.tree_node* }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"->\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@flag_isoc99 = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"__restrict__\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"<type-error>\00", align 1
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"<unnamed-unsigned:\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"<unnamed-signed:\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"<unnamed-float:\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"<unnamed-fixed:\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"c-pretty-print.c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"<typedef-error>\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"#%qs not supported by %s#\00", align 1
@tree_code_name = external dso_local local_unnamed_addr constant [0 x i8*], align 8
@c_language = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"_Complex\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"__complex__\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"__vector\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"__attribute__\00", align 1
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@.str.32 = private unnamed_addr constant [23 x i8] c"<erroneous-expression>\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"<return-value>\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"__builtin_memcpy\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"isunordered\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"__builtin_isunordered\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"!isunordered\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"!__builtin_isunordered\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"!isgreaterequal\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"!__builtin_isgreaterequal\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"!isgreater\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"!__builtin_isgreater\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"!islessequal\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"!__builtin_islessequal\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"!isless\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"!__builtin_isless\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"!islessgreater\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"!__builtin_islessgreater\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"islessgreater\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"__builtin_islessgreater\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"__builtin_abs\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"__builtin_va_arg\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"__real__\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"__imag__\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"({...})\00", align 1
@print_c_tree.pp_rec = internal global %struct.c_pretty_print_info zeroinitializer, align 8, !dbg !0
@print_c_tree.initialized = internal unnamed_addr global i1 false, align 1, !dbg !1275
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@pp_c_tree_decl_identifier.xname = internal global [8 x i8] zeroinitializer, align 1, !dbg !1121
@.str.59 = private unnamed_addr constant [7 x i8] c"<U%4x>\00", align 1
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str.60 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"\5C'\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"_False\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"_True\00", align 1
@c_global_trees = external dso_local local_unnamed_addr global [55 x %union.tree_node*], align 16
@.str.68 = private unnamed_addr constant [5 x i8] c"\5Cx%x\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"!=\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1280 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1287, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1288, metadata !DIExpression()), !dbg !1289
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1290
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1291
  ret i32 %call, !dbg !1292
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1293 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1297
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1298
  ret i32 %call, !dbg !1299
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1300 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1304, metadata !DIExpression()), !dbg !1305
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1306
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1306
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1306
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1306
  %cmp = icmp uge i8* %0, %1, !dbg !1306
  %conv1 = zext i1 %cmp to i64, !dbg !1306
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1306
  %tobool = icmp eq i64 %expval, 0, !dbg !1306
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1306

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1306
  br label %cond.end, !dbg !1306

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1306
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1306
  %2 = load i8, i8* %0, align 1, !dbg !1306
  %conv3 = zext i8 %2 to i32, !dbg !1306
  br label %cond.end, !dbg !1306

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1306
  ret i32 %cond, !dbg !1307
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1308 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1310, metadata !DIExpression()), !dbg !1311
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1312
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1312
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1312
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1312
  %cmp = icmp uge i8* %0, %1, !dbg !1312
  %conv1 = zext i1 %cmp to i64, !dbg !1312
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1312
  %tobool = icmp eq i64 %expval, 0, !dbg !1312
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1312

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1312
  br label %cond.end, !dbg !1312

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1312
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1312
  %2 = load i8, i8* %0, align 1, !dbg !1312
  %conv3 = zext i8 %2 to i32, !dbg !1312
  br label %cond.end, !dbg !1312

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1312
  ret i32 %cond, !dbg !1313
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1314 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1315
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1315
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1315
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1315
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1315
  %cmp = icmp uge i8* %1, %2, !dbg !1315
  %conv1 = zext i1 %cmp to i64, !dbg !1315
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1315
  %tobool = icmp eq i64 %expval, 0, !dbg !1315
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1315

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1315
  br label %cond.end, !dbg !1315

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1315
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1315
  %3 = load i8, i8* %1, align 1, !dbg !1315
  %conv3 = zext i8 %3 to i32, !dbg !1315
  br label %cond.end, !dbg !1315

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1315
  ret i32 %cond, !dbg !1316
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1317 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1321, metadata !DIExpression()), !dbg !1322
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1323
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1324
  ret i32 %call, !dbg !1325
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1326 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1330, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1331, metadata !DIExpression()), !dbg !1332
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1333
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1333
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1333
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1333
  %cmp = icmp uge i8* %0, %1, !dbg !1333
  %conv1 = zext i1 %cmp to i64, !dbg !1333
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1333
  %tobool = icmp eq i64 %expval, 0, !dbg !1333
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1333

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1333
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1333
  br label %cond.end, !dbg !1333

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1333
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1333
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1333
  store i8 %conv2, i8* %0, align 1, !dbg !1333
  %conv6 = and i32 %__c, 255, !dbg !1333
  br label %cond.end, !dbg !1333

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1333
  ret i32 %cond, !dbg !1334
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1335 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1337, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1338, metadata !DIExpression()), !dbg !1339
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1340
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1340
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1340
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1340
  %cmp = icmp uge i8* %0, %1, !dbg !1340
  %conv1 = zext i1 %cmp to i64, !dbg !1340
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1340
  %tobool = icmp eq i64 %expval, 0, !dbg !1340
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1340

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1340
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1340
  br label %cond.end, !dbg !1340

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1340
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1340
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1340
  store i8 %conv2, i8* %0, align 1, !dbg !1340
  %conv6 = and i32 %__c, 255, !dbg !1340
  br label %cond.end, !dbg !1340

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1340
  ret i32 %cond, !dbg !1341
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1342 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1344, metadata !DIExpression()), !dbg !1345
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1346
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1346
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1346
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1346
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1346
  %cmp = icmp uge i8* %1, %2, !dbg !1346
  %conv1 = zext i1 %cmp to i64, !dbg !1346
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1346
  %tobool = icmp eq i64 %expval, 0, !dbg !1346
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1346

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1346
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1346
  br label %cond.end, !dbg !1346

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1346
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1346
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1346
  store i8 %conv4, i8* %1, align 1, !dbg !1346
  %conv6 = and i32 %__c, 255, !dbg !1346
  br label %cond.end, !dbg !1346

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1346
  ret i32 %cond, !dbg !1347
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1348 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1354, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1355, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1356, metadata !DIExpression()), !dbg !1357
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1358
  ret i64 %call, !dbg !1359
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1360 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1362, metadata !DIExpression()), !dbg !1363
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1364
  %0 = load i32, i32* %_flags, align 8, !dbg !1364
  %and = lshr i32 %0, 4, !dbg !1364
  %and.lobit = and i32 %and, 1, !dbg !1364
  ret i32 %and.lobit, !dbg !1365
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1366 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1368, metadata !DIExpression()), !dbg !1369
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1370
  %0 = load i32, i32* %_flags, align 8, !dbg !1370
  %and = lshr i32 %0, 5, !dbg !1370
  %and.lobit = and i32 %and, 1, !dbg !1370
  ret i32 %and.lobit, !dbg !1371
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1372 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1375, metadata !DIExpression()), !dbg !1376
  %__c.off = add i32 %__c, 128, !dbg !1377
  %0 = icmp ult i32 %__c.off, 384, !dbg !1377
  br i1 %0, label %cond.true, label %cond.end, !dbg !1377

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1378
  %1 = load i32*, i32** %call, align 8, !dbg !1379
  %idxprom = sext i32 %__c to i64, !dbg !1380
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1380
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1380
  br label %cond.end, !dbg !1381

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1381
  ret i32 %cond, !dbg !1382
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1383 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1385, metadata !DIExpression()), !dbg !1386
  %__c.off = add i32 %__c, 128, !dbg !1387
  %0 = icmp ult i32 %__c.off, 384, !dbg !1387
  br i1 %0, label %cond.true, label %cond.end, !dbg !1387

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1388
  %1 = load i32*, i32** %call, align 8, !dbg !1389
  %idxprom = sext i32 %__c to i64, !dbg !1390
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1390
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1390
  br label %cond.end, !dbg !1391

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1391
  ret i32 %cond, !dbg !1392
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1393 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1398, metadata !DIExpression()), !dbg !1399
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1400
  %conv = trunc i64 %call to i32, !dbg !1401
  ret i32 %conv, !dbg !1402
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1403 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1407, metadata !DIExpression()), !dbg !1408
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1409
  ret i64 %call, !dbg !1410
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1411 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1416, metadata !DIExpression()), !dbg !1417
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1418
  ret i64 %call, !dbg !1419
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1420 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1431, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1432, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1433, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1434, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1435, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 0, metadata !1436, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1437, metadata !DIExpression()), !dbg !1441
  br label %while.cond, !dbg !1442

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1443
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1441
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1437, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1436, metadata !DIExpression()), !dbg !1441
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1444
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1442

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1445
  %div = lshr i64 %add, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %div, metadata !1438, metadata !DIExpression()), !dbg !1441
  %mul = mul i64 %div, %__size, !dbg !1448
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1449
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1439, metadata !DIExpression()), !dbg !1441
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %call, metadata !1440, metadata !DIExpression()), !dbg !1441
  %cmp1 = icmp slt i32 %call, 0, !dbg !1451
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1453

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1454
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1456

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1436, metadata !DIExpression()), !dbg !1441
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1441
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1441
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1437, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1436, metadata !DIExpression()), !dbg !1441
  br label %while.cond, !dbg !1442, !llvm.loop !1458

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1441
  ret i8* %retval.0, !dbg !1460
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1461 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1467, metadata !DIExpression()), !dbg !1468
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1469
  ret double %call, !dbg !1470
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1471 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1479, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1480, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i32 %base, metadata !1481, metadata !DIExpression()), !dbg !1482
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1483
  ret i64 %call, !dbg !1484
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1485 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1491, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1492, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %base, metadata !1493, metadata !DIExpression()), !dbg !1494
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1495
  ret i64 %call, !dbg !1496
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1497 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1508, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1509, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 %base, metadata !1510, metadata !DIExpression()), !dbg !1511
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1512
  ret i64 %call, !dbg !1513
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1514 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1518, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1519, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 %base, metadata !1520, metadata !DIExpression()), !dbg !1521
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1522
  ret i64 %call, !dbg !1523
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1524 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1564, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1565, metadata !DIExpression()), !dbg !1566
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1567
  ret i32 %call, !dbg !1568
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1569 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1571, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1572, metadata !DIExpression()), !dbg !1573
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1574
  ret i32 %call, !dbg !1575
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1576 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1580, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1581, metadata !DIExpression()), !dbg !1582
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1583
  ret i32 %call, !dbg !1584
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1585 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1589, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1590, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1591, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1592, metadata !DIExpression()), !dbg !1593
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1594
  ret i32 %call, !dbg !1595
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1596 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1600, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1601, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1602, metadata !DIExpression()), !dbg !1603
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1602, metadata !DIExpression(DW_OP_deref)), !dbg !1603
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1604
  ret i32 %call, !dbg !1605
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1606 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1610, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1611, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1612, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1613, metadata !DIExpression()), !dbg !1614
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1613, metadata !DIExpression(DW_OP_deref)), !dbg !1614
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1615
  ret i32 %call, !dbg !1616
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1617 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1641, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1642, metadata !DIExpression()), !dbg !1643
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1644
  ret i32 %call, !dbg !1645
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1646 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1648, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1649, metadata !DIExpression()), !dbg !1650
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1651
  ret i32 %call, !dbg !1652
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1653 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1657, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1658, metadata !DIExpression()), !dbg !1659
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1660
  ret i32 %call, !dbg !1661
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1662 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1666, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1667, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1668, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1669, metadata !DIExpression()), !dbg !1670
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1671
  ret i32 %call, !dbg !1672
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1673 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1677, metadata !DIExpression()), !dbg !1678
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1679
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 32) #6, !dbg !1679
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1680
  store i32 0, i32* %padding, align 8, !dbg !1681
  ret void, !dbg !1682
}

declare dso_local void @pp_base_character(%struct.pretty_print_info*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1683 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1685, metadata !DIExpression()), !dbg !1686
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1687
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 40) #6, !dbg !1687
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1688
  store i32 0, i32* %padding, align 8, !dbg !1689
  ret void, !dbg !1690
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1691 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1693, metadata !DIExpression()), !dbg !1694
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1695
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 41) #6, !dbg !1695
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1696
  store i32 0, i32* %padding, align 8, !dbg !1697
  ret void, !dbg !1698
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_left_brace(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1699 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1701, metadata !DIExpression()), !dbg !1702
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1703
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 123) #6, !dbg !1703
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1704
  store i32 0, i32* %padding, align 8, !dbg !1705
  ret void, !dbg !1706
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_right_brace(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1707 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1709, metadata !DIExpression()), !dbg !1710
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1711
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 125) #6, !dbg !1711
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1712
  store i32 0, i32* %padding, align 8, !dbg !1713
  ret void, !dbg !1714
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_left_bracket(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1715 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1717, metadata !DIExpression()), !dbg !1718
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1719
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 91) #6, !dbg !1719
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1720
  store i32 0, i32* %padding, align 8, !dbg !1721
  ret void, !dbg !1722
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_right_bracket(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1723 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1725, metadata !DIExpression()), !dbg !1726
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1727
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 93) #6, !dbg !1727
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1728
  store i32 0, i32* %padding, align 8, !dbg !1729
  ret void, !dbg !1730
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_dot(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1731 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1733, metadata !DIExpression()), !dbg !1734
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1735
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 46) #6, !dbg !1735
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1736
  store i32 0, i32* %padding, align 8, !dbg !1737
  ret void, !dbg !1738
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_ampersand(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1739 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1741, metadata !DIExpression()), !dbg !1742
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1743
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 38) #6, !dbg !1743
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1744
  store i32 0, i32* %padding, align 8, !dbg !1745
  ret void, !dbg !1746
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_star(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1747 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1749, metadata !DIExpression()), !dbg !1750
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1751
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 42) #6, !dbg !1751
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1752
  store i32 0, i32* %padding, align 8, !dbg !1753
  ret void, !dbg !1754
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_arrow(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1755 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1757, metadata !DIExpression()), !dbg !1758
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1759
  tail call void @pp_base_string(%struct.pretty_print_info* %base, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1759
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1760
  store i32 0, i32* %padding, align 8, !dbg !1761
  ret void, !dbg !1762
}

declare dso_local void @pp_base_string(%struct.pretty_print_info*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_semicolon(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1763 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1765, metadata !DIExpression()), !dbg !1766
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1767
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 59) #6, !dbg !1767
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1768
  store i32 0, i32* %padding, align 8, !dbg !1769
  ret void, !dbg !1770
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_complement(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1771 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1773, metadata !DIExpression()), !dbg !1774
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1775
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 126) #6, !dbg !1775
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1776
  store i32 0, i32* %padding, align 8, !dbg !1777
  ret void, !dbg !1778
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_exclamation(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !1779 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1781, metadata !DIExpression()), !dbg !1782
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1783
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 33) #6, !dbg !1783
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1784
  store i32 0, i32* %padding, align 8, !dbg !1785
  ret void, !dbg !1786
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_space_for_pointer_operator(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) local_unnamed_addr #4 !dbg !1787 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1789, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1790, metadata !DIExpression()), !dbg !1794
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1795
  %bf.load = load i64, i64* %0, align 8, !dbg !1795
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !1795
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !1795
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1795

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 12, !dbg !1795
  br i1 %cmp5, label %if.then, label %if.end17, !dbg !1796

if.then:                                          ; preds = %lor.lhs.false, %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1797
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !1797
  %call = tail call %union.tree_node* @strip_pointer_operator(%union.tree_node* %1) #6, !dbg !1798
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !1791, metadata !DIExpression()), !dbg !1799
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1800
  %bf.load7 = load i64, i64* %2, align 8, !dbg !1800
  %bf.cast93 = and i64 %bf.load7, 65535, !dbg !1802
  %cmp10 = icmp eq i64 %bf.cast93, 15, !dbg !1802
  br i1 %cmp10, label %if.end17, label %land.lhs.true, !dbg !1803

land.lhs.true:                                    ; preds = %if.then
  %cmp15 = icmp eq i64 %bf.cast93, 20, !dbg !1804
  br i1 %cmp15, label %if.end17, label %if.then16, !dbg !1805

if.then16:                                        ; preds = %land.lhs.true
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !1806
  br label %if.end17, !dbg !1806

if.end17:                                         ; preds = %land.lhs.true, %if.then, %if.then16, %lor.lhs.false
  ret void, !dbg !1807
}

declare dso_local %union.tree_node* @strip_pointer_operator(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_type_qualifier_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) local_unnamed_addr #4 !dbg !1808 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1810, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1811, metadata !DIExpression()), !dbg !1816
  %tobool = icmp eq %union.tree_node* %t, null, !dbg !1817
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !1819
  %cmp = icmp eq %union.tree_node* %0, %t, !dbg !1820
  %or.cond = or i1 %tobool, %cmp, !dbg !1821
  br i1 %or.cond, label %cleanup.cont, label %if.end, !dbg !1821

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1822
  %bf.load = load i64, i64* %1, align 8, !dbg !1822
  %bf.cast = and i64 %bf.load, 65535, !dbg !1822
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !1822
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1822
  %cmp1 = icmp eq i32 %2, 2, !dbg !1822
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !1824

if.then2:                                         ; preds = %if.end
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1825
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !1825
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !1811, metadata !DIExpression()), !dbg !1816
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1816
  %bf.load5.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !1826
  br label %if.end3, !dbg !1827

if.end3:                                          ; preds = %if.then2, %if.end
  %bf.load5 = phi i64 [ %bf.load, %if.end ], [ %bf.load5.pre, %if.then2 ], !dbg !1826
  %t.addr.0 = phi %union.tree_node* [ %t, %if.end ], [ %3, %if.then2 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0, metadata !1811, metadata !DIExpression()), !dbg !1816
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1826
  %type14 = bitcast %union.tree_node* %t.addr.0 to %struct.tree_type*, !dbg !1826
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i64 0, i32 6, !dbg !1826
  %bf.load15 = load i32, i32* %restrict_flag, align 4, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %bf.load15, metadata !1812, metadata !DIExpression(DW_OP_constu, 11, DW_OP_shr, DW_OP_constu, 0, DW_OP_or, DW_OP_stack_value)), !dbg !1816
  %bf.cast74 = and i64 %bf.load5, 1048576, !dbg !1828
  %tobool26 = icmp eq i64 %bf.cast74, 0, !dbg !1828
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !1830

if.then27:                                        ; preds = %if.end3
  tail call fastcc void @pp_c_cv_qualifier(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1831
  br label %if.end28, !dbg !1831

if.end28:                                         ; preds = %if.end3, %if.then27
  %mul135 = and i64 %bf.load5, 524288, !dbg !1832
  %tobool30 = icmp eq i64 %mul135, 0, !dbg !1832
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !1834

if.then31:                                        ; preds = %if.end28
  tail call fastcc void @pp_c_cv_qualifier(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1835
  br label %if.end32, !dbg !1835

if.end32:                                         ; preds = %if.end28, %if.then31
  %and33 = and i32 %bf.load15, 8192, !dbg !1836
  %tobool34 = icmp eq i32 %and33, 0, !dbg !1836
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !1838

if.then35:                                        ; preds = %if.end32
  %5 = load i32, i32* @flag_isoc99, align 4, !dbg !1839
  %tobool36 = icmp eq i32 %5, 0, !dbg !1839
  %cond = select i1 %tobool36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), !dbg !1839
  tail call fastcc void @pp_c_cv_qualifier(%struct.c_pretty_print_info* %pp, i8* %cond) #7, !dbg !1840
  br label %if.end37, !dbg !1840

if.end37:                                         ; preds = %if.end32, %if.then35
  %bf.load39 = load i64, i64* %4, align 8, !dbg !1841
  %cmp42 = icmp ult i64 %bf.load39, 72057594037927936, !dbg !1841
  br i1 %cmp42, label %cleanup.cont, label %if.then43, !dbg !1842

if.then43:                                        ; preds = %if.end37
  %bf.lshr46 = lshr i64 %bf.load39, 56, !dbg !1843
  %conv = trunc i64 %bf.lshr46 to i8, !dbg !1843
  %call = tail call i8* @c_addr_space_name(i8 zeroext %conv) #6, !dbg !1844
  call void @llvm.dbg.value(metadata i8* %call, metadata !1813, metadata !DIExpression()), !dbg !1845
  tail call void @pp_c_identifier(%struct.c_pretty_print_info* %pp, i8* %call) #7, !dbg !1846
  br label %cleanup.cont, !dbg !1847

cleanup.cont:                                     ; preds = %entry, %if.then43, %if.end37
  ret void, !dbg !1848
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_cv_qualifier(%struct.c_pretty_print_info* %pp, i8* %cv) unnamed_addr #4 !dbg !1849 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1853, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8* %cv, metadata !1854, metadata !DIExpression()), !dbg !1856
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1857
  %call = tail call i8* @pp_base_last_position_in_text(%struct.pretty_print_info* %base) #6, !dbg !1857
  call void @llvm.dbg.value(metadata i8* %call, metadata !1855, metadata !DIExpression()), !dbg !1856
  %cmp = icmp eq i8* %call, null, !dbg !1858
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !1860

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %call, align 1, !dbg !1861
  %cmp1 = icmp eq i8 %0, 42, !dbg !1862
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !1863

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp4 = icmp eq i8 %0, 38, !dbg !1864
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1865

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !1866
  br label %if.end, !dbg !1866

if.end:                                           ; preds = %entry, %if.then, %lor.lhs.false
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cv) #7, !dbg !1867
  ret void, !dbg !1868
}

declare dso_local i8* @c_addr_space_name(i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_identifier(%struct.c_pretty_print_info* %pp, i8* %id) local_unnamed_addr #4 !dbg !1869 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1871, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8* %id, metadata !1872, metadata !DIExpression()), !dbg !1873
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1874
  %0 = load i32, i32* %padding, align 8, !dbg !1874
  %cmp = icmp eq i32 %0, 1, !dbg !1874
  br i1 %cmp, label %if.then, label %do.end, !dbg !1877

if.then:                                          ; preds = %entry
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !1874
  br label %do.end, !dbg !1874

do.end:                                           ; preds = %entry, %if.then
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1878
  %translate_identifiers = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 9, !dbg !1878
  %1 = load i8, i8* %translate_identifiers, align 2, !dbg !1878
  %tobool = icmp eq i8 %1, 0, !dbg !1878
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1878

cond.true:                                        ; preds = %do.end
  %call = tail call i8* @identifier_to_locale(i8* %id) #6, !dbg !1878
  br label %cond.end, !dbg !1878

cond.end:                                         ; preds = %do.end, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %id, %do.end ], !dbg !1878
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* %cond) #6, !dbg !1878
  store i32 1, i32* %padding, align 8, !dbg !1879
  ret void, !dbg !1880
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_type_specifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !1881 {
entry:
  br label %tailrecurse, !dbg !1891

tailrecurse:                                      ; preds = %if.then, %entry
  %t.tr = phi %union.tree_node* [ %t, %entry ], [ %2, %if.then ]
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1883, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr, metadata !1884, metadata !DIExpression()), !dbg !1893
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1894
  %bf.load = load i64, i64* %0, align 8, !dbg !1894
  %trunc = trunc i64 %bf.load to i16, !dbg !1895
  switch i16 %trunc, label %sw.default340 [
    i16 0, label %sw.bb
    i16 1, label %sw.bb2
    i16 19, label %sw.bb3
    i16 7, label %sw.bb3
    i16 8, label %sw.bb3
    i16 9, label %sw.bb3
    i16 11, label %sw.bb3
    i16 35, label %sw.bb294
    i16 17, label %if.then308
    i16 16, label %if.then312
    i16 6, label %if.then316
  ], !dbg !1895

sw.bb:                                            ; preds = %tailrecurse
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !1896
  br label %sw.epilog348, !dbg !1897

sw.bb2:                                           ; preds = %tailrecurse
  %t.tr.lcssa84 = phi %union.tree_node* [ %t.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa84, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa84, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa84, metadata !1884, metadata !DIExpression()), !dbg !1893
  tail call void @pp_c_tree_decl_identifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %t.tr.lcssa84) #7, !dbg !1898
  br label %sw.epilog348, !dbg !1899

sw.bb3:                                           ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !1900
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !1900
  %tobool4 = icmp eq %union.tree_node* %2, null, !dbg !1900
  br i1 %tobool4, label %if.else, label %if.then, !dbg !1901

if.then:                                          ; preds = %sw.bb3
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !1884, metadata !DIExpression()), !dbg !1893
  br label %tailrecurse, !dbg !1891

if.else:                                          ; preds = %sw.bb3
  %t.tr.lcssa89 = phi %union.tree_node* [ %t.tr, %sw.bb3 ]
  %.lcssa82 = phi i64* [ %0, %sw.bb3 ], !dbg !1894
  %bf.load.lcssa75 = phi i64 [ %bf.load, %sw.bb3 ], !dbg !1894
  %trunc.lcssa68 = phi i16 [ %trunc, %sw.bb3 ], !dbg !1895
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa89, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa89, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa89, metadata !1884, metadata !DIExpression()), !dbg !1893
  %type5 = bitcast %union.tree_node* %t.tr.lcssa89 to %struct.tree_type*, !dbg !1902
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i64 0, i32 6, !dbg !1903
  %bf.load8 = load i32, i32* %precision, align 4, !dbg !1903
  %bf.clear9 = and i32 %bf.load8, 1023, !dbg !1903
  call void @llvm.dbg.value(metadata i32 %bf.clear9, metadata !1887, metadata !DIExpression()), !dbg !1904
  %bf.cast131 = and i64 %bf.load.lcssa75, 65535, !dbg !1905
  %cmp = icmp eq i64 %bf.cast131, 14, !dbg !1905
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1905

cond.true:                                        ; preds = %if.else
  %call = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1905
  br label %cond.end, !dbg !1905

cond.false:                                       ; preds = %if.else
  %bf.lshr = lshr i32 %bf.load8, 16, !dbg !1905
  %bf.clear17 = and i32 %bf.lshr, 255, !dbg !1905
  br label %cond.end, !dbg !1905

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i32 [ %call, %cond.true ], [ %bf.clear17, %cond.false ], !dbg !1905
  %idxprom = zext i32 %cond18 to i64, !dbg !1905
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !1905
  %3 = load i8, i8* %arrayidx, align 1, !dbg !1905
  %cmp20 = icmp eq i8 %3, 4, !dbg !1905
  br i1 %cmp20, label %if.then175, label %lor.lhs.false, !dbg !1905

lor.lhs.false:                                    ; preds = %cond.end
  %bf.load23 = load i64, i64* %.lcssa82, align 8, !dbg !1905
  %bf.cast252 = and i64 %bf.load23, 65535, !dbg !1905
  %cmp26 = icmp eq i64 %bf.cast252, 14, !dbg !1905
  br i1 %cmp26, label %cond.true28, label %cond.false30, !dbg !1905

cond.true28:                                      ; preds = %lor.lhs.false
  %call29 = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1905
  br label %cond.end36, !dbg !1905

cond.false30:                                     ; preds = %lor.lhs.false
  %bf.load33 = load i32, i32* %precision, align 4, !dbg !1905
  %bf.lshr34 = lshr i32 %bf.load33, 16, !dbg !1905
  %bf.clear35 = and i32 %bf.lshr34, 255, !dbg !1905
  br label %cond.end36, !dbg !1905

cond.end36:                                       ; preds = %cond.false30, %cond.true28
  %cond37 = phi i32 [ %call29, %cond.true28 ], [ %bf.clear35, %cond.false30 ], !dbg !1905
  %idxprom38 = zext i32 %cond37 to i64, !dbg !1905
  %arrayidx39 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom38, !dbg !1905
  %4 = load i8, i8* %arrayidx39, align 1, !dbg !1905
  %cmp41 = icmp eq i8 %4, 13, !dbg !1905
  br i1 %cmp41, label %if.then175, label %lor.lhs.false43, !dbg !1905

lor.lhs.false43:                                  ; preds = %cond.end36
  %bf.load45 = load i64, i64* %.lcssa82, align 8, !dbg !1905
  %bf.cast473 = and i64 %bf.load45, 65535, !dbg !1905
  %cmp48 = icmp eq i64 %bf.cast473, 14, !dbg !1905
  br i1 %cmp48, label %cond.true50, label %cond.false52, !dbg !1905

cond.true50:                                      ; preds = %lor.lhs.false43
  %call51 = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1905
  br label %cond.end58, !dbg !1905

cond.false52:                                     ; preds = %lor.lhs.false43
  %bf.load55 = load i32, i32* %precision, align 4, !dbg !1905
  %bf.lshr56 = lshr i32 %bf.load55, 16, !dbg !1905
  %bf.clear57 = and i32 %bf.lshr56, 255, !dbg !1905
  br label %cond.end58, !dbg !1905

cond.end58:                                       ; preds = %cond.false52, %cond.true50
  %cond59 = phi i32 [ %call51, %cond.true50 ], [ %bf.clear57, %cond.false52 ], !dbg !1905
  %idxprom60 = zext i32 %cond59 to i64, !dbg !1905
  %arrayidx61 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom60, !dbg !1905
  %5 = load i8, i8* %arrayidx61, align 1, !dbg !1905
  %cmp63 = icmp eq i8 %5, 6, !dbg !1905
  br i1 %cmp63, label %if.then175, label %lor.lhs.false65, !dbg !1905

lor.lhs.false65:                                  ; preds = %cond.end58
  %bf.load67 = load i64, i64* %.lcssa82, align 8, !dbg !1905
  %bf.cast694 = and i64 %bf.load67, 65535, !dbg !1905
  %cmp70 = icmp eq i64 %bf.cast694, 14, !dbg !1905
  br i1 %cmp70, label %cond.true72, label %cond.false74, !dbg !1905

cond.true72:                                      ; preds = %lor.lhs.false65
  %call73 = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1905
  br label %cond.end80, !dbg !1905

cond.false74:                                     ; preds = %lor.lhs.false65
  %bf.load77 = load i32, i32* %precision, align 4, !dbg !1905
  %bf.lshr78 = lshr i32 %bf.load77, 16, !dbg !1905
  %bf.clear79 = and i32 %bf.lshr78, 255, !dbg !1905
  br label %cond.end80, !dbg !1905

cond.end80:                                       ; preds = %cond.false74, %cond.true72
  %cond81 = phi i32 [ %call73, %cond.true72 ], [ %bf.clear79, %cond.false74 ], !dbg !1905
  %idxprom82 = zext i32 %cond81 to i64, !dbg !1905
  %arrayidx83 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom82, !dbg !1905
  %6 = load i8, i8* %arrayidx83, align 1, !dbg !1905
  %cmp85 = icmp eq i8 %6, 15, !dbg !1905
  br i1 %cmp85, label %if.then175, label %lor.lhs.false87, !dbg !1905

lor.lhs.false87:                                  ; preds = %cond.end80
  %bf.load89 = load i64, i64* %.lcssa82, align 8, !dbg !1905
  %bf.cast915 = and i64 %bf.load89, 65535, !dbg !1905
  %cmp92 = icmp eq i64 %bf.cast915, 14, !dbg !1905
  br i1 %cmp92, label %cond.true94, label %cond.false96, !dbg !1905

cond.true94:                                      ; preds = %lor.lhs.false87
  %call95 = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1905
  br label %cond.end102, !dbg !1905

cond.false96:                                     ; preds = %lor.lhs.false87
  %bf.load99 = load i32, i32* %precision, align 4, !dbg !1905
  %bf.lshr100 = lshr i32 %bf.load99, 16, !dbg !1905
  %bf.clear101 = and i32 %bf.lshr100, 255, !dbg !1905
  br label %cond.end102, !dbg !1905

cond.end102:                                      ; preds = %cond.false96, %cond.true94
  %cond103 = phi i32 [ %call95, %cond.true94 ], [ %bf.clear101, %cond.false96 ], !dbg !1905
  %idxprom104 = zext i32 %cond103 to i64, !dbg !1905
  %arrayidx105 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom104, !dbg !1905
  %7 = load i8, i8* %arrayidx105, align 1, !dbg !1905
  %cmp107 = icmp eq i8 %7, 5, !dbg !1905
  br i1 %cmp107, label %if.then175, label %lor.lhs.false109, !dbg !1905

lor.lhs.false109:                                 ; preds = %cond.end102
  %bf.load111 = load i64, i64* %.lcssa82, align 8, !dbg !1905
  %bf.cast1136 = and i64 %bf.load111, 65535, !dbg !1905
  %cmp114 = icmp eq i64 %bf.cast1136, 14, !dbg !1905
  br i1 %cmp114, label %cond.true116, label %cond.false118, !dbg !1905

cond.true116:                                     ; preds = %lor.lhs.false109
  %call117 = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1905
  br label %cond.end124, !dbg !1905

cond.false118:                                    ; preds = %lor.lhs.false109
  %bf.load121 = load i32, i32* %precision, align 4, !dbg !1905
  %bf.lshr122 = lshr i32 %bf.load121, 16, !dbg !1905
  %bf.clear123 = and i32 %bf.lshr122, 255, !dbg !1905
  br label %cond.end124, !dbg !1905

cond.end124:                                      ; preds = %cond.false118, %cond.true116
  %cond125 = phi i32 [ %call117, %cond.true116 ], [ %bf.clear123, %cond.false118 ], !dbg !1905
  %idxprom126 = zext i32 %cond125 to i64, !dbg !1905
  %arrayidx127 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom126, !dbg !1905
  %8 = load i8, i8* %arrayidx127, align 1, !dbg !1905
  %cmp129 = icmp eq i8 %8, 14, !dbg !1905
  br i1 %cmp129, label %if.then175, label %lor.lhs.false131, !dbg !1905

lor.lhs.false131:                                 ; preds = %cond.end124
  %bf.load133 = load i64, i64* %.lcssa82, align 8, !dbg !1905
  %bf.cast1357 = and i64 %bf.load133, 65535, !dbg !1905
  %cmp136 = icmp eq i64 %bf.cast1357, 14, !dbg !1905
  br i1 %cmp136, label %cond.true138, label %cond.false140, !dbg !1905

cond.true138:                                     ; preds = %lor.lhs.false131
  %call139 = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1905
  br label %cond.end146, !dbg !1905

cond.false140:                                    ; preds = %lor.lhs.false131
  %bf.load143 = load i32, i32* %precision, align 4, !dbg !1905
  %bf.lshr144 = lshr i32 %bf.load143, 16, !dbg !1905
  %bf.clear145 = and i32 %bf.lshr144, 255, !dbg !1905
  br label %cond.end146, !dbg !1905

cond.end146:                                      ; preds = %cond.false140, %cond.true138
  %cond147 = phi i32 [ %call139, %cond.true138 ], [ %bf.clear145, %cond.false140 ], !dbg !1905
  %idxprom148 = zext i32 %cond147 to i64, !dbg !1905
  %arrayidx149 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom148, !dbg !1905
  %9 = load i8, i8* %arrayidx149, align 1, !dbg !1905
  %cmp151 = icmp eq i8 %9, 7, !dbg !1905
  br i1 %cmp151, label %if.then175, label %lor.lhs.false153, !dbg !1905

lor.lhs.false153:                                 ; preds = %cond.end146
  %bf.load155 = load i64, i64* %.lcssa82, align 8, !dbg !1905
  %bf.cast1578 = and i64 %bf.load155, 65535, !dbg !1905
  %cmp158 = icmp eq i64 %bf.cast1578, 14, !dbg !1905
  br i1 %cmp158, label %cond.true160, label %cond.false162, !dbg !1905

cond.true160:                                     ; preds = %lor.lhs.false153
  %call161 = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1905
  br label %cond.end168, !dbg !1905

cond.false162:                                    ; preds = %lor.lhs.false153
  %bf.load165 = load i32, i32* %precision, align 4, !dbg !1905
  %bf.lshr166 = lshr i32 %bf.load165, 16, !dbg !1905
  %bf.clear167 = and i32 %bf.lshr166, 255, !dbg !1905
  br label %cond.end168, !dbg !1905

cond.end168:                                      ; preds = %cond.false162, %cond.true160
  %cond169 = phi i32 [ %call161, %cond.true160 ], [ %bf.clear167, %cond.false162 ], !dbg !1905
  %idxprom170 = zext i32 %cond169 to i64, !dbg !1905
  %arrayidx171 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom170, !dbg !1905
  %10 = load i8, i8* %arrayidx171, align 1, !dbg !1905
  %cmp173 = icmp eq i8 %10, 16, !dbg !1905
  br i1 %cmp173, label %if.then175, label %if.else198, !dbg !1907

if.then175:                                       ; preds = %cond.end168, %cond.end146, %cond.end124, %cond.end102, %cond.end80, %cond.end58, %cond.end36, %cond.end
  %bf.load177 = load i64, i64* %.lcssa82, align 8, !dbg !1908
  %bf.cast17912 = and i64 %bf.load177, 65535, !dbg !1908
  %cmp180 = icmp eq i64 %bf.cast17912, 14, !dbg !1908
  br i1 %cmp180, label %cond.true182, label %cond.false184, !dbg !1908

cond.true182:                                     ; preds = %if.then175
  %call183 = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1908
  %bf.load193.pre = load i64, i64* %.lcssa82, align 8, !dbg !1909
  br label %cond.end190, !dbg !1908

cond.false184:                                    ; preds = %if.then175
  %bf.load187 = load i32, i32* %precision, align 4, !dbg !1908
  %bf.lshr188 = lshr i32 %bf.load187, 16, !dbg !1908
  %bf.clear189 = and i32 %bf.lshr188, 255, !dbg !1908
  br label %cond.end190, !dbg !1908

cond.end190:                                      ; preds = %cond.false184, %cond.true182
  %bf.load193 = phi i64 [ %bf.load193.pre, %cond.true182 ], [ %bf.load177, %cond.false184 ], !dbg !1909
  %cond191 = phi i32 [ %call183, %cond.true182 ], [ %bf.clear189, %cond.false184 ], !dbg !1908
  %bf.lshr194 = lshr i64 %bf.load193, 31, !dbg !1909
  %11 = trunc i64 %bf.lshr194 to i32, !dbg !1909
  %bf.cast196 = and i32 %11, 1, !dbg !1909
  %call197 = tail call %union.tree_node* @c_common_type_for_mode(i32 %cond191, i32 %bf.cast196) #6, !dbg !1910
  call void @llvm.dbg.value(metadata %union.tree_node* %call197, metadata !1884, metadata !DIExpression()), !dbg !1893
  br label %if.end, !dbg !1911

if.else198:                                       ; preds = %cond.end168
  %bf.load200 = load i64, i64* %.lcssa82, align 8, !dbg !1912
  %bf.cast2029 = and i64 %bf.load200, 65535, !dbg !1912
  %cmp203 = icmp eq i64 %bf.cast2029, 14, !dbg !1912
  br i1 %cmp203, label %cond.true205, label %cond.false207, !dbg !1912

cond.true205:                                     ; preds = %if.else198
  %call206 = tail call i32 @vector_type_mode(%union.tree_node* %t.tr.lcssa89) #6, !dbg !1912
  %bf.load216.pre = load i64, i64* %.lcssa82, align 8, !dbg !1913
  br label %cond.end213, !dbg !1912

cond.false207:                                    ; preds = %if.else198
  %bf.load210 = load i32, i32* %precision, align 4, !dbg !1912
  %bf.lshr211 = lshr i32 %bf.load210, 16, !dbg !1912
  %bf.clear212 = and i32 %bf.lshr211, 255, !dbg !1912
  br label %cond.end213, !dbg !1912

cond.end213:                                      ; preds = %cond.false207, %cond.true205
  %bf.load216 = phi i64 [ %bf.load216.pre, %cond.true205 ], [ %bf.load200, %cond.false207 ], !dbg !1913
  %cond214 = phi i32 [ %call206, %cond.true205 ], [ %bf.clear212, %cond.false207 ], !dbg !1912
  %bf.lshr217 = lshr i64 %bf.load216, 21, !dbg !1913
  %12 = trunc i64 %bf.lshr217 to i32, !dbg !1913
  %bf.cast219 = and i32 %12, 1, !dbg !1913
  %call220 = tail call %union.tree_node* @c_common_type_for_mode(i32 %cond214, i32 %bf.cast219) #6, !dbg !1914
  call void @llvm.dbg.value(metadata %union.tree_node* %call220, metadata !1884, metadata !DIExpression()), !dbg !1893
  br label %if.end

if.end:                                           ; preds = %cond.end213, %cond.end190
  %t.addr.0 = phi %union.tree_node* [ %call197, %cond.end190 ], [ %call220, %cond.end213 ], !dbg !1915
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0, metadata !1884, metadata !DIExpression()), !dbg !1893
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !1916
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8, !dbg !1916
  %tobool223 = icmp eq %union.tree_node* %14, null, !dbg !1916
  br i1 %tobool223, label %if.else241, label %if.then224, !dbg !1918

if.then224:                                       ; preds = %if.end
  tail call void @pp_c_type_specifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %t.addr.0) #7, !dbg !1919
  %type225 = bitcast %union.tree_node* %t.addr.0 to %struct.tree_type*, !dbg !1921
  %precision226 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type225, i64 0, i32 6, !dbg !1921
  %bf.load227 = load i32, i32* %precision226, align 4, !dbg !1921
  %bf.clear228 = and i32 %bf.load227, 1023, !dbg !1921
  %cmp229 = icmp eq i32 %bf.clear228, %bf.clear9, !dbg !1923
  br i1 %cmp229, label %sw.epilog348, label %if.then231, !dbg !1924

if.then231:                                       ; preds = %if.then224
  %base232 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1925
  tail call void @pp_base_string(%struct.pretty_print_info* %base232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1925
  %buffer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !1927
  %15 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1927
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %15, i64 0, i32 6, i64 0, !dbg !1927
  %call234 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %bf.clear9) #6, !dbg !1927
  %16 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1927
  %arraydecay239 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %16, i64 0, i32 6, i64 0, !dbg !1927
  tail call void @pp_base_string(%struct.pretty_print_info* %base232, i8* nonnull %arraydecay239) #6, !dbg !1927
  br label %sw.epilog348, !dbg !1929

if.else241:                                       ; preds = %if.end
  switch i16 %trunc.lcssa68, label %sw.default [
    i16 8, label %sw.bb242
    i16 9, label %sw.bb264
    i16 11, label %sw.bb271
  ], !dbg !1930

sw.bb242:                                         ; preds = %if.else241
  %base243 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1932
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1932
  %bf.load245 = load i64, i64* %17, align 8, !dbg !1932
  %bf.cast24811 = and i64 %bf.load245, 2097152, !dbg !1932
  %tobool249 = icmp eq i64 %bf.cast24811, 0, !dbg !1932
  %cond263 = select i1 %tobool249, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), !dbg !1932
  tail call void @pp_base_string(%struct.pretty_print_info* %base243, i8* %cond263) #6, !dbg !1932
  br label %do.body278, !dbg !1934

sw.bb264:                                         ; preds = %if.else241
  %base265 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1935
  tail call void @pp_base_string(%struct.pretty_print_info* %base265, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1935
  br label %do.body278, !dbg !1936

sw.bb271:                                         ; preds = %if.else241
  %base272 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1937
  tail call void @pp_base_string(%struct.pretty_print_info* %base272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !1937
  br label %do.body278, !dbg !1938

sw.default:                                       ; preds = %if.else241
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 373, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1939
  br label %do.body278, !dbg !1940

do.body278:                                       ; preds = %sw.bb242, %sw.bb264, %sw.bb271, %sw.default
  %buffer280 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !1941
  %18 = load %struct.output_buffer*, %struct.output_buffer** %buffer280, align 8, !dbg !1941
  %arraydecay282 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %18, i64 0, i32 6, i64 0, !dbg !1941
  %call283 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %bf.clear9) #6, !dbg !1941
  %base284 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1941
  %19 = load %struct.output_buffer*, %struct.output_buffer** %buffer280, align 8, !dbg !1941
  %arraydecay288 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %19, i64 0, i32 6, i64 0, !dbg !1941
  tail call void @pp_base_string(%struct.pretty_print_info* %base284, i8* nonnull %arraydecay288) #6, !dbg !1941
  tail call void @pp_base_string(%struct.pretty_print_info* %base284, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !1943
  br label %sw.epilog348

sw.bb294:                                         ; preds = %tailrecurse
  %t.tr.lcssa85 = phi %union.tree_node* [ %t.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa85, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa85, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa85, metadata !1884, metadata !DIExpression()), !dbg !1893
  %name295 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.tr.lcssa85, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1944
  %20 = load %union.tree_node*, %union.tree_node** %name295, align 8, !dbg !1944
  %tobool296 = icmp eq %union.tree_node* %20, null, !dbg !1944
  br i1 %tobool296, label %if.else298, label %if.then297, !dbg !1946

if.then297:                                       ; preds = %sw.bb294
  %id_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 19, !dbg !1947
  %21 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %id_expression, align 8, !dbg !1947
  tail call void %21(%struct.c_pretty_print_info* %pp, %union.tree_node* %t.tr.lcssa85) #6, !dbg !1947
  br label %sw.epilog348, !dbg !1947

if.else298:                                       ; preds = %sw.bb294
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1948
  br label %sw.epilog348

if.then308:                                       ; preds = %tailrecurse
  %t.tr.lcssa86 = phi %union.tree_node* [ %t.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa86, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa86, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa86, metadata !1884, metadata !DIExpression()), !dbg !1893
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1949
  br label %if.end325, !dbg !1949

if.then312:                                       ; preds = %tailrecurse
  %t.tr.lcssa87 = phi %union.tree_node* [ %t.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa87, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa87, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa87, metadata !1884, metadata !DIExpression()), !dbg !1893
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1951
  br label %if.end325, !dbg !1951

if.then316:                                       ; preds = %tailrecurse
  %t.tr.lcssa88 = phi %union.tree_node* [ %t.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa88, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa88, metadata !1884, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa88, metadata !1884, metadata !DIExpression()), !dbg !1893
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !1953
  br label %if.end325

if.end325:                                        ; preds = %if.then312, %if.then316, %if.then308
  %t.tr90 = phi %union.tree_node* [ %t.tr.lcssa87, %if.then312 ], [ %t.tr.lcssa88, %if.then316 ], [ %t.tr.lcssa86, %if.then308 ]
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.tr90, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !1955
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8, !dbg !1955
  %tobool328 = icmp eq %union.tree_node* %23, null, !dbg !1955
  br i1 %tobool328, label %if.else333, label %if.then329, !dbg !1957

if.then329:                                       ; preds = %if.end325
  %id_expression330 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 19, !dbg !1958
  %24 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %id_expression330, align 8, !dbg !1958
  tail call void %24(%struct.c_pretty_print_info* %pp, %union.tree_node* nonnull %23) #6, !dbg !1958
  br label %sw.epilog348, !dbg !1958

if.else333:                                       ; preds = %if.end325
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1959
  br label %sw.epilog348

sw.default340:                                    ; preds = %tailrecurse
  %bf.load.lcssa = phi i64 [ %bf.load, %tailrecurse ], !dbg !1894
  %base341 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1960
  %bf.cast345 = and i64 %bf.load.lcssa, 65535, !dbg !1960
  %arrayidx347 = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast345, !dbg !1960
  %25 = load i8*, i8** %arrayidx347, align 8, !dbg !1960
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base341, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1960
  br label %sw.epilog348, !dbg !1961

sw.epilog348:                                     ; preds = %if.then224, %if.then329, %if.else333, %if.then297, %if.else298, %if.then231, %do.body278, %sw.default340, %sw.bb2, %sw.bb
  ret void, !dbg !1962
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %str) local_unnamed_addr #4 !dbg !1963 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1965, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %str, metadata !1966, metadata !DIExpression()), !dbg !1967
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !1968
  %0 = load i32, i32* %padding, align 8, !dbg !1968
  %cmp = icmp eq i32 %0, 1, !dbg !1968
  br i1 %cmp, label %if.then, label %do.end, !dbg !1971

if.then:                                          ; preds = %entry
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !1968
  br label %do.end, !dbg !1968

do.end:                                           ; preds = %entry, %if.then
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1972
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* %str) #6, !dbg !1972
  store i32 1, i32* %padding, align 8, !dbg !1973
  ret void, !dbg !1974
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_tree_decl_identifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) local_unnamed_addr #4 !dbg !1123 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1265, metadata !DIExpression()), !dbg !1975
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1266, metadata !DIExpression()), !dbg !1975
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1976
  %bf.load = load i64, i64* %0, align 8, !dbg !1976
  %bf.cast = and i64 %bf.load, 65535, !dbg !1976
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !1976
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1976
  %cmp = icmp eq i32 %1, 3, !dbg !1976
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1976

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 2247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1976
  br label %cond.end, !dbg !1976

cond.end:                                         ; preds = %entry, %cond.true
  %name1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1977
  %2 = load %union.tree_node*, %union.tree_node** %name1, align 8, !dbg !1977
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !1977
  br i1 %tobool, label %if.else, label %if.then, !dbg !1979

if.then:                                          ; preds = %cond.end
  %str = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1980
  %3 = bitcast i32* %str to i8**, !dbg !1980
  %4 = load i8*, i8** %3, align 8, !dbg !1980
  call void @llvm.dbg.value(metadata i8* %4, metadata !1267, metadata !DIExpression()), !dbg !1975
  br label %if.end, !dbg !1981

if.else:                                          ; preds = %cond.end
  %5 = ptrtoint %union.tree_node* %t to i64, !dbg !1982
  %6 = trunc i64 %5 to i32, !dbg !1984
  %conv = and i32 %6, 65535, !dbg !1984
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pp_c_tree_decl_identifier.xname, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i32 %conv) #6, !dbg !1985
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @pp_c_tree_decl_identifier.xname, i64 0, i64 0), metadata !1267, metadata !DIExpression()), !dbg !1975
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %name.0 = phi i8* [ %4, %if.then ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @pp_c_tree_decl_identifier.xname, i64 0, i64 0), %if.else ], !dbg !1986
  call void @llvm.dbg.value(metadata i8* %name.0, metadata !1267, metadata !DIExpression()), !dbg !1975
  tail call void @pp_c_identifier(%struct.c_pretty_print_info* %pp, i8* %name.0) #7, !dbg !1987
  ret void, !dbg !1988
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @c_common_type_for_mode(i32, i32) local_unnamed_addr #1

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #1

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local void @pp_verbatim(%struct.pretty_print_info*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_specifier_qualifier_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !1989 {
entry:
  %buffer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !1997
  %base34 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !1997
  br label %tailrecurse, !dbg !2002

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %t.tr = phi %union.tree_node* [ %t, %entry ], [ %t.tr.be, %tailrecurse.backedge ]
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !1991, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr, metadata !1992, metadata !DIExpression()), !dbg !2003
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2004
  %bf.load = load i64, i64* %0, align 8, !dbg !2004
  %1 = trunc i64 %bf.load to i16, !dbg !2004
  %bf.cast41 = and i64 %bf.load, 65535, !dbg !2005
  %cmp = icmp eq i64 %bf.cast41, 10, !dbg !2005
  br i1 %cmp, label %if.end, label %if.then, !dbg !2007

if.then:                                          ; preds = %tailrecurse
  tail call void @pp_c_type_qualifier_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %t.tr) #7, !dbg !2008
  br label %if.end, !dbg !2008

if.end:                                           ; preds = %tailrecurse, %if.then
  switch i16 %1, label %sw.default [
    i16 12, label %sw.bb
    i16 10, label %sw.bb
    i16 20, label %sw.bb20
    i16 15, label %sw.bb20
    i16 13, label %if.then25
    i16 14, label %if.then28
  ], !dbg !2009

sw.bb:                                            ; preds = %if.end, %if.end
  %t.tr.lcssa6 = phi %union.tree_node* [ %t.tr, %if.end ], [ %t.tr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa6, metadata !1992, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa6, metadata !1992, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa6, metadata !1992, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa6, metadata !1992, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa6, metadata !1992, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa6, metadata !1992, metadata !DIExpression()), !dbg !2003
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t.tr.lcssa6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2010
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2010
  %call = tail call %union.tree_node* @strip_pointer_operator(%union.tree_node* %2) #6, !dbg !2011
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !1994, metadata !DIExpression()), !dbg !2012
  tail call void @pp_c_specifier_qualifier_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %call) #7, !dbg !2013
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2014
  %bf.load6 = load i64, i64* %3, align 8, !dbg !2014
  %bf.cast82 = and i64 %bf.load6, 65535, !dbg !2016
  %cmp9 = icmp eq i64 %bf.cast82, 15, !dbg !2016
  br i1 %cmp9, label %if.then15, label %lor.lhs.false, !dbg !2017

lor.lhs.false:                                    ; preds = %sw.bb
  %cmp14 = icmp eq i64 %bf.cast82, 20, !dbg !2018
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !2019

if.then15:                                        ; preds = %lor.lhs.false, %sw.bb
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !2020
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2022
  br label %if.end19, !dbg !2023

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32, i32* @c_language, align 4, !dbg !2024
  %and = and i32 %4, 2, !dbg !2024
  %cmp16 = icmp eq i32 %and, 0, !dbg !2024
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !2026

if.then17:                                        ; preds = %if.else
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !2027
  br label %if.end19, !dbg !2027

if.end19:                                         ; preds = %if.else, %if.then17, %if.then15
  %ptr_operator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 10, !dbg !2028
  %5 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %ptr_operator, align 8, !dbg !2028
  tail call void %5(%struct.c_pretty_print_info* %pp, %union.tree_node* %t.tr.lcssa6) #6, !dbg !2028
  br label %sw.epilog, !dbg !2029

sw.bb20:                                          ; preds = %if.end, %if.end
  br label %tailrecurse.backedge, !dbg !2002

tailrecurse.backedge:                             ; preds = %sw.bb20, %if.end40
  %t.tr.be.in = getelementptr inbounds %union.tree_node, %union.tree_node* %t.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2030
  %t.tr.be = load %union.tree_node*, %union.tree_node** %t.tr.be.in, align 8, !dbg !2030
  br label %tailrecurse, !dbg !2003

if.then25:                                        ; preds = %if.end
  %6 = load i32, i32* @flag_isoc99, align 4, !dbg !2031
  %tobool = icmp eq i32 %6, 0, !dbg !2031
  %cond = select i1 %tobool, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), !dbg !2031
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond) #7, !dbg !2032
  br label %if.end40, !dbg !2032

if.then28:                                        ; preds = %if.end
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !2033
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2034
  %7 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2035
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %7, i64 0, i32 6, i64 0, !dbg !2035
  %type30 = bitcast %union.tree_node* %t.tr to %struct.tree_type*, !dbg !2035
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type30, i64 0, i32 6, !dbg !2035
  %bf.load31 = load i32, i32* %precision, align 4, !dbg !2035
  %bf.clear32 = and i32 %bf.load31, 1023, !dbg !2035
  %sh_prom = zext i32 %bf.clear32 to i64, !dbg !2035
  %shl = shl i64 1, %sh_prom, !dbg !2035
  %call33 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 %shl) #6, !dbg !2035
  %8 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2035
  %arraydecay38 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i64 0, i32 6, i64 0, !dbg !2035
  tail call void @pp_base_string(%struct.pretty_print_info* %base34, i8* nonnull %arraydecay38) #6, !dbg !2035
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2036
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !2037
  br label %if.end40

if.end40:                                         ; preds = %if.then28, %if.then25
  br label %tailrecurse.backedge, !dbg !2038

sw.default:                                       ; preds = %if.end
  %t.tr.lcssa = phi %union.tree_node* [ %t.tr, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa, metadata !1992, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa, metadata !1992, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %union.tree_node* %t.tr.lcssa, metadata !1992, metadata !DIExpression()), !dbg !2003
  %simple_type_specifier = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 13, !dbg !2039
  %9 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %simple_type_specifier, align 8, !dbg !2039
  tail call void %9(%struct.c_pretty_print_info* %pp, %union.tree_node* %t.tr.lcssa) #6, !dbg !2039
  br label %sw.epilog, !dbg !2040

sw.epilog:                                        ; preds = %sw.default, %if.end19
  ret void, !dbg !2041
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_parameter_type_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2042 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2044, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2045, metadata !DIExpression()), !dbg !2051
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2052
  %bf.load = load i64, i64* %0, align 8, !dbg !2052
  %bf.cast = and i64 %bf.load, 65535, !dbg !2052
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2052
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2052
  %cmp = icmp eq i32 %1, 3, !dbg !2052
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2053

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 2, !dbg !2054
  %2 = load i32, i32* %flags, align 8, !dbg !2054
  %3 = and i32 %2, 2
  %phitmp = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %phitmp, %land.rhs ]
  br i1 %4, label %cond.false, label %cond.true, !dbg !2055

cond.true:                                        ; preds = %land.end
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 2, !dbg !2056
  br label %cond.end, !dbg !2055

cond.false:                                       ; preds = %land.end
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2057
  %5 = bitcast i32* %values to %union.tree_node**, !dbg !2057
  br label %cond.end, !dbg !2055

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %union.tree_node** [ %arguments, %cond.true ], [ %5, %cond.false ]
  %cond = load %union.tree_node*, %union.tree_node** %cond.in, align 8, !dbg !2055
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !2047, metadata !DIExpression()), !dbg !2051
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2058
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 55), align 8, !dbg !2059
  %cmp3 = icmp eq %union.tree_node* %cond, %6, !dbg !2060
  br i1 %cmp3, label %if.then, label %for.cond.preheader, !dbg !2061

for.cond.preheader:                               ; preds = %cond.end
  %base13 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2062
  %declaration_specifiers = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 4, !dbg !2068
  %declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 5, !dbg !2069
  %abstract_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 6, !dbg !2069
  br i1 %4, label %for.cond.preheader.split.us, label %for.cond.preheader.for.cond.preheader.split_crit_edge, !dbg !2071

for.cond.preheader.for.cond.preheader.split_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond, !dbg !2071

for.cond.preheader.split.us:                      ; preds = %for.cond.preheader
  br label %for.cond.us, !dbg !2071

for.cond.us:                                      ; preds = %if.end.us, %for.cond.preheader.split.us
  %7 = phi %union.tree_node* [ %.pre1, %if.end.us ], [ %6, %for.cond.preheader.split.us ], !dbg !2072
  %parms.0.us = phi %union.tree_node* [ %14, %if.end.us ], [ %cond, %for.cond.preheader.split.us ], !dbg !2051
  %first.0.us = phi i8 [ 0, %if.end.us ], [ 1, %for.cond.preheader.split.us ], !dbg !2073
  call void @llvm.dbg.value(metadata i8 %first.0.us, metadata !2048, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata %union.tree_node* %parms.0.us, metadata !2047, metadata !DIExpression()), !dbg !2051
  %tobool5.us = icmp ne %union.tree_node* %parms.0.us, null, !dbg !2074
  %cmp7.us = icmp ne %union.tree_node* %parms.0.us, %7, !dbg !2072
  %8 = and i1 %cmp7.us, %tobool5.us, !dbg !2072
  br i1 %8, label %for.body.us, label %if.end27.loopexit.us-lcssa.us, !dbg !2071

for.body.us:                                      ; preds = %for.cond.us
  %tobool11.us = icmp eq i8 %first.0.us, 0, !dbg !2075
  br i1 %tobool11.us, label %do.body.us, label %if.end.us, !dbg !2076

do.body.us:                                       ; preds = %for.body.us
  tail call void @pp_base_character(%struct.pretty_print_info* %base13, i32 44) #6, !dbg !2077
  tail call void @pp_base_character(%struct.pretty_print_info* %base13, i32 32) #6, !dbg !2077
  br label %if.end.us, !dbg !2077

if.end.us:                                        ; preds = %do.body.us, %for.body.us
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2073
  %9 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declaration_specifiers, align 8, !dbg !2078
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %parms.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2078
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !2078
  tail call void %9(%struct.c_pretty_print_info* %pp, %union.tree_node* %11) #6, !dbg !2078
  %12 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %abstract_declarator, align 8, !dbg !2079
  %13 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !2079
  tail call void %12(%struct.c_pretty_print_info* %pp, %union.tree_node* %13) #6, !dbg !2079
  %chain.us = getelementptr inbounds %union.tree_node, %union.tree_node* %parms.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2080
  %14 = load %union.tree_node*, %union.tree_node** %chain.us, align 8, !dbg !2080
  call void @llvm.dbg.value(metadata %union.tree_node* %14, metadata !2047, metadata !DIExpression()), !dbg !2051
  %.pre1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 55), align 8, !dbg !2072
  br label %for.cond.us, !dbg !2081, !llvm.loop !2082

if.end27.loopexit.us-lcssa.us:                    ; preds = %for.cond.us
  br label %if.end27.loopexit, !dbg !2084

if.then:                                          ; preds = %cond.end
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !2085
  br label %if.end27, !dbg !2085

for.cond:                                         ; preds = %for.cond.preheader.for.cond.preheader.split_crit_edge, %if.end
  %15 = phi %union.tree_node* [ %.pre, %if.end ], [ %6, %for.cond.preheader.for.cond.preheader.split_crit_edge ], !dbg !2072
  %parms.0 = phi %union.tree_node* [ %19, %if.end ], [ %cond, %for.cond.preheader.for.cond.preheader.split_crit_edge ], !dbg !2051
  %first.0 = phi i8 [ 0, %if.end ], [ 1, %for.cond.preheader.for.cond.preheader.split_crit_edge ], !dbg !2073
  call void @llvm.dbg.value(metadata i8 %first.0, metadata !2048, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata %union.tree_node* %parms.0, metadata !2047, metadata !DIExpression()), !dbg !2051
  %tobool5 = icmp ne %union.tree_node* %parms.0, null, !dbg !2074
  %cmp7 = icmp ne %union.tree_node* %parms.0, %15, !dbg !2072
  %16 = and i1 %cmp7, %tobool5, !dbg !2072
  br i1 %16, label %for.body, label %if.end27.loopexit.us-lcssa, !dbg !2071

for.body:                                         ; preds = %for.cond
  %tobool11 = icmp eq i8 %first.0, 0, !dbg !2075
  br i1 %tobool11, label %do.body, label %if.end, !dbg !2076

do.body:                                          ; preds = %for.body
  tail call void @pp_base_character(%struct.pretty_print_info* %base13, i32 44) #6, !dbg !2077
  tail call void @pp_base_character(%struct.pretty_print_info* %base13, i32 32) #6, !dbg !2077
  br label %if.end, !dbg !2077

if.end:                                           ; preds = %for.body, %do.body
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2073
  %17 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declaration_specifiers, align 8, !dbg !2078
  tail call void %17(%struct.c_pretty_print_info* %pp, %union.tree_node* nonnull %parms.0) #6, !dbg !2078
  %18 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declarator, align 8, !dbg !2086
  tail call void %18(%struct.c_pretty_print_info* %pp, %union.tree_node* nonnull %parms.0) #6, !dbg !2086
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %parms.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2080
  %19 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !2080
  call void @llvm.dbg.value(metadata %union.tree_node* %19, metadata !2047, metadata !DIExpression()), !dbg !2051
  %.pre = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 55), align 8, !dbg !2072
  br label %for.cond, !dbg !2081, !llvm.loop !2082

if.end27.loopexit.us-lcssa:                       ; preds = %for.cond
  br label %if.end27.loopexit, !dbg !2084

if.end27.loopexit:                                ; preds = %if.end27.loopexit.us-lcssa.us, %if.end27.loopexit.us-lcssa
  br label %if.end27, !dbg !2084

if.end27:                                         ; preds = %if.end27.loopexit, %if.then
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2084
  ret void, !dbg !2087
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_direct_abstract_declarator(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2088 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2090, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2091, metadata !DIExpression()), !dbg !2097
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2098
  %bf.load = load i64, i64* %0, align 8, !dbg !2098
  %1 = trunc i64 %bf.load to i16, !dbg !2098
  switch i16 %1, label %sw.default [
    i16 10, label %sw.bb
    i16 20, label %sw.bb1
    i16 15, label %sw.bb2
    i16 1, label %sw.epilog
    i16 19, label %sw.epilog
    i16 7, label %sw.epilog
    i16 8, label %sw.epilog
    i16 9, label %sw.epilog
    i16 11, label %sw.epilog
    i16 6, label %sw.epilog
    i16 16, label %sw.epilog
    i16 17, label %sw.epilog
    i16 14, label %sw.epilog
    i16 13, label %sw.epilog
    i16 35, label %sw.epilog
  ], !dbg !2099

sw.bb:                                            ; preds = %entry
  %abstract_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 6, !dbg !2100
  %2 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %abstract_declarator, align 8, !dbg !2100
  tail call void %2(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2100
  br label %sw.epilog, !dbg !2101

sw.bb1:                                           ; preds = %entry
  tail call void @pp_c_parameter_type_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #7, !dbg !2102
  %direct_abstract_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 7, !dbg !2103
  %3 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %direct_abstract_declarator, align 8, !dbg !2103
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2103
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2103
  tail call void %3(%struct.c_pretty_print_info* %pp, %union.tree_node* %4) #6, !dbg !2103
  br label %sw.epilog, !dbg !2104

sw.bb2:                                           ; preds = %entry
  tail call void @pp_c_left_bracket(%struct.c_pretty_print_info* %pp) #7, !dbg !2105
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2106
  %5 = bitcast i32* %values to %union.tree_node**, !dbg !2106
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !2106
  %tobool = icmp eq %union.tree_node* %6, null, !dbg !2106
  br i1 %tobool, label %if.end28, label %land.lhs.true, !dbg !2107

land.lhs.true:                                    ; preds = %sw.bb2
  %maxval = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2108
  %7 = bitcast %struct.rtx_def** %maxval to %union.tree_node**, !dbg !2108
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !2108
  %tobool7 = icmp eq %union.tree_node* %8, null, !dbg !2108
  br i1 %tobool7, label %if.end28, label %if.then, !dbg !2109

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !2092, metadata !DIExpression()), !dbg !2110
  %type15 = getelementptr inbounds %union.tree_node, %union.tree_node* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2111
  %9 = load %union.tree_node*, %union.tree_node** %type15, align 8, !dbg !2111
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2096, metadata !DIExpression()), !dbg !2110
  %call = tail call i32 @host_integerp(%union.tree_node* nonnull %8, i32 0) #6, !dbg !2112
  %tobool16 = icmp eq i32 %call, 0, !dbg !2112
  br i1 %tobool16, label %if.else, label %do.body, !dbg !2114

do.body:                                          ; preds = %if.then
  %buffer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !2115
  %10 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2115
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %10, i64 0, i32 6, i64 0, !dbg !2115
  %call19 = tail call i64 @tree_low_cst(%union.tree_node* nonnull %8, i32 0) #6, !dbg !2115
  %add = add nsw i64 %call19, 1, !dbg !2115
  %call20 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 %add) #6, !dbg !2115
  %base21 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2115
  %11 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2115
  %arraydecay25 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %11, i64 0, i32 6, i64 0, !dbg !2115
  tail call void @pp_base_string(%struct.pretty_print_info* %base21, i8* nonnull %arraydecay25) #6, !dbg !2115
  br label %if.end28, !dbg !2115

if.else:                                          ; preds = %if.then
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2117
  %12 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !2117
  %call26 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %9, i64 1) #6, !dbg !2117
  %call27 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %9, %union.tree_node* nonnull %8, %union.tree_node* %call26) #6, !dbg !2117
  tail call void %12(%struct.c_pretty_print_info* %pp, %union.tree_node* %call27) #6, !dbg !2117
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true, %sw.bb2, %do.body, %if.else
  tail call void @pp_c_right_bracket(%struct.c_pretty_print_info* %pp) #7, !dbg !2118
  %direct_abstract_declarator29 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 7, !dbg !2119
  %13 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %direct_abstract_declarator29, align 8, !dbg !2119
  %type31 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2119
  %14 = load %union.tree_node*, %union.tree_node** %type31, align 8, !dbg !2119
  tail call void %13(%struct.c_pretty_print_info* %pp, %union.tree_node* %14) #6, !dbg !2119
  br label %sw.epilog, !dbg !2120

sw.default:                                       ; preds = %entry
  %base33 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2121
  %bf.cast37 = and i64 %bf.load, 65535, !dbg !2121
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast37, !dbg !2121
  %15 = load i8*, i8** %arrayidx, align 8, !dbg !2121
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2121
  br label %sw.epilog, !dbg !2122

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default, %if.end28, %sw.bb1, %sw.bb
  ret void, !dbg !2123
}

declare dso_local i32 @host_integerp(%union.tree_node*, i32) local_unnamed_addr #1

declare dso_local i64 @tree_low_cst(%union.tree_node*, i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_type_id(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2124 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2127, metadata !DIExpression()), !dbg !2128
  tail call void @pp_c_specifier_qualifier_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #7, !dbg !2129
  %abstract_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 6, !dbg !2130
  %0 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %abstract_declarator, align 8, !dbg !2130
  tail call void %0(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2130
  ret void, !dbg !2131
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_storage_class_specifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2135, metadata !DIExpression()), !dbg !2136
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2137
  %bf.load = load i64, i64* %0, align 8, !dbg !2137
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2139
  %cmp = icmp eq i64 %bf.cast1, 35, !dbg !2139
  br i1 %cmp, label %if.then, label %if.else, !dbg !2140

if.then:                                          ; preds = %entry
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !2141
  br label %if.end26, !dbg !2141

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast1, !dbg !2142
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2142
  %cmp5 = icmp eq i32 %1, 3, !dbg !2142
  br i1 %cmp5, label %if.then6, label %if.end26, !dbg !2144

if.then6:                                         ; preds = %if.else
  %decl_flag_0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2145
  %2 = bitcast i40* %decl_flag_0 to i64*, !dbg !2145
  %bf.load7 = load i64, i64* %2, align 8, !dbg !2145
  %bf.cast92 = and i64 %bf.load7, 16777216, !dbg !2145
  %tobool = icmp eq i64 %bf.cast92, 0, !dbg !2145
  br i1 %tobool, label %if.else11, label %if.then10, !dbg !2148

if.then10:                                        ; preds = %if.then6
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !2149
  br label %if.end26, !dbg !2149

if.else11:                                        ; preds = %if.then6
  %bf.cast163 = and i64 %bf.load, 67108864, !dbg !2150
  %tobool17 = icmp eq i64 %bf.cast163, 0, !dbg !2150
  br i1 %tobool17, label %if.end26, label %land.lhs.true, !dbg !2152

land.lhs.true:                                    ; preds = %if.else11
  %cmp22 = icmp eq i64 %bf.cast1, 32, !dbg !2153
  br i1 %cmp22, label %if.then23, label %if.end26, !dbg !2154

if.then23:                                        ; preds = %land.lhs.true
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !2155
  br label %if.end26, !dbg !2155

if.end26:                                         ; preds = %if.else11, %if.else, %land.lhs.true, %if.then23, %if.then10, %if.then
  ret void, !dbg !2156
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_function_specifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2157 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2159, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2160, metadata !DIExpression()), !dbg !2161
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2162
  %bf.load = load i64, i64* %0, align 8, !dbg !2162
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2164
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2164
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2165

land.lhs.true:                                    ; preds = %entry
  %declared_inline_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 5, !dbg !2166
  %bf.load1 = load i32, i32* %declared_inline_flag, align 8, !dbg !2166
  %bf.clear2 = and i32 %bf.load1, 2097152, !dbg !2166
  %tobool = icmp eq i32 %bf.clear2, 0, !dbg !2166
  br i1 %tobool, label %if.end, label %if.then, !dbg !2167

if.then:                                          ; preds = %land.lhs.true
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !2168
  br label %if.end, !dbg !2168

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  ret void, !dbg !2169
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_declaration_specifiers(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2170 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2172, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2173, metadata !DIExpression()), !dbg !2174
  %storage_class_specifier = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 15, !dbg !2175
  %0 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %storage_class_specifier, align 8, !dbg !2175
  tail call void %0(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2175
  %function_specifier = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 14, !dbg !2176
  %1 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %function_specifier, align 8, !dbg !2176
  tail call void %1(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2176
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2177
  %bf.load = load i64, i64* %2, align 8, !dbg !2177
  %bf.cast = and i64 %bf.load, 65535, !dbg !2177
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2177
  %3 = load i32, i32* %arrayidx, align 4, !dbg !2177
  %cmp = icmp eq i32 %3, 3, !dbg !2177
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2177

cond.true:                                        ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2178
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2178
  br label %cond.end, !dbg !2177

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %union.tree_node* [ %4, %cond.true ], [ %t, %entry ], !dbg !2177
  tail call void @pp_c_specifier_qualifier_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %cond) #7, !dbg !2179
  ret void, !dbg !2180
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_direct_declarator(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2181 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2183, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2184, metadata !DIExpression()), !dbg !2185
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2186
  %bf.load = load i64, i64* %0, align 8, !dbg !2186
  %1 = trunc i64 %bf.load to i16, !dbg !2186
  switch i16 %1, label %sw.default [
    i16 32, label %sw.bb
    i16 34, label %sw.bb
    i16 35, label %sw.bb
    i16 31, label %sw.bb
    i16 30, label %sw.bb
    i16 15, label %sw.bb1
    i16 10, label %sw.bb1
    i16 20, label %sw.bb4
    i16 29, label %sw.bb8
    i16 8, label %sw.epilog
    i16 9, label %sw.epilog
    i16 11, label %sw.epilog
    i16 6, label %sw.epilog
    i16 17, label %sw.epilog
    i16 16, label %sw.epilog
  ], !dbg !2187

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2188
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2188
  tail call void @pp_c_space_for_pointer_operator(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !2190
  tail call void @pp_c_tree_decl_identifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #7, !dbg !2191
  br label %sw.epilog, !dbg !2192

sw.bb1:                                           ; preds = %entry, %entry
  %abstract_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 6, !dbg !2193
  %3 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %abstract_declarator, align 8, !dbg !2193
  %type3 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2193
  %4 = load %union.tree_node*, %union.tree_node** %type3, align 8, !dbg !2193
  tail call void %3(%struct.c_pretty_print_info* %pp, %union.tree_node* %4) #6, !dbg !2193
  br label %sw.epilog, !dbg !2194

sw.bb4:                                           ; preds = %entry
  %parameter_list = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 11, !dbg !2195
  %5 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %parameter_list, align 8, !dbg !2195
  tail call void %5(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2195
  %abstract_declarator5 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 6, !dbg !2196
  %6 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %abstract_declarator5, align 8, !dbg !2196
  %type7 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2196
  %7 = load %union.tree_node*, %union.tree_node** %type7, align 8, !dbg !2196
  tail call void %6(%struct.c_pretty_print_info* %pp, %union.tree_node* %7) #6, !dbg !2196
  br label %sw.epilog, !dbg !2197

sw.bb8:                                           ; preds = %entry
  %type10 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2198
  %8 = bitcast %union.tree_node** %type10 to %struct.tree_common**, !dbg !2198
  %9 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !2198
  %type12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i64 0, i32 2, !dbg !2198
  %10 = load %union.tree_node*, %union.tree_node** %type12, align 8, !dbg !2198
  tail call void @pp_c_space_for_pointer_operator(%struct.c_pretty_print_info* %pp, %union.tree_node* %10) #7, !dbg !2199
  tail call void @pp_c_tree_decl_identifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #7, !dbg !2200
  %flags = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 2, !dbg !2201
  %11 = load i32, i32* %flags, align 8, !dbg !2201
  %and = and i32 %11, 2, !dbg !2203
  %tobool = icmp eq i32 %and, 0, !dbg !2203
  br i1 %tobool, label %if.else, label %if.then, !dbg !2204

if.then:                                          ; preds = %sw.bb8
  %abstract_declarator13 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 6, !dbg !2205
  %12 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %abstract_declarator13, align 8, !dbg !2205
  %13 = load %union.tree_node*, %union.tree_node** %type10, align 8, !dbg !2205
  tail call void %12(%struct.c_pretty_print_info* %pp, %union.tree_node* %13) #6, !dbg !2205
  br label %sw.epilog, !dbg !2205

if.else:                                          ; preds = %sw.bb8
  %parameter_list16 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 11, !dbg !2206
  %14 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %parameter_list16, align 8, !dbg !2206
  tail call void %14(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2206
  %abstract_declarator17 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 6, !dbg !2208
  %15 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %abstract_declarator17, align 8, !dbg !2208
  %16 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !2208
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %16, i64 0, i32 2, !dbg !2208
  %17 = load %union.tree_node*, %union.tree_node** %type21, align 8, !dbg !2208
  tail call void %15(%struct.c_pretty_print_info* %pp, %union.tree_node* %17) #6, !dbg !2208
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %base23 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2209
  %bf.cast27 = and i64 %bf.load, 65535, !dbg !2209
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast27, !dbg !2209
  %18 = load i8*, i8** %arrayidx, align 8, !dbg !2209
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2209
  br label %sw.epilog, !dbg !2210

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %if.then, %if.else, %sw.default, %sw.bb4, %sw.bb1, %sw.bb
  ret void, !dbg !2211
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_declarator(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2212 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2214, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2215, metadata !DIExpression()), !dbg !2216
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2217
  %bf.load = load i64, i64* %0, align 8, !dbg !2217
  %1 = trunc i64 %bf.load to i16, !dbg !2217
  switch i16 %1, label %sw.default [
    i16 8, label %sw.epilog
    i16 9, label %sw.epilog
    i16 11, label %sw.epilog
    i16 6, label %sw.epilog
    i16 17, label %sw.epilog
    i16 16, label %sw.epilog
    i16 32, label %sw.bb1
    i16 34, label %sw.bb1
    i16 31, label %sw.bb1
    i16 15, label %sw.bb1
    i16 20, label %sw.bb1
    i16 29, label %sw.bb1
    i16 35, label %sw.bb1
  ], !dbg !2218

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %direct_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 9, !dbg !2219
  %2 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %direct_declarator, align 8, !dbg !2219
  tail call void %2(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2219
  br label %sw.epilog, !dbg !2221

sw.default:                                       ; preds = %entry
  %base2 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2222
  %bf.cast6 = and i64 %bf.load, 65535, !dbg !2222
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast6, !dbg !2222
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !2222
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2222
  br label %sw.epilog, !dbg !2223

sw.epilog:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %sw.default, %sw.bb1
  ret void, !dbg !2224
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_declaration(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2225 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2227, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2228, metadata !DIExpression()), !dbg !2229
  %declaration_specifiers = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 4, !dbg !2230
  %0 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declaration_specifiers, align 8, !dbg !2230
  tail call void %0(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2230
  tail call void @pp_c_init_declarator(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #7, !dbg !2231
  ret void, !dbg !2232
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_init_declarator(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) local_unnamed_addr #4 !dbg !2233 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2235, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2236, metadata !DIExpression()), !dbg !2240
  %declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 5, !dbg !2241
  %0 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declarator, align 8, !dbg !2241
  tail call void %0(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2241
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2242
  %bf.load = load i64, i64* %1, align 8, !dbg !2242
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2243
  %cmp = icmp eq i64 %bf.cast1, 29, !dbg !2243
  br i1 %cmp, label %if.end13, label %land.lhs.true, !dbg !2244

land.lhs.true:                                    ; preds = %entry
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2245
  %2 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2245
  %tobool = icmp eq %union.tree_node* %2, null, !dbg !2245
  br i1 %tobool, label %if.end13, label %if.then, !dbg !2246

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2237, metadata !DIExpression()), !dbg !2247
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2248
  %bf.load4 = load i64, i64* %3, align 8, !dbg !2248
  %bf.cast62 = and i64 %bf.load4, 65535, !dbg !2250
  %cmp7 = icmp eq i64 %bf.cast62, 2, !dbg !2250
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !2251

if.then8:                                         ; preds = %if.then
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2252
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2254
  %4 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !2254
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2254
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !2254
  tail call void %4(%struct.c_pretty_print_info* %pp, %union.tree_node* %6) #6, !dbg !2254
  %base9 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2255
  tail call void @pp_base_character(%struct.pretty_print_info* %base9, i32 41) #6, !dbg !2255
  br label %if.end13, !dbg !2256

if.else:                                          ; preds = %if.then
  %base10 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2257
  tail call void @pp_base_character(%struct.pretty_print_info* %base10, i32 32) #6, !dbg !2257
  tail call void @pp_base_character(%struct.pretty_print_info* %base10, i32 61) #6, !dbg !2259
  tail call void @pp_base_character(%struct.pretty_print_info* %base10, i32 32) #6, !dbg !2260
  tail call void @pp_c_initializer(%struct.c_pretty_print_info* %pp, %union.tree_node* nonnull %2) #7, !dbg !2261
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %entry, %if.then8, %if.else
  ret void, !dbg !2262
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_attributes(%struct.c_pretty_print_info* %pp, %union.tree_node* %attributes) local_unnamed_addr #4 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %union.tree_node* %attributes, metadata !2266, metadata !DIExpression()), !dbg !2267
  %cmp = icmp eq %union.tree_node* %attributes, null, !dbg !2268
  br i1 %cmp, label %return, label %if.end, !dbg !2270

if.end:                                           ; preds = %entry
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2271
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2272
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2273
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2274
  br label %for.cond, !dbg !2278

for.cond:                                         ; preds = %for.inc, %if.end
  %attributes.addr.0 = phi %union.tree_node* [ %attributes, %if.end ], [ %5, %for.inc ]
  call void @llvm.dbg.value(metadata %union.tree_node* %attributes.addr.0, metadata !2266, metadata !DIExpression()), !dbg !2267
  %cmp1 = icmp eq %union.tree_node* %attributes.addr.0, null, !dbg !2279
  br i1 %cmp1, label %for.end, label %for.body, !dbg !2280

for.body:                                         ; preds = %for.cond
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %attributes.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2281
  %0 = bitcast i32* %purpose to %union.tree_node**, !dbg !2281
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2281
  tail call void @pp_base_tree_identifier(%struct.pretty_print_info* %base, %union.tree_node* %1) #6, !dbg !2281
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %attributes.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2282
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !2282
  %tobool = icmp eq %union.tree_node* %3, null, !dbg !2282
  br i1 %tobool, label %if.end6, label %if.then3, !dbg !2284

if.then3:                                         ; preds = %for.body
  tail call void @pp_c_call_argument_list(%struct.c_pretty_print_info* %pp, %union.tree_node* nonnull %3) #7, !dbg !2285
  br label %if.end6, !dbg !2285

if.end6:                                          ; preds = %for.body, %if.then3
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %attributes.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2286
  %4 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !2286
  %tobool7 = icmp eq %union.tree_node* %4, null, !dbg !2286
  br i1 %tobool7, label %for.inc, label %do.body, !dbg !2288

do.body:                                          ; preds = %if.end6
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 44) #6, !dbg !2289
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 32) #6, !dbg !2289
  %.pre = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !2291
  br label %for.inc, !dbg !2289

for.inc:                                          ; preds = %if.end6, %do.body
  %5 = phi %union.tree_node* [ null, %if.end6 ], [ %.pre, %do.body ], !dbg !2291
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !2266, metadata !DIExpression()), !dbg !2267
  br label %for.cond, !dbg !2292, !llvm.loop !2293

for.end:                                          ; preds = %for.cond
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2295
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2296
  br label %return, !dbg !2297

return:                                           ; preds = %entry, %for.end
  ret void, !dbg !2297
}

declare dso_local void @pp_base_tree_identifier(%struct.pretty_print_info*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_call_argument_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) local_unnamed_addr #4 !dbg !2298 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2301, metadata !DIExpression()), !dbg !2302
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2303
  %tobool = icmp eq %union.tree_node* %t, null, !dbg !2304
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2306

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2307
  %bf.load = load i64, i64* %0, align 8, !dbg !2307
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2308
  %cmp = icmp eq i64 %bf.cast1, 2, !dbg !2308
  br i1 %cmp, label %if.then, label %if.end, !dbg !2309

if.then:                                          ; preds = %land.lhs.true
  tail call void @pp_c_expression_list(%struct.c_pretty_print_info* %pp, %union.tree_node* nonnull %t) #7, !dbg !2310
  br label %if.end, !dbg !2310

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2311
  ret void, !dbg !2312
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_function_definition(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) local_unnamed_addr #4 !dbg !2313 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2316, metadata !DIExpression()), !dbg !2317
  %declaration_specifiers = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 4, !dbg !2318
  %0 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declaration_specifiers, align 8, !dbg !2318
  tail call void %0(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2318
  %declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 5, !dbg !2319
  %1 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declarator, align 8, !dbg !2319
  tail call void %1(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !2319
  %need_newline = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 8, !dbg !2320
  store i8 1, i8* %need_newline, align 1, !dbg !2321
  %statement = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 17, !dbg !2322
  %2 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %statement, align 8, !dbg !2322
  %saved_tree = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 1, !dbg !2322
  %3 = load %union.tree_node*, %union.tree_node** %saved_tree, align 8, !dbg !2322
  tail call void %2(%struct.c_pretty_print_info* %pp, %union.tree_node* %3) #6, !dbg !2322
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2323
  tail call void @pp_base_newline(%struct.pretty_print_info* %base1) #6, !dbg !2323
  tail call void @pp_base_flush(%struct.pretty_print_info* %base1) #6, !dbg !2324
  ret void, !dbg !2325
}

declare dso_local void @pp_base_newline(%struct.pretty_print_info*) local_unnamed_addr #1

declare dso_local void @pp_base_flush(%struct.pretty_print_info*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_string_literal(%struct.c_pretty_print_info* %pp, %union.tree_node* %s) local_unnamed_addr #4 !dbg !2326 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2328, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata %union.tree_node* %s, metadata !2329, metadata !DIExpression()), !dbg !2333
  %str = getelementptr inbounds %union.tree_node, %union.tree_node* %s, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2334
  %arraydecay = bitcast i32* %str to i8*, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %arraydecay, metadata !2330, metadata !DIExpression()), !dbg !2333
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %s, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2335
  %1 = load i32, i32* %0, align 8, !dbg !2335
  %sub = add nsw i32 %1, -1, !dbg !2336
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2331, metadata !DIExpression()), !dbg !2333
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2337
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 34) #6, !dbg !2337
  call void @llvm.dbg.value(metadata i32 0, metadata !2332, metadata !DIExpression()), !dbg !2333
  %2 = sext i32 %sub to i64, !dbg !2338
  br label %for.cond, !dbg !2338

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2340
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2332, metadata !DIExpression()), !dbg !2333
  %cmp = icmp slt i64 %indvars.iv, %2, !dbg !2341
  br i1 %cmp, label %for.body, label %for.end, !dbg !2343

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %arraydecay, i64 %indvars.iv, !dbg !2344
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2344
  %conv = sext i8 %3 to i32, !dbg !2344
  tail call fastcc void @pp_c_char(%struct.c_pretty_print_info* %pp, i32 %conv) #7, !dbg !2345
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2346
  call void @llvm.dbg.value(metadata i32 undef, metadata !2332, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2333
  br label %for.cond, !dbg !2347, !llvm.loop !2348

for.end:                                          ; preds = %for.cond
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 34) #6, !dbg !2350
  ret void, !dbg !2351
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_char(%struct.c_pretty_print_info* %pp, i32 %c) unnamed_addr #4 !dbg !2352 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2356, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i32 %c, metadata !2357, metadata !DIExpression()), !dbg !2358
  %and = and i32 %c, 255, !dbg !2359
  %idxprom = zext i32 %and to i64, !dbg !2359
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2359
  %0 = load i16, i16* %arrayidx, align 2, !dbg !2359
  %1 = and i16 %0, 16, !dbg !2359
  %tobool = icmp eq i16 %1, 0, !dbg !2359
  br i1 %tobool, label %do.body, label %if.then, !dbg !2361

if.then:                                          ; preds = %entry
  switch i32 %c, label %sw.default [
    i32 92, label %sw.bb
    i32 39, label %sw.bb2
    i32 34, label %sw.bb4
  ], !dbg !2362

sw.bb:                                            ; preds = %if.then
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2364
  tail call void @pp_base_string(%struct.pretty_print_info* %base, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0)) #6, !dbg !2364
  br label %if.end, !dbg !2366

sw.bb2:                                           ; preds = %if.then
  %base3 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2367
  tail call void @pp_base_string(%struct.pretty_print_info* %base3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #6, !dbg !2367
  br label %if.end, !dbg !2368

sw.bb4:                                           ; preds = %if.then
  %base5 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2369
  tail call void @pp_base_string(%struct.pretty_print_info* %base5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0)) #6, !dbg !2369
  br label %if.end, !dbg !2370

sw.default:                                       ; preds = %if.then
  %base6 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2371
  tail call void @pp_base_character(%struct.pretty_print_info* %base6, i32 %c) #6, !dbg !2371
  br label %if.end, !dbg !2372

do.body:                                          ; preds = %entry
  %buffer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !2373
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2373
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i64 0, i32 6, i64 0, !dbg !2373
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0), i32 %c) #6, !dbg !2373
  %base8 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2373
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2373
  %arraydecay12 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i64 0, i32 6, i64 0, !dbg !2373
  tail call void @pp_base_string(%struct.pretty_print_info* %base8, i8* nonnull %arraydecay12) #6, !dbg !2373
  br label %if.end

if.end:                                           ; preds = %sw.bb, %sw.bb2, %sw.bb4, %sw.default, %do.body
  ret void, !dbg !2375
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #4 !dbg !2376 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2378, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !2379, metadata !DIExpression()), !dbg !2384
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2385
  %bf.load = load i64, i64* %0, align 8, !dbg !2385
  %1 = trunc i64 %bf.load to i16, !dbg !2385
  switch i16 %1, label %sw.default [
    i16 23, label %sw.bb
    i16 24, label %sw.bb14
    i16 25, label %sw.bb15
    i16 28, label %sw.bb16
    i16 26, label %sw.bb17
  ], !dbg !2386

sw.bb:                                            ; preds = %entry
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2387
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2387
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2381, metadata !DIExpression()), !dbg !2388
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2389
  %cmp = icmp eq %union.tree_node* %2, %3, !dbg !2391
  br i1 %cmp, label %if.then, label %if.else, !dbg !2392

if.then:                                          ; preds = %sw.bb
  tail call fastcc void @pp_c_bool_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2393
  br label %sw.epilog, !dbg !2393

if.else:                                          ; preds = %sw.bb
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !2394
  %cmp2 = icmp eq %union.tree_node* %2, %4, !dbg !2396
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !2397

if.then3:                                         ; preds = %if.else
  tail call fastcc void @pp_c_character_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2398
  br label %sw.epilog, !dbg !2398

if.else4:                                         ; preds = %if.else
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2399
  %bf.load6 = load i64, i64* %5, align 8, !dbg !2399
  %bf.cast81 = and i64 %bf.load6, 65535, !dbg !2401
  %cmp9 = icmp eq i64 %bf.cast81, 6, !dbg !2401
  br i1 %cmp9, label %land.lhs.true, label %if.else11, !dbg !2402

land.lhs.true:                                    ; preds = %if.else4
  %call = tail call fastcc zeroext i8 @pp_c_enumeration_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2403
  %tobool = icmp eq i8 %call, 0, !dbg !2403
  br i1 %tobool, label %if.else11, label %sw.epilog, !dbg !2404

if.else11:                                        ; preds = %land.lhs.true, %if.else4
  tail call fastcc void @pp_c_integer_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2405
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  tail call fastcc void @pp_c_floating_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2406
  br label %sw.epilog, !dbg !2407

sw.bb15:                                          ; preds = %entry
  tail call fastcc void @pp_c_fixed_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2408
  br label %sw.epilog, !dbg !2409

sw.bb16:                                          ; preds = %entry
  tail call void @pp_c_string_literal(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2410
  br label %sw.epilog, !dbg !2411

sw.bb17:                                          ; preds = %entry
  tail call fastcc void @pp_c_compound_literal(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2412
  br label %sw.epilog, !dbg !2413

sw.default:                                       ; preds = %entry
  %base18 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2414
  %bf.cast22 = and i64 %bf.load, 65535, !dbg !2414
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast22, !dbg !2414
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !2414
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2414
  br label %sw.epilog, !dbg !2415

sw.epilog:                                        ; preds = %land.lhs.true, %if.then, %if.else11, %if.then3, %sw.default, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14
  ret void, !dbg !2416
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_bool_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %b) unnamed_addr #4 !dbg !2417 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2419, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %union.tree_node* %b, metadata !2420, metadata !DIExpression()), !dbg !2421
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 25), align 8, !dbg !2422
  %cmp = icmp eq %union.tree_node* %0, %b, !dbg !2424
  br i1 %cmp, label %if.then, label %if.else7, !dbg !2425

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @c_language, align 4, !dbg !2426
  %and = and i32 %1, 2, !dbg !2426
  %cmp1 = icmp eq i32 %and, 0, !dbg !2426
  br i1 %cmp1, label %if.else, label %if.then2, !dbg !2429

if.then2:                                         ; preds = %if.then
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !2430
  br label %if.end43, !dbg !2430

if.else:                                          ; preds = %if.then
  %2 = load i32, i32* @flag_isoc99, align 4, !dbg !2431
  %tobool = icmp eq i32 %2, 0, !dbg !2431
  br i1 %tobool, label %if.else4, label %if.then3, !dbg !2433

if.then3:                                         ; preds = %if.else
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0)) #7, !dbg !2434
  br label %if.end43, !dbg !2434

if.else4:                                         ; preds = %if.else
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2435
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %b, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2435
  %bf.load = load i64, i64* %3, align 8, !dbg !2435
  %bf.cast = and i64 %bf.load, 65535, !dbg !2435
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast, !dbg !2435
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !2435
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2435
  br label %if.end43

if.else7:                                         ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2436
  %cmp8 = icmp eq %union.tree_node* %5, %b, !dbg !2438
  br i1 %cmp8, label %if.then9, label %if.else26, !dbg !2439

if.then9:                                         ; preds = %if.else7
  %6 = load i32, i32* @c_language, align 4, !dbg !2440
  %and10 = and i32 %6, 2, !dbg !2440
  %cmp11 = icmp eq i32 %and10, 0, !dbg !2440
  br i1 %cmp11, label %if.else13, label %if.then12, !dbg !2443

if.then12:                                        ; preds = %if.then9
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0)) #7, !dbg !2444
  br label %if.end43, !dbg !2444

if.else13:                                        ; preds = %if.then9
  %7 = load i32, i32* @flag_isoc99, align 4, !dbg !2445
  %tobool14 = icmp eq i32 %7, 0, !dbg !2445
  br i1 %tobool14, label %if.else16, label %if.then15, !dbg !2447

if.then15:                                        ; preds = %if.else13
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0)) #7, !dbg !2448
  br label %if.end43, !dbg !2448

if.else16:                                        ; preds = %if.else13
  %base17 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2449
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %b, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2449
  %bf.load19 = load i64, i64* %8, align 8, !dbg !2449
  %bf.cast21 = and i64 %bf.load19, 65535, !dbg !2449
  %arrayidx23 = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast21, !dbg !2449
  %9 = load i8*, i8** %arrayidx23, align 8, !dbg !2449
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2449
  br label %if.end43

if.else26:                                        ; preds = %if.else7
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %b, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2450
  %bf.load28 = load i64, i64* %10, align 8, !dbg !2450
  %bf.cast301 = and i64 %bf.load28, 65535, !dbg !2452
  %cmp31 = icmp eq i64 %bf.cast301, 23, !dbg !2452
  br i1 %cmp31, label %if.then32, label %if.else33, !dbg !2453

if.then32:                                        ; preds = %if.else26
  tail call fastcc void @pp_c_integer_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %b) #7, !dbg !2454
  br label %if.end43, !dbg !2454

if.else33:                                        ; preds = %if.else26
  %base34 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2455
  %arrayidx40 = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast301, !dbg !2455
  %11 = load i8*, i8** %arrayidx40, align 8, !dbg !2455
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2455
  br label %if.end43

if.end43:                                         ; preds = %if.then15, %if.else16, %if.then12, %if.else33, %if.then32, %if.then2, %if.else4, %if.then3
  ret void, !dbg !2456
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_character_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %c) unnamed_addr #4 !dbg !2457 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2459, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata %union.tree_node* %c, metadata !2460, metadata !DIExpression()), !dbg !2462
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %c, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2463
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2463
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2461, metadata !DIExpression()), !dbg !2462
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([55 x %union.tree_node*], [55 x %union.tree_node*]* @c_global_trees, i64 0, i64 2), align 16, !dbg !2464
  %cmp = icmp eq %union.tree_node* %0, %1, !dbg !2466
  br i1 %cmp, label %if.then, label %if.end, !dbg !2467

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2468
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 76) #6, !dbg !2468
  br label %if.end, !dbg !2468

if.end:                                           ; preds = %if.then, %entry
  %base2 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2469
  tail call void @pp_base_character(%struct.pretty_print_info* %base2, i32 39) #6, !dbg !2469
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2470
  %bf.load = load i64, i64* %2, align 8, !dbg !2470
  %bf.lshr = lshr i64 %bf.load, 21, !dbg !2470
  %3 = trunc i64 %bf.lshr to i32, !dbg !2470
  %bf.cast = and i32 %3, 1, !dbg !2470
  %call = tail call i32 @host_integerp(%union.tree_node* %c, i32 %bf.cast) #6, !dbg !2472
  %tobool = icmp eq i32 %call, 0, !dbg !2472
  br i1 %tobool, label %do.body, label %if.then4, !dbg !2473

if.then4:                                         ; preds = %if.end
  %bf.load6 = load i64, i64* %2, align 8, !dbg !2474
  %bf.lshr7 = lshr i64 %bf.load6, 21, !dbg !2474
  %4 = trunc i64 %bf.lshr7 to i32, !dbg !2474
  %bf.cast9 = and i32 %4, 1, !dbg !2474
  %call10 = tail call i64 @tree_low_cst(%union.tree_node* %c, i32 %bf.cast9) #6, !dbg !2475
  %conv = trunc i64 %call10 to i32, !dbg !2475
  tail call fastcc void @pp_c_char(%struct.c_pretty_print_info* %pp, i32 %conv) #7, !dbg !2476
  br label %if.end20, !dbg !2476

do.body:                                          ; preds = %if.end
  %buffer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !2477
  %5 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2477
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %5, i64 0, i32 6, i64 0, !dbg !2477
  %int_cst12 = getelementptr inbounds %union.tree_node, %union.tree_node* %c, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2477
  %low = bitcast i32* %int_cst12 to i64*, !dbg !2477
  %6 = load i64, i64* %low, align 8, !dbg !2477
  %conv13 = trunc i64 %6 to i32, !dbg !2477
  %call14 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i32 %conv13) #6, !dbg !2477
  %7 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2477
  %arraydecay19 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %7, i64 0, i32 6, i64 0, !dbg !2477
  tail call void @pp_base_string(%struct.pretty_print_info* %base2, i8* nonnull %arraydecay19) #6, !dbg !2477
  br label %if.end20

if.end20:                                         ; preds = %do.body, %if.then4
  tail call void @pp_base_character(%struct.pretty_print_info* %base2, i32 39) #6, !dbg !2479
  ret void, !dbg !2480
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @pp_c_enumeration_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !2481 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2485, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !2486, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 1, metadata !2487, metadata !DIExpression()), !dbg !2490
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2491
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2491
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2488, metadata !DIExpression()), !dbg !2490
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2492
  %1 = bitcast i32* %values to %union.tree_node**, !dbg !2492
  br label %for.cond, !dbg !2494

for.cond:                                         ; preds = %for.inc, %entry
  %value.0.in = phi %union.tree_node** [ %1, %entry ], [ %chain, %for.inc ]
  %value.0 = load %union.tree_node*, %union.tree_node** %value.0.in, align 8, !dbg !2495
  call void @llvm.dbg.value(metadata %union.tree_node* %value.0, metadata !2489, metadata !DIExpression()), !dbg !2490
  %cond = icmp eq %union.tree_node* %value.0, null, !dbg !2496
  br i1 %cond, label %if.else.loopexit, label %land.rhs, !dbg !2496

land.rhs:                                         ; preds = %for.cond
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %value.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2498
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !2498
  %call = tail call i32 @tree_int_cst_equal(%union.tree_node* %3, %union.tree_node* %e) #6, !dbg !2499
  %tobool = icmp eq i32 %call, 0, !dbg !2500
  br i1 %tobool, label %for.inc, label %for.end, !dbg !2501

for.inc:                                          ; preds = %land.rhs
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %value.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2502
  br label %for.cond, !dbg !2503, !llvm.loop !2504

for.end:                                          ; preds = %land.rhs
  %value.0.lcssa3 = phi %union.tree_node* [ %value.0, %land.rhs ], !dbg !2495
  %id_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 19, !dbg !2506
  %4 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %id_expression, align 8, !dbg !2506
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %value.0.lcssa3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2506
  %5 = bitcast i32* %purpose to %union.tree_node**, !dbg !2506
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !2506
  tail call void %4(%struct.c_pretty_print_info* %pp, %union.tree_node* %6) #6, !dbg !2506
  br label %if.end, !dbg !2506

if.else.loopexit:                                 ; preds = %for.cond
  tail call fastcc void @pp_c_type_cast(%struct.c_pretty_print_info* %pp, %union.tree_node* %0) #7, !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2490
  br label %if.end

if.end:                                           ; preds = %if.else.loopexit, %for.end
  %value_is_named.0 = phi i8 [ 1, %for.end ], [ 0, %if.else.loopexit ], !dbg !2490
  call void @llvm.dbg.value(metadata i8 %value_is_named.0, metadata !2487, metadata !DIExpression()), !dbg !2490
  ret i8 %value_is_named.0, !dbg !2510
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_integer_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %i) unnamed_addr #4 !dbg !2511 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2513, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata %union.tree_node* %i, metadata !2514, metadata !DIExpression()), !dbg !2520
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2521
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2521
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2515, metadata !DIExpression()), !dbg !2520
  %int_cst2 = getelementptr inbounds %union.tree_node, %union.tree_node* %i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2522
  %high = getelementptr inbounds i32, i32* %int_cst2, i64 2, !dbg !2522
  %1 = bitcast i32* %high to i64*, !dbg !2522
  %2 = load i64, i64* %1, align 8, !dbg !2522
  %cmp = icmp eq i64 %2, 0, !dbg !2523
  br i1 %cmp, label %do.body, label %if.else, !dbg !2524

do.body:                                          ; preds = %entry
  %buffer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !2525
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2525
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i64 0, i32 6, i64 0, !dbg !2525
  %low = bitcast i32* %int_cst2 to i64*, !dbg !2525
  %4 = load i64, i64* %low, align 8, !dbg !2525
  %call = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 %4) #6, !dbg !2525
  %base5 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2525
  %5 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2525
  %arraydecay9 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %5, i64 0, i32 6, i64 0, !dbg !2525
  tail call void @pp_base_string(%struct.pretty_print_info* %base5, i8* nonnull %arraydecay9) #6, !dbg !2525
  br label %if.end32, !dbg !2525

if.else:                                          ; preds = %entry
  %low13 = bitcast i32* %int_cst2 to i64*, !dbg !2527
  %6 = load i64, i64* %low13, align 8, !dbg !2527
  call void @llvm.dbg.value(metadata i64 %6, metadata !2516, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %2, metadata !2519, metadata !DIExpression()), !dbg !2528
  %call18 = tail call i32 @tree_int_cst_sgn(%union.tree_node* %i) #6, !dbg !2529
  %cmp19 = icmp slt i32 %call18, 0, !dbg !2531
  br i1 %cmp19, label %if.then20, label %if.end, !dbg !2532

if.then20:                                        ; preds = %if.else
  %base21 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2533
  tail call void @pp_base_character(%struct.pretty_print_info* %base21, i32 45) #6, !dbg !2533
  %neg = xor i64 %2, -1, !dbg !2535
  %tobool = icmp eq i64 %6, 0, !dbg !2536
  %conv = zext i1 %tobool to i64, !dbg !2536
  %add = add nsw i64 %neg, %conv, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %add, metadata !2519, metadata !DIExpression()), !dbg !2528
  %sub = sub i64 0, %6, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2516, metadata !DIExpression()), !dbg !2528
  br label %if.end, !dbg !2539

if.end:                                           ; preds = %if.then20, %if.else
  %low10.0 = phi i64 [ %sub, %if.then20 ], [ %6, %if.else ], !dbg !2528
  %high14.0 = phi i64 [ %add, %if.then20 ], [ %2, %if.else ], !dbg !2528
  call void @llvm.dbg.value(metadata i64 %high14.0, metadata !2519, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %low10.0, metadata !2516, metadata !DIExpression()), !dbg !2528
  %buffer23 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !2540
  %7 = load %struct.output_buffer*, %struct.output_buffer** %buffer23, align 8, !dbg !2540
  %arraydecay25 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %7, i64 0, i32 6, i64 0, !dbg !2540
  %call26 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i64 %high14.0, i64 %low10.0) #6, !dbg !2541
  %base27 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2542
  %8 = load %struct.output_buffer*, %struct.output_buffer** %buffer23, align 8, !dbg !2542
  %arraydecay31 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %8, i64 0, i32 6, i64 0, !dbg !2542
  tail call void @pp_base_string(%struct.pretty_print_info* %base27, i8* nonnull %arraydecay31) #6, !dbg !2542
  br label %if.end32

if.end32:                                         ; preds = %if.end, %do.body
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2543
  %bf.load = load i64, i64* %9, align 8, !dbg !2543
  %bf.cast2 = and i64 %bf.load, 2097152, !dbg !2543
  %tobool34 = icmp eq i64 %bf.cast2, 0, !dbg !2543
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !2545

if.then35:                                        ; preds = %if.end32
  %base36 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2546
  tail call void @pp_base_character(%struct.pretty_print_info* %base36, i32 117) #6, !dbg !2546
  br label %if.end37, !dbg !2546

if.end37:                                         ; preds = %if.end32, %if.then35
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 7), align 8, !dbg !2547
  %cmp38 = icmp eq %union.tree_node* %0, %10, !dbg !2549
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 8), align 16, !dbg !2550
  %cmp40 = icmp eq %union.tree_node* %0, %11, !dbg !2551
  %or.cond = or i1 %cmp38, %cmp40, !dbg !2552
  br i1 %or.cond, label %if.then42, label %if.else44, !dbg !2552

if.then42:                                        ; preds = %if.end37
  %base43 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2553
  tail call void @pp_base_character(%struct.pretty_print_info* %base43, i32 108) #6, !dbg !2553
  br label %if.end53, !dbg !2553

if.else44:                                        ; preds = %if.end37
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 9), align 8, !dbg !2554
  %cmp45 = icmp eq %union.tree_node* %0, %12, !dbg !2556
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 10), align 16, !dbg !2557
  %cmp48 = icmp eq %union.tree_node* %0, %13, !dbg !2558
  %or.cond1 = or i1 %cmp45, %cmp48, !dbg !2559
  br i1 %or.cond1, label %if.then50, label %if.end53, !dbg !2559

if.then50:                                        ; preds = %if.else44
  %base51 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2560
  tail call void @pp_base_string(%struct.pretty_print_info* %base51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i64 0, i64 0)) #6, !dbg !2560
  br label %if.end53, !dbg !2560

if.end53:                                         ; preds = %if.then50, %if.else44, %if.then42
  ret void, !dbg !2561
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_floating_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %r) unnamed_addr #4 !dbg !2562 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2564, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata %union.tree_node* %r, metadata !2565, metadata !DIExpression()), !dbg !2566
  %buffer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !2567
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2567
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 6, i64 0, !dbg !2567
  %real_cst_ptr = getelementptr inbounds %union.tree_node, %union.tree_node* %r, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2568
  %1 = bitcast i32* %real_cst_ptr to %struct.real_value**, !dbg !2568
  %2 = load %struct.real_value*, %struct.real_value** %1, align 8, !dbg !2568
  tail call void @real_to_decimal(i8* nonnull %arraydecay, %struct.real_value* %2, i64 128, i64 0, i32 1) #6, !dbg !2569
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2570
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2570
  %arraydecay5 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i64 0, i32 6, i64 0, !dbg !2570
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* nonnull %arraydecay5) #6, !dbg !2570
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %r, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2571
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2571
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31), align 8, !dbg !2573
  %cmp = icmp eq %union.tree_node* %4, %5, !dbg !2574
  br i1 %cmp, label %if.then, label %if.else, !dbg !2575

if.then:                                          ; preds = %entry
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 102) #6, !dbg !2576
  br label %if.end33, !dbg !2576

if.else:                                          ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 33), align 8, !dbg !2577
  %cmp9 = icmp eq %union.tree_node* %4, %6, !dbg !2579
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !2580

if.then10:                                        ; preds = %if.else
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 108) #6, !dbg !2581
  br label %if.end33, !dbg !2581

if.else12:                                        ; preds = %if.else
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 51), align 8, !dbg !2582
  %cmp15 = icmp eq %union.tree_node* %4, %7, !dbg !2584
  br i1 %cmp15, label %if.then16, label %if.else18, !dbg !2585

if.then16:                                        ; preds = %if.else12
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0)) #6, !dbg !2586
  br label %if.end33, !dbg !2586

if.else18:                                        ; preds = %if.else12
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 50), align 16, !dbg !2587
  %cmp21 = icmp eq %union.tree_node* %4, %8, !dbg !2589
  br i1 %cmp21, label %if.then22, label %if.else24, !dbg !2590

if.then22:                                        ; preds = %if.else18
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i64 0, i64 0)) #6, !dbg !2591
  br label %if.end33, !dbg !2591

if.else24:                                        ; preds = %if.else18
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 49), align 8, !dbg !2592
  %cmp27 = icmp eq %union.tree_node* %4, %9, !dbg !2594
  br i1 %cmp27, label %if.then28, label %if.end33, !dbg !2595

if.then28:                                        ; preds = %if.else24
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i64 0, i64 0)) #6, !dbg !2596
  br label %if.end33, !dbg !2596

if.end33:                                         ; preds = %if.then10, %if.then22, %if.then28, %if.else24, %if.then16, %if.then
  ret void, !dbg !2597
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_fixed_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %r) unnamed_addr #4 !dbg !2598 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata %union.tree_node* %r, metadata !2601, metadata !DIExpression()), !dbg !2602
  %buffer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !2603
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2603
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 6, i64 0, !dbg !2603
  %fixed_cst_ptr = getelementptr inbounds %union.tree_node, %union.tree_node* %r, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2604
  %1 = bitcast i32* %fixed_cst_ptr to %struct.fixed_value**, !dbg !2604
  %2 = load %struct.fixed_value*, %struct.fixed_value** %1, align 8, !dbg !2604
  tail call void @fixed_to_decimal(i8* nonnull %arraydecay, %struct.fixed_value* %2, i64 128) #6, !dbg !2605
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2606
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2606
  %arraydecay5 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i64 0, i32 6, i64 0, !dbg !2606
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* nonnull %arraydecay5) #6, !dbg !2606
  ret void, !dbg !2607
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_compound_literal(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !2608 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2610, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !2611, metadata !DIExpression()), !dbg !2613
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2614
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2614
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2612, metadata !DIExpression()), !dbg !2613
  tail call fastcc void @pp_c_type_cast(%struct.c_pretty_print_info* %pp, %union.tree_node* %0) #7, !dbg !2615
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2616
  %bf.load = load i64, i64* %1, align 8, !dbg !2616
  %2 = trunc i64 %bf.load to i32, !dbg !2616
  %bf.cast = and i32 %2, 65535, !dbg !2616
  %bf.cast.off = add nsw i32 %bf.cast, -13, !dbg !2617
  %switch = icmp ult i32 %bf.cast.off, 5, !dbg !2617
  br i1 %switch, label %sw.bb, label %sw.default, !dbg !2617

sw.bb:                                            ; preds = %entry
  tail call fastcc void @pp_c_brace_enclosed_initializer_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2618
  br label %sw.epilog, !dbg !2620

sw.default:                                       ; preds = %entry
  %base2 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2621
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2621
  %bf.load4 = load i64, i64* %3, align 8, !dbg !2621
  %bf.cast6 = and i64 %bf.load4, 65535, !dbg !2621
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast6, !dbg !2621
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !2621
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2621
  br label %sw.epilog, !dbg !2622

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void, !dbg !2623
}

declare dso_local i8* @identifier_to_locale(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_primary_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #4 !dbg !2624 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !2627, metadata !DIExpression()), !dbg !2628
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2629
  %bf.load = load i64, i64* %0, align 8, !dbg !2629
  %1 = trunc i64 %bf.load to i16, !dbg !2629
  switch i16 %1, label %sw.default [
    i16 32, label %sw.bb
    i16 34, label %sw.bb
    i16 31, label %sw.bb
    i16 33, label %sw.bb
    i16 29, label %sw.bb
    i16 30, label %sw.bb
    i16 1, label %sw.bb1
    i16 0, label %sw.bb2
    i16 36, label %sw.bb4
    i16 23, label %sw.bb10
    i16 24, label %sw.bb10
    i16 25, label %sw.bb10
    i16 28, label %sw.bb10
    i16 55, label %sw.bb11
  ], !dbg !2630

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  tail call void @pp_c_tree_decl_identifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2631
  br label %sw.epilog, !dbg !2633

sw.bb1:                                           ; preds = %entry
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2634
  %str = bitcast i32* %id to i8**, !dbg !2634
  %2 = load i8*, i8** %str, align 8, !dbg !2634
  tail call void @pp_c_identifier(%struct.c_pretty_print_info* %pp, i8* %2) #7, !dbg !2634
  br label %sw.epilog, !dbg !2635

sw.bb2:                                           ; preds = %entry
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !2636
  br label %sw.epilog, !dbg !2637

sw.bb4:                                           ; preds = %entry
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !2638
  br label %sw.epilog, !dbg !2639

sw.bb10:                                          ; preds = %entry, %entry, %entry, %entry
  tail call void @pp_c_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2640
  br label %sw.epilog, !dbg !2641

sw.bb11:                                          ; preds = %entry
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !2642
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2643
  %base12 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2644
  tail call void @pp_base_character(%struct.pretty_print_info* %base12, i32 38) #6, !dbg !2644
  %primary_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 20, !dbg !2645
  %3 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %primary_expression, align 8, !dbg !2645
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2645
  %4 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2645
  tail call void %3(%struct.c_pretty_print_info* %pp, %union.tree_node* %4) #6, !dbg !2645
  tail call void @pp_base_character(%struct.pretty_print_info* %base12, i32 44) #6, !dbg !2646
  tail call void @pp_base_character(%struct.pretty_print_info* %base12, i32 32) #6, !dbg !2646
  tail call void @pp_base_character(%struct.pretty_print_info* %base12, i32 38) #6, !dbg !2648
  %initializer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 16, !dbg !2649
  %5 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %initializer, align 8, !dbg !2649
  %arrayidx18 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2649
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx18, align 8, !dbg !2649
  tail call void %5(%struct.c_pretty_print_info* %pp, %union.tree_node* %6) #6, !dbg !2649
  %arrayidx21 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2650
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx21, align 8, !dbg !2650
  %tobool22 = icmp eq %union.tree_node* %7, null, !dbg !2650
  br i1 %tobool22, label %if.end, label %do.body23, !dbg !2652

do.body23:                                        ; preds = %sw.bb11
  tail call void @pp_base_character(%struct.pretty_print_info* %base12, i32 44) #6, !dbg !2653
  tail call void @pp_base_character(%struct.pretty_print_info* %base12, i32 32) #6, !dbg !2653
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx21, align 8, !dbg !2656
  tail call void @pp_c_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %8) #7, !dbg !2657
  br label %if.end, !dbg !2658

if.end:                                           ; preds = %sw.bb11, %do.body23
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2659
  br label %sw.epilog, !dbg !2660

sw.default:                                       ; preds = %entry
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2661
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2662
  %9 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !2662
  tail call void %9(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #6, !dbg !2662
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2663
  br label %sw.epilog, !dbg !2664

sw.epilog:                                        ; preds = %sw.default, %if.end, %sw.bb10, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !2665
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #4 !dbg !2666 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !2669, metadata !DIExpression()), !dbg !2670
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2671
  %bf.load = load i64, i64* %0, align 8, !dbg !2671
  %1 = trunc i64 %bf.load to i16, !dbg !2671
  switch i16 %1, label %sw.default [
    i16 23, label %sw.bb
    i16 24, label %sw.bb1
    i16 25, label %sw.bb2
    i16 28, label %sw.bb3
    i16 1, label %sw.bb4
    i16 29, label %sw.bb4
    i16 32, label %sw.bb4
    i16 33, label %sw.bb4
    i16 34, label %sw.bb4
    i16 36, label %sw.bb4
    i16 31, label %sw.bb4
    i16 30, label %sw.bb4
    i16 0, label %sw.bb4
    i16 128, label %sw.bb5
    i16 127, label %sw.bb5
    i16 45, label %sw.bb5
    i16 59, label %sw.bb5
    i16 41, label %sw.bb5
    i16 42, label %sw.bb5
    i16 26, label %sw.bb5
    i16 123, label %sw.bb5
    i16 27, label %sw.bb5
    i16 104, label %sw.bb5
    i16 103, label %sw.bb5
    i16 110, label %sw.bb5
    i16 109, label %sw.bb5
    i16 106, label %sw.bb5
    i16 105, label %sw.bb5
    i16 108, label %sw.bb5
    i16 107, label %sw.bb5
    i16 82, label %sw.bb5
    i16 51, label %sw.bb5
    i16 119, label %sw.bb5
    i16 129, label %sw.bb5
    i16 124, label %sw.bb6
    i16 121, label %sw.bb6
    i16 47, label %sw.bb6
    i16 79, label %sw.bb6
    i16 90, label %sw.bb6
    i16 96, label %sw.bb6
    i16 126, label %sw.bb6
    i16 125, label %sw.bb6
    i16 43, label %sw.bb6
    i16 44, label %sw.bb6
    i16 78, label %sw.bb7
    i16 77, label %sw.bb7
    i16 116, label %sw.bb7
    i16 113, label %sw.bb7
    i16 118, label %sw.bb7
    i16 65, label %sw.bb8
    i16 71, label %sw.bb8
    i16 67, label %sw.bb8
    i16 83, label %sw.bb9
    i16 84, label %sw.bb9
    i16 97, label %sw.bb10
    i16 99, label %sw.bb10
    i16 98, label %sw.bb10
    i16 100, label %sw.bb10
    i16 89, label %sw.bb11
    i16 88, label %sw.bb12
    i16 95, label %sw.bb12
    i16 87, label %sw.bb13
    i16 91, label %sw.bb14
    i16 93, label %sw.bb14
    i16 92, label %sw.bb15
    i16 94, label %sw.bb15
    i16 101, label %sw.bb16
    i16 102, label %sw.bb16
    i16 56, label %sw.bb17
    i16 66, label %sw.bb18
    i16 63, label %sw.bb18
    i16 64, label %sw.bb18
    i16 53, label %sw.bb19
    i16 54, label %sw.bb19
    i16 52, label %sw.bb20
    i16 117, label %sw.bb27
    i16 120, label %sw.bb27
    i16 55, label %sw.bb32
    i16 58, label %sw.bb37
    i16 134, label %sw.bb37
  ], !dbg !2672

sw.bb:                                            ; preds = %entry
  tail call fastcc void @pp_c_integer_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2673
  br label %sw.epilog, !dbg !2675

sw.bb1:                                           ; preds = %entry
  tail call fastcc void @pp_c_floating_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2676
  br label %sw.epilog, !dbg !2677

sw.bb2:                                           ; preds = %entry
  tail call fastcc void @pp_c_fixed_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2678
  br label %sw.epilog, !dbg !2679

sw.bb3:                                           ; preds = %entry
  tail call void @pp_c_string_literal(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2680
  br label %sw.epilog, !dbg !2681

sw.bb4:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %primary_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 20, !dbg !2682
  %2 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %primary_expression, align 8, !dbg !2682
  tail call void %2(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #6, !dbg !2682
  br label %sw.epilog, !dbg !2683

sw.bb5:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %postfix_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 21, !dbg !2684
  %3 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %postfix_expression, align 8, !dbg !2684
  tail call void %3(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #6, !dbg !2684
  br label %sw.epilog, !dbg !2685

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  tail call void @pp_c_unary_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2686
  br label %sw.epilog, !dbg !2687

sw.bb7:                                           ; preds = %entry, %entry, %entry, %entry, %entry
  tail call void @pp_c_cast_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2688
  br label %sw.epilog, !dbg !2689

sw.bb8:                                           ; preds = %entry, %entry, %entry
  %multiplicative_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 23, !dbg !2690
  %4 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %multiplicative_expression, align 8, !dbg !2690
  tail call void %4(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #6, !dbg !2690
  br label %sw.epilog, !dbg !2691

sw.bb9:                                           ; preds = %entry, %entry
  tail call fastcc void @pp_c_shift_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2692
  br label %sw.epilog, !dbg !2693

sw.bb10:                                          ; preds = %entry, %entry, %entry, %entry
  tail call fastcc void @pp_c_relational_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2694
  br label %sw.epilog, !dbg !2695

sw.bb11:                                          ; preds = %entry
  tail call fastcc void @pp_c_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2696
  br label %sw.epilog, !dbg !2697

sw.bb12:                                          ; preds = %entry, %entry
  tail call fastcc void @pp_c_exclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2698
  br label %sw.epilog, !dbg !2699

sw.bb13:                                          ; preds = %entry
  tail call fastcc void @pp_c_inclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2700
  br label %sw.epilog, !dbg !2701

sw.bb14:                                          ; preds = %entry, %entry
  tail call fastcc void @pp_c_logical_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2702
  br label %sw.epilog, !dbg !2703

sw.bb15:                                          ; preds = %entry, %entry
  tail call void @pp_c_logical_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2704
  br label %sw.epilog, !dbg !2705

sw.bb16:                                          ; preds = %entry, %entry
  tail call fastcc void @pp_c_equality_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2706
  br label %sw.epilog, !dbg !2707

sw.bb17:                                          ; preds = %entry
  %conditional_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 24, !dbg !2708
  %5 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %conditional_expression, align 8, !dbg !2708
  tail call void %5(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #6, !dbg !2708
  br label %sw.epilog, !dbg !2709

sw.bb18:                                          ; preds = %entry, %entry, %entry
  tail call fastcc void @pp_c_additive_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2710
  br label %sw.epilog, !dbg !2711

sw.bb19:                                          ; preds = %entry, %entry
  %assignment_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 25, !dbg !2712
  %6 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %assignment_expression, align 8, !dbg !2712
  tail call void %6(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #6, !dbg !2712
  br label %sw.epilog, !dbg !2713

sw.bb20:                                          ; preds = %entry
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2714
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2715
  %7 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !2715
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2715
  %8 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2715
  tail call void %7(%struct.c_pretty_print_info* %pp, %union.tree_node* %8) #6, !dbg !2715
  %base21 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2716
  tail call void @pp_base_character(%struct.pretty_print_info* %base21, i32 44) #6, !dbg !2716
  tail call void @pp_base_character(%struct.pretty_print_info* %base21, i32 32) #6, !dbg !2716
  %assignment_expression23 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 25, !dbg !2718
  %9 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %assignment_expression23, align 8, !dbg !2718
  %arrayidx26 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2718
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx26, align 8, !dbg !2718
  tail call void %9(%struct.c_pretty_print_info* %pp, %union.tree_node* %10) #6, !dbg !2718
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2719
  br label %sw.epilog, !dbg !2720

sw.bb27:                                          ; preds = %entry, %entry
  %expression28 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2721
  %11 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression28, align 8, !dbg !2721
  %operands30 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2721
  %12 = load %union.tree_node*, %union.tree_node** %operands30, align 8, !dbg !2721
  tail call void %11(%struct.c_pretty_print_info* %pp, %union.tree_node* %12) #6, !dbg !2721
  br label %sw.epilog, !dbg !2722

sw.bb32:                                          ; preds = %entry
  %postfix_expression33 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 21, !dbg !2723
  %13 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %postfix_expression33, align 8, !dbg !2723
  %operands35 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2723
  %arrayidx36 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands35, i64 1, !dbg !2723
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx36, align 8, !dbg !2723
  tail call void %13(%struct.c_pretty_print_info* %pp, %union.tree_node* %14) #6, !dbg !2723
  br label %sw.epilog, !dbg !2724

sw.bb37:                                          ; preds = %entry, %entry
  %base38 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2725
  tail call void @pp_base_string(%struct.pretty_print_info* %base38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0)) #6, !dbg !2725
  br label %sw.epilog, !dbg !2726

sw.default:                                       ; preds = %entry
  %base39 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2727
  %bf.cast43 = and i64 %bf.load, 65535, !dbg !2727
  %arrayidx44 = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast43, !dbg !2727
  %15 = load i8*, i8** %arrayidx44, align 8, !dbg !2727
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2727
  br label %sw.epilog, !dbg !2728

sw.epilog:                                        ; preds = %sw.default, %sw.bb37, %sw.bb32, %sw.bb27, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !2729
}

; Function Attrs: nounwind uwtable
define internal void @pp_c_initializer(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #4 !dbg !2730 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !2733, metadata !DIExpression()), !dbg !2734
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2735
  %bf.load = load i64, i64* %0, align 8, !dbg !2735
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2737
  %cmp = icmp eq i64 %bf.cast1, 51, !dbg !2737
  br i1 %cmp, label %if.then, label %if.else, !dbg !2738

if.then:                                          ; preds = %entry
  tail call fastcc void @pp_c_brace_enclosed_initializer_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2739
  br label %if.end, !dbg !2739

if.else:                                          ; preds = %entry
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2740
  %1 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !2740
  tail call void %1(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #6, !dbg !2740
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2741
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_id_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !2742 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2744, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2745, metadata !DIExpression()), !dbg !2746
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2747
  %bf.load = load i64, i64* %0, align 8, !dbg !2747
  %1 = trunc i64 %bf.load to i16, !dbg !2747
  switch i16 %1, label %sw.default [
    i16 32, label %sw.bb
    i16 34, label %sw.bb
    i16 33, label %sw.bb
    i16 35, label %sw.bb
    i16 29, label %sw.bb
    i16 31, label %sw.bb
    i16 30, label %sw.bb
    i16 1, label %sw.bb1
  ], !dbg !2748

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  tail call void @pp_c_tree_decl_identifier(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #7, !dbg !2749
  br label %sw.epilog, !dbg !2751

sw.bb1:                                           ; preds = %entry
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2752
  %str = bitcast i32* %id to i8**, !dbg !2752
  %2 = load i8*, i8** %str, align 8, !dbg !2752
  tail call void @pp_c_identifier(%struct.c_pretty_print_info* %pp, i8* %2) #7, !dbg !2752
  br label %sw.epilog, !dbg !2753

sw.default:                                       ; preds = %entry
  %base2 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2754
  %bf.cast6 = and i64 %bf.load, 65535, !dbg !2754
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast6, !dbg !2754
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !2754
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2754
  br label %sw.epilog, !dbg !2755

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void, !dbg !2756
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_postfix_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #4 !dbg !2757 {
entry:
  %iter = alloca %struct.call_expr_arg_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2759, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !2760, metadata !DIExpression()), !dbg !2781
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2782
  %bf.load = load i64, i64* %0, align 8, !dbg !2782
  %trunc = trunc i64 %bf.load to i16, !dbg !2783
  switch i16 %trunc, label %sw.default [
    i16 128, label %sw.bb
    i16 127, label %sw.bb
    i16 45, label %sw.bb2
    i16 59, label %sw.bb10
    i16 103, label %sw.bb21
    i16 104, label %sw.bb24
    i16 105, label %sw.bb27
    i16 106, label %sw.bb30
    i16 107, label %sw.bb33
    i16 108, label %sw.bb36
    i16 109, label %sw.bb39
    i16 110, label %sw.bb42
    i16 82, label %sw.bb58
    i16 41, label %sw.bb63
    i16 42, label %sw.bb83
    i16 26, label %sw.bb134
    i16 27, label %sw.bb134
    i16 123, label %sw.bb135
    i16 119, label %sw.bb136
    i16 51, label %sw.bb143
    i16 129, label %sw.bb144
    i16 121, label %sw.bb156
  ], !dbg !2783

sw.bb:                                            ; preds = %entry, %entry
  %postfix_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 21, !dbg !2784
  %1 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %postfix_expression, align 8, !dbg !2784
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2784
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2784
  tail call void %1(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #6, !dbg !2784
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2785
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !2785
  %cmp = icmp eq i64 %bf.cast4, 128, !dbg !2785
  %cond = select i1 %cmp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), !dbg !2785
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* %cond) #6, !dbg !2785
  br label %sw.epilog, !dbg !2786

sw.bb2:                                           ; preds = %entry
  %postfix_expression3 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 21, !dbg !2787
  %3 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %postfix_expression3, align 8, !dbg !2787
  %operands5 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2787
  %4 = load %union.tree_node*, %union.tree_node** %operands5, align 8, !dbg !2787
  tail call void %3(%struct.c_pretty_print_info* %pp, %union.tree_node* %4) #6, !dbg !2787
  tail call void @pp_c_left_bracket(%struct.c_pretty_print_info* %pp) #7, !dbg !2788
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2789
  %5 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !2789
  %arrayidx9 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands5, i64 1, !dbg !2789
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8, !dbg !2789
  tail call void %5(%struct.c_pretty_print_info* %pp, %union.tree_node* %6) #6, !dbg !2789
  tail call void @pp_c_right_bracket(%struct.c_pretty_print_info* %pp) #7, !dbg !2790
  br label %sw.epilog, !dbg !2791

sw.bb10:                                          ; preds = %entry
  %7 = bitcast %struct.call_expr_arg_iterator_d* %iter to i8*, !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !2792
  %postfix_expression11 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 21, !dbg !2793
  %8 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %postfix_expression11, align 8, !dbg !2793
  %operands13 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2793
  %arrayidx14 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands13, i64 1, !dbg !2793
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx14, align 8, !dbg !2793
  tail call void %8(%struct.c_pretty_print_info* %pp, %union.tree_node* %9) #6, !dbg !2793
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2794
  call void @llvm.dbg.value(metadata %struct.call_expr_arg_iterator_d* %iter, metadata !2762, metadata !DIExpression(DW_OP_deref)), !dbg !2795
  %call = call fastcc %union.tree_node* @first_call_expr_arg(%union.tree_node* %e, %struct.call_expr_arg_iterator_d* nonnull %iter) #7, !dbg !2796
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2771, metadata !DIExpression()), !dbg !2795
  %expression15 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2798
  %base18 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2801
  br label %for.cond, !dbg !2796

for.cond:                                         ; preds = %for.inc, %sw.bb10
  %arg.0 = phi %union.tree_node* [ %call, %sw.bb10 ], [ %call20, %for.inc ], !dbg !2804
  call void @llvm.dbg.value(metadata %union.tree_node* %arg.0, metadata !2771, metadata !DIExpression()), !dbg !2795
  %tobool = icmp eq %union.tree_node* %arg.0, null, !dbg !2796
  br i1 %tobool, label %for.end, label %for.body, !dbg !2796

for.body:                                         ; preds = %for.cond
  %10 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression15, align 8, !dbg !2805
  call void %10(%struct.c_pretty_print_info* %pp, %union.tree_node* nonnull %arg.0) #6, !dbg !2805
  call void @llvm.dbg.value(metadata %struct.call_expr_arg_iterator_d* %iter, metadata !2762, metadata !DIExpression(DW_OP_deref)), !dbg !2795
  %call16 = call fastcc zeroext i8 @more_call_expr_args_p(%struct.call_expr_arg_iterator_d* nonnull %iter) #7, !dbg !2806
  %tobool17 = icmp eq i8 %call16, 0, !dbg !2806
  br i1 %tobool17, label %for.inc, label %do.body, !dbg !2807

do.body:                                          ; preds = %for.body
  call void @pp_base_character(%struct.pretty_print_info* %base18, i32 44) #6, !dbg !2808
  call void @pp_base_character(%struct.pretty_print_info* %base18, i32 32) #6, !dbg !2808
  br label %for.inc, !dbg !2808

for.inc:                                          ; preds = %for.body, %do.body
  call void @llvm.dbg.value(metadata %struct.call_expr_arg_iterator_d* %iter, metadata !2762, metadata !DIExpression(DW_OP_deref)), !dbg !2795
  %call20 = call fastcc %union.tree_node* @next_call_expr_arg(%struct.call_expr_arg_iterator_d* nonnull %iter) #7, !dbg !2809
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !2771, metadata !DIExpression()), !dbg !2795
  br label %for.cond, !dbg !2809, !llvm.loop !2810

for.end:                                          ; preds = %for.cond
  call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !2813
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %11 = load i32, i32* @flag_isoc99, align 4, !dbg !2814
  %tobool22 = icmp eq i32 %11, 0, !dbg !2814
  %cond23 = select i1 %tobool22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), !dbg !2814
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond23) #7, !dbg !2815
  br label %two_args_fun, !dbg !2816

sw.bb24:                                          ; preds = %entry
  %12 = load i32, i32* @flag_isoc99, align 4, !dbg !2817
  %tobool25 = icmp eq i32 %12, 0, !dbg !2817
  %cond26 = select i1 %tobool25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), !dbg !2817
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond26) #7, !dbg !2818
  br label %two_args_fun, !dbg !2819

sw.bb27:                                          ; preds = %entry
  %13 = load i32, i32* @flag_isoc99, align 4, !dbg !2820
  %tobool28 = icmp eq i32 %13, 0, !dbg !2820
  %cond29 = select i1 %tobool28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), !dbg !2820
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond29) #7, !dbg !2821
  br label %two_args_fun, !dbg !2822

sw.bb30:                                          ; preds = %entry
  %14 = load i32, i32* @flag_isoc99, align 4, !dbg !2823
  %tobool31 = icmp eq i32 %14, 0, !dbg !2823
  %cond32 = select i1 %tobool31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), !dbg !2823
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond32) #7, !dbg !2824
  br label %two_args_fun, !dbg !2825

sw.bb33:                                          ; preds = %entry
  %15 = load i32, i32* @flag_isoc99, align 4, !dbg !2826
  %tobool34 = icmp eq i32 %15, 0, !dbg !2826
  %cond35 = select i1 %tobool34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), !dbg !2826
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond35) #7, !dbg !2827
  br label %two_args_fun, !dbg !2828

sw.bb36:                                          ; preds = %entry
  %16 = load i32, i32* @flag_isoc99, align 4, !dbg !2829
  %tobool37 = icmp eq i32 %16, 0, !dbg !2829
  %cond38 = select i1 %tobool37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), !dbg !2829
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond38) #7, !dbg !2830
  br label %two_args_fun, !dbg !2831

sw.bb39:                                          ; preds = %entry
  %17 = load i32, i32* @flag_isoc99, align 4, !dbg !2832
  %tobool40 = icmp eq i32 %17, 0, !dbg !2832
  %cond41 = select i1 %tobool40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), !dbg !2832
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond41) #7, !dbg !2833
  br label %two_args_fun, !dbg !2834

sw.bb42:                                          ; preds = %entry
  %18 = load i32, i32* @flag_isoc99, align 4, !dbg !2835
  %tobool43 = icmp eq i32 %18, 0, !dbg !2835
  %cond44 = select i1 %tobool43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), !dbg !2835
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond44) #7, !dbg !2836
  br label %two_args_fun, !dbg !2837

two_args_fun:                                     ; preds = %sw.bb42, %sw.bb39, %sw.bb36, %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb24, %sw.bb21
  call void @llvm.dbg.label(metadata !2780), !dbg !2838
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2839
  %expression45 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2840
  %19 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression45, align 8, !dbg !2840
  %operands47 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2840
  %20 = load %union.tree_node*, %union.tree_node** %operands47, align 8, !dbg !2840
  tail call void %19(%struct.c_pretty_print_info* %pp, %union.tree_node* %20) #6, !dbg !2840
  %base50 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2841
  tail call void @pp_base_character(%struct.pretty_print_info* %base50, i32 44) #6, !dbg !2841
  tail call void @pp_base_character(%struct.pretty_print_info* %base50, i32 32) #6, !dbg !2841
  %21 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression45, align 8, !dbg !2843
  %arrayidx57 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands47, i64 1, !dbg !2843
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx57, align 8, !dbg !2843
  tail call void %21(%struct.c_pretty_print_info* %pp, %union.tree_node* %22) #6, !dbg !2843
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2844
  br label %sw.epilog, !dbg !2845

sw.bb58:                                          ; preds = %entry
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i64 0, i64 0)) #7, !dbg !2846
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2847
  %expression59 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2848
  %23 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression59, align 8, !dbg !2848
  %operands61 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2848
  %24 = load %union.tree_node*, %union.tree_node** %operands61, align 8, !dbg !2848
  tail call void %23(%struct.c_pretty_print_info* %pp, %union.tree_node* %24) #6, !dbg !2848
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2849
  br label %sw.epilog, !dbg !2850

sw.bb63:                                          ; preds = %entry
  %operands65 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2851
  %25 = load %union.tree_node*, %union.tree_node** %operands65, align 8, !dbg !2851
  call void @llvm.dbg.value(metadata %union.tree_node* %25, metadata !2772, metadata !DIExpression()), !dbg !2852
  %26 = getelementptr inbounds %union.tree_node, %union.tree_node* %25, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2853
  %bf.load68 = load i64, i64* %26, align 8, !dbg !2853
  %bf.cast703 = and i64 %bf.load68, 65535, !dbg !2855
  %cmp71 = icmp eq i64 %bf.cast703, 47, !dbg !2855
  %postfix_expression73 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 21, !dbg !2856
  %27 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %postfix_expression73, align 8, !dbg !2856
  br i1 %cmp71, label %if.then72, label %if.else, !dbg !2857

if.then72:                                        ; preds = %sw.bb63
  %operands75 = getelementptr inbounds %union.tree_node, %union.tree_node* %25, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2858
  %28 = load %union.tree_node*, %union.tree_node** %operands75, align 8, !dbg !2858
  tail call void %27(%struct.c_pretty_print_info* %pp, %union.tree_node* %28) #6, !dbg !2858
  tail call void @pp_c_arrow(%struct.c_pretty_print_info* %pp) #7, !dbg !2860
  br label %if.end78, !dbg !2861

if.else:                                          ; preds = %sw.bb63
  tail call void %27(%struct.c_pretty_print_info* %pp, %union.tree_node* %25) #6, !dbg !2862
  tail call void @pp_c_dot(%struct.c_pretty_print_info* %pp) #7, !dbg !2864
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then72
  %expression79 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2865
  %29 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression79, align 8, !dbg !2865
  %arrayidx82 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands65, i64 1, !dbg !2865
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx82, align 8, !dbg !2865
  tail call void %29(%struct.c_pretty_print_info* %pp, %union.tree_node* %30) #6, !dbg !2865
  br label %sw.epilog, !dbg !2866

sw.bb83:                                          ; preds = %entry
  %type84 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2867
  %31 = load %union.tree_node*, %union.tree_node** %type84, align 8, !dbg !2867
  call void @llvm.dbg.value(metadata %union.tree_node* %31, metadata !2774, metadata !DIExpression()), !dbg !2868
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %31, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2869
  %bf.load86 = load i64, i64* %32, align 8, !dbg !2869
  %bf.lshr = lshr i64 %bf.load86, 21, !dbg !2869
  %33 = trunc i64 %bf.lshr to i32, !dbg !2869
  %bf.cast88 = and i32 %33, 1, !dbg !2869
  %call89 = tail call %union.tree_node* @signed_or_unsigned_type_for(i32 %bf.cast88, %union.tree_node* %31) #6, !dbg !2870
  call void @llvm.dbg.value(metadata %union.tree_node* %call89, metadata !2774, metadata !DIExpression()), !dbg !2868
  %tobool90 = icmp eq %union.tree_node* %call89, null, !dbg !2871
  br i1 %tobool90, label %if.end124, label %land.lhs.true, !dbg !2872

land.lhs.true:                                    ; preds = %sw.bb83
  %34 = getelementptr inbounds %union.tree_node, %union.tree_node* %call89, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2873
  %35 = load %union.tree_node*, %union.tree_node** %34, align 8, !dbg !2873
  %operands93 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2874
  %arrayidx94 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands93, i64 1, !dbg !2874
  %36 = load %union.tree_node*, %union.tree_node** %arrayidx94, align 8, !dbg !2874
  %call95 = tail call i32 @tree_int_cst_equal(%union.tree_node* %35, %union.tree_node* %36) #6, !dbg !2875
  %tobool96 = icmp eq i32 %call95, 0, !dbg !2875
  br i1 %tobool96, label %if.end124, label %if.then97, !dbg !2876

if.then97:                                        ; preds = %land.lhs.true
  %arrayidx100 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands93, i64 2, !dbg !2877
  %37 = load %union.tree_node*, %union.tree_node** %arrayidx100, align 8, !dbg !2877
  %call101 = tail call i64 @tree_low_cst(%union.tree_node* %37, i32 0) #6, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %call101, metadata !2776, metadata !DIExpression()), !dbg !2879
  %38 = load %union.tree_node*, %union.tree_node** %34, align 8, !dbg !2880
  %call105 = tail call i64 @tree_low_cst(%union.tree_node* %38, i32 0) #6, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %call105, metadata !2779, metadata !DIExpression()), !dbg !2879
  %rem = srem i64 %call101, %call105, !dbg !2882
  %cmp106 = icmp eq i64 %rem, 0, !dbg !2884
  br i1 %cmp106, label %if.then107, label %cleanup, !dbg !2885

if.then107:                                       ; preds = %if.then97
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2886
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2888
  %type_id = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 12, !dbg !2889
  %39 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %type_id, align 8, !dbg !2889
  tail call void %39(%struct.c_pretty_print_info* %pp, %union.tree_node* nonnull %call89) #6, !dbg !2889
  tail call void @pp_c_star(%struct.c_pretty_print_info* %pp) #7, !dbg !2890
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2891
  tail call void @pp_c_ampersand(%struct.c_pretty_print_info* %pp) #7, !dbg !2892
  %expression108 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !2893
  %40 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression108, align 8, !dbg !2893
  %41 = load %union.tree_node*, %union.tree_node** %operands93, align 8, !dbg !2893
  tail call void %40(%struct.c_pretty_print_info* %pp, %union.tree_node* %41) #6, !dbg !2893
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2894
  tail call void @pp_c_left_bracket(%struct.c_pretty_print_info* %pp) #7, !dbg !2895
  %buffer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 0, !dbg !2896
  %42 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2896
  %arraydecay = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %42, i64 0, i32 6, i64 0, !dbg !2896
  %div = sdiv i64 %call101, %call105, !dbg !2896
  %call114 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 %div) #6, !dbg !2896
  %base115 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2896
  %43 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2896
  %arraydecay119 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %43, i64 0, i32 6, i64 0, !dbg !2896
  tail call void @pp_base_string(%struct.pretty_print_info* %base115, i8* nonnull %arraydecay119) #6, !dbg !2896
  tail call void @pp_c_right_bracket(%struct.c_pretty_print_info* %pp) #7, !dbg !2898
  br label %cleanup, !dbg !2899

cleanup:                                          ; preds = %if.then97, %if.then107
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then107 ], [ true, %if.then97 ]
  br i1 %cleanup.dest.slot.0, label %if.end124, label %cleanup131

if.end124:                                        ; preds = %land.lhs.true, %sw.bb83, %cleanup
  %base125 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2900
  %bf.load127 = load i64, i64* %0, align 8, !dbg !2900
  %bf.cast129 = and i64 %bf.load127, 65535, !dbg !2900
  %arrayidx130 = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast129, !dbg !2900
  %44 = load i8*, i8** %arrayidx130, align 8, !dbg !2900
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2900
  br label %cleanup131, !dbg !2901

cleanup131:                                       ; preds = %cleanup, %if.end124
  ret void

sw.bb134:                                         ; preds = %entry, %entry
  tail call fastcc void @pp_c_compound_literal(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2902
  br label %sw.epilog, !dbg !2903

sw.bb135:                                         ; preds = %entry
  tail call fastcc void @pp_c_complex_expr(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !2904
  br label %sw.epilog, !dbg !2905

sw.bb136:                                         ; preds = %entry
  %operands138 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2906
  %45 = bitcast %union.tree_node** %operands138 to %struct.tree_exp**, !dbg !2906
  %46 = load %struct.tree_exp*, %struct.tree_exp** %45, align 8, !dbg !2906
  %arrayidx142 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %46, i64 0, i32 3, i64 0, !dbg !2906
  %47 = bitcast %union.tree_node** %arrayidx142 to %struct.tree_decl_common**, !dbg !2906
  %48 = load %struct.tree_decl_common*, %struct.tree_decl_common** %47, align 8, !dbg !2906
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %48, i64 0, i32 5, !dbg !2906
  %49 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2906
  call void @llvm.dbg.value(metadata %union.tree_node* %49, metadata !2760, metadata !DIExpression()), !dbg !2781
  br label %sw.bb143, !dbg !2907

sw.bb143:                                         ; preds = %entry, %sw.bb136
  %e.addr.0 = phi %union.tree_node* [ %e, %entry ], [ %49, %sw.bb136 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.addr.0, metadata !2760, metadata !DIExpression()), !dbg !2781
  %initializer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 16, !dbg !2908
  %50 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %initializer, align 8, !dbg !2908
  tail call void %50(%struct.c_pretty_print_info* %pp, %union.tree_node* %e.addr.0) #6, !dbg !2908
  br label %sw.epilog, !dbg !2909

sw.bb144:                                         ; preds = %entry
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0)) #7, !dbg !2910
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2911
  %assignment_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 25, !dbg !2912
  %51 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %assignment_expression, align 8, !dbg !2912
  %operands146 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2912
  %52 = load %union.tree_node*, %union.tree_node** %operands146, align 8, !dbg !2912
  tail call void %51(%struct.c_pretty_print_info* %pp, %union.tree_node* %52) #6, !dbg !2912
  %base149 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !2913
  tail call void @pp_base_character(%struct.pretty_print_info* %base149, i32 44) #6, !dbg !2913
  tail call void @pp_base_character(%struct.pretty_print_info* %base149, i32 32) #6, !dbg !2913
  %type_id153 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 12, !dbg !2915
  %53 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %type_id153, align 8, !dbg !2915
  %type155 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2915
  %54 = load %union.tree_node*, %union.tree_node** %type155, align 8, !dbg !2915
  tail call void %53(%struct.c_pretty_print_info* %pp, %union.tree_node* %54) #6, !dbg !2915
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !2916
  br label %sw.epilog, !dbg !2917

sw.bb156:                                         ; preds = %entry
  %operands158 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2918
  %55 = bitcast %union.tree_node** %operands158 to i64**, !dbg !2918
  %56 = load i64*, i64** %55, align 8, !dbg !2918
  %bf.load161 = load i64, i64* %56, align 8, !dbg !2918
  %bf.cast1632 = and i64 %bf.load161, 65535, !dbg !2920
  %cmp164 = icmp eq i64 %bf.cast1632, 29, !dbg !2920
  br i1 %cmp164, label %if.then165, label %sw.default, !dbg !2921

if.then165:                                       ; preds = %sw.bb156
  %57 = bitcast i64* %56 to %union.tree_node*, !dbg !2921
  tail call void @pp_c_id_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %57) #7, !dbg !2922
  br label %sw.epilog, !dbg !2924

sw.default:                                       ; preds = %sw.bb156, %entry
  %primary_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 20, !dbg !2925
  %58 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %primary_expression, align 8, !dbg !2925
  tail call void %58(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #6, !dbg !2925
  br label %sw.epilog, !dbg !2926

sw.epilog:                                        ; preds = %sw.default, %if.then165, %sw.bb144, %sw.bb143, %sw.bb135, %sw.bb134, %if.end78, %sw.bb58, %two_args_fun, %for.end, %sw.bb2, %sw.bb
  ret void, !dbg !2927
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @first_call_expr_arg(%union.tree_node* %exp, %struct.call_expr_arg_iterator_d* %iter) unnamed_addr #0 !dbg !2928 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !2933, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata %struct.call_expr_arg_iterator_d* %iter, metadata !2934, metadata !DIExpression()), !dbg !2935
  tail call fastcc void @init_call_expr_arg_iterator(%union.tree_node* %exp, %struct.call_expr_arg_iterator_d* %iter) #7, !dbg !2936
  %call = tail call fastcc %union.tree_node* @next_call_expr_arg(%struct.call_expr_arg_iterator_d* %iter) #7, !dbg !2937
  ret %union.tree_node* %call, !dbg !2938
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @more_call_expr_args_p(%struct.call_expr_arg_iterator_d* %iter) unnamed_addr #0 !dbg !2939 {
entry:
  call void @llvm.dbg.value(metadata %struct.call_expr_arg_iterator_d* %iter, metadata !2945, metadata !DIExpression()), !dbg !2946
  %i = getelementptr inbounds %struct.call_expr_arg_iterator_d, %struct.call_expr_arg_iterator_d* %iter, i64 0, i32 2, !dbg !2947
  %0 = load i32, i32* %i, align 4, !dbg !2947
  %n = getelementptr inbounds %struct.call_expr_arg_iterator_d, %struct.call_expr_arg_iterator_d* %iter, i64 0, i32 1, !dbg !2948
  %1 = load i32, i32* %n, align 8, !dbg !2948
  %cmp = icmp slt i32 %0, %1, !dbg !2949
  %conv1 = zext i1 %cmp to i8, !dbg !2950
  ret i8 %conv1, !dbg !2951
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @next_call_expr_arg(%struct.call_expr_arg_iterator_d* %iter) unnamed_addr #0 !dbg !2952 {
entry:
  call void @llvm.dbg.value(metadata %struct.call_expr_arg_iterator_d* %iter, metadata !2956, metadata !DIExpression()), !dbg !2958
  %i = getelementptr inbounds %struct.call_expr_arg_iterator_d, %struct.call_expr_arg_iterator_d* %iter, i64 0, i32 2, !dbg !2959
  %0 = load i32, i32* %i, align 4, !dbg !2959
  %n = getelementptr inbounds %struct.call_expr_arg_iterator_d, %struct.call_expr_arg_iterator_d* %iter, i64 0, i32 1, !dbg !2961
  %1 = load i32, i32* %n, align 8, !dbg !2961
  %cmp = icmp slt i32 %0, %1, !dbg !2962
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2963

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.call_expr_arg_iterator_d* %iter to %struct.tree_exp**, !dbg !2964
  %3 = load %struct.tree_exp*, %struct.tree_exp** %2, align 8, !dbg !2964
  %add = add nsw i32 %0, 3, !dbg !2964
  %idxprom = sext i32 %add to i64, !dbg !2964
  %arrayidx = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %3, i64 0, i32 3, i64 %idxprom, !dbg !2964
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2964
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !2957, metadata !DIExpression()), !dbg !2958
  %inc = add nsw i32 %0, 1, !dbg !2965
  store i32 %inc, i32* %i, align 4, !dbg !2965
  br label %cleanup, !dbg !2966

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %4, %if.end ], [ null, %entry ], !dbg !2958
  ret %union.tree_node* %retval.0, !dbg !2967
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local %union.tree_node* @signed_or_unsigned_type_for(i32, %union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @tree_int_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_complex_expr(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !2968 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !2970, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !2971, metadata !DIExpression()), !dbg !2975
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2976
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2976
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2972, metadata !DIExpression()), !dbg !2975
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2977
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2977
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2973, metadata !DIExpression()), !dbg !2975
  %arrayidx4 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2978
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8, !dbg !2978
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2974, metadata !DIExpression()), !dbg !2975
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2979
  %bf.load = load i64, i64* %3, align 8, !dbg !2979
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2981
  %cmp = icmp eq i64 %bf.cast1, 116, !dbg !2981
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2982

land.lhs.true:                                    ; preds = %entry
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2983
  %bf.load6 = load i64, i64* %4, align 8, !dbg !2983
  %bf.cast83 = and i64 %bf.load6, 65535, !dbg !2984
  %cmp9 = icmp eq i64 %bf.cast83, 116, !dbg !2984
  br i1 %cmp9, label %land.lhs.true10, label %if.end, !dbg !2985

land.lhs.true10:                                  ; preds = %land.lhs.true
  %type12 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2986
  %5 = load %union.tree_node*, %union.tree_node** %type12, align 8, !dbg !2986
  %type14 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2987
  %6 = load %union.tree_node*, %union.tree_node** %type14, align 8, !dbg !2987
  %cmp15 = icmp eq %union.tree_node* %5, %6, !dbg !2988
  br i1 %cmp15, label %land.lhs.true16, label %if.end, !dbg !2989

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %type18 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2990
  %7 = load %union.tree_node*, %union.tree_node** %type18, align 8, !dbg !2990
  %cmp21 = icmp eq %union.tree_node* %7, %5, !dbg !2991
  br i1 %cmp21, label %land.lhs.true22, label %if.end, !dbg !2992

land.lhs.true22:                                  ; preds = %land.lhs.true16
  %operands24 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2993
  %8 = bitcast %union.tree_node** %operands24 to i64**, !dbg !2993
  %9 = load i64*, i64** %8, align 8, !dbg !2993
  %bf.load27 = load i64, i64* %9, align 8, !dbg !2993
  %bf.cast294 = and i64 %bf.load27, 65535, !dbg !2994
  %cmp30 = icmp eq i64 %bf.cast294, 43, !dbg !2994
  br i1 %cmp30, label %land.lhs.true31, label %if.end, !dbg !2995

land.lhs.true31:                                  ; preds = %land.lhs.true22
  %operands33 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2996
  %10 = bitcast %union.tree_node** %operands33 to i64**, !dbg !2996
  %11 = load i64*, i64** %10, align 8, !dbg !2996
  %bf.load36 = load i64, i64* %11, align 8, !dbg !2996
  %bf.cast385 = and i64 %bf.load36, 65535, !dbg !2997
  %cmp39 = icmp eq i64 %bf.cast385, 44, !dbg !2997
  br i1 %cmp39, label %land.lhs.true40, label %if.end, !dbg !2998

land.lhs.true40:                                  ; preds = %land.lhs.true31
  %arrayidx46 = getelementptr inbounds i64, i64* %9, i64 5, !dbg !2999
  %12 = bitcast i64* %arrayidx46 to %union.tree_node**, !dbg !2999
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8, !dbg !2999
  %arrayidx52 = getelementptr inbounds i64, i64* %11, i64 5, !dbg !3000
  %14 = bitcast i64* %arrayidx52 to %union.tree_node**, !dbg !3000
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8, !dbg !3000
  %cmp53 = icmp eq %union.tree_node* %13, %15, !dbg !3001
  br i1 %cmp53, label %if.then, label %if.end, !dbg !3002

if.then:                                          ; preds = %land.lhs.true40
  %16 = bitcast %union.tree_node** %operands24 to %struct.tree_exp**, !dbg !2999
  tail call fastcc void @pp_c_type_cast(%struct.c_pretty_print_info* %pp, %union.tree_node* %0) #7, !dbg !3003
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !3005
  %17 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !3005
  %18 = load %struct.tree_exp*, %struct.tree_exp** %16, align 8, !dbg !3005
  %arrayidx59 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %18, i64 0, i32 3, i64 0, !dbg !3005
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx59, align 8, !dbg !3005
  tail call void %17(%struct.c_pretty_print_info* %pp, %union.tree_node* %19) #6, !dbg !3005
  br label %cleanup.cont, !dbg !3006

if.end:                                           ; preds = %land.lhs.true40, %land.lhs.true31, %land.lhs.true22, %land.lhs.true16, %land.lhs.true10, %land.lhs.true, %entry
  %call = tail call i32 @integer_zerop(%union.tree_node* %2) #6, !dbg !3007
  %tobool = icmp eq i32 %call, 0, !dbg !3007
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true62, !dbg !3009

lor.lhs.false:                                    ; preds = %if.end
  %call60 = tail call i32 @real_zerop(%union.tree_node* %2) #6, !dbg !3010
  %tobool61 = icmp eq i32 %call60, 0, !dbg !3010
  br i1 %tobool61, label %if.end80, label %land.lhs.true62, !dbg !3011

land.lhs.true62:                                  ; preds = %lor.lhs.false, %if.end
  %type64 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3012
  %20 = load %union.tree_node*, %union.tree_node** %type64, align 8, !dbg !3012
  %type66 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3013
  %21 = load %union.tree_node*, %union.tree_node** %type66, align 8, !dbg !3013
  %cmp67 = icmp eq %union.tree_node* %20, %21, !dbg !3014
  br i1 %cmp67, label %if.then68, label %if.end80, !dbg !3015

if.then68:                                        ; preds = %land.lhs.true62
  tail call fastcc void @pp_c_type_cast(%struct.c_pretty_print_info* %pp, %union.tree_node* %0) #7, !dbg !3016
  %bf.load70 = load i64, i64* %3, align 8, !dbg !3018
  %bf.cast722 = and i64 %bf.load70, 65535, !dbg !3020
  %cmp73 = icmp eq i64 %bf.cast722, 116, !dbg !3020
  br i1 %cmp73, label %if.then74, label %if.end78, !dbg !3021

if.then74:                                        ; preds = %if.then68
  %operands76 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3022
  %22 = load %union.tree_node*, %union.tree_node** %operands76, align 8, !dbg !3022
  call void @llvm.dbg.value(metadata %union.tree_node* %22, metadata !2973, metadata !DIExpression()), !dbg !2975
  br label %if.end78, !dbg !3023

if.end78:                                         ; preds = %if.then74, %if.then68
  %realexpr.0 = phi %union.tree_node* [ %22, %if.then74 ], [ %1, %if.then68 ], !dbg !2975
  call void @llvm.dbg.value(metadata %union.tree_node* %realexpr.0, metadata !2973, metadata !DIExpression()), !dbg !2975
  %expression79 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !3024
  %23 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression79, align 8, !dbg !3024
  tail call void %23(%struct.c_pretty_print_info* %pp, %union.tree_node* %realexpr.0) #6, !dbg !3024
  br label %cleanup.cont, !dbg !3025

if.end80:                                         ; preds = %lor.lhs.false, %land.lhs.true62
  tail call fastcc void @pp_c_compound_literal(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3026
  br label %cleanup.cont, !dbg !3027

cleanup.cont:                                     ; preds = %if.then, %if.end78, %if.end80
  ret void, !dbg !3027
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_expression_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) local_unnamed_addr #4 !dbg !3028 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3031, metadata !DIExpression()), !dbg !3032
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !3033
  %base = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3037
  br label %for.cond, !dbg !3040

for.cond:                                         ; preds = %for.inc, %entry
  %e.addr.0 = phi %union.tree_node* [ %e, %entry ], [ %4, %for.inc ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.addr.0, metadata !3031, metadata !DIExpression()), !dbg !3032
  %cmp = icmp eq %union.tree_node* %e.addr.0, null, !dbg !3041
  br i1 %cmp, label %for.end, label %for.body, !dbg !3042

for.body:                                         ; preds = %for.cond
  %0 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !3043
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %e.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3043
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !3043
  tail call void %0(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #6, !dbg !3043
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %e.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3044
  %3 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3044
  %tobool = icmp eq %union.tree_node* %3, null, !dbg !3044
  br i1 %tobool, label %for.inc, label %do.body, !dbg !3045

do.body:                                          ; preds = %for.body
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 44) #6, !dbg !3046
  tail call void @pp_base_character(%struct.pretty_print_info* %base, i32 32) #6, !dbg !3046
  %.pre = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3047
  br label %for.inc, !dbg !3046

for.inc:                                          ; preds = %for.body, %do.body
  %4 = phi %union.tree_node* [ null, %for.body ], [ %.pre, %do.body ], !dbg !3047
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3031, metadata !DIExpression()), !dbg !3032
  br label %for.cond, !dbg !3048, !llvm.loop !3049

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3051
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_constructor_elts(%struct.c_pretty_print_info* %pp, %struct.VEC_constructor_elt_gc* %v) local_unnamed_addr #4 !dbg !3052 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3056, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata %struct.VEC_constructor_elt_gc* %v, metadata !3057, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 0, metadata !3058, metadata !DIExpression()), !dbg !3060
  %base = getelementptr inbounds %struct.VEC_constructor_elt_gc, %struct.VEC_constructor_elt_gc* %v, i64 0, i32 0, !dbg !3061
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !3064
  %base26 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3066
  br label %for.cond, !dbg !3069

for.cond:                                         ; preds = %for.inc, %entry
  %ix.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3070
  %value.0 = phi %union.tree_node* [ undef, %entry ], [ %value.1, %for.inc ]
  call void @llvm.dbg.value(metadata %union.tree_node* %value.0, metadata !3059, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %ix.0, metadata !3058, metadata !DIExpression()), !dbg !3060
  %call = tail call fastcc i32 @VEC_constructor_elt_base_length(%struct.VEC_constructor_elt_base* %base) #7, !dbg !3071
  %conv = zext i32 %call to i64, !dbg !3071
  %cmp = icmp ult i64 %ix.0, %conv, !dbg !3071
  br i1 %cmp, label %cond.false3, label %cond.end13, !dbg !3071

cond.false3:                                      ; preds = %for.cond
  %conv10 = trunc i64 %ix.0 to i32, !dbg !3071
  %call11 = tail call fastcc %struct.constructor_elt_d* @VEC_constructor_elt_base_index(%struct.VEC_constructor_elt_base* %base, i32 %conv10) #7, !dbg !3071
  %value12 = getelementptr inbounds %struct.constructor_elt_d, %struct.constructor_elt_d* %call11, i64 0, i32 1, !dbg !3071
  %0 = load %union.tree_node*, %union.tree_node** %value12, align 8, !dbg !3071
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3059, metadata !DIExpression()), !dbg !3060
  br label %cond.end13, !dbg !3071

cond.end13:                                       ; preds = %for.cond, %cond.false3
  %value.1 = phi %union.tree_node* [ %0, %cond.false3 ], [ %value.0, %for.cond ]
  %cond14 = phi i1 [ true, %cond.false3 ], [ false, %for.cond ]
  call void @llvm.dbg.value(metadata %union.tree_node* %value.1, metadata !3059, metadata !DIExpression()), !dbg !3060
  br i1 %cond14, label %for.body, label %for.end, !dbg !3069

for.body:                                         ; preds = %cond.end13
  %1 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !3072
  tail call void %1(%struct.c_pretty_print_info* %pp, %union.tree_node* %value.1) #6, !dbg !3072
  %call22 = tail call fastcc i32 @VEC_constructor_elt_base_length(%struct.VEC_constructor_elt_base* %base) #7, !dbg !3073
  %sub = add i32 %call22, -1, !dbg !3074
  %conv23 = zext i32 %sub to i64, !dbg !3073
  %cmp24 = icmp eq i64 %ix.0, %conv23, !dbg !3075
  br i1 %cmp24, label %for.inc, label %do.body, !dbg !3076

do.body:                                          ; preds = %for.body
  tail call void @pp_base_character(%struct.pretty_print_info* %base26, i32 44) #6, !dbg !3077
  tail call void @pp_base_character(%struct.pretty_print_info* %base26, i32 32) #6, !dbg !3077
  br label %for.inc, !dbg !3077

for.inc:                                          ; preds = %for.body, %do.body
  %inc = add i64 %ix.0, 1, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3058, metadata !DIExpression()), !dbg !3060
  br label %for.cond, !dbg !3071, !llvm.loop !3078

for.end:                                          ; preds = %cond.end13
  ret void, !dbg !3080
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(%struct.VEC_constructor_elt_base* %vec_) unnamed_addr #0 !dbg !3081 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_constructor_elt_base* %vec_, metadata !3087, metadata !DIExpression()), !dbg !3088
  %tobool = icmp eq %struct.VEC_constructor_elt_base* %vec_, null, !dbg !3089
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3089

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_constructor_elt_base, %struct.VEC_constructor_elt_base* %vec_, i64 0, i32 0, !dbg !3089
  %0 = load i32, i32* %num, align 8, !dbg !3089
  br label %cond.end, !dbg !3089

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3089
  ret i32 %cond, !dbg !3089
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.constructor_elt_d* @VEC_constructor_elt_base_index(%struct.VEC_constructor_elt_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3090 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_constructor_elt_base* %vec_, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3097, metadata !DIExpression()), !dbg !3098
  br label %land.end, !dbg !3099

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3099
  %arrayidx = getelementptr inbounds %struct.VEC_constructor_elt_base, %struct.VEC_constructor_elt_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3099
  ret %struct.constructor_elt_d* %arrayidx, !dbg !3099
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_unary_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #4 !dbg !3100 {
entry:
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3105
  br label %tailrecurse, !dbg !3107

tailrecurse:                                      ; preds = %sw.bb, %entry
  %e.tr = phi %union.tree_node* [ %e, %entry ], [ %2, %sw.bb ]
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3102, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr, metadata !3103, metadata !DIExpression()), !dbg !3108
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3109
  %bf.load = load i64, i64* %0, align 8, !dbg !3109
  %1 = trunc i64 %bf.load to i32, !dbg !3109
  %bf.cast = and i32 %1, 65535, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3104, metadata !DIExpression()), !dbg !3108
  %trunc = trunc i64 %bf.load to i16, !dbg !3110
  switch i16 %trunc, label %sw.default [
    i16 126, label %sw.bb
    i16 125, label %sw.bb
    i16 44, label %sw.bb35
    i16 43, label %sw.bb35
    i16 121, label %land.lhs.true
    i16 47, label %if.then14.loopexit
    i16 79, label %if.then17.loopexit
    i16 90, label %if.then22.loopexit
    i16 124, label %if.then22.loopexit
    i16 96, label %if.then26.loopexit
  ], !dbg !3110

sw.bb:                                            ; preds = %tailrecurse, %tailrecurse
  %cmp = icmp eq i32 %bf.cast, 126, !dbg !3111
  %cond = select i1 %cmp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), !dbg !3111
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* %cond) #6, !dbg !3111
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3112
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3112
  br label %tailrecurse, !dbg !3107

land.lhs.true:                                    ; preds = %tailrecurse
  %e.tr.lcssa50 = phi %union.tree_node* [ %e.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa50, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa50, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa50, metadata !3103, metadata !DIExpression()), !dbg !3108
  %operands5 = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr.lcssa50, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3113
  %3 = bitcast %union.tree_node** %operands5 to i64**, !dbg !3113
  %4 = load i64*, i64** %3, align 8, !dbg !3113
  %bf.load8 = load i64, i64* %4, align 8, !dbg !3113
  %bf.cast101 = and i64 %bf.load8, 65535, !dbg !3115
  %cmp11 = icmp eq i64 %bf.cast101, 28, !dbg !3115
  br i1 %cmp11, label %if.else, label %if.then, !dbg !3116

if.then:                                          ; preds = %land.lhs.true
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 38) #6, !dbg !3117
  br label %if.end31, !dbg !3117

if.else:                                          ; preds = %land.lhs.true
  switch i16 121, label %if.end31 [
    i16 47, label %if.then14
    i16 79, label %if.then17
    i16 90, label %if.then22
    i16 124, label %if.then22
    i16 96, label %if.then26
  ], !dbg !3118

if.then14.loopexit:                               ; preds = %tailrecurse
  %e.tr.lcssa51 = phi %union.tree_node* [ %e.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa51, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa51, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa51, metadata !3103, metadata !DIExpression()), !dbg !3108
  br label %if.then14, !dbg !3119

if.then14:                                        ; preds = %if.then14.loopexit, %if.else
  %e.tr59 = phi %union.tree_node* [ %e.tr.lcssa51, %if.then14.loopexit ], [ %e.tr.lcssa50, %if.else ]
  tail call void @pp_c_star(%struct.c_pretty_print_info* %pp) #7, !dbg !3119
  br label %if.end31, !dbg !3119

if.then17.loopexit:                               ; preds = %tailrecurse
  %e.tr.lcssa52 = phi %union.tree_node* [ %e.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa52, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa52, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa52, metadata !3103, metadata !DIExpression()), !dbg !3108
  br label %if.then17, !dbg !3121

if.then17:                                        ; preds = %if.then17.loopexit, %if.else
  %e.tr58 = phi %union.tree_node* [ %e.tr.lcssa52, %if.then17.loopexit ], [ %e.tr.lcssa50, %if.else ]
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 45) #6, !dbg !3121
  br label %if.end31, !dbg !3121

if.then22.loopexit:                               ; preds = %tailrecurse, %tailrecurse
  %e.tr.lcssa53 = phi %union.tree_node* [ %e.tr, %tailrecurse ], [ %e.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa53, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa53, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa53, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa53, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa53, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa53, metadata !3103, metadata !DIExpression()), !dbg !3108
  br label %if.then22, !dbg !3123

if.then22:                                        ; preds = %if.then22.loopexit, %if.else, %if.else
  %e.tr57 = phi %union.tree_node* [ %e.tr.lcssa53, %if.then22.loopexit ], [ %e.tr.lcssa50, %if.else ], [ %e.tr.lcssa50, %if.else ]
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 126) #6, !dbg !3123
  br label %if.end31, !dbg !3123

if.then26.loopexit:                               ; preds = %tailrecurse
  %e.tr.lcssa54 = phi %union.tree_node* [ %e.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa54, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa54, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa54, metadata !3103, metadata !DIExpression()), !dbg !3108
  br label %if.then26, !dbg !3125

if.then26:                                        ; preds = %if.then26.loopexit, %if.else
  %e.tr56 = phi %union.tree_node* [ %e.tr.lcssa54, %if.then26.loopexit ], [ %e.tr.lcssa50, %if.else ]
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 33) #6, !dbg !3125
  br label %if.end31, !dbg !3125

if.end31:                                         ; preds = %if.then14, %if.then22, %if.else, %if.then26, %if.then17, %if.then
  %e.tr55 = phi %union.tree_node* [ %e.tr59, %if.then14 ], [ %e.tr57, %if.then22 ], [ %e.tr.lcssa50, %if.else ], [ %e.tr56, %if.then26 ], [ %e.tr58, %if.then17 ], [ %e.tr.lcssa50, %if.then ]
  %operands33 = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr55, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3127
  %5 = load %union.tree_node*, %union.tree_node** %operands33, align 8, !dbg !3127
  tail call void @pp_c_cast_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %5) #7, !dbg !3128
  br label %sw.epilog, !dbg !3129

sw.bb35:                                          ; preds = %tailrecurse, %tailrecurse
  %e.tr.lcssa49 = phi %union.tree_node* [ %e.tr, %tailrecurse ], [ %e.tr, %tailrecurse ]
  %bf.cast.lcssa43 = phi i32 [ %bf.cast, %tailrecurse ], [ %bf.cast, %tailrecurse ], !dbg !3109
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa49, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa49, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa49, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa49, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa49, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa49, metadata !3103, metadata !DIExpression()), !dbg !3108
  %cmp36 = icmp eq i32 %bf.cast.lcssa43, 43, !dbg !3130
  %cond37 = select i1 %cmp36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), !dbg !3131
  tail call void @pp_c_ws_string(%struct.c_pretty_print_info* %pp, i8* %cond37) #7, !dbg !3132
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3133
  %unary_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 22, !dbg !3134
  %6 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %unary_expression, align 8, !dbg !3134
  %operands39 = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr.lcssa49, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3134
  %7 = load %union.tree_node*, %union.tree_node** %operands39, align 8, !dbg !3134
  tail call void %6(%struct.c_pretty_print_info* %pp, %union.tree_node* %7) #6, !dbg !3134
  br label %sw.epilog, !dbg !3135

sw.default:                                       ; preds = %tailrecurse
  %e.tr.lcssa = phi %union.tree_node* [ %e.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa, metadata !3103, metadata !DIExpression()), !dbg !3108
  %postfix_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 21, !dbg !3136
  %8 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %postfix_expression, align 8, !dbg !3136
  tail call void %8(%struct.c_pretty_print_info* %pp, %union.tree_node* %e.tr.lcssa) #6, !dbg !3136
  br label %sw.epilog, !dbg !3137

sw.epilog:                                        ; preds = %sw.default, %sw.bb35, %if.end31
  ret void, !dbg !3138
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_cast_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) local_unnamed_addr #4 !dbg !3139 {
entry:
  br label %tailrecurse, !dbg !3143

tailrecurse:                                      ; preds = %sw.bb, %entry
  %e.tr = phi %union.tree_node* [ %e, %entry ], [ %3, %sw.bb ]
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3141, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr, metadata !3142, metadata !DIExpression()), !dbg !3145
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3146
  %bf.load = load i64, i64* %0, align 8, !dbg !3146
  %1 = trunc i64 %bf.load to i16, !dbg !3146
  switch i16 %1, label %sw.default [
    i16 78, label %sw.bb
    i16 77, label %sw.bb
    i16 116, label %sw.bb
    i16 113, label %sw.bb
    i16 118, label %sw.bb
  ], !dbg !3147

sw.bb:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3148
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3148
  tail call fastcc void @pp_c_type_cast(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !3149
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3150
  %3 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3150
  br label %tailrecurse, !dbg !3143

sw.default:                                       ; preds = %tailrecurse
  %e.tr.lcssa = phi %union.tree_node* [ %e.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa, metadata !3142, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa, metadata !3142, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa, metadata !3142, metadata !DIExpression()), !dbg !3145
  %unary_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 22, !dbg !3151
  %4 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %unary_expression, align 8, !dbg !3151
  tail call void %4(%struct.c_pretty_print_info* %pp, %union.tree_node* %e.tr.lcssa) #6, !dbg !3151
  ret void, !dbg !3152
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_type_cast(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) unnamed_addr #4 !dbg !3153 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3156, metadata !DIExpression()), !dbg !3157
  tail call void @pp_c_left_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !3158
  %type_id = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 12, !dbg !3159
  %0 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %type_id, align 8, !dbg !3159
  tail call void %0(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #6, !dbg !3159
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !3160
  ret void, !dbg !3161
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_logical_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) local_unnamed_addr #4 !dbg !3162 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3164, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3165, metadata !DIExpression()), !dbg !3166
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3167
  %bf.load = load i64, i64* %0, align 8, !dbg !3167
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3169
  %cmp = icmp eq i64 %bf.cast1, 92, !dbg !3169
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3170

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 94, !dbg !3171
  br i1 %cmp5, label %if.then, label %if.else, !dbg !3172

if.then:                                          ; preds = %lor.lhs.false, %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3173
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3173
  tail call void @pp_c_logical_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %1) #7, !dbg !3175
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3176
  %base6 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3177
  tail call void @pp_base_string(%struct.pretty_print_info* %base6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0)) #6, !dbg !3177
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3178
  %arrayidx9 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3179
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8, !dbg !3179
  tail call fastcc void @pp_c_logical_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !3180
  ret void, !dbg !3181

if.else:                                          ; preds = %lor.lhs.false
  tail call fastcc void @pp_c_logical_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3182
  ret void, !dbg !3181
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_logical_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !3183 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3185, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3186, metadata !DIExpression()), !dbg !3187
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3188
  %bf.load = load i64, i64* %0, align 8, !dbg !3188
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3190
  %cmp = icmp eq i64 %bf.cast1, 91, !dbg !3190
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3191

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 93, !dbg !3192
  br i1 %cmp5, label %if.then, label %if.else, !dbg !3193

if.then:                                          ; preds = %lor.lhs.false, %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3194
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3194
  tail call fastcc void @pp_c_logical_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %1) #7, !dbg !3196
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3197
  %base6 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3198
  tail call void @pp_base_string(%struct.pretty_print_info* %base6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0)) #6, !dbg !3198
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3199
  %arrayidx9 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3200
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8, !dbg !3200
  tail call fastcc void @pp_c_inclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !3201
  ret void, !dbg !3202

if.else:                                          ; preds = %lor.lhs.false
  tail call fastcc void @pp_c_inclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3203
  ret void, !dbg !3202
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_shift_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !3204 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3206, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3207, metadata !DIExpression()), !dbg !3209
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3210
  %bf.load = load i64, i64* %0, align 8, !dbg !3210
  %1 = trunc i64 %bf.load to i32, !dbg !3210
  %bf.cast = and i32 %1, 65535, !dbg !3210
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3208, metadata !DIExpression()), !dbg !3209
  %bf.cast.off = add nsw i32 %bf.cast, -83, !dbg !3211
  %switch = icmp ult i32 %bf.cast.off, 2, !dbg !3211
  br i1 %switch, label %sw.bb, label %sw.default, !dbg !3211

sw.bb:                                            ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3212
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3212
  tail call fastcc void @pp_c_shift_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !3214
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3215
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3216
  %cmp = icmp eq i32 %bf.cast, 83, !dbg !3216
  %cond = select i1 %cmp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0), !dbg !3216
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* %cond) #6, !dbg !3216
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3217
  %arrayidx4 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3218
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8, !dbg !3218
  tail call fastcc void @pp_c_additive_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %3) #7, !dbg !3219
  ret void, !dbg !3220

sw.default:                                       ; preds = %entry
  tail call fastcc void @pp_c_additive_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3221
  ret void, !dbg !3220
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_relational_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !3222 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3224, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3225, metadata !DIExpression()), !dbg !3227
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3228
  %bf.load = load i64, i64* %0, align 8, !dbg !3228
  %1 = trunc i64 %bf.load to i32, !dbg !3228
  %bf.cast = and i32 %1, 65535, !dbg !3228
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3226, metadata !DIExpression()), !dbg !3227
  %bf.cast.off = add nsw i32 %bf.cast, -97, !dbg !3229
  %switch = icmp ult i32 %bf.cast.off, 4, !dbg !3229
  br i1 %switch, label %sw.bb, label %sw.default, !dbg !3229

sw.bb:                                            ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3230
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3230
  tail call fastcc void @pp_c_relational_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !3232
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3233
  %trunc = trunc i64 %bf.load to i16, !dbg !3234
  switch i16 %trunc, label %if.end15 [
    i16 97, label %if.then
    i16 99, label %if.then3
    i16 98, label %if.then7
    i16 100, label %if.then11
  ], !dbg !3234

if.then:                                          ; preds = %sw.bb
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3235
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 60) #6, !dbg !3235
  br label %if.end15, !dbg !3235

if.then3:                                         ; preds = %sw.bb
  %base4 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3237
  tail call void @pp_base_character(%struct.pretty_print_info* %base4, i32 62) #6, !dbg !3237
  br label %if.end15, !dbg !3237

if.then7:                                         ; preds = %sw.bb
  %base8 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3239
  tail call void @pp_base_string(%struct.pretty_print_info* %base8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i64 0, i64 0)) #6, !dbg !3239
  br label %if.end15, !dbg !3239

if.then11:                                        ; preds = %sw.bb
  %base12 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3241
  tail call void @pp_base_string(%struct.pretty_print_info* %base12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0)) #6, !dbg !3241
  br label %if.end15, !dbg !3241

if.end15:                                         ; preds = %if.then3, %if.then11, %sw.bb, %if.then7, %if.then
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3243
  %arrayidx18 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3244
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx18, align 8, !dbg !3244
  tail call fastcc void @pp_c_shift_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %3) #7, !dbg !3245
  br label %sw.epilog, !dbg !3246

sw.default:                                       ; preds = %entry
  tail call fastcc void @pp_c_shift_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3247
  br label %sw.epilog, !dbg !3248

sw.epilog:                                        ; preds = %sw.default, %if.end15
  ret void, !dbg !3249
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !3250 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3252, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3253, metadata !DIExpression()), !dbg !3254
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3255
  %bf.load = load i64, i64* %0, align 8, !dbg !3255
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3257
  %cmp = icmp eq i64 %bf.cast1, 89, !dbg !3257
  br i1 %cmp, label %if.then, label %if.else, !dbg !3258

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3259
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3259
  tail call fastcc void @pp_c_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %1) #7, !dbg !3261
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3262
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3263
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 38) #6, !dbg !3263
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3264
  %arrayidx4 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3265
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8, !dbg !3265
  tail call fastcc void @pp_c_equality_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !3266
  ret void, !dbg !3267

if.else:                                          ; preds = %entry
  tail call fastcc void @pp_c_equality_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3268
  ret void, !dbg !3267
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_exclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !3269 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3272, metadata !DIExpression()), !dbg !3273
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3274
  %bf.load = load i64, i64* %0, align 8, !dbg !3274
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3276
  %cmp = icmp eq i64 %bf.cast1, 88, !dbg !3276
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3277

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 95, !dbg !3278
  br i1 %cmp5, label %if.then, label %if.else20, !dbg !3279

if.then:                                          ; preds = %lor.lhs.false, %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3280
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3280
  tail call fastcc void @pp_c_exclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %1) #7, !dbg !3282
  %bf.load7 = load i64, i64* %0, align 8, !dbg !3283
  %bf.cast93 = and i64 %bf.load7, 65535, !dbg !3285
  %cmp10 = icmp eq i64 %bf.cast93, 88, !dbg !3285
  br i1 %cmp10, label %do.body, label %if.else, !dbg !3286

do.body:                                          ; preds = %if.then
  %padding = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 2, !dbg !3287
  %2 = load i32, i32* %padding, align 8, !dbg !3287
  %cmp13 = icmp eq i32 %2, 1, !dbg !3287
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3290

if.then14:                                        ; preds = %do.body
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3287
  br label %if.end15, !dbg !3287

if.else:                                          ; preds = %if.then
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3291
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.body, %if.else
  %base16 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3292
  tail call void @pp_base_character(%struct.pretty_print_info* %base16, i32 94) #6, !dbg !3292
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3293
  %arrayidx19 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3294
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8, !dbg !3294
  tail call fastcc void @pp_c_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %3) #7, !dbg !3295
  br label %if.end21, !dbg !3296

if.else20:                                        ; preds = %lor.lhs.false
  tail call fastcc void @pp_c_and_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3297
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.end15
  ret void, !dbg !3298
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_inclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !3299 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3301, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3302, metadata !DIExpression()), !dbg !3303
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3304
  %bf.load = load i64, i64* %0, align 8, !dbg !3304
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3306
  %cmp = icmp eq i64 %bf.cast1, 87, !dbg !3306
  br i1 %cmp, label %if.then, label %if.else, !dbg !3307

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3308
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3308
  tail call fastcc void @pp_c_exclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %1) #7, !dbg !3310
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3311
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3312
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 124) #6, !dbg !3312
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3313
  %arrayidx4 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3314
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8, !dbg !3314
  tail call fastcc void @pp_c_exclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !3315
  br label %if.end, !dbg !3316

if.else:                                          ; preds = %entry
  tail call fastcc void @pp_c_exclusive_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3317
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3318
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_equality_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !3319 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3321, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3322, metadata !DIExpression()), !dbg !3324
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3325
  %bf.load = load i64, i64* %0, align 8, !dbg !3325
  %1 = trunc i64 %bf.load to i32, !dbg !3325
  %bf.cast = and i32 %1, 65535, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3323, metadata !DIExpression()), !dbg !3324
  %bf.cast.off = add nsw i32 %bf.cast, -101, !dbg !3326
  %switch = icmp ult i32 %bf.cast.off, 2, !dbg !3326
  br i1 %switch, label %sw.bb, label %sw.default, !dbg !3326

sw.bb:                                            ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3327
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3327
  tail call fastcc void @pp_c_equality_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !3329
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3330
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3331
  %cmp = icmp eq i32 %bf.cast, 101, !dbg !3331
  %cond = select i1 %cmp, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), !dbg !3331
  tail call void @pp_base_string(%struct.pretty_print_info* %base1, i8* %cond) #6, !dbg !3331
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3332
  %arrayidx4 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3333
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8, !dbg !3333
  tail call fastcc void @pp_c_relational_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %3) #7, !dbg !3334
  ret void, !dbg !3335

sw.default:                                       ; preds = %entry
  tail call fastcc void @pp_c_relational_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3336
  ret void, !dbg !3335
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_additive_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !3337 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3340, metadata !DIExpression()), !dbg !3342
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3343
  %bf.load = load i64, i64* %0, align 8, !dbg !3343
  %trunc = trunc i64 %bf.load to i16, !dbg !3344
  switch i16 %trunc, label %sw.default [
    i16 66, label %sw.bb
    i16 63, label %sw.bb
    i16 64, label %sw.bb
  ], !dbg !3344

sw.bb:                                            ; preds = %entry, %entry, %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3345
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3345
  tail call fastcc void @pp_c_additive_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %1) #7, !dbg !3347
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3348
  switch i16 %trunc, label %if.else [
    i16 63, label %if.then
    i16 66, label %if.then
  ], !dbg !3349

if.then:                                          ; preds = %sw.bb, %sw.bb
  %base2 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3351
  tail call void @pp_base_character(%struct.pretty_print_info* %base2, i32 43) #6, !dbg !3351
  br label %if.end, !dbg !3351

if.else:                                          ; preds = %sw.bb
  %base3 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3352
  tail call void @pp_base_character(%struct.pretty_print_info* %base3, i32 45) #6, !dbg !3352
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3353
  %multiplicative_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 23, !dbg !3354
  %2 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %multiplicative_expression, align 8, !dbg !3354
  %arrayidx6 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3354
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx6, align 8, !dbg !3354
  tail call void %2(%struct.c_pretty_print_info* %pp, %union.tree_node* %3) #6, !dbg !3354
  br label %sw.epilog, !dbg !3355

sw.default:                                       ; preds = %entry
  %multiplicative_expression7 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 23, !dbg !3356
  %4 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %multiplicative_expression7, align 8, !dbg !3356
  tail call void %4(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #6, !dbg !3356
  br label %sw.epilog, !dbg !3357

sw.epilog:                                        ; preds = %sw.default, %if.end
  ret void, !dbg !3358
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_statement(%struct.c_pretty_print_info* %pp, %union.tree_node* %stmt) #4 !dbg !3359 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3361, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata %union.tree_node* %stmt, metadata !3362, metadata !DIExpression()), !dbg !3363
  %cmp = icmp eq %union.tree_node* %stmt, null, !dbg !3364
  br i1 %cmp, label %return, label %if.end, !dbg !3366

if.end:                                           ; preds = %entry
  %need_newline = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 8, !dbg !3367
  %0 = load i8, i8* %need_newline, align 1, !dbg !3367
  %tobool = icmp eq i8 %0, 0, !dbg !3367
  br i1 %tobool, label %if.end7, label %do.body, !dbg !3369

do.body:                                          ; preds = %if.end
  %base3 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3370
  tail call void @pp_base_newline(%struct.pretty_print_info* %base3) #6, !dbg !3370
  tail call void @pp_base_indent(%struct.pretty_print_info* %base3) #6, !dbg !3370
  store i8 0, i8* %need_newline, align 1, !dbg !3370
  br label %if.end7, !dbg !3370

if.end7:                                          ; preds = %if.end, %do.body
  %base8 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3372
  %indent_skip10 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 4, !dbg !3373
  %1 = load i32, i32* %indent_skip10, align 8, !dbg !3373
  %call = tail call i32 @dump_generic_node(%struct.pretty_print_info* %base8, %union.tree_node* nonnull %stmt, i32 %1, i32 0, i8 zeroext 1) #6, !dbg !3374
  br label %return, !dbg !3375

return:                                           ; preds = %entry, %if.end7
  ret void, !dbg !3375
}

declare dso_local void @pp_base_indent(%struct.pretty_print_info*) local_unnamed_addr #1

declare dso_local i32 @dump_generic_node(%struct.pretty_print_info*, %union.tree_node*, i32, i32, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_c_pretty_printer_init(%struct.c_pretty_print_info* %pp) local_unnamed_addr #4 !dbg !3376 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3378, metadata !DIExpression()), !dbg !3379
  %offset_list = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 1, !dbg !3380
  store i32* null, i32** %offset_list, align 8, !dbg !3381
  %declaration = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 3, !dbg !3382
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_declaration, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declaration, align 8, !dbg !3383
  %declaration_specifiers = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 4, !dbg !3384
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_declaration_specifiers, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declaration_specifiers, align 8, !dbg !3385
  %declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 5, !dbg !3386
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_declarator, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declarator, align 8, !dbg !3387
  %direct_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 9, !dbg !3388
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_direct_declarator, void (%struct.c_pretty_print_info*, %union.tree_node*)** %direct_declarator, align 8, !dbg !3389
  %type_specifier_seq = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 8, !dbg !3390
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_specifier_qualifier_list, void (%struct.c_pretty_print_info*, %union.tree_node*)** %type_specifier_seq, align 8, !dbg !3391
  %abstract_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 6, !dbg !3392
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_abstract_declarator, void (%struct.c_pretty_print_info*, %union.tree_node*)** %abstract_declarator, align 8, !dbg !3393
  %direct_abstract_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 7, !dbg !3394
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_direct_abstract_declarator, void (%struct.c_pretty_print_info*, %union.tree_node*)** %direct_abstract_declarator, align 8, !dbg !3395
  %ptr_operator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 10, !dbg !3396
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_pointer, void (%struct.c_pretty_print_info*, %union.tree_node*)** %ptr_operator, align 8, !dbg !3397
  %parameter_list = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 11, !dbg !3398
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_parameter_type_list, void (%struct.c_pretty_print_info*, %union.tree_node*)** %parameter_list, align 8, !dbg !3399
  %type_id = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 12, !dbg !3400
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_type_id, void (%struct.c_pretty_print_info*, %union.tree_node*)** %type_id, align 8, !dbg !3401
  %simple_type_specifier = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 13, !dbg !3402
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_type_specifier, void (%struct.c_pretty_print_info*, %union.tree_node*)** %simple_type_specifier, align 8, !dbg !3403
  %function_specifier = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 14, !dbg !3404
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_function_specifier, void (%struct.c_pretty_print_info*, %union.tree_node*)** %function_specifier, align 8, !dbg !3405
  %storage_class_specifier = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 15, !dbg !3406
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_storage_class_specifier, void (%struct.c_pretty_print_info*, %union.tree_node*)** %storage_class_specifier, align 8, !dbg !3407
  %statement = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 17, !dbg !3408
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_statement, void (%struct.c_pretty_print_info*, %union.tree_node*)** %statement, align 8, !dbg !3409
  %constant = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 18, !dbg !3410
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_constant, void (%struct.c_pretty_print_info*, %union.tree_node*)** %constant, align 8, !dbg !3411
  %id_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 19, !dbg !3412
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_id_expression, void (%struct.c_pretty_print_info*, %union.tree_node*)** %id_expression, align 8, !dbg !3413
  %primary_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 20, !dbg !3414
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_primary_expression, void (%struct.c_pretty_print_info*, %union.tree_node*)** %primary_expression, align 8, !dbg !3415
  %postfix_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 21, !dbg !3416
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_postfix_expression, void (%struct.c_pretty_print_info*, %union.tree_node*)** %postfix_expression, align 8, !dbg !3417
  %unary_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 22, !dbg !3418
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_unary_expression, void (%struct.c_pretty_print_info*, %union.tree_node*)** %unary_expression, align 8, !dbg !3419
  %initializer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 16, !dbg !3420
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_initializer, void (%struct.c_pretty_print_info*, %union.tree_node*)** %initializer, align 8, !dbg !3421
  %multiplicative_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 23, !dbg !3422
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_multiplicative_expression, void (%struct.c_pretty_print_info*, %union.tree_node*)** %multiplicative_expression, align 8, !dbg !3423
  %conditional_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 24, !dbg !3424
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_conditional_expression, void (%struct.c_pretty_print_info*, %union.tree_node*)** %conditional_expression, align 8, !dbg !3425
  %assignment_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 25, !dbg !3426
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_assignment_expression, void (%struct.c_pretty_print_info*, %union.tree_node*)** %assignment_expression, align 8, !dbg !3427
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !3428
  store void (%struct.c_pretty_print_info*, %union.tree_node*)* @pp_c_expression, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !3429
  ret void, !dbg !3430
}

; Function Attrs: nounwind uwtable
define internal void @pp_c_abstract_declarator(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !3431 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3433, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3434, metadata !DIExpression()), !dbg !3435
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3436
  %bf.load = load i64, i64* %0, align 8, !dbg !3436
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3438
  %cmp = icmp eq i64 %bf.cast1, 10, !dbg !3438
  br i1 %cmp, label %if.then, label %if.end16, !dbg !3439

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3440
  %1 = bitcast %union.tree_node** %type to i64**, !dbg !3440
  %2 = load i64*, i64** %1, align 8, !dbg !3440
  %bf.load2 = load i64, i64* %2, align 8, !dbg !3440
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !3443
  %cmp5 = icmp eq i64 %bf.cast42, 15, !dbg !3443
  br i1 %cmp5, label %if.then13, label %lor.lhs.false, !dbg !3444

lor.lhs.false:                                    ; preds = %if.then
  %3 = bitcast i64* %2 to %union.tree_node*, !dbg !3444
  %cmp12 = icmp eq i64 %bf.cast42, 20, !dbg !3445
  br i1 %cmp12, label %if.then13, label %if.end, !dbg !3446

if.then13:                                        ; preds = %lor.lhs.false, %if.then
  tail call void @pp_c_right_paren(%struct.c_pretty_print_info* %pp) #7, !dbg !3447
  %.pre = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3448
  br label %if.end, !dbg !3447

if.end:                                           ; preds = %if.then13, %lor.lhs.false
  %4 = phi %union.tree_node* [ %.pre, %if.then13 ], [ %3, %lor.lhs.false ], !dbg !3448
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !3434, metadata !DIExpression()), !dbg !3435
  br label %if.end16, !dbg !3449

if.end16:                                         ; preds = %if.end, %entry
  %t.addr.0 = phi %union.tree_node* [ %4, %if.end ], [ %t, %entry ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0, metadata !3434, metadata !DIExpression()), !dbg !3435
  %direct_abstract_declarator = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 7, !dbg !3450
  %5 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %direct_abstract_declarator, align 8, !dbg !3450
  tail call void %5(%struct.c_pretty_print_info* %pp, %union.tree_node* %t.addr.0) #6, !dbg !3450
  ret void, !dbg !3451
}

; Function Attrs: nounwind uwtable
define internal void @pp_c_pointer(%struct.c_pretty_print_info* %pp, %union.tree_node* %t) #4 !dbg !3452 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3454, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3455, metadata !DIExpression()), !dbg !3456
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3457
  %bf.load = load i64, i64* %0, align 8, !dbg !3457
  %bf.cast = and i64 %bf.load, 65535, !dbg !3457
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3457
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3457
  %cmp = icmp eq i32 %1, 2, !dbg !3457
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3459

land.lhs.true:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast, 35, !dbg !3460
  br i1 %cmp5, label %if.end, label %if.then, !dbg !3461

if.then:                                          ; preds = %land.lhs.true
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3462
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3462
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3455, metadata !DIExpression()), !dbg !3456
  %.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3456
  %bf.load7.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !3463
  br label %if.end, !dbg !3464

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  %bf.load33 = phi i64 [ %bf.load, %entry ], [ %bf.load7.pre, %if.then ], [ %bf.load, %land.lhs.true ], !dbg !3463
  %t.addr.0 = phi %union.tree_node* [ %t, %entry ], [ %2, %if.then ], [ %t, %land.lhs.true ]
  call void @llvm.dbg.value(metadata %union.tree_node* %t.addr.0, metadata !3455, metadata !DIExpression()), !dbg !3456
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3463
  %4 = trunc i64 %bf.load33 to i16, !dbg !3463
  switch i16 %4, label %sw.default [
    i16 10, label %sw.bb
    i16 12, label %sw.bb
    i16 132, label %sw.bb28
  ], !dbg !3465

sw.bb:                                            ; preds = %if.end, %if.end
  %type11 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3466
  %5 = bitcast %union.tree_node** %type11 to i64**, !dbg !3466
  %6 = load i64*, i64** %5, align 8, !dbg !3466
  %bf.load13 = load i64, i64* %6, align 8, !dbg !3466
  %bf.cast152 = and i64 %bf.load13, 65535, !dbg !3469
  %cmp16 = icmp eq i64 %bf.cast152, 10, !dbg !3469
  br i1 %cmp16, label %if.then17, label %if.end20, !dbg !3470

if.then17:                                        ; preds = %sw.bb
  %7 = bitcast i64* %6 to %union.tree_node*, !dbg !3470
  tail call void @pp_c_pointer(%struct.c_pretty_print_info* %pp, %union.tree_node* %7) #7, !dbg !3471
  %bf.load22.pre = load i64, i64* %3, align 8, !dbg !3472
  br label %if.end20, !dbg !3471

if.end20:                                         ; preds = %if.then17, %sw.bb
  %bf.load22 = phi i64 [ %bf.load22.pre, %if.then17 ], [ %bf.load33, %sw.bb ], !dbg !3472
  %bf.cast243 = and i64 %bf.load22, 65535, !dbg !3474
  %cmp25 = icmp eq i64 %bf.cast243, 10, !dbg !3474
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !3475

if.then26:                                        ; preds = %if.end20
  tail call void @pp_c_star(%struct.c_pretty_print_info* %pp) #7, !dbg !3476
  br label %if.end27, !dbg !3476

if.else:                                          ; preds = %if.end20
  tail call void @pp_c_ampersand(%struct.c_pretty_print_info* %pp) #7, !dbg !3477
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  tail call void @pp_c_type_qualifier_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %t.addr.0) #7, !dbg !3478
  br label %sw.epilog, !dbg !3479

sw.bb28:                                          ; preds = %if.end
  %declaration = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 3, !dbg !3480
  %8 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %declaration, align 8, !dbg !3480
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %t.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3480
  %9 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3480
  tail call void %8(%struct.c_pretty_print_info* %pp, %union.tree_node* %9) #6, !dbg !3480
  %need_newline = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, i32 8, !dbg !3481
  store i8 1, i8* %need_newline, align 1, !dbg !3482
  br label %sw.epilog, !dbg !3483

sw.default:                                       ; preds = %if.end
  %base31 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3484
  %bf.cast35 = and i64 %bf.load33, 65535, !dbg !3484
  %arrayidx37 = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast35, !dbg !3484
  %10 = load i8*, i8** %arrayidx37, align 8, !dbg !3484
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3484
  br label %sw.epilog, !dbg !3485

sw.epilog:                                        ; preds = %sw.default, %sw.bb28, %if.end27
  ret void, !dbg !3486
}

; Function Attrs: nounwind uwtable
define internal void @pp_c_multiplicative_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #4 !dbg !3487 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3489, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3490, metadata !DIExpression()), !dbg !3492
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3493
  %bf.load = load i64, i64* %0, align 8, !dbg !3493
  %trunc = trunc i64 %bf.load to i16, !dbg !3494
  switch i16 %trunc, label %sw.default [
    i16 65, label %sw.bb
    i16 67, label %sw.bb
    i16 71, label %sw.bb
  ], !dbg !3494

sw.bb:                                            ; preds = %entry, %entry, %entry
  %multiplicative_expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 23, !dbg !3495
  %1 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %multiplicative_expression, align 8, !dbg !3495
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3495
  %2 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3495
  tail call void %1(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #6, !dbg !3495
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3497
  switch i16 %trunc, label %if.else4 [
    i16 65, label %if.then
    i16 67, label %if.then2
  ], !dbg !3498

if.then:                                          ; preds = %sw.bb
  tail call void @pp_c_star(%struct.c_pretty_print_info* %pp) #7, !dbg !3499
  br label %if.end6, !dbg !3499

if.then2:                                         ; preds = %sw.bb
  %base3 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3501
  tail call void @pp_base_character(%struct.pretty_print_info* %base3, i32 47) #6, !dbg !3501
  br label %if.end6, !dbg !3501

if.else4:                                         ; preds = %sw.bb
  %base5 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3503
  tail call void @pp_base_character(%struct.pretty_print_info* %base5, i32 37) #6, !dbg !3503
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.else4, %if.then
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3504
  %arrayidx9 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3505
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8, !dbg !3505
  tail call void @pp_c_cast_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %3) #7, !dbg !3506
  br label %sw.epilog, !dbg !3507

sw.default:                                       ; preds = %entry
  tail call void @pp_c_cast_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3508
  br label %sw.epilog, !dbg !3509

sw.epilog:                                        ; preds = %sw.default, %if.end6
  ret void, !dbg !3510
}

; Function Attrs: nounwind uwtable
define internal void @pp_c_conditional_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #4 !dbg !3511 {
entry:
  %base1 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3515
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !3515
  br label %tailrecurse, !dbg !3518

tailrecurse:                                      ; preds = %if.then, %entry
  %e.tr = phi %union.tree_node* [ %e, %entry ], [ %4, %if.then ]
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3513, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr, metadata !3514, metadata !DIExpression()), !dbg !3519
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3520
  %bf.load = load i64, i64* %0, align 8, !dbg !3520
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3521
  %cmp = icmp eq i64 %bf.cast1, 56, !dbg !3521
  br i1 %cmp, label %if.then, label %if.else, !dbg !3522

if.then:                                          ; preds = %tailrecurse
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3523
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3523
  tail call void @pp_c_logical_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %1) #7, !dbg !3524
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3525
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 63) #6, !dbg !3526
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3527
  %2 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !3528
  %arrayidx4 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3528
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8, !dbg !3528
  tail call void %2(%struct.c_pretty_print_info* %pp, %union.tree_node* %3) #6, !dbg !3528
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3529
  tail call void @pp_base_character(%struct.pretty_print_info* %base1, i32 58) #6, !dbg !3530
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3531
  %arrayidx8 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !3532
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx8, align 8, !dbg !3532
  br label %tailrecurse, !dbg !3518

if.else:                                          ; preds = %tailrecurse
  %e.tr.lcssa = phi %union.tree_node* [ %e.tr, %tailrecurse ]
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa, metadata !3514, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa, metadata !3514, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata %union.tree_node* %e.tr.lcssa, metadata !3514, metadata !DIExpression()), !dbg !3519
  tail call void @pp_c_logical_or_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e.tr.lcssa) #7, !dbg !3533
  ret void, !dbg !3534
}

; Function Attrs: nounwind uwtable
define internal void @pp_c_assignment_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #4 !dbg !3535 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3537, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3538, metadata !DIExpression()), !dbg !3539
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3540
  %bf.load = load i64, i64* %0, align 8, !dbg !3540
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3542
  %cmp = icmp eq i64 %bf.cast1, 53, !dbg !3542
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3543

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 54, !dbg !3544
  br i1 %cmp5, label %if.then, label %if.else, !dbg !3545

if.then:                                          ; preds = %lor.lhs.false, %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3546
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3546
  tail call void @pp_c_unary_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %1) #7, !dbg !3548
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3549
  %base6 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3550
  tail call void @pp_base_character(%struct.pretty_print_info* %base6, i32 61) #6, !dbg !3550
  tail call void @pp_base_character(%struct.pretty_print_info* %base6, i32 32) #6, !dbg !3551
  %arrayidx10 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3552
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8, !dbg !3552
  tail call void @pp_c_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %2) #7, !dbg !3553
  br label %if.end, !dbg !3554

if.else:                                          ; preds = %lor.lhs.false
  tail call void @pp_c_conditional_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) #7, !dbg !3555
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3556
}

; Function Attrs: nounwind uwtable
define dso_local void @print_c_tree(%struct._IO_FILE* %file, %union.tree_node* %t) local_unnamed_addr #4 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !1272, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1273, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* @print_c_tree.pp_rec, metadata !1274, metadata !DIExpression()), !dbg !3557
  %.b = load i1, i1* @print_c_tree.initialized, align 1, !dbg !3558
  br i1 %.b, label %if.end, label %if.then, !dbg !3560

if.then:                                          ; preds = %entry
  store i1 true, i1* @print_c_tree.initialized, align 1, !dbg !3561
  tail call void @pp_construct(%struct.pretty_print_info* getelementptr inbounds (%struct.c_pretty_print_info, %struct.c_pretty_print_info* @print_c_tree.pp_rec, i64 0, i32 0), i8* null, i32 0) #6, !dbg !3563
  tail call void @pp_c_pretty_printer_init(%struct.c_pretty_print_info* nonnull @print_c_tree.pp_rec) #7, !dbg !3564
  store i8 1, i8* getelementptr inbounds (%struct.c_pretty_print_info, %struct.c_pretty_print_info* @print_c_tree.pp_rec, i64 0, i32 0, i32 8), align 1, !dbg !3565
  br label %if.end, !dbg !3566

if.end:                                           ; preds = %entry, %if.then
  %0 = load %struct.output_buffer*, %struct.output_buffer** getelementptr inbounds (%struct.c_pretty_print_info, %struct.c_pretty_print_info* @print_c_tree.pp_rec, i64 0, i32 0, i32 0), align 8, !dbg !3567
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 4, !dbg !3568
  store %struct._IO_FILE* %file, %struct._IO_FILE** %stream, align 8, !dbg !3569
  %1 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** getelementptr inbounds (%struct.c_pretty_print_info, %struct.c_pretty_print_info* @print_c_tree.pp_rec, i64 0, i32 17), align 8, !dbg !3570
  tail call void %1(%struct.c_pretty_print_info* nonnull @print_c_tree.pp_rec, %union.tree_node* %t) #6, !dbg !3570
  tail call void @pp_base_newline(%struct.pretty_print_info* getelementptr inbounds (%struct.c_pretty_print_info, %struct.c_pretty_print_info* @print_c_tree.pp_rec, i64 0, i32 0)) #6, !dbg !3571
  tail call void @pp_base_flush(%struct.pretty_print_info* getelementptr inbounds (%struct.c_pretty_print_info, %struct.c_pretty_print_info* @print_c_tree.pp_rec, i64 0, i32 0)) #6, !dbg !3572
  ret void, !dbg !3573
}

declare dso_local void @pp_construct(%struct.pretty_print_info*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_c_tree(%union.tree_node* %t) local_unnamed_addr #4 !dbg !3574 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3578, metadata !DIExpression()), !dbg !3579
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3580
  tail call void @print_c_tree(%struct._IO_FILE* %0, %union.tree_node* %t) #7, !dbg !3581
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3582
  %call = tail call i32 @fputc(i32 10, %struct._IO_FILE* %1) #6, !dbg !3583
  ret void, !dbg !3584
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i8* @pp_base_last_position_in_text(%struct.pretty_print_info*) local_unnamed_addr #1

declare dso_local i32 @tree_int_cst_sgn(%union.tree_node*) local_unnamed_addr #1

declare dso_local void @real_to_decimal(i8*, %struct.real_value*, i64, i64, i32) local_unnamed_addr #1

declare dso_local void @fixed_to_decimal(i8*, %struct.fixed_value*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_brace_enclosed_initializer_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %l) unnamed_addr #4 !dbg !3585 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3587, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata %union.tree_node* %l, metadata !3588, metadata !DIExpression()), !dbg !3589
  tail call void @pp_c_left_brace(%struct.c_pretty_print_info* %pp) #7, !dbg !3590
  tail call fastcc void @pp_c_initializer_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %l) #7, !dbg !3591
  tail call void @pp_c_right_brace(%struct.c_pretty_print_info* %pp) #7, !dbg !3592
  ret void, !dbg !3593
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_c_initializer_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %e) unnamed_addr #4 !dbg !3594 {
entry:
  call void @llvm.dbg.value(metadata %struct.c_pretty_print_info* %pp, metadata !3596, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata %union.tree_node* %e, metadata !3597, metadata !DIExpression()), !dbg !3606
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3607
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !3607
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3598, metadata !DIExpression()), !dbg !3606
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3608
  %bf.load = load i64, i64* %1, align 8, !dbg !3608
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3609
  %bf.load3 = load i64, i64* %2, align 8, !dbg !3609
  %bf.cast51 = and i64 %bf.load3, 65535, !dbg !3611
  %cmp = icmp eq i64 %bf.cast51, 51, !dbg !3611
  br i1 %cmp, label %if.then, label %if.end, !dbg !3612

if.then:                                          ; preds = %entry
  %elts = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3613
  %3 = bitcast i32* %elts to %struct.VEC_constructor_elt_gc**, !dbg !3613
  %4 = load %struct.VEC_constructor_elt_gc*, %struct.VEC_constructor_elt_gc** %3, align 8, !dbg !3613
  tail call void @pp_c_constructor_elts(%struct.c_pretty_print_info* %pp, %struct.VEC_constructor_elt_gc* %4) #7, !dbg !3615
  br label %cleanup.cont, !dbg !3616

if.end:                                           ; preds = %entry
  %trunc = trunc i64 %bf.load to i16, !dbg !3617
  switch i16 %trunc, label %sw.epilog [
    i16 16, label %sw.bb
    i16 17, label %sw.bb
    i16 15, label %sw.bb
    i16 14, label %sw.bb27
    i16 13, label %sw.bb36
  ], !dbg !3617

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3618
  %bf.cast6 = and i64 %bf.load, 65534, !dbg !3619
  %switch = icmp eq i64 %bf.cast6, 16, !dbg !3619
  %base17 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3624
  %initializer = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 16, !dbg !3624
  br i1 %switch, label %sw.bb.split.us, label %sw.bb.sw.bb.split_crit_edge, !dbg !3625

sw.bb.sw.bb.split_crit_edge:                      ; preds = %sw.bb
  br label %for.cond, !dbg !3625

sw.bb.split.us:                                   ; preds = %sw.bb
  br label %for.cond.us, !dbg !3625

for.cond.us:                                      ; preds = %for.inc.us, %sw.bb.split.us
  %init.0.in.us = phi %union.tree_node** [ %operands, %sw.bb.split.us ], [ %chain.us, %for.inc.us ]
  %init.0.us = load %union.tree_node*, %union.tree_node** %init.0.in.us, align 8, !dbg !3626
  call void @llvm.dbg.value(metadata %union.tree_node* %init.0.us, metadata !3600, metadata !DIExpression()), !dbg !3626
  %cmp6.us = icmp eq %union.tree_node* %init.0.us, null, !dbg !3627
  br i1 %cmp6.us, label %cleanup.cont.loopexit.us-lcssa.us, label %for.body.us, !dbg !3628

for.body.us:                                      ; preds = %for.cond.us
  tail call void @pp_c_dot(%struct.c_pretty_print_info* %pp) #7, !dbg !3629
  %purpose.us = getelementptr inbounds %union.tree_node, %union.tree_node* %init.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3631
  %5 = bitcast i32* %purpose.us to %union.tree_node**, !dbg !3631
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !3631
  tail call void @pp_c_primary_expression(%struct.c_pretty_print_info* %pp, %union.tree_node* %6) #7, !dbg !3632
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3633
  tail call void @pp_base_character(%struct.pretty_print_info* %base17, i32 61) #6, !dbg !3634
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3635
  %7 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %initializer, align 8, !dbg !3636
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %init.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3636
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !3636
  tail call void %7(%struct.c_pretty_print_info* %pp, %union.tree_node* %9) #6, !dbg !3636
  %chain.us = getelementptr inbounds %union.tree_node, %union.tree_node* %init.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3637
  %10 = load %union.tree_node*, %union.tree_node** %chain.us, align 8, !dbg !3637
  %tobool20.us = icmp eq %union.tree_node* %10, null, !dbg !3637
  br i1 %tobool20.us, label %for.inc.us, label %do.body.us, !dbg !3639

do.body.us:                                       ; preds = %for.body.us
  tail call void @pp_base_character(%struct.pretty_print_info* %base17, i32 44) #6, !dbg !3640
  tail call void @pp_base_character(%struct.pretty_print_info* %base17, i32 32) #6, !dbg !3640
  br label %for.inc.us, !dbg !3640

for.inc.us:                                       ; preds = %do.body.us, %for.body.us
  br label %for.cond.us, !dbg !3642, !llvm.loop !3643

cleanup.cont.loopexit.us-lcssa.us:                ; preds = %for.cond.us
  br label %cleanup.cont.loopexit, !dbg !3645

for.cond:                                         ; preds = %for.inc, %sw.bb.sw.bb.split_crit_edge
  %init.0.in = phi %union.tree_node** [ %operands, %sw.bb.sw.bb.split_crit_edge ], [ %chain, %for.inc ]
  %init.0 = load %union.tree_node*, %union.tree_node** %init.0.in, align 8, !dbg !3626
  call void @llvm.dbg.value(metadata %union.tree_node* %init.0, metadata !3600, metadata !DIExpression()), !dbg !3626
  %cmp6 = icmp eq %union.tree_node* %init.0, null, !dbg !3627
  br i1 %cmp6, label %cleanup.cont.loopexit.us-lcssa, label %for.body, !dbg !3628

for.body:                                         ; preds = %for.cond
  tail call void @pp_c_left_bracket(%struct.c_pretty_print_info* %pp) #7, !dbg !3646
  %purpose11 = getelementptr inbounds %union.tree_node, %union.tree_node* %init.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3648
  %11 = bitcast i32* %purpose11 to %union.tree_node**, !dbg !3648
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8, !dbg !3648
  %tobool = icmp eq %union.tree_node* %12, null, !dbg !3648
  br i1 %tobool, label %if.end15, label %if.then12, !dbg !3650

if.then12:                                        ; preds = %for.body
  tail call void @pp_c_constant(%struct.c_pretty_print_info* %pp, %union.tree_node* nonnull %12) #7, !dbg !3651
  br label %if.end15, !dbg !3651

if.end15:                                         ; preds = %for.body, %if.then12
  tail call void @pp_c_right_bracket(%struct.c_pretty_print_info* %pp) #7, !dbg !3652
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3633
  tail call void @pp_base_character(%struct.pretty_print_info* %base17, i32 61) #6, !dbg !3634
  tail call void @pp_c_whitespace(%struct.c_pretty_print_info* %pp) #7, !dbg !3635
  %13 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %initializer, align 8, !dbg !3636
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %init.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3636
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8, !dbg !3636
  tail call void %13(%struct.c_pretty_print_info* %pp, %union.tree_node* %15) #6, !dbg !3636
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %init.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3637
  %16 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3637
  %tobool20 = icmp eq %union.tree_node* %16, null, !dbg !3637
  br i1 %tobool20, label %for.inc, label %do.body, !dbg !3639

do.body:                                          ; preds = %if.end15
  tail call void @pp_base_character(%struct.pretty_print_info* %base17, i32 44) #6, !dbg !3640
  tail call void @pp_base_character(%struct.pretty_print_info* %base17, i32 32) #6, !dbg !3640
  br label %for.inc, !dbg !3640

for.inc:                                          ; preds = %if.end15, %do.body
  br label %for.cond, !dbg !3642, !llvm.loop !3643

sw.bb27:                                          ; preds = %if.end
  %cmp32 = icmp eq i64 %bf.cast51, 27, !dbg !3653
  br i1 %cmp32, label %if.then33, label %sw.epilog, !dbg !3655

if.then33:                                        ; preds = %sw.bb27
  %elements = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3656
  %17 = bitcast i32* %elements to %union.tree_node**, !dbg !3656
  %18 = load %union.tree_node*, %union.tree_node** %17, align 8, !dbg !3656
  tail call void @pp_c_expression_list(%struct.c_pretty_print_info* %pp, %union.tree_node* %18) #7, !dbg !3657
  br label %cleanup.cont, !dbg !3658

sw.bb36:                                          ; preds = %if.end
  %cmp41 = icmp eq i64 %bf.cast51, 26, !dbg !3659
  br i1 %cmp41, label %if.then48, label %lor.lhs.false42, !dbg !3660

lor.lhs.false42:                                  ; preds = %sw.bb36
  %cmp47 = icmp eq i64 %bf.cast51, 123, !dbg !3661
  br i1 %cmp47, label %if.then48, label %sw.epilog, !dbg !3662

if.then48:                                        ; preds = %lor.lhs.false42, %sw.bb36
  call void @llvm.dbg.value(metadata i1 %cmp41, metadata !3603, metadata !DIExpression()), !dbg !3663
  %expression = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 26, !dbg !3664
  %19 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !3664
  br i1 %cmp41, label %cond.true, label %cond.false, !dbg !3664

cond.true:                                        ; preds = %if.then48
  %real = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3664
  %20 = bitcast i32* %real to %union.tree_node**, !dbg !3664
  br label %cond.end, !dbg !3664

cond.false:                                       ; preds = %if.then48
  %operands58 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3664
  br label %cond.end, !dbg !3664

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %union.tree_node** [ %20, %cond.true ], [ %operands58, %cond.false ]
  %cond = load %union.tree_node*, %union.tree_node** %cond.in, align 8, !dbg !3664
  tail call void %19(%struct.c_pretty_print_info* %pp, %union.tree_node* %cond) #6, !dbg !3664
  %base61 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3665
  tail call void @pp_base_character(%struct.pretty_print_info* %base61, i32 44) #6, !dbg !3665
  tail call void @pp_base_character(%struct.pretty_print_info* %base61, i32 32) #6, !dbg !3665
  %21 = load void (%struct.c_pretty_print_info*, %union.tree_node*)*, void (%struct.c_pretty_print_info*, %union.tree_node*)** %expression, align 8, !dbg !3667
  br i1 %cmp41, label %cond.true68, label %cond.false70, !dbg !3667

cond.true68:                                      ; preds = %cond.end
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3667
  br label %cond.end74, !dbg !3667

cond.false70:                                     ; preds = %cond.end
  %operands72 = getelementptr inbounds %union.tree_node, %union.tree_node* %e, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3667
  %arrayidx73 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands72, i64 1, !dbg !3667
  br label %cond.end74, !dbg !3667

cond.end74:                                       ; preds = %cond.false70, %cond.true68
  %cond75.in = phi %union.tree_node** [ %22, %cond.true68 ], [ %arrayidx73, %cond.false70 ]
  %cond75 = load %union.tree_node*, %union.tree_node** %cond75.in, align 8, !dbg !3667
  tail call void %21(%struct.c_pretty_print_info* %pp, %union.tree_node* %cond75) #6, !dbg !3667
  br label %cleanup.cont, !dbg !3668

sw.epilog:                                        ; preds = %if.end, %lor.lhs.false42, %sw.bb27
  %base78 = getelementptr inbounds %struct.c_pretty_print_info, %struct.c_pretty_print_info* %pp, i64 0, i32 0, !dbg !3669
  %bf.cast82 = and i64 %bf.load, 65535, !dbg !3669
  %arrayidx83 = getelementptr inbounds [0 x i8*], [0 x i8*]* @tree_code_name, i64 0, i64 %bf.cast82, !dbg !3669
  %23 = load i8*, i8** %arrayidx83, align 8, !dbg !3669
  tail call void (%struct.pretty_print_info*, i8*, ...) @pp_verbatim(%struct.pretty_print_info* %base78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3669
  br label %cleanup.cont, !dbg !3645

cleanup.cont.loopexit.us-lcssa:                   ; preds = %for.cond
  br label %cleanup.cont.loopexit, !dbg !3645

cleanup.cont.loopexit:                            ; preds = %cleanup.cont.loopexit.us-lcssa.us, %cleanup.cont.loopexit.us-lcssa
  br label %cleanup.cont, !dbg !3645

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.then, %if.then33, %cond.end74, %sw.epilog
  ret void, !dbg !3645
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @init_call_expr_arg_iterator(%union.tree_node* %exp, %struct.call_expr_arg_iterator_d* %iter) unnamed_addr #0 !dbg !3670 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !3674, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata %struct.call_expr_arg_iterator_d* %iter, metadata !3675, metadata !DIExpression()), !dbg !3676
  %t = getelementptr inbounds %struct.call_expr_arg_iterator_d, %struct.call_expr_arg_iterator_d* %iter, i64 0, i32 0, !dbg !3677
  store %union.tree_node* %exp, %union.tree_node** %t, align 8, !dbg !3678
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3679
  %0 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !3679
  %1 = load %struct.tree_int_cst*, %struct.tree_int_cst** %0, align 8, !dbg !3679
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %1, i64 0, i32 1, i32 0, !dbg !3679
  %2 = load i64, i64* %low, align 8, !dbg !3679
  %conv = trunc i64 %2 to i32, !dbg !3679
  %sub = add nsw i32 %conv, -3, !dbg !3679
  %n = getelementptr inbounds %struct.call_expr_arg_iterator_d, %struct.call_expr_arg_iterator_d* %iter, i64 0, i32 1, !dbg !3680
  store i32 %sub, i32* %n, align 8, !dbg !3681
  %i = getelementptr inbounds %struct.call_expr_arg_iterator_d, %struct.call_expr_arg_iterator_d* %iter, i64 0, i32 2, !dbg !3682
  store i32 0, i32* %i, align 4, !dbg !3683
  ret void, !dbg !3684
}

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @real_zerop(%union.tree_node*) local_unnamed_addr #1

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

!llvm.dbg.cu = !{!1078}
!llvm.module.flags = !{!1276, !1277, !1278}
!llvm.ident = !{!1279}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pp_rec", scope: !2, file: !3, line: 2211, type: !1127, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "print_c_tree", scope: !3, file: !3, line: 2209, type: !4, scopeLine: 2210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1271)
!3 = !DIFile(filename: "c-pretty-print.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !69}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 7, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !10, line: 49, size: 1728, elements: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!11 = !{!12, !14, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !30, !32, !33, !34, !38, !40, !42, !46, !49, !51, !54, !57, !58, !60, !64, !65}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !10, line: 51, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !9, file: !10, line: 54, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !9, file: !10, line: 55, baseType: !15, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !9, file: !10, line: 56, baseType: !15, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !9, file: !10, line: 57, baseType: !15, size: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !9, file: !10, line: 58, baseType: !15, size: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !9, file: !10, line: 59, baseType: !15, size: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !9, file: !10, line: 60, baseType: !15, size: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !9, file: !10, line: 61, baseType: !15, size: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !9, file: !10, line: 64, baseType: !15, size: 64, offset: 576)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !9, file: !10, line: 65, baseType: !15, size: 64, offset: 640)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !9, file: !10, line: 66, baseType: !15, size: 64, offset: 704)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !9, file: !10, line: 68, baseType: !28, size: 64, offset: 768)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !10, line: 36, flags: DIFlagFwdDecl)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !9, file: !10, line: 70, baseType: !31, size: 64, offset: 832)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !9, file: !10, line: 72, baseType: !13, size: 32, offset: 896)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !9, file: !10, line: 73, baseType: !13, size: 32, offset: 928)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !9, file: !10, line: 74, baseType: !35, size: 64, offset: 960)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !36, line: 152, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!37 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !9, file: !10, line: 77, baseType: !39, size: 16, offset: 1024)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !9, file: !10, line: 78, baseType: !41, size: 8, offset: 1040)
!41 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !9, file: !10, line: 79, baseType: !43, size: 8, offset: 1048)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !9, file: !10, line: 81, baseType: !47, size: 64, offset: 1088)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !10, line: 43, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !9, file: !10, line: 89, baseType: !50, size: 64, offset: 1152)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !36, line: 153, baseType: !37)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !9, file: !10, line: 91, baseType: !52, size: 64, offset: 1216)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !10, line: 37, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !9, file: !10, line: 92, baseType: !55, size: 64, offset: 1280)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !10, line: 38, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !9, file: !10, line: 93, baseType: !31, size: 64, offset: 1344)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !9, file: !10, line: 94, baseType: !59, size: 64, offset: 1408)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !9, file: !10, line: 95, baseType: !61, size: 64, offset: 1472)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !62, line: 46, baseType: !63)
!62 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !9, file: !10, line: 96, baseType: !13, size: 32, offset: 1536)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !9, file: !10, line: 98, baseType: !66, size: 160, offset: 1568)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 20)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !70, line: 56, baseType: !71)
!70 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !73, line: 3371, size: 1792, elements: !74)
!73 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!74 = !{!75, !109, !115, !126, !145, !284, !289, !295, !301, !315, !327, !365, !373, !401, !409, !410, !415, !424, !430, !435, !439, !443, !472, !523, !529, !536, !543, !569, !594, !611, !623, !645, !889, !1060}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !72, file: !73, line: 3372, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !73, line: 360, size: 64, elements: !77)
!77 = !{!78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !76, file: !73, line: 361, baseType: !79, size: 16, flags: DIFlagBitField, extraData: i64 0)
!79 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !76, file: !73, line: 363, baseType: !79, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !76, file: !73, line: 364, baseType: !79, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !76, file: !73, line: 365, baseType: !79, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !76, file: !73, line: 366, baseType: !79, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !76, file: !73, line: 367, baseType: !79, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !76, file: !73, line: 368, baseType: !79, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !76, file: !73, line: 369, baseType: !79, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !76, file: !73, line: 370, baseType: !79, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !76, file: !73, line: 372, baseType: !79, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !76, file: !73, line: 373, baseType: !79, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !76, file: !73, line: 374, baseType: !79, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !76, file: !73, line: 375, baseType: !79, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !76, file: !73, line: 376, baseType: !79, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !76, file: !73, line: 377, baseType: !79, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !76, file: !73, line: 378, baseType: !79, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !76, file: !73, line: 379, baseType: !79, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !76, file: !73, line: 381, baseType: !79, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !76, file: !73, line: 382, baseType: !79, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !76, file: !73, line: 383, baseType: !79, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !76, file: !73, line: 384, baseType: !79, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !76, file: !73, line: 385, baseType: !79, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !76, file: !73, line: 386, baseType: !79, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !76, file: !73, line: 387, baseType: !79, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !76, file: !73, line: 388, baseType: !79, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !76, file: !73, line: 390, baseType: !79, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !76, file: !73, line: 391, baseType: !79, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !76, file: !73, line: 392, baseType: !79, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !76, file: !73, line: 394, baseType: !79, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !76, file: !73, line: 399, baseType: !79, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !72, file: !73, line: 3373, baseType: !110, size: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !73, line: 402, size: 192, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !110, file: !73, line: 403, baseType: !76, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !110, file: !73, line: 404, baseType: !69, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !73, line: 405, baseType: !69, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !72, file: !73, line: 3374, baseType: !116, size: 320)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !73, line: 1384, size: 320, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !116, file: !73, line: 1385, baseType: !110, size: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !116, file: !73, line: 1386, baseType: !120, size: 128, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !121, line: 58, baseType: !122)
!121 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !121, line: 54, size: 128, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !122, file: !121, line: 56, baseType: !63, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !122, file: !121, line: 57, baseType: !37, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !72, file: !73, line: 3375, baseType: !127, size: 256)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !73, line: 1397, size: 256, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !127, file: !73, line: 1398, baseType: !110, size: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !127, file: !73, line: 1399, baseType: !131, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !133, line: 52, size: 256, elements: !134)
!133 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !132, file: !133, line: 56, baseType: !79, size: 2, flags: DIFlagBitField, extraData: i64 0)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !132, file: !133, line: 57, baseType: !79, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !132, file: !133, line: 58, baseType: !79, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !132, file: !133, line: 59, baseType: !79, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !132, file: !133, line: 60, baseType: !79, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !132, file: !133, line: 61, baseType: !79, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !132, file: !133, line: 62, baseType: !142, size: 192, offset: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 3)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !72, file: !73, line: 3376, baseType: !146, size: 256)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !73, line: 1408, size: 256, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !146, file: !73, line: 1409, baseType: !110, size: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !146, file: !73, line: 1410, baseType: !150, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !152, line: 27, size: 192, elements: !153)
!152 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !151, file: !152, line: 29, baseType: !120, size: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !151, file: !152, line: 30, baseType: !156, size: 32, offset: 128)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !157, line: 7, baseType: !79, size: 32, elements: !158)
!157 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!159 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!160 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!161 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!162 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!163 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!164 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!165 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!166 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!167 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!168 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!169 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!170 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!171 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!172 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!173 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!174 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!175 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!176 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!177 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!178 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!179 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!180 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!181 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!182 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!183 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!184 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!185 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!186 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!187 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!188 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!189 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!190 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!191 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!192 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!193 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!194 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!195 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!196 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!197 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!198 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!199 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!200 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!201 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!202 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!203 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!204 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!205 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!206 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!207 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!208 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!209 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!210 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!211 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!212 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!213 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!214 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!215 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!216 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!217 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!218 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!219 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!220 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!221 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!222 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!223 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!224 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!225 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!226 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!227 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!228 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!229 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!230 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!231 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!232 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!233 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!234 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!235 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!236 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!237 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!238 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!239 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!240 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!241 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!242 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!243 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!244 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!245 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!246 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!247 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!248 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!249 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!250 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!251 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!252 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!253 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!254 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!255 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!256 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!257 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!258 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!259 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!260 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!261 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!262 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!263 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!264 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!265 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!266 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!267 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!268 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!269 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!270 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!271 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!272 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!273 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!274 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!275 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!276 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!277 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!278 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!279 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!280 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!281 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!282 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!283 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !72, file: !73, line: 3377, baseType: !285, size: 256)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !73, line: 1437, size: 256, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !285, file: !73, line: 1438, baseType: !110, size: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !285, file: !73, line: 1439, baseType: !69, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !72, file: !73, line: 3378, baseType: !290, size: 256)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !73, line: 1418, size: 256, elements: !291)
!291 = !{!292, !293, !294}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !290, file: !73, line: 1419, baseType: !110, size: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !290, file: !73, line: 1420, baseType: !13, size: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !290, file: !73, line: 1421, baseType: !43, size: 8, offset: 224)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !72, file: !73, line: 3379, baseType: !296, size: 320)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !73, line: 1428, size: 320, elements: !297)
!297 = !{!298, !299, !300}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !296, file: !73, line: 1429, baseType: !110, size: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !296, file: !73, line: 1430, baseType: !69, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !296, file: !73, line: 1431, baseType: !69, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !72, file: !73, line: 3380, baseType: !302, size: 320)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !73, line: 1460, size: 320, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !302, file: !73, line: 1461, baseType: !110, size: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !302, file: !73, line: 1462, baseType: !306, size: 128, offset: 192)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !307, line: 31, size: 128, elements: !308)
!307 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!308 = !{!309, !313, !314}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !306, file: !307, line: 32, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !306, file: !307, line: 33, baseType: !79, size: 32, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !306, file: !307, line: 34, baseType: !79, size: 32, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !72, file: !73, line: 3381, baseType: !316, size: 384)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !73, line: 2507, size: 384, elements: !317)
!317 = !{!318, !319, !324, !325, !326}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !316, file: !73, line: 2508, baseType: !110, size: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !316, file: !73, line: 2509, baseType: !320, size: 32, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !321, line: 58, baseType: !322)
!321 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !323, line: 44, baseType: !79)
!323 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!324 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !316, file: !73, line: 2510, baseType: !79, size: 32, offset: 224)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !73, line: 2511, baseType: !69, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !316, file: !73, line: 2512, baseType: !69, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !72, file: !73, line: 3382, baseType: !328, size: 896)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !73, line: 2652, size: 896, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !328, file: !73, line: 2653, baseType: !316, size: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !328, file: !73, line: 2654, baseType: !69, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !328, file: !73, line: 2656, baseType: !79, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !328, file: !73, line: 2658, baseType: !79, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !328, file: !73, line: 2659, baseType: !79, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !328, file: !73, line: 2660, baseType: !79, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !328, file: !73, line: 2661, baseType: !79, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !328, file: !73, line: 2662, baseType: !79, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !328, file: !73, line: 2663, baseType: !79, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !328, file: !73, line: 2664, baseType: !79, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !328, file: !73, line: 2666, baseType: !79, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !328, file: !73, line: 2667, baseType: !79, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !328, file: !73, line: 2668, baseType: !79, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !328, file: !73, line: 2669, baseType: !79, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !328, file: !73, line: 2670, baseType: !79, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !328, file: !73, line: 2671, baseType: !79, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !328, file: !73, line: 2672, baseType: !79, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !328, file: !73, line: 2673, baseType: !79, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !328, file: !73, line: 2674, baseType: !79, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !328, file: !73, line: 2678, baseType: !79, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !328, file: !73, line: 2682, baseType: !79, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !328, file: !73, line: 2685, baseType: !79, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !328, file: !73, line: 2688, baseType: !79, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !328, file: !73, line: 2690, baseType: !79, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !328, file: !73, line: 2692, baseType: !79, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !328, file: !73, line: 2695, baseType: !79, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !328, file: !73, line: 2698, baseType: !79, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !328, file: !73, line: 2703, baseType: !79, size: 32, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !328, file: !73, line: 2705, baseType: !69, size: 64, offset: 576)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !328, file: !73, line: 2706, baseType: !69, size: 64, offset: 640)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !328, file: !73, line: 2707, baseType: !69, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !328, file: !73, line: 2708, baseType: !69, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !328, file: !73, line: 2711, baseType: !363, size: 64, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !73, line: 2711, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !72, file: !73, line: 3383, baseType: !366, size: 960)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !73, line: 2756, size: 960, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !366, file: !73, line: 2757, baseType: !328, size: 896)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !366, file: !73, line: 2758, baseType: !370, size: 64, offset: 896)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !70, line: 50, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !70, line: 49, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !72, file: !73, line: 3384, baseType: !374, size: 1472)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !73, line: 3114, size: 1472, elements: !375)
!375 = !{!376, !397, !398, !399, !400}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !374, file: !73, line: 3115, baseType: !377, size: 1216)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !73, line: 2984, size: 1216, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !377, file: !73, line: 2985, baseType: !366, size: 960)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !377, file: !73, line: 2986, baseType: !69, size: 64, offset: 960)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !377, file: !73, line: 2987, baseType: !69, size: 64, offset: 1024)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !377, file: !73, line: 2988, baseType: !69, size: 64, offset: 1088)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !377, file: !73, line: 2991, baseType: !79, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !377, file: !73, line: 2992, baseType: !79, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !377, file: !73, line: 2993, baseType: !79, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !377, file: !73, line: 2994, baseType: !79, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !377, file: !73, line: 2995, baseType: !79, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !377, file: !73, line: 2996, baseType: !79, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !377, file: !73, line: 2998, baseType: !79, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !377, file: !73, line: 3000, baseType: !79, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !377, file: !73, line: 3002, baseType: !79, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !377, file: !73, line: 3003, baseType: !79, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !377, file: !73, line: 3004, baseType: !79, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !377, file: !73, line: 3005, baseType: !79, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !377, file: !73, line: 3007, baseType: !79, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !377, file: !73, line: 3010, baseType: !79, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !374, file: !73, line: 3117, baseType: !69, size: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !374, file: !73, line: 3119, baseType: !69, size: 64, offset: 1280)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !374, file: !73, line: 3121, baseType: !69, size: 64, offset: 1344)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !374, file: !73, line: 3123, baseType: !69, size: 64, offset: 1408)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !72, file: !73, line: 3385, baseType: !402, size: 1088)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !73, line: 2874, size: 1088, elements: !403)
!403 = !{!404, !405, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !402, file: !73, line: 2875, baseType: !366, size: 960)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !402, file: !73, line: 2876, baseType: !370, size: 64, offset: 960)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !402, file: !73, line: 2877, baseType: !407, size: 64, offset: 1024)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !73, line: 2856, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !72, file: !73, line: 3386, baseType: !377, size: 1216)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !72, file: !73, line: 3387, baseType: !411, size: 1280)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !73, line: 3093, size: 1280, elements: !412)
!412 = !{!413, !414}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !411, file: !73, line: 3094, baseType: !377, size: 1216)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !411, file: !73, line: 3095, baseType: !407, size: 64, offset: 1216)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !72, file: !73, line: 3388, baseType: !416, size: 1216)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !73, line: 2824, size: 1216, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !416, file: !73, line: 2825, baseType: !328, size: 896)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !416, file: !73, line: 2827, baseType: !69, size: 64, offset: 896)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !416, file: !73, line: 2828, baseType: !69, size: 64, offset: 960)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !416, file: !73, line: 2829, baseType: !69, size: 64, offset: 1024)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !416, file: !73, line: 2830, baseType: !69, size: 64, offset: 1088)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !416, file: !73, line: 2831, baseType: !69, size: 64, offset: 1152)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !72, file: !73, line: 3389, baseType: !425, size: 1024)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !73, line: 2850, size: 1024, elements: !426)
!426 = !{!427, !428, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !425, file: !73, line: 2851, baseType: !366, size: 960)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !425, file: !73, line: 2852, baseType: !13, size: 32, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !425, file: !73, line: 2853, baseType: !13, size: 32, offset: 992)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !72, file: !73, line: 3390, baseType: !431, size: 1024)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !73, line: 2857, size: 1024, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !431, file: !73, line: 2858, baseType: !366, size: 960)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !431, file: !73, line: 2859, baseType: !407, size: 64, offset: 960)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !72, file: !73, line: 3391, baseType: !436, size: 960)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !73, line: 2862, size: 960, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !436, file: !73, line: 2863, baseType: !366, size: 960)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !72, file: !73, line: 3392, baseType: !440, size: 1472)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !73, line: 3304, size: 1472, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !440, file: !73, line: 3305, baseType: !374, size: 1472)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !72, file: !73, line: 3393, baseType: !444, size: 1792)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !73, line: 3248, size: 1792, elements: !445)
!445 = !{!446, !447, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !444, file: !73, line: 3249, baseType: !374, size: 1472)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !444, file: !73, line: 3251, baseType: !448, size: 64, offset: 1472)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !450, line: 41, flags: DIFlagFwdDecl)
!450 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!451 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !444, file: !73, line: 3254, baseType: !69, size: 64, offset: 1536)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !444, file: !73, line: 3257, baseType: !69, size: 64, offset: 1600)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !444, file: !73, line: 3258, baseType: !69, size: 64, offset: 1664)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !444, file: !73, line: 3264, baseType: !79, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !444, file: !73, line: 3265, baseType: !79, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !444, file: !73, line: 3267, baseType: !79, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !444, file: !73, line: 3268, baseType: !79, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !444, file: !73, line: 3269, baseType: !79, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !444, file: !73, line: 3271, baseType: !79, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !444, file: !73, line: 3272, baseType: !79, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !444, file: !73, line: 3273, baseType: !79, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !444, file: !73, line: 3274, baseType: !79, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !444, file: !73, line: 3275, baseType: !79, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !444, file: !73, line: 3276, baseType: !79, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !444, file: !73, line: 3277, baseType: !79, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !444, file: !73, line: 3279, baseType: !79, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !444, file: !73, line: 3280, baseType: !79, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !444, file: !73, line: 3281, baseType: !79, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !444, file: !73, line: 3282, baseType: !79, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !444, file: !73, line: 3283, baseType: !79, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !444, file: !73, line: 3284, baseType: !79, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !73, line: 3394, baseType: !473, size: 1344)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !73, line: 2279, size: 1344, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !500, !501, !502, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !473, file: !73, line: 2280, baseType: !110, size: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !473, file: !73, line: 2281, baseType: !69, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !473, file: !73, line: 2282, baseType: !69, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !473, file: !73, line: 2283, baseType: !69, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !473, file: !73, line: 2284, baseType: !69, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !473, file: !73, line: 2285, baseType: !79, size: 32, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !473, file: !73, line: 2287, baseType: !79, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !473, file: !73, line: 2288, baseType: !79, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !473, file: !73, line: 2289, baseType: !79, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !473, file: !73, line: 2290, baseType: !79, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !473, file: !73, line: 2291, baseType: !79, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !473, file: !73, line: 2292, baseType: !79, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !473, file: !73, line: 2294, baseType: !79, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !473, file: !73, line: 2296, baseType: !79, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !473, file: !73, line: 2297, baseType: !79, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !473, file: !73, line: 2298, baseType: !79, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !473, file: !73, line: 2299, baseType: !79, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !473, file: !73, line: 2300, baseType: !79, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !473, file: !73, line: 2301, baseType: !79, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !473, file: !73, line: 2302, baseType: !79, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !473, file: !73, line: 2303, baseType: !79, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !473, file: !73, line: 2305, baseType: !79, size: 32, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !473, file: !73, line: 2306, baseType: !498, size: 32, offset: 544)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !499, line: 31, baseType: !13)
!499 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !473, file: !73, line: 2307, baseType: !69, size: 64, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !473, file: !73, line: 2308, baseType: !69, size: 64, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !473, file: !73, line: 2314, baseType: !503, size: 64, offset: 704)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !73, line: 2309, size: 64, elements: !504)
!504 = !{!505, !506, !509}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !503, file: !73, line: 2310, baseType: !13, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !503, file: !73, line: 2311, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !503, file: !73, line: 2312, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !73, line: 2277, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !473, file: !73, line: 2315, baseType: !69, size: 64, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !473, file: !73, line: 2316, baseType: !69, size: 64, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !473, file: !73, line: 2317, baseType: !69, size: 64, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !473, file: !73, line: 2318, baseType: !69, size: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !473, file: !73, line: 2319, baseType: !69, size: 64, offset: 1024)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !473, file: !73, line: 2320, baseType: !69, size: 64, offset: 1088)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !473, file: !73, line: 2321, baseType: !69, size: 64, offset: 1152)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !473, file: !73, line: 2322, baseType: !69, size: 64, offset: 1216)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !473, file: !73, line: 2324, baseType: !521, size: 64, offset: 1280)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !73, line: 2324, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !72, file: !73, line: 3395, baseType: !524, size: 320)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !73, line: 1469, size: 320, elements: !525)
!525 = !{!526, !527, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !524, file: !73, line: 1470, baseType: !110, size: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !524, file: !73, line: 1471, baseType: !69, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !524, file: !73, line: 1472, baseType: !69, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !72, file: !73, line: 3396, baseType: !530, size: 320)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !73, line: 1482, size: 320, elements: !531)
!531 = !{!532, !533, !534}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !530, file: !73, line: 1483, baseType: !110, size: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !530, file: !73, line: 1484, baseType: !13, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !530, file: !73, line: 1485, baseType: !535, size: 64, offset: 256)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !44)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !72, file: !73, line: 3397, baseType: !537, size: 384)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !73, line: 1829, size: 384, elements: !538)
!538 = !{!539, !540, !541, !542}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !537, file: !73, line: 1830, baseType: !110, size: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !537, file: !73, line: 1831, baseType: !320, size: 32, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !537, file: !73, line: 1832, baseType: !69, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !537, file: !73, line: 1835, baseType: !535, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !72, file: !73, line: 3398, baseType: !544, size: 704)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !73, line: 1898, size: 704, elements: !545)
!545 = !{!546, !547, !548, !552, !553, !556}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !544, file: !73, line: 1899, baseType: !110, size: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !544, file: !73, line: 1902, baseType: !69, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !544, file: !73, line: 1905, baseType: !549, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !70, line: 58, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !70, line: 57, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !544, file: !73, line: 1908, baseType: !79, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !544, file: !73, line: 1911, baseType: !554, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !73, line: 1876, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !544, file: !73, line: 1914, baseType: !557, size: 256, offset: 448)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !73, line: 1883, size: 256, elements: !558)
!558 = !{!559, !561, !562, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !557, file: !73, line: 1884, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !73, line: 1885, baseType: !560, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !557, file: !73, line: 1891, baseType: !563, size: 64, offset: 128)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !73, line: 1891, size: 64, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !563, file: !73, line: 1891, baseType: !549, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !563, file: !73, line: 1891, baseType: !69, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !557, file: !73, line: 1892, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !72, file: !73, line: 3399, baseType: !570, size: 704)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !73, line: 2008, size: 704, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !589, !590, !591, !592, !593}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !570, file: !73, line: 2009, baseType: !110, size: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !570, file: !73, line: 2011, baseType: !79, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !570, file: !73, line: 2012, baseType: !79, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !570, file: !73, line: 2014, baseType: !320, size: 32, offset: 224)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !570, file: !73, line: 2016, baseType: !69, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !570, file: !73, line: 2017, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !73, line: 183, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !73, line: 183, size: 128, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !580, file: !73, line: 183, baseType: !583, size: 128)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !73, line: 182, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !73, line: 182, size: 128, elements: !585)
!585 = !{!586, !587, !588}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !584, file: !73, line: 182, baseType: !79, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !584, file: !73, line: 182, baseType: !79, size: 32, offset: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !584, file: !73, line: 182, baseType: !535, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !570, file: !73, line: 2019, baseType: !69, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !570, file: !73, line: 2020, baseType: !69, size: 64, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !570, file: !73, line: 2021, baseType: !69, size: 64, offset: 512)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !570, file: !73, line: 2022, baseType: !69, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !570, file: !73, line: 2023, baseType: !69, size: 64, offset: 640)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !72, file: !73, line: 3400, baseType: !595, size: 832)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !73, line: 2430, size: 832, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !595, file: !73, line: 2431, baseType: !110, size: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !595, file: !73, line: 2433, baseType: !69, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !595, file: !73, line: 2434, baseType: !69, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !595, file: !73, line: 2435, baseType: !69, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !595, file: !73, line: 2436, baseType: !69, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !595, file: !73, line: 2437, baseType: !578, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !595, file: !73, line: 2438, baseType: !69, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !595, file: !73, line: 2440, baseType: !69, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !595, file: !73, line: 2441, baseType: !69, size: 64, offset: 640)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !595, file: !73, line: 2443, baseType: !607, size: 128, offset: 704)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !73, line: 182, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !73, line: 182, size: 128, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !608, file: !73, line: 182, baseType: !583, size: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !72, file: !73, line: 3401, baseType: !612, size: 320)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !73, line: 3327, size: 320, elements: !613)
!613 = !{!614, !615, !622}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !612, file: !73, line: 3329, baseType: !110, size: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !612, file: !73, line: 3330, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !73, line: 3320, size: 192, elements: !618)
!618 = !{!619, !620, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !617, file: !73, line: 3322, baseType: !616, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !73, line: 3323, baseType: !616, size: 64, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !617, file: !73, line: 3324, baseType: !69, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !612, file: !73, line: 3331, baseType: !616, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !72, file: !73, line: 3402, baseType: !624, size: 256)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !73, line: 1540, size: 256, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !624, file: !73, line: 1541, baseType: !110, size: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !624, file: !73, line: 1542, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !73, line: 1538, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !73, line: 1538, size: 192, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !630, file: !73, line: 1538, baseType: !633, size: 192)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !73, line: 1537, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !73, line: 1537, size: 192, elements: !635)
!635 = !{!636, !637, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !634, file: !73, line: 1537, baseType: !79, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !634, file: !73, line: 1537, baseType: !79, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !634, file: !73, line: 1537, baseType: !639, size: 128, offset: 64)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 128, elements: !44)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !73, line: 1535, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !73, line: 1532, size: 128, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !641, file: !73, line: 1533, baseType: !69, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !641, file: !73, line: 1534, baseType: !69, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !72, file: !73, line: 3403, baseType: !646, size: 512)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !73, line: 1938, size: 512, elements: !647)
!647 = !{!648, !649, !650, !669, !883, !887, !888}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !646, file: !73, line: 1939, baseType: !110, size: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !646, file: !73, line: 1940, baseType: !320, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !646, file: !73, line: 1941, baseType: !651, size: 32, offset: 224)
!651 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !73, line: 280, baseType: !79, size: 32, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!653 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!654 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!655 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!656 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!657 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!658 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!659 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!660 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!661 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!662 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!663 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!664 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!665 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!666 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!667 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!668 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !646, file: !73, line: 1946, baseType: !670, size: 32, offset: 256)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !73, line: 1942, size: 32, elements: !671)
!671 = !{!672, !680, !688}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !670, file: !73, line: 1943, baseType: !673, size: 32)
!673 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !73, line: 1817, baseType: !79, size: 32, elements: !674)
!674 = !{!675, !676, !677, !678, !679}
!675 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!676 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!677 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!678 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!679 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !670, file: !73, line: 1944, baseType: !681, size: 32)
!681 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !73, line: 1805, baseType: !79, size: 32, elements: !682)
!682 = !{!683, !684, !685, !686, !687}
!683 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!684 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!685 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!686 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!687 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !670, file: !73, line: 1945, baseType: !689, size: 32)
!689 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !73, line: 39, baseType: !79, size: 32, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882}
!691 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!692 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!693 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!694 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!695 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!696 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!697 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!698 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!699 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!700 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!701 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!702 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!703 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!704 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!705 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!706 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!707 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!708 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!709 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!710 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!711 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!712 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!713 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!714 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!715 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!716 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!717 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!718 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!719 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!720 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!721 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!722 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!723 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!724 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!725 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!726 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!727 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!728 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!729 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!730 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!731 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!732 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!733 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!734 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!735 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!736 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!737 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!738 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!739 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!740 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!741 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!742 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!743 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!744 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!745 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!746 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!747 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!748 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!749 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!750 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!751 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!752 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!753 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!754 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!755 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!756 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!757 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!758 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!759 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!760 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!761 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!762 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!763 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!764 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!765 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!766 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!767 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!768 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!769 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!770 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!771 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!772 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!773 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!774 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!775 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!776 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!777 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!778 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!779 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!780 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!781 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!782 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!783 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!784 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!785 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!786 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!787 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!788 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!789 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!790 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!791 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!792 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!793 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!794 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!795 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!796 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!797 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!798 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!799 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!800 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!801 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!802 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!803 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!804 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!805 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!806 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!807 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!808 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!809 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!810 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!811 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!812 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!813 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!814 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!815 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!816 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!817 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!818 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!819 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!820 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!821 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!822 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!823 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!824 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!825 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!826 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!827 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!828 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!829 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!830 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!831 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!832 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!833 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!834 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!835 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!836 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!837 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!838 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!839 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!840 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!841 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!842 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!843 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!844 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!845 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!846 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!847 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!848 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!849 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!850 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!851 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!852 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!853 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!854 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!855 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!856 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!857 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!858 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!859 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!860 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!861 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!862 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!863 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!864 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!865 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!866 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!867 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!868 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!869 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!870 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!871 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!872 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!873 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!874 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!875 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!876 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!877 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!878 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!879 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!880 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!881 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!882 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !646, file: !73, line: 1950, baseType: !884, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !70, line: 66, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !70, line: 65, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !646, file: !73, line: 1951, baseType: !884, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !646, file: !73, line: 1953, baseType: !535, size: 64, offset: 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !72, file: !73, line: 3404, baseType: !890, size: 1664)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !73, line: 3337, size: 1664, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !890, file: !73, line: 3338, baseType: !110, size: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !890, file: !73, line: 3341, baseType: !894, size: 1472, offset: 192)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !895, line: 410, size: 1472, elements: !896)
!895 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!896 = !{!897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !894, file: !895, line: 412, baseType: !13, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !894, file: !895, line: 413, baseType: !13, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !894, file: !895, line: 414, baseType: !13, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !894, file: !895, line: 415, baseType: !13, size: 32, offset: 96)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !894, file: !895, line: 416, baseType: !13, size: 32, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !894, file: !895, line: 417, baseType: !13, size: 32, offset: 160)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !894, file: !895, line: 418, baseType: !312, size: 8, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !894, file: !895, line: 419, baseType: !312, size: 8, offset: 200)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !894, file: !895, line: 420, baseType: !41, size: 8, offset: 208)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !894, file: !895, line: 421, baseType: !41, size: 8, offset: 216)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !894, file: !895, line: 422, baseType: !41, size: 8, offset: 224)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !894, file: !895, line: 423, baseType: !41, size: 8, offset: 232)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !894, file: !895, line: 424, baseType: !41, size: 8, offset: 240)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !894, file: !895, line: 425, baseType: !41, size: 8, offset: 248)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !894, file: !895, line: 426, baseType: !41, size: 8, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !894, file: !895, line: 427, baseType: !41, size: 8, offset: 264)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !894, file: !895, line: 428, baseType: !41, size: 8, offset: 272)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !894, file: !895, line: 429, baseType: !41, size: 8, offset: 280)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !894, file: !895, line: 430, baseType: !41, size: 8, offset: 288)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !894, file: !895, line: 431, baseType: !41, size: 8, offset: 296)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !894, file: !895, line: 432, baseType: !41, size: 8, offset: 304)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !894, file: !895, line: 433, baseType: !41, size: 8, offset: 312)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !894, file: !895, line: 434, baseType: !41, size: 8, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !894, file: !895, line: 435, baseType: !41, size: 8, offset: 328)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !894, file: !895, line: 436, baseType: !41, size: 8, offset: 336)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !894, file: !895, line: 437, baseType: !41, size: 8, offset: 344)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !894, file: !895, line: 438, baseType: !41, size: 8, offset: 352)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !894, file: !895, line: 439, baseType: !41, size: 8, offset: 360)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !894, file: !895, line: 440, baseType: !41, size: 8, offset: 368)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !894, file: !895, line: 441, baseType: !41, size: 8, offset: 376)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !894, file: !895, line: 442, baseType: !41, size: 8, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !894, file: !895, line: 443, baseType: !41, size: 8, offset: 392)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !894, file: !895, line: 444, baseType: !41, size: 8, offset: 400)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !894, file: !895, line: 445, baseType: !41, size: 8, offset: 408)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !894, file: !895, line: 446, baseType: !41, size: 8, offset: 416)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !894, file: !895, line: 447, baseType: !41, size: 8, offset: 424)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !894, file: !895, line: 448, baseType: !41, size: 8, offset: 432)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !894, file: !895, line: 449, baseType: !41, size: 8, offset: 440)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !894, file: !895, line: 450, baseType: !41, size: 8, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !894, file: !895, line: 451, baseType: !41, size: 8, offset: 456)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !894, file: !895, line: 452, baseType: !41, size: 8, offset: 464)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !894, file: !895, line: 453, baseType: !41, size: 8, offset: 472)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !894, file: !895, line: 454, baseType: !41, size: 8, offset: 480)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !894, file: !895, line: 455, baseType: !41, size: 8, offset: 488)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !894, file: !895, line: 456, baseType: !41, size: 8, offset: 496)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !894, file: !895, line: 457, baseType: !41, size: 8, offset: 504)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !894, file: !895, line: 458, baseType: !41, size: 8, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !894, file: !895, line: 459, baseType: !41, size: 8, offset: 520)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !894, file: !895, line: 460, baseType: !41, size: 8, offset: 528)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !894, file: !895, line: 461, baseType: !41, size: 8, offset: 536)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !894, file: !895, line: 462, baseType: !41, size: 8, offset: 544)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !894, file: !895, line: 463, baseType: !41, size: 8, offset: 552)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !894, file: !895, line: 464, baseType: !41, size: 8, offset: 560)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !894, file: !895, line: 465, baseType: !41, size: 8, offset: 568)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !894, file: !895, line: 466, baseType: !41, size: 8, offset: 576)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !894, file: !895, line: 467, baseType: !41, size: 8, offset: 584)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !894, file: !895, line: 468, baseType: !41, size: 8, offset: 592)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !894, file: !895, line: 469, baseType: !41, size: 8, offset: 600)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !894, file: !895, line: 470, baseType: !41, size: 8, offset: 608)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !894, file: !895, line: 471, baseType: !41, size: 8, offset: 616)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !894, file: !895, line: 472, baseType: !41, size: 8, offset: 624)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !894, file: !895, line: 473, baseType: !41, size: 8, offset: 632)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !894, file: !895, line: 474, baseType: !41, size: 8, offset: 640)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !894, file: !895, line: 475, baseType: !41, size: 8, offset: 648)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !894, file: !895, line: 476, baseType: !41, size: 8, offset: 656)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !894, file: !895, line: 477, baseType: !41, size: 8, offset: 664)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !894, file: !895, line: 478, baseType: !41, size: 8, offset: 672)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !894, file: !895, line: 479, baseType: !41, size: 8, offset: 680)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !894, file: !895, line: 480, baseType: !41, size: 8, offset: 688)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !894, file: !895, line: 481, baseType: !41, size: 8, offset: 696)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !894, file: !895, line: 482, baseType: !41, size: 8, offset: 704)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !894, file: !895, line: 483, baseType: !41, size: 8, offset: 712)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !894, file: !895, line: 484, baseType: !41, size: 8, offset: 720)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !894, file: !895, line: 485, baseType: !41, size: 8, offset: 728)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !894, file: !895, line: 486, baseType: !41, size: 8, offset: 736)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !894, file: !895, line: 487, baseType: !41, size: 8, offset: 744)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !894, file: !895, line: 488, baseType: !41, size: 8, offset: 752)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !894, file: !895, line: 489, baseType: !41, size: 8, offset: 760)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !894, file: !895, line: 490, baseType: !41, size: 8, offset: 768)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !894, file: !895, line: 491, baseType: !41, size: 8, offset: 776)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !894, file: !895, line: 492, baseType: !41, size: 8, offset: 784)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !894, file: !895, line: 493, baseType: !41, size: 8, offset: 792)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !894, file: !895, line: 494, baseType: !41, size: 8, offset: 800)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !894, file: !895, line: 495, baseType: !41, size: 8, offset: 808)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !894, file: !895, line: 496, baseType: !41, size: 8, offset: 816)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !894, file: !895, line: 497, baseType: !41, size: 8, offset: 824)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !894, file: !895, line: 498, baseType: !41, size: 8, offset: 832)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !894, file: !895, line: 499, baseType: !41, size: 8, offset: 840)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !894, file: !895, line: 500, baseType: !41, size: 8, offset: 848)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !894, file: !895, line: 501, baseType: !41, size: 8, offset: 856)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !894, file: !895, line: 502, baseType: !41, size: 8, offset: 864)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !894, file: !895, line: 503, baseType: !41, size: 8, offset: 872)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !894, file: !895, line: 504, baseType: !41, size: 8, offset: 880)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !894, file: !895, line: 505, baseType: !41, size: 8, offset: 888)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !894, file: !895, line: 506, baseType: !41, size: 8, offset: 896)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !894, file: !895, line: 507, baseType: !41, size: 8, offset: 904)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !894, file: !895, line: 508, baseType: !41, size: 8, offset: 912)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !894, file: !895, line: 509, baseType: !41, size: 8, offset: 920)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !894, file: !895, line: 510, baseType: !41, size: 8, offset: 928)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !894, file: !895, line: 511, baseType: !41, size: 8, offset: 936)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !894, file: !895, line: 512, baseType: !41, size: 8, offset: 944)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !894, file: !895, line: 513, baseType: !41, size: 8, offset: 952)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !894, file: !895, line: 514, baseType: !41, size: 8, offset: 960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !894, file: !895, line: 515, baseType: !41, size: 8, offset: 968)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !894, file: !895, line: 516, baseType: !41, size: 8, offset: 976)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !894, file: !895, line: 517, baseType: !41, size: 8, offset: 984)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !894, file: !895, line: 518, baseType: !41, size: 8, offset: 992)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !894, file: !895, line: 519, baseType: !41, size: 8, offset: 1000)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !894, file: !895, line: 520, baseType: !41, size: 8, offset: 1008)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !894, file: !895, line: 521, baseType: !41, size: 8, offset: 1016)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !894, file: !895, line: 522, baseType: !41, size: 8, offset: 1024)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !894, file: !895, line: 523, baseType: !41, size: 8, offset: 1032)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !894, file: !895, line: 524, baseType: !41, size: 8, offset: 1040)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !894, file: !895, line: 525, baseType: !41, size: 8, offset: 1048)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !894, file: !895, line: 526, baseType: !41, size: 8, offset: 1056)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !894, file: !895, line: 527, baseType: !41, size: 8, offset: 1064)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !894, file: !895, line: 528, baseType: !41, size: 8, offset: 1072)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !894, file: !895, line: 529, baseType: !41, size: 8, offset: 1080)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !894, file: !895, line: 530, baseType: !41, size: 8, offset: 1088)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !894, file: !895, line: 531, baseType: !41, size: 8, offset: 1096)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !894, file: !895, line: 532, baseType: !41, size: 8, offset: 1104)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !894, file: !895, line: 533, baseType: !41, size: 8, offset: 1112)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !894, file: !895, line: 534, baseType: !41, size: 8, offset: 1120)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !894, file: !895, line: 535, baseType: !41, size: 8, offset: 1128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !894, file: !895, line: 536, baseType: !41, size: 8, offset: 1136)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !894, file: !895, line: 537, baseType: !41, size: 8, offset: 1144)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !894, file: !895, line: 538, baseType: !41, size: 8, offset: 1152)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !894, file: !895, line: 539, baseType: !41, size: 8, offset: 1160)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !894, file: !895, line: 540, baseType: !41, size: 8, offset: 1168)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !894, file: !895, line: 541, baseType: !41, size: 8, offset: 1176)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !894, file: !895, line: 542, baseType: !41, size: 8, offset: 1184)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !894, file: !895, line: 543, baseType: !41, size: 8, offset: 1192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !894, file: !895, line: 544, baseType: !41, size: 8, offset: 1200)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !894, file: !895, line: 545, baseType: !41, size: 8, offset: 1208)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !894, file: !895, line: 546, baseType: !41, size: 8, offset: 1216)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !894, file: !895, line: 547, baseType: !41, size: 8, offset: 1224)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !894, file: !895, line: 548, baseType: !41, size: 8, offset: 1232)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !894, file: !895, line: 549, baseType: !41, size: 8, offset: 1240)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !894, file: !895, line: 550, baseType: !41, size: 8, offset: 1248)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !894, file: !895, line: 551, baseType: !41, size: 8, offset: 1256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !894, file: !895, line: 552, baseType: !41, size: 8, offset: 1264)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !894, file: !895, line: 553, baseType: !41, size: 8, offset: 1272)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !894, file: !895, line: 554, baseType: !41, size: 8, offset: 1280)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !894, file: !895, line: 555, baseType: !41, size: 8, offset: 1288)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !894, file: !895, line: 556, baseType: !41, size: 8, offset: 1296)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !894, file: !895, line: 557, baseType: !41, size: 8, offset: 1304)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !894, file: !895, line: 558, baseType: !41, size: 8, offset: 1312)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !894, file: !895, line: 559, baseType: !41, size: 8, offset: 1320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !894, file: !895, line: 560, baseType: !41, size: 8, offset: 1328)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !894, file: !895, line: 561, baseType: !41, size: 8, offset: 1336)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !894, file: !895, line: 562, baseType: !41, size: 8, offset: 1344)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !894, file: !895, line: 563, baseType: !41, size: 8, offset: 1352)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !894, file: !895, line: 564, baseType: !41, size: 8, offset: 1360)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !894, file: !895, line: 565, baseType: !41, size: 8, offset: 1368)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !894, file: !895, line: 566, baseType: !41, size: 8, offset: 1376)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !894, file: !895, line: 567, baseType: !41, size: 8, offset: 1384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !894, file: !895, line: 568, baseType: !41, size: 8, offset: 1392)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !894, file: !895, line: 569, baseType: !41, size: 8, offset: 1400)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !894, file: !895, line: 570, baseType: !41, size: 8, offset: 1408)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !894, file: !895, line: 571, baseType: !41, size: 8, offset: 1416)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !894, file: !895, line: 572, baseType: !41, size: 8, offset: 1424)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !894, file: !895, line: 573, baseType: !41, size: 8, offset: 1432)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !894, file: !895, line: 574, baseType: !41, size: 8, offset: 1440)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !72, file: !73, line: 3405, baseType: !1061, size: 384)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !73, line: 3352, size: 384, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1061, file: !73, line: 3353, baseType: !110, size: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1061, file: !73, line: 3356, baseType: !1065, size: 192, offset: 192)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !895, line: 578, size: 192, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1065, file: !895, line: 580, baseType: !13, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1065, file: !895, line: 581, baseType: !13, size: 32, offset: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1065, file: !895, line: 582, baseType: !13, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1065, file: !895, line: 583, baseType: !13, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1065, file: !895, line: 584, baseType: !312, size: 8, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1065, file: !895, line: 585, baseType: !312, size: 8, offset: 136)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1065, file: !895, line: 586, baseType: !312, size: 8, offset: 144)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1065, file: !895, line: 587, baseType: !312, size: 8, offset: 152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1065, file: !895, line: 588, baseType: !312, size: 8, offset: 160)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1065, file: !895, line: 589, baseType: !312, size: 8, offset: 168)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1065, file: !895, line: 590, baseType: !312, size: 8, offset: 176)
!1078 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1079, retainedTypes: !1113, globals: !1118, nameTableKind: None)
!1079 = !{!1080, !1086, !156, !651, !673, !681, !689, !1091}
!1080 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1081, line: 104, baseType: !79, size: 32, elements: !1082)
!1081 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1082 = !{!1083, !1084, !1085}
!1083 = !DIEnumerator(name: "pp_none", value: 0, isUnsigned: true)
!1084 = !DIEnumerator(name: "pp_before", value: 1, isUnsigned: true)
!1085 = !DIEnumerator(name: "pp_after", value: 2, isUnsigned: true)
!1086 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1081, line: 46, baseType: !79, size: 32, elements: !1087)
!1087 = !{!1088, !1089, !1090}
!1088 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_ONCE", value: 0, isUnsigned: true)
!1089 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_NEVER", value: 1, isUnsigned: true)
!1090 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE", value: 2, isUnsigned: true)
!1091 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !1092, line: 36, baseType: !79, size: 32, elements: !1093)
!1092 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112}
!1094 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!1095 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!1096 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!1097 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!1098 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!1099 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!1100 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!1101 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!1102 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!1103 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!1104 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!1105 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!1106 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!1107 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!1108 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!1109 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!1110 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!1111 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!1112 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!1113 = !{!1114, !312, !13, !1115, !59, !507, !689, !1091, !37, !63, !322, !69, !79, !1116, !39}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1117, line: 90, baseType: !63)
!1117 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1118 = !{!0, !1119, !1121}
!1119 = !DIGlobalVariableExpression(var: !1120, expr: !DIExpression())
!1120 = distinct !DIGlobalVariable(name: "initialized", scope: !2, file: !3, line: 2212, type: !312, isLocal: true, isDefinition: true)
!1121 = !DIGlobalVariableExpression(var: !1122, expr: !DIExpression())
!1122 = distinct !DIGlobalVariable(name: "xname", scope: !1123, file: !3, line: 2253, type: !1268, isLocal: true, isDefinition: true)
!1123 = distinct !DISubprogram(name: "pp_c_tree_decl_identifier", scope: !3, file: !3, line: 2243, type: !1124, scopeLine: 2244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1264)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !1126, !69}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "c_pretty_printer", file: !1128, line: 38, baseType: !1129)
!1128 = !DIFile(filename: "./c-pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "c_pretty_print_info", file: !1128, line: 54, size: 2112, elements: !1130)
!1130 = !{!1131, !1234, !1236, !1238, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1129, file: !1128, line: 56, baseType: !1132, size: 448)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pretty_printer", file: !1081, line: 134, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pretty_print_info", file: !1081, line: 158, size: 448, elements: !1134)
!1134 = !{!1135, !1190, !1191, !1193, !1194, !1195, !1202, !1231, !1232, !1233}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1133, file: !1081, line: 161, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_buffer", file: !1081, line: 99, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1081, line: 74, size: 2688, elements: !1139)
!1139 = !{!1140, !1172, !1173, !1175, !1184, !1185, !1186}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "formatted_obstack", scope: !1138, file: !1081, line: 77, baseType: !1141, size: 704)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1142, line: 164, size: 704, elements: !1143)
!1142 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1143 = !{!1144, !1145, !1155, !1156, !1157, !1158, !1159, !1160, !1164, !1168, !1169, !1170, !1171}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1141, file: !1142, line: 166, baseType: !37, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1141, file: !1142, line: 167, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1142, line: 157, size: 192, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1147, file: !1142, line: 159, baseType: !15, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1147, file: !1142, line: 160, baseType: !1146, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1147, file: !1142, line: 161, baseType: !1152, size: 32, offset: 128)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 32, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 4)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1141, file: !1142, line: 168, baseType: !15, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1141, file: !1142, line: 169, baseType: !15, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1141, file: !1142, line: 170, baseType: !15, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1141, file: !1142, line: 171, baseType: !37, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1141, file: !1142, line: 172, baseType: !13, size: 32, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1141, file: !1142, line: 176, baseType: !1161, size: 64, offset: 448)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!1146, !59, !37}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1141, file: !1142, line: 177, baseType: !1165, size: 64, offset: 512)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !59, !1146}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1141, file: !1142, line: 178, baseType: !59, size: 64, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1141, file: !1142, line: 179, baseType: !79, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1141, file: !1142, line: 180, baseType: !79, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1141, file: !1142, line: 184, baseType: !79, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_obstack", scope: !1138, file: !1081, line: 81, baseType: !1141, size: 704, offset: 704)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1138, file: !1081, line: 85, baseType: !1174, size: 64, offset: 1408)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chunk_array", scope: !1138, file: !1081, line: 88, baseType: !1176, size: 64, offset: 1472)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_info", file: !1081, line: 58, size: 3904, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1177, file: !1081, line: 61, baseType: !1176, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1177, file: !1081, line: 69, baseType: !1181, size: 3840, offset: 64)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 3840, elements: !1182)
!1182 = !{!1183}
!1183 = !DISubrange(count: 60)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1138, file: !1081, line: 91, baseType: !6, size: 64, offset: 1536)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !1138, file: !1081, line: 94, baseType: !13, size: 32, offset: 1600)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "digit_buffer", scope: !1138, file: !1081, line: 98, baseType: !1187, size: 1024, offset: 1632)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1024, elements: !1188)
!1188 = !{!1189}
!1189 = !DISubrange(count: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1133, file: !1081, line: 164, baseType: !507, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1133, file: !1081, line: 167, baseType: !1192, size: 32, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_padding", file: !1081, line: 107, baseType: !1080)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_length", scope: !1133, file: !1081, line: 171, baseType: !13, size: 32, offset: 160)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "indent_skip", scope: !1133, file: !1081, line: 174, baseType: !13, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "wrapping", scope: !1133, file: !1081, line: 177, baseType: !1196, size: 64, offset: 224)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_wrapping_mode_t", file: !1081, line: 119, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1081, line: 111, size: 64, elements: !1198)
!1198 = !{!1199, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rule", scope: !1197, file: !1081, line: 114, baseType: !1200, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_prefixing_rule_t", file: !1081, line: 51, baseType: !1086)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "line_cutoff", scope: !1197, file: !1081, line: 118, baseType: !13, size: 32, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "format_decoder", scope: !1133, file: !1081, line: 187, baseType: !1203, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "printer_fn", file: !1081, line: 135, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!312, !1207, !1208, !507, !13, !312, !312, !312}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !1081, line: 39, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1081, line: 32, size: 320, elements: !1211)
!1211 = !{!1212, !1213, !1227, !1228, !1230}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !1210, file: !1081, line: 34, baseType: !507, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !1210, file: !1081, line: 35, baseType: !1214, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1216, line: 52, baseType: !1217)
!1216 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1218, line: 32, baseType: !1219)
!1218 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 527, baseType: !1220)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 192, elements: !44)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1221, file: !3, baseType: !79, size: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1221, file: !3, baseType: !79, size: 32, offset: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1221, file: !3, baseType: !59, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1221, file: !3, baseType: !59, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !1210, file: !1081, line: 36, baseType: !13, size: 32, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1210, file: !1081, line: 37, baseType: !1229, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1210, file: !1081, line: 38, baseType: !568, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "emitted_prefix", scope: !1133, file: !1081, line: 190, baseType: !312, size: 8, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "need_newline", scope: !1133, file: !1081, line: 193, baseType: !312, size: 8, offset: 392)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "translate_identifiers", scope: !1133, file: !1081, line: 197, baseType: !312, size: 8, offset: 400)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "offset_list", scope: !1129, file: !1128, line: 59, baseType: !1235, size: 64, offset: 448)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1128, line: 61, baseType: !1237, size: 32, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_flags", file: !1081, line: 102, baseType: !79)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "declaration", scope: !1129, file: !1128, line: 65, baseType: !1239, size: 64, offset: 576)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "c_pretty_print_fn", file: !1128, line: 41, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "declaration_specifiers", scope: !1129, file: !1128, line: 66, baseType: !1239, size: 64, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "declarator", scope: !1129, file: !1128, line: 67, baseType: !1239, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_declarator", scope: !1129, file: !1128, line: 68, baseType: !1239, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "direct_abstract_declarator", scope: !1129, file: !1128, line: 69, baseType: !1239, size: 64, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "type_specifier_seq", scope: !1129, file: !1128, line: 70, baseType: !1239, size: 64, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "direct_declarator", scope: !1129, file: !1128, line: 71, baseType: !1239, size: 64, offset: 960)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_operator", scope: !1129, file: !1128, line: 72, baseType: !1239, size: 64, offset: 1024)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_list", scope: !1129, file: !1128, line: 73, baseType: !1239, size: 64, offset: 1088)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "type_id", scope: !1129, file: !1128, line: 74, baseType: !1239, size: 64, offset: 1152)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "simple_type_specifier", scope: !1129, file: !1128, line: 75, baseType: !1239, size: 64, offset: 1216)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "function_specifier", scope: !1129, file: !1128, line: 76, baseType: !1239, size: 64, offset: 1280)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class_specifier", scope: !1129, file: !1128, line: 77, baseType: !1239, size: 64, offset: 1344)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "initializer", scope: !1129, file: !1128, line: 78, baseType: !1239, size: 64, offset: 1408)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "statement", scope: !1129, file: !1128, line: 80, baseType: !1239, size: 64, offset: 1472)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !1129, file: !1128, line: 82, baseType: !1239, size: 64, offset: 1536)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "id_expression", scope: !1129, file: !1128, line: 83, baseType: !1239, size: 64, offset: 1600)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "primary_expression", scope: !1129, file: !1128, line: 84, baseType: !1239, size: 64, offset: 1664)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "postfix_expression", scope: !1129, file: !1128, line: 85, baseType: !1239, size: 64, offset: 1728)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "unary_expression", scope: !1129, file: !1128, line: 86, baseType: !1239, size: 64, offset: 1792)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "multiplicative_expression", scope: !1129, file: !1128, line: 87, baseType: !1239, size: 64, offset: 1856)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "conditional_expression", scope: !1129, file: !1128, line: 88, baseType: !1239, size: 64, offset: 1920)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "assignment_expression", scope: !1129, file: !1128, line: 89, baseType: !1239, size: 64, offset: 1984)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "expression", scope: !1129, file: !1128, line: 90, baseType: !1239, size: 64, offset: 2048)
!1264 = !{!1265, !1266, !1267}
!1265 = !DILocalVariable(name: "pp", arg: 1, scope: !1123, file: !3, line: 2243, type: !1126)
!1266 = !DILocalVariable(name: "t", arg: 2, scope: !1123, file: !3, line: 2243, type: !69)
!1267 = !DILocalVariable(name: "name", scope: !1123, file: !3, line: 2245, type: !507)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !1269)
!1269 = !{!1270}
!1270 = !DISubrange(count: 8)
!1271 = !{!1272, !1273, !1274}
!1272 = !DILocalVariable(name: "file", arg: 1, scope: !2, file: !3, line: 2209, type: !6)
!1273 = !DILocalVariable(name: "t", arg: 2, scope: !2, file: !3, line: 2209, type: !69)
!1274 = !DILocalVariable(name: "pp", scope: !2, file: !3, line: 2213, type: !1126)
!1275 = !DIGlobalVariableExpression(var: !1120, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1276 = !{i32 2, !"Dwarf Version", i32 4}
!1277 = !{i32 2, !"Debug Info Version", i32 3}
!1278 = !{i32 1, !"wchar_size", i32 4}
!1279 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1280 = distinct !DISubprogram(name: "vprintf", scope: !1281, file: !1281, line: 39, type: !1282, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1286)
!1281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!13, !1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !507)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1286 = !{!1287, !1288}
!1287 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1280, file: !1281, line: 39, type: !1284)
!1288 = !DILocalVariable(name: "__arg", arg: 2, scope: !1280, file: !1281, line: 39, type: !1285)
!1289 = !DILocation(line: 0, scope: !1280)
!1290 = !DILocation(line: 41, column: 20, scope: !1280)
!1291 = !DILocation(line: 41, column: 10, scope: !1280)
!1292 = !DILocation(line: 41, column: 3, scope: !1280)
!1293 = distinct !DISubprogram(name: "getchar", scope: !1281, file: !1281, line: 47, type: !1294, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1296)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!13}
!1296 = !{}
!1297 = !DILocation(line: 49, column: 16, scope: !1293)
!1298 = !DILocation(line: 49, column: 10, scope: !1293)
!1299 = !DILocation(line: 49, column: 3, scope: !1293)
!1300 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1281, file: !1281, line: 56, type: !1301, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!13, !6}
!1303 = !{!1304}
!1304 = !DILocalVariable(name: "__fp", arg: 1, scope: !1300, file: !1281, line: 56, type: !6)
!1305 = !DILocation(line: 0, scope: !1300)
!1306 = !DILocation(line: 58, column: 10, scope: !1300)
!1307 = !DILocation(line: 58, column: 3, scope: !1300)
!1308 = distinct !DISubprogram(name: "getc_unlocked", scope: !1281, file: !1281, line: 66, type: !1301, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1309)
!1309 = !{!1310}
!1310 = !DILocalVariable(name: "__fp", arg: 1, scope: !1308, file: !1281, line: 66, type: !6)
!1311 = !DILocation(line: 0, scope: !1308)
!1312 = !DILocation(line: 68, column: 10, scope: !1308)
!1313 = !DILocation(line: 68, column: 3, scope: !1308)
!1314 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1281, file: !1281, line: 73, type: !1294, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1296)
!1315 = !DILocation(line: 75, column: 10, scope: !1314)
!1316 = !DILocation(line: 75, column: 3, scope: !1314)
!1317 = distinct !DISubprogram(name: "putchar", scope: !1281, file: !1281, line: 82, type: !1318, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!13, !13}
!1320 = !{!1321}
!1321 = !DILocalVariable(name: "__c", arg: 1, scope: !1317, file: !1281, line: 82, type: !13)
!1322 = !DILocation(line: 0, scope: !1317)
!1323 = !DILocation(line: 84, column: 21, scope: !1317)
!1324 = !DILocation(line: 84, column: 10, scope: !1317)
!1325 = !DILocation(line: 84, column: 3, scope: !1317)
!1326 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1281, file: !1281, line: 91, type: !1327, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1329)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!13, !13, !6}
!1329 = !{!1330, !1331}
!1330 = !DILocalVariable(name: "__c", arg: 1, scope: !1326, file: !1281, line: 91, type: !13)
!1331 = !DILocalVariable(name: "__stream", arg: 2, scope: !1326, file: !1281, line: 91, type: !6)
!1332 = !DILocation(line: 0, scope: !1326)
!1333 = !DILocation(line: 93, column: 10, scope: !1326)
!1334 = !DILocation(line: 93, column: 3, scope: !1326)
!1335 = distinct !DISubprogram(name: "putc_unlocked", scope: !1281, file: !1281, line: 101, type: !1327, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1336)
!1336 = !{!1337, !1338}
!1337 = !DILocalVariable(name: "__c", arg: 1, scope: !1335, file: !1281, line: 101, type: !13)
!1338 = !DILocalVariable(name: "__stream", arg: 2, scope: !1335, file: !1281, line: 101, type: !6)
!1339 = !DILocation(line: 0, scope: !1335)
!1340 = !DILocation(line: 103, column: 10, scope: !1335)
!1341 = !DILocation(line: 103, column: 3, scope: !1335)
!1342 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1281, file: !1281, line: 108, type: !1318, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1343)
!1343 = !{!1344}
!1344 = !DILocalVariable(name: "__c", arg: 1, scope: !1342, file: !1281, line: 108, type: !13)
!1345 = !DILocation(line: 0, scope: !1342)
!1346 = !DILocation(line: 110, column: 10, scope: !1342)
!1347 = !DILocation(line: 110, column: 3, scope: !1342)
!1348 = distinct !DISubprogram(name: "getline", scope: !1281, file: !1281, line: 118, type: !1349, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1353)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1351, !1115, !1352, !6}
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !36, line: 193, baseType: !37)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!1353 = !{!1354, !1355, !1356}
!1354 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1348, file: !1281, line: 118, type: !1115)
!1355 = !DILocalVariable(name: "__n", arg: 2, scope: !1348, file: !1281, line: 118, type: !1352)
!1356 = !DILocalVariable(name: "__stream", arg: 3, scope: !1348, file: !1281, line: 118, type: !6)
!1357 = !DILocation(line: 0, scope: !1348)
!1358 = !DILocation(line: 120, column: 10, scope: !1348)
!1359 = !DILocation(line: 120, column: 3, scope: !1348)
!1360 = distinct !DISubprogram(name: "feof_unlocked", scope: !1281, file: !1281, line: 128, type: !1301, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1361)
!1361 = !{!1362}
!1362 = !DILocalVariable(name: "__stream", arg: 1, scope: !1360, file: !1281, line: 128, type: !6)
!1363 = !DILocation(line: 0, scope: !1360)
!1364 = !DILocation(line: 130, column: 10, scope: !1360)
!1365 = !DILocation(line: 130, column: 3, scope: !1360)
!1366 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1281, file: !1281, line: 135, type: !1301, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1367)
!1367 = !{!1368}
!1368 = !DILocalVariable(name: "__stream", arg: 1, scope: !1366, file: !1281, line: 135, type: !6)
!1369 = !DILocation(line: 0, scope: !1366)
!1370 = !DILocation(line: 137, column: 10, scope: !1366)
!1371 = !DILocation(line: 137, column: 3, scope: !1366)
!1372 = distinct !DISubprogram(name: "tolower", scope: !1373, file: !1373, line: 207, type: !1318, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1374)
!1373 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1374 = !{!1375}
!1375 = !DILocalVariable(name: "__c", arg: 1, scope: !1372, file: !1373, line: 207, type: !13)
!1376 = !DILocation(line: 0, scope: !1372)
!1377 = !DILocation(line: 209, column: 22, scope: !1372)
!1378 = !DILocation(line: 209, column: 39, scope: !1372)
!1379 = !DILocation(line: 209, column: 38, scope: !1372)
!1380 = !DILocation(line: 209, column: 37, scope: !1372)
!1381 = !DILocation(line: 209, column: 10, scope: !1372)
!1382 = !DILocation(line: 209, column: 3, scope: !1372)
!1383 = distinct !DISubprogram(name: "toupper", scope: !1373, file: !1373, line: 213, type: !1318, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1384)
!1384 = !{!1385}
!1385 = !DILocalVariable(name: "__c", arg: 1, scope: !1383, file: !1373, line: 213, type: !13)
!1386 = !DILocation(line: 0, scope: !1383)
!1387 = !DILocation(line: 215, column: 22, scope: !1383)
!1388 = !DILocation(line: 215, column: 39, scope: !1383)
!1389 = !DILocation(line: 215, column: 38, scope: !1383)
!1390 = !DILocation(line: 215, column: 37, scope: !1383)
!1391 = !DILocation(line: 215, column: 10, scope: !1383)
!1392 = !DILocation(line: 215, column: 3, scope: !1383)
!1393 = distinct !DISubprogram(name: "atoi", scope: !1394, file: !1394, line: 361, type: !1395, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1397)
!1394 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!13, !507}
!1397 = !{!1398}
!1398 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1393, file: !1394, line: 361, type: !507)
!1399 = !DILocation(line: 0, scope: !1393)
!1400 = !DILocation(line: 363, column: 16, scope: !1393)
!1401 = !DILocation(line: 363, column: 10, scope: !1393)
!1402 = !DILocation(line: 363, column: 3, scope: !1393)
!1403 = distinct !DISubprogram(name: "atol", scope: !1394, file: !1394, line: 366, type: !1404, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!37, !507}
!1406 = !{!1407}
!1407 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1403, file: !1394, line: 366, type: !507)
!1408 = !DILocation(line: 0, scope: !1403)
!1409 = !DILocation(line: 368, column: 10, scope: !1403)
!1410 = !DILocation(line: 368, column: 3, scope: !1403)
!1411 = distinct !DISubprogram(name: "atoll", scope: !1394, file: !1394, line: 373, type: !1412, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1415)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1414, !507}
!1414 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1415 = !{!1416}
!1416 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1411, file: !1394, line: 373, type: !507)
!1417 = !DILocation(line: 0, scope: !1411)
!1418 = !DILocation(line: 375, column: 10, scope: !1411)
!1419 = !DILocation(line: 375, column: 3, scope: !1411)
!1420 = distinct !DISubprogram(name: "bsearch", scope: !1421, file: !1421, line: 20, type: !1422, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1430)
!1421 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!59, !1424, !1424, !61, !61, !1426}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1394, line: 808, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!13, !1424, !1424}
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1431 = !DILocalVariable(name: "__key", arg: 1, scope: !1420, file: !1421, line: 20, type: !1424)
!1432 = !DILocalVariable(name: "__base", arg: 2, scope: !1420, file: !1421, line: 20, type: !1424)
!1433 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1420, file: !1421, line: 20, type: !61)
!1434 = !DILocalVariable(name: "__size", arg: 4, scope: !1420, file: !1421, line: 20, type: !61)
!1435 = !DILocalVariable(name: "__compar", arg: 5, scope: !1420, file: !1421, line: 21, type: !1426)
!1436 = !DILocalVariable(name: "__l", scope: !1420, file: !1421, line: 23, type: !61)
!1437 = !DILocalVariable(name: "__u", scope: !1420, file: !1421, line: 23, type: !61)
!1438 = !DILocalVariable(name: "__idx", scope: !1420, file: !1421, line: 23, type: !61)
!1439 = !DILocalVariable(name: "__p", scope: !1420, file: !1421, line: 24, type: !1424)
!1440 = !DILocalVariable(name: "__comparison", scope: !1420, file: !1421, line: 25, type: !13)
!1441 = !DILocation(line: 0, scope: !1420)
!1442 = !DILocation(line: 29, column: 3, scope: !1420)
!1443 = !DILocation(line: 27, column: 7, scope: !1420)
!1444 = !DILocation(line: 29, column: 14, scope: !1420)
!1445 = !DILocation(line: 31, column: 20, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1420, file: !1421, line: 30, column: 5)
!1447 = !DILocation(line: 31, column: 27, scope: !1446)
!1448 = !DILocation(line: 32, column: 56, scope: !1446)
!1449 = !DILocation(line: 32, column: 47, scope: !1446)
!1450 = !DILocation(line: 33, column: 22, scope: !1446)
!1451 = !DILocation(line: 34, column: 24, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1446, file: !1421, line: 34, column: 11)
!1453 = !DILocation(line: 34, column: 11, scope: !1446)
!1454 = !DILocation(line: 36, column: 29, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !1421, line: 36, column: 16)
!1456 = !DILocation(line: 36, column: 16, scope: !1452)
!1457 = !DILocation(line: 37, column: 14, scope: !1455)
!1458 = distinct !{!1458, !1442, !1459}
!1459 = !DILocation(line: 40, column: 5, scope: !1420)
!1460 = !DILocation(line: 43, column: 1, scope: !1420)
!1461 = distinct !DISubprogram(name: "atof", scope: !1462, file: !1462, line: 25, type: !1463, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1466)
!1462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1465, !507}
!1465 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1466 = !{!1467}
!1467 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1461, file: !1462, line: 25, type: !507)
!1468 = !DILocation(line: 0, scope: !1461)
!1469 = !DILocation(line: 27, column: 10, scope: !1461)
!1470 = !DILocation(line: 27, column: 3, scope: !1461)
!1471 = distinct !DISubprogram(name: "strtoimax", scope: !1472, file: !1472, line: 324, type: !1473, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1478)
!1472 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!1475, !1284, !1477, !13}
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1117, line: 101, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !36, line: 72, baseType: !37)
!1477 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1115)
!1478 = !{!1479, !1480, !1481}
!1479 = !DILocalVariable(name: "nptr", arg: 1, scope: !1471, file: !1472, line: 324, type: !1284)
!1480 = !DILocalVariable(name: "endptr", arg: 2, scope: !1471, file: !1472, line: 324, type: !1477)
!1481 = !DILocalVariable(name: "base", arg: 3, scope: !1471, file: !1472, line: 324, type: !13)
!1482 = !DILocation(line: 0, scope: !1471)
!1483 = !DILocation(line: 327, column: 10, scope: !1471)
!1484 = !DILocation(line: 327, column: 3, scope: !1471)
!1485 = distinct !DISubprogram(name: "strtoumax", scope: !1472, file: !1472, line: 336, type: !1486, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1490)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1488, !1284, !1477, !13}
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1117, line: 102, baseType: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !36, line: 73, baseType: !63)
!1490 = !{!1491, !1492, !1493}
!1491 = !DILocalVariable(name: "nptr", arg: 1, scope: !1485, file: !1472, line: 336, type: !1284)
!1492 = !DILocalVariable(name: "endptr", arg: 2, scope: !1485, file: !1472, line: 336, type: !1477)
!1493 = !DILocalVariable(name: "base", arg: 3, scope: !1485, file: !1472, line: 336, type: !13)
!1494 = !DILocation(line: 0, scope: !1485)
!1495 = !DILocation(line: 339, column: 10, scope: !1485)
!1496 = !DILocation(line: 339, column: 3, scope: !1485)
!1497 = distinct !DISubprogram(name: "wcstoimax", scope: !1472, file: !1472, line: 348, type: !1498, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1507)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1475, !1500, !1504, !13}
!1500 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1472, line: 34, baseType: !13)
!1504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1507 = !{!1508, !1509, !1510}
!1508 = !DILocalVariable(name: "nptr", arg: 1, scope: !1497, file: !1472, line: 348, type: !1500)
!1509 = !DILocalVariable(name: "endptr", arg: 2, scope: !1497, file: !1472, line: 348, type: !1504)
!1510 = !DILocalVariable(name: "base", arg: 3, scope: !1497, file: !1472, line: 348, type: !13)
!1511 = !DILocation(line: 0, scope: !1497)
!1512 = !DILocation(line: 351, column: 10, scope: !1497)
!1513 = !DILocation(line: 351, column: 3, scope: !1497)
!1514 = distinct !DISubprogram(name: "wcstoumax", scope: !1472, file: !1472, line: 362, type: !1515, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!1488, !1500, !1504, !13}
!1517 = !{!1518, !1519, !1520}
!1518 = !DILocalVariable(name: "nptr", arg: 1, scope: !1514, file: !1472, line: 362, type: !1500)
!1519 = !DILocalVariable(name: "endptr", arg: 2, scope: !1514, file: !1472, line: 362, type: !1504)
!1520 = !DILocalVariable(name: "base", arg: 3, scope: !1514, file: !1472, line: 362, type: !13)
!1521 = !DILocation(line: 0, scope: !1514)
!1522 = !DILocation(line: 365, column: 10, scope: !1514)
!1523 = !DILocation(line: 365, column: 3, scope: !1514)
!1524 = distinct !DISubprogram(name: "stat", scope: !1525, file: !1525, line: 453, type: !1526, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1563)
!1525 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!13, !507, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1530, line: 46, size: 1152, elements: !1531)
!1530 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1531 = !{!1532, !1534, !1536, !1538, !1540, !1542, !1544, !1545, !1546, !1547, !1549, !1551, !1559, !1560, !1561}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1529, file: !1530, line: 48, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !36, line: 145, baseType: !63)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1529, file: !1530, line: 53, baseType: !1535, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !36, line: 148, baseType: !63)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1529, file: !1530, line: 61, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !36, line: 151, baseType: !63)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1529, file: !1530, line: 62, baseType: !1539, size: 32, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !36, line: 150, baseType: !79)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1529, file: !1530, line: 64, baseType: !1541, size: 32, offset: 224)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !36, line: 146, baseType: !79)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1529, file: !1530, line: 65, baseType: !1543, size: 32, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !36, line: 147, baseType: !79)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1529, file: !1530, line: 67, baseType: !13, size: 32, offset: 288)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1529, file: !1530, line: 69, baseType: !1533, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1529, file: !1530, line: 74, baseType: !35, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1529, file: !1530, line: 78, baseType: !1548, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !36, line: 174, baseType: !37)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1529, file: !1530, line: 80, baseType: !1550, size: 64, offset: 512)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !36, line: 179, baseType: !37)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1529, file: !1530, line: 91, baseType: !1552, size: 128, offset: 576)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1553, line: 10, size: 128, elements: !1554)
!1553 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1554 = !{!1555, !1557}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1552, file: !1553, line: 12, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !36, line: 160, baseType: !37)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1552, file: !1553, line: 16, baseType: !1558, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !36, line: 196, baseType: !37)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1529, file: !1530, line: 92, baseType: !1552, size: 128, offset: 704)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1529, file: !1530, line: 93, baseType: !1552, size: 128, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1529, file: !1530, line: 106, baseType: !1562, size: 192, offset: 960)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1558, size: 192, elements: !143)
!1563 = !{!1564, !1565}
!1564 = !DILocalVariable(name: "__path", arg: 1, scope: !1524, file: !1525, line: 453, type: !507)
!1565 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1524, file: !1525, line: 453, type: !1528)
!1566 = !DILocation(line: 0, scope: !1524)
!1567 = !DILocation(line: 455, column: 10, scope: !1524)
!1568 = !DILocation(line: 455, column: 3, scope: !1524)
!1569 = distinct !DISubprogram(name: "lstat", scope: !1525, file: !1525, line: 460, type: !1526, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1570)
!1570 = !{!1571, !1572}
!1571 = !DILocalVariable(name: "__path", arg: 1, scope: !1569, file: !1525, line: 460, type: !507)
!1572 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1569, file: !1525, line: 460, type: !1528)
!1573 = !DILocation(line: 0, scope: !1569)
!1574 = !DILocation(line: 462, column: 10, scope: !1569)
!1575 = !DILocation(line: 462, column: 3, scope: !1569)
!1576 = distinct !DISubprogram(name: "fstat", scope: !1525, file: !1525, line: 467, type: !1577, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!13, !13, !1528}
!1579 = !{!1580, !1581}
!1580 = !DILocalVariable(name: "__fd", arg: 1, scope: !1576, file: !1525, line: 467, type: !13)
!1581 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1576, file: !1525, line: 467, type: !1528)
!1582 = !DILocation(line: 0, scope: !1576)
!1583 = !DILocation(line: 469, column: 10, scope: !1576)
!1584 = !DILocation(line: 469, column: 3, scope: !1576)
!1585 = distinct !DISubprogram(name: "fstatat", scope: !1525, file: !1525, line: 474, type: !1586, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!13, !13, !507, !1528, !13}
!1588 = !{!1589, !1590, !1591, !1592}
!1589 = !DILocalVariable(name: "__fd", arg: 1, scope: !1585, file: !1525, line: 474, type: !13)
!1590 = !DILocalVariable(name: "__filename", arg: 2, scope: !1585, file: !1525, line: 474, type: !507)
!1591 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1585, file: !1525, line: 474, type: !1528)
!1592 = !DILocalVariable(name: "__flag", arg: 4, scope: !1585, file: !1525, line: 474, type: !13)
!1593 = !DILocation(line: 0, scope: !1585)
!1594 = !DILocation(line: 477, column: 10, scope: !1585)
!1595 = !DILocation(line: 477, column: 3, scope: !1585)
!1596 = distinct !DISubprogram(name: "mknod", scope: !1525, file: !1525, line: 483, type: !1597, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1599)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!13, !507, !1539, !1533}
!1599 = !{!1600, !1601, !1602}
!1600 = !DILocalVariable(name: "__path", arg: 1, scope: !1596, file: !1525, line: 483, type: !507)
!1601 = !DILocalVariable(name: "__mode", arg: 2, scope: !1596, file: !1525, line: 483, type: !1539)
!1602 = !DILocalVariable(name: "__dev", arg: 3, scope: !1596, file: !1525, line: 483, type: !1533)
!1603 = !DILocation(line: 0, scope: !1596)
!1604 = !DILocation(line: 485, column: 10, scope: !1596)
!1605 = !DILocation(line: 485, column: 3, scope: !1596)
!1606 = distinct !DISubprogram(name: "mknodat", scope: !1525, file: !1525, line: 491, type: !1607, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1609)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!13, !13, !507, !1539, !1533}
!1609 = !{!1610, !1611, !1612, !1613}
!1610 = !DILocalVariable(name: "__fd", arg: 1, scope: !1606, file: !1525, line: 491, type: !13)
!1611 = !DILocalVariable(name: "__path", arg: 2, scope: !1606, file: !1525, line: 491, type: !507)
!1612 = !DILocalVariable(name: "__mode", arg: 3, scope: !1606, file: !1525, line: 491, type: !1539)
!1613 = !DILocalVariable(name: "__dev", arg: 4, scope: !1606, file: !1525, line: 491, type: !1533)
!1614 = !DILocation(line: 0, scope: !1606)
!1615 = !DILocation(line: 494, column: 10, scope: !1606)
!1616 = !DILocation(line: 494, column: 3, scope: !1606)
!1617 = distinct !DISubprogram(name: "stat64", scope: !1525, file: !1525, line: 502, type: !1618, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1640)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!13, !507, !1620}
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1530, line: 119, size: 1152, elements: !1622)
!1622 = !{!1623, !1624, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1636, !1637, !1638, !1639}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1621, file: !1530, line: 121, baseType: !1533, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1621, file: !1530, line: 123, baseType: !1625, size: 64, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !36, line: 149, baseType: !63)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1621, file: !1530, line: 124, baseType: !1537, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1621, file: !1530, line: 125, baseType: !1539, size: 32, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1621, file: !1530, line: 132, baseType: !1541, size: 32, offset: 224)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1621, file: !1530, line: 133, baseType: !1543, size: 32, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1621, file: !1530, line: 135, baseType: !13, size: 32, offset: 288)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1621, file: !1530, line: 136, baseType: !1533, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1621, file: !1530, line: 137, baseType: !35, size: 64, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1621, file: !1530, line: 143, baseType: !1548, size: 64, offset: 448)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1621, file: !1530, line: 144, baseType: !1635, size: 64, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !36, line: 180, baseType: !37)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1621, file: !1530, line: 152, baseType: !1552, size: 128, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1621, file: !1530, line: 153, baseType: !1552, size: 128, offset: 704)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1621, file: !1530, line: 154, baseType: !1552, size: 128, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1621, file: !1530, line: 164, baseType: !1562, size: 192, offset: 960)
!1640 = !{!1641, !1642}
!1641 = !DILocalVariable(name: "__path", arg: 1, scope: !1617, file: !1525, line: 502, type: !507)
!1642 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1617, file: !1525, line: 502, type: !1620)
!1643 = !DILocation(line: 0, scope: !1617)
!1644 = !DILocation(line: 504, column: 10, scope: !1617)
!1645 = !DILocation(line: 504, column: 3, scope: !1617)
!1646 = distinct !DISubprogram(name: "lstat64", scope: !1525, file: !1525, line: 509, type: !1618, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1647)
!1647 = !{!1648, !1649}
!1648 = !DILocalVariable(name: "__path", arg: 1, scope: !1646, file: !1525, line: 509, type: !507)
!1649 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1646, file: !1525, line: 509, type: !1620)
!1650 = !DILocation(line: 0, scope: !1646)
!1651 = !DILocation(line: 511, column: 10, scope: !1646)
!1652 = !DILocation(line: 511, column: 3, scope: !1646)
!1653 = distinct !DISubprogram(name: "fstat64", scope: !1525, file: !1525, line: 516, type: !1654, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!13, !13, !1620}
!1656 = !{!1657, !1658}
!1657 = !DILocalVariable(name: "__fd", arg: 1, scope: !1653, file: !1525, line: 516, type: !13)
!1658 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1653, file: !1525, line: 516, type: !1620)
!1659 = !DILocation(line: 0, scope: !1653)
!1660 = !DILocation(line: 518, column: 10, scope: !1653)
!1661 = !DILocation(line: 518, column: 3, scope: !1653)
!1662 = distinct !DISubprogram(name: "fstatat64", scope: !1525, file: !1525, line: 523, type: !1663, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!13, !13, !507, !1620, !13}
!1665 = !{!1666, !1667, !1668, !1669}
!1666 = !DILocalVariable(name: "__fd", arg: 1, scope: !1662, file: !1525, line: 523, type: !13)
!1667 = !DILocalVariable(name: "__filename", arg: 2, scope: !1662, file: !1525, line: 523, type: !507)
!1668 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1662, file: !1525, line: 523, type: !1620)
!1669 = !DILocalVariable(name: "__flag", arg: 4, scope: !1662, file: !1525, line: 523, type: !13)
!1670 = !DILocation(line: 0, scope: !1662)
!1671 = !DILocation(line: 526, column: 10, scope: !1662)
!1672 = !DILocation(line: 526, column: 3, scope: !1662)
!1673 = distinct !DISubprogram(name: "pp_c_whitespace", scope: !3, file: !3, line: 77, type: !1674, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !1126}
!1676 = !{!1677}
!1677 = !DILocalVariable(name: "pp", arg: 1, scope: !1673, file: !3, line: 77, type: !1126)
!1678 = !DILocation(line: 0, scope: !1673)
!1679 = !DILocation(line: 79, column: 3, scope: !1673)
!1680 = !DILocation(line: 80, column: 17, scope: !1673)
!1681 = !DILocation(line: 80, column: 25, scope: !1673)
!1682 = !DILocation(line: 81, column: 1, scope: !1673)
!1683 = distinct !DISubprogram(name: "pp_c_left_paren", scope: !3, file: !3, line: 84, type: !1674, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1684)
!1684 = !{!1685}
!1685 = !DILocalVariable(name: "pp", arg: 1, scope: !1683, file: !3, line: 84, type: !1126)
!1686 = !DILocation(line: 0, scope: !1683)
!1687 = !DILocation(line: 86, column: 3, scope: !1683)
!1688 = !DILocation(line: 87, column: 17, scope: !1683)
!1689 = !DILocation(line: 87, column: 25, scope: !1683)
!1690 = !DILocation(line: 88, column: 1, scope: !1683)
!1691 = distinct !DISubprogram(name: "pp_c_right_paren", scope: !3, file: !3, line: 91, type: !1674, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1692)
!1692 = !{!1693}
!1693 = !DILocalVariable(name: "pp", arg: 1, scope: !1691, file: !3, line: 91, type: !1126)
!1694 = !DILocation(line: 0, scope: !1691)
!1695 = !DILocation(line: 93, column: 3, scope: !1691)
!1696 = !DILocation(line: 94, column: 17, scope: !1691)
!1697 = !DILocation(line: 94, column: 25, scope: !1691)
!1698 = !DILocation(line: 95, column: 1, scope: !1691)
!1699 = distinct !DISubprogram(name: "pp_c_left_brace", scope: !3, file: !3, line: 98, type: !1674, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1700)
!1700 = !{!1701}
!1701 = !DILocalVariable(name: "pp", arg: 1, scope: !1699, file: !3, line: 98, type: !1126)
!1702 = !DILocation(line: 0, scope: !1699)
!1703 = !DILocation(line: 100, column: 3, scope: !1699)
!1704 = !DILocation(line: 101, column: 17, scope: !1699)
!1705 = !DILocation(line: 101, column: 25, scope: !1699)
!1706 = !DILocation(line: 102, column: 1, scope: !1699)
!1707 = distinct !DISubprogram(name: "pp_c_right_brace", scope: !3, file: !3, line: 105, type: !1674, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1708)
!1708 = !{!1709}
!1709 = !DILocalVariable(name: "pp", arg: 1, scope: !1707, file: !3, line: 105, type: !1126)
!1710 = !DILocation(line: 0, scope: !1707)
!1711 = !DILocation(line: 107, column: 3, scope: !1707)
!1712 = !DILocation(line: 108, column: 17, scope: !1707)
!1713 = !DILocation(line: 108, column: 25, scope: !1707)
!1714 = !DILocation(line: 109, column: 1, scope: !1707)
!1715 = distinct !DISubprogram(name: "pp_c_left_bracket", scope: !3, file: !3, line: 112, type: !1674, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1716)
!1716 = !{!1717}
!1717 = !DILocalVariable(name: "pp", arg: 1, scope: !1715, file: !3, line: 112, type: !1126)
!1718 = !DILocation(line: 0, scope: !1715)
!1719 = !DILocation(line: 114, column: 3, scope: !1715)
!1720 = !DILocation(line: 115, column: 17, scope: !1715)
!1721 = !DILocation(line: 115, column: 25, scope: !1715)
!1722 = !DILocation(line: 116, column: 1, scope: !1715)
!1723 = distinct !DISubprogram(name: "pp_c_right_bracket", scope: !3, file: !3, line: 119, type: !1674, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1724)
!1724 = !{!1725}
!1725 = !DILocalVariable(name: "pp", arg: 1, scope: !1723, file: !3, line: 119, type: !1126)
!1726 = !DILocation(line: 0, scope: !1723)
!1727 = !DILocation(line: 121, column: 3, scope: !1723)
!1728 = !DILocation(line: 122, column: 17, scope: !1723)
!1729 = !DILocation(line: 122, column: 25, scope: !1723)
!1730 = !DILocation(line: 123, column: 1, scope: !1723)
!1731 = distinct !DISubprogram(name: "pp_c_dot", scope: !3, file: !3, line: 126, type: !1674, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1732)
!1732 = !{!1733}
!1733 = !DILocalVariable(name: "pp", arg: 1, scope: !1731, file: !3, line: 126, type: !1126)
!1734 = !DILocation(line: 0, scope: !1731)
!1735 = !DILocation(line: 128, column: 3, scope: !1731)
!1736 = !DILocation(line: 129, column: 17, scope: !1731)
!1737 = !DILocation(line: 129, column: 25, scope: !1731)
!1738 = !DILocation(line: 130, column: 1, scope: !1731)
!1739 = distinct !DISubprogram(name: "pp_c_ampersand", scope: !3, file: !3, line: 133, type: !1674, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1740)
!1740 = !{!1741}
!1741 = !DILocalVariable(name: "pp", arg: 1, scope: !1739, file: !3, line: 133, type: !1126)
!1742 = !DILocation(line: 0, scope: !1739)
!1743 = !DILocation(line: 135, column: 3, scope: !1739)
!1744 = !DILocation(line: 136, column: 17, scope: !1739)
!1745 = !DILocation(line: 136, column: 25, scope: !1739)
!1746 = !DILocation(line: 137, column: 1, scope: !1739)
!1747 = distinct !DISubprogram(name: "pp_c_star", scope: !3, file: !3, line: 140, type: !1674, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1748)
!1748 = !{!1749}
!1749 = !DILocalVariable(name: "pp", arg: 1, scope: !1747, file: !3, line: 140, type: !1126)
!1750 = !DILocation(line: 0, scope: !1747)
!1751 = !DILocation(line: 142, column: 3, scope: !1747)
!1752 = !DILocation(line: 143, column: 17, scope: !1747)
!1753 = !DILocation(line: 143, column: 25, scope: !1747)
!1754 = !DILocation(line: 144, column: 1, scope: !1747)
!1755 = distinct !DISubprogram(name: "pp_c_arrow", scope: !3, file: !3, line: 147, type: !1674, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1756)
!1756 = !{!1757}
!1757 = !DILocalVariable(name: "pp", arg: 1, scope: !1755, file: !3, line: 147, type: !1126)
!1758 = !DILocation(line: 0, scope: !1755)
!1759 = !DILocation(line: 149, column: 3, scope: !1755)
!1760 = !DILocation(line: 150, column: 17, scope: !1755)
!1761 = !DILocation(line: 150, column: 25, scope: !1755)
!1762 = !DILocation(line: 151, column: 1, scope: !1755)
!1763 = distinct !DISubprogram(name: "pp_c_semicolon", scope: !3, file: !3, line: 154, type: !1674, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1764)
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "pp", arg: 1, scope: !1763, file: !3, line: 154, type: !1126)
!1766 = !DILocation(line: 0, scope: !1763)
!1767 = !DILocation(line: 156, column: 3, scope: !1763)
!1768 = !DILocation(line: 157, column: 17, scope: !1763)
!1769 = !DILocation(line: 157, column: 25, scope: !1763)
!1770 = !DILocation(line: 158, column: 1, scope: !1763)
!1771 = distinct !DISubprogram(name: "pp_c_complement", scope: !3, file: !3, line: 161, type: !1674, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1772)
!1772 = !{!1773}
!1773 = !DILocalVariable(name: "pp", arg: 1, scope: !1771, file: !3, line: 161, type: !1126)
!1774 = !DILocation(line: 0, scope: !1771)
!1775 = !DILocation(line: 163, column: 3, scope: !1771)
!1776 = !DILocation(line: 164, column: 17, scope: !1771)
!1777 = !DILocation(line: 164, column: 25, scope: !1771)
!1778 = !DILocation(line: 165, column: 1, scope: !1771)
!1779 = distinct !DISubprogram(name: "pp_c_exclamation", scope: !3, file: !3, line: 168, type: !1674, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1780)
!1780 = !{!1781}
!1781 = !DILocalVariable(name: "pp", arg: 1, scope: !1779, file: !3, line: 168, type: !1126)
!1782 = !DILocation(line: 0, scope: !1779)
!1783 = !DILocation(line: 170, column: 3, scope: !1779)
!1784 = !DILocation(line: 171, column: 17, scope: !1779)
!1785 = !DILocation(line: 171, column: 25, scope: !1779)
!1786 = !DILocation(line: 172, column: 1, scope: !1779)
!1787 = distinct !DISubprogram(name: "pp_c_space_for_pointer_operator", scope: !3, file: !3, line: 202, type: !1124, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1788)
!1788 = !{!1789, !1790, !1791}
!1789 = !DILocalVariable(name: "pp", arg: 1, scope: !1787, file: !3, line: 202, type: !1126)
!1790 = !DILocalVariable(name: "t", arg: 2, scope: !1787, file: !3, line: 202, type: !69)
!1791 = !DILocalVariable(name: "pointee", scope: !1792, file: !3, line: 206, type: !69)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 205, column: 5)
!1793 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 204, column: 7)
!1794 = !DILocation(line: 0, scope: !1787)
!1795 = !DILocation(line: 204, column: 7, scope: !1793)
!1796 = !DILocation(line: 204, column: 7, scope: !1787)
!1797 = !DILocation(line: 206, column: 46, scope: !1792)
!1798 = !DILocation(line: 206, column: 22, scope: !1792)
!1799 = !DILocation(line: 0, scope: !1792)
!1800 = !DILocation(line: 207, column: 11, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 207, column: 11)
!1802 = !DILocation(line: 207, column: 31, scope: !1801)
!1803 = !DILocation(line: 208, column: 4, scope: !1801)
!1804 = !DILocation(line: 208, column: 27, scope: !1801)
!1805 = !DILocation(line: 207, column: 11, scope: !1792)
!1806 = !DILocation(line: 209, column: 2, scope: !1801)
!1807 = !DILocation(line: 211, column: 1, scope: !1787)
!1808 = distinct !DISubprogram(name: "pp_c_type_qualifier_list", scope: !3, file: !3, line: 235, type: !1124, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1809)
!1809 = !{!1810, !1811, !1812, !1813}
!1810 = !DILocalVariable(name: "pp", arg: 1, scope: !1808, file: !3, line: 235, type: !1126)
!1811 = !DILocalVariable(name: "t", arg: 2, scope: !1808, file: !3, line: 235, type: !69)
!1812 = !DILocalVariable(name: "qualifiers", scope: !1808, file: !3, line: 237, type: !13)
!1813 = !DILocalVariable(name: "as", scope: !1814, file: !3, line: 255, type: !507)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 254, column: 5)
!1815 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 253, column: 7)
!1816 = !DILocation(line: 0, scope: !1808)
!1817 = !DILocation(line: 239, column: 8, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 239, column: 7)
!1819 = !DILocation(line: 239, column: 18, scope: !1818)
!1820 = !DILocation(line: 239, column: 15, scope: !1818)
!1821 = !DILocation(line: 239, column: 10, scope: !1818)
!1822 = !DILocation(line: 242, column: 8, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 242, column: 7)
!1824 = !DILocation(line: 242, column: 7, scope: !1808)
!1825 = !DILocation(line: 243, column: 9, scope: !1823)
!1826 = !DILocation(line: 245, column: 16, scope: !1808)
!1827 = !DILocation(line: 243, column: 5, scope: !1823)
!1828 = !DILocation(line: 246, column: 18, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 246, column: 7)
!1830 = !DILocation(line: 246, column: 7, scope: !1808)
!1831 = !DILocation(line: 247, column: 5, scope: !1829)
!1832 = !DILocation(line: 248, column: 18, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 248, column: 7)
!1834 = !DILocation(line: 248, column: 7, scope: !1808)
!1835 = !DILocation(line: 249, column: 5, scope: !1833)
!1836 = !DILocation(line: 250, column: 18, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 250, column: 7)
!1838 = !DILocation(line: 250, column: 7, scope: !1808)
!1839 = !DILocation(line: 251, column: 28, scope: !1837)
!1840 = !DILocation(line: 251, column: 5, scope: !1837)
!1841 = !DILocation(line: 253, column: 8, scope: !1815)
!1842 = !DILocation(line: 253, column: 7, scope: !1808)
!1843 = !DILocation(line: 255, column: 43, scope: !1814)
!1844 = !DILocation(line: 255, column: 24, scope: !1814)
!1845 = !DILocation(line: 0, scope: !1814)
!1846 = !DILocation(line: 256, column: 7, scope: !1814)
!1847 = !DILocation(line: 257, column: 5, scope: !1814)
!1848 = !DILocation(line: 258, column: 1, scope: !1808)
!1849 = distinct !DISubprogram(name: "pp_c_cv_qualifier", scope: !3, file: !3, line: 177, type: !1850, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1852)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1126, !507}
!1852 = !{!1853, !1854, !1855}
!1853 = !DILocalVariable(name: "pp", arg: 1, scope: !1849, file: !3, line: 177, type: !1126)
!1854 = !DILocalVariable(name: "cv", arg: 2, scope: !1849, file: !3, line: 177, type: !507)
!1855 = !DILocalVariable(name: "p", scope: !1849, file: !3, line: 179, type: !507)
!1856 = !DILocation(line: 0, scope: !1849)
!1857 = !DILocation(line: 179, column: 19, scope: !1849)
!1858 = !DILocation(line: 183, column: 9, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 183, column: 7)
!1860 = !DILocation(line: 183, column: 17, scope: !1859)
!1861 = !DILocation(line: 183, column: 21, scope: !1859)
!1862 = !DILocation(line: 183, column: 24, scope: !1859)
!1863 = !DILocation(line: 183, column: 31, scope: !1859)
!1864 = !DILocation(line: 183, column: 37, scope: !1859)
!1865 = !DILocation(line: 183, column: 7, scope: !1849)
!1866 = !DILocation(line: 184, column: 5, scope: !1859)
!1867 = !DILocation(line: 185, column: 3, scope: !1849)
!1868 = !DILocation(line: 186, column: 1, scope: !1849)
!1869 = distinct !DISubprogram(name: "pp_c_identifier", scope: !3, file: !3, line: 1109, type: !1850, scopeLine: 1110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1870)
!1870 = !{!1871, !1872}
!1871 = !DILocalVariable(name: "pp", arg: 1, scope: !1869, file: !3, line: 1109, type: !1126)
!1872 = !DILocalVariable(name: "id", arg: 2, scope: !1869, file: !3, line: 1109, type: !507)
!1873 = !DILocation(line: 0, scope: !1869)
!1874 = !DILocation(line: 1111, column: 3, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 1111, column: 3)
!1876 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 1111, column: 3)
!1877 = !DILocation(line: 1111, column: 3, scope: !1876)
!1878 = !DILocation(line: 1112, column: 3, scope: !1869)
!1879 = !DILocation(line: 1113, column: 25, scope: !1869)
!1880 = !DILocation(line: 1114, column: 1, scope: !1869)
!1881 = distinct !DISubprogram(name: "pp_c_type_specifier", scope: !3, file: !3, line: 318, type: !1124, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1882)
!1882 = !{!1883, !1884, !1885, !1887}
!1883 = !DILocalVariable(name: "pp", arg: 1, scope: !1881, file: !3, line: 318, type: !1126)
!1884 = !DILocalVariable(name: "t", arg: 2, scope: !1881, file: !3, line: 318, type: !69)
!1885 = !DILocalVariable(name: "code", scope: !1881, file: !3, line: 320, type: !1886)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!1887 = !DILocalVariable(name: "prec", scope: !1888, file: !3, line: 343, type: !13)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 342, column: 2)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 336, column: 11)
!1890 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 322, column: 5)
!1891 = !DILocation(line: 339, column: 4, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 337, column: 2)
!1893 = !DILocation(line: 0, scope: !1881)
!1894 = !DILocation(line: 320, column: 31, scope: !1881)
!1895 = !DILocation(line: 321, column: 3, scope: !1881)
!1896 = !DILocation(line: 324, column: 7, scope: !1890)
!1897 = !DILocation(line: 325, column: 7, scope: !1890)
!1898 = !DILocation(line: 328, column: 7, scope: !1890)
!1899 = !DILocation(line: 329, column: 7, scope: !1890)
!1900 = !DILocation(line: 336, column: 11, scope: !1889)
!1901 = !DILocation(line: 336, column: 11, scope: !1890)
!1902 = !DILocation(line: 0, scope: !1889)
!1903 = !DILocation(line: 343, column: 15, scope: !1888)
!1904 = !DILocation(line: 0, scope: !1888)
!1905 = !DILocation(line: 344, column: 8, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 344, column: 8)
!1907 = !DILocation(line: 344, column: 8, scope: !1888)
!1908 = !DILocation(line: 345, column: 34, scope: !1906)
!1909 = !DILocation(line: 345, column: 49, scope: !1906)
!1910 = !DILocation(line: 345, column: 10, scope: !1906)
!1911 = !DILocation(line: 345, column: 6, scope: !1906)
!1912 = !DILocation(line: 347, column: 34, scope: !1906)
!1913 = !DILocation(line: 347, column: 49, scope: !1906)
!1914 = !DILocation(line: 347, column: 10, scope: !1906)
!1915 = !DILocation(line: 0, scope: !1906)
!1916 = !DILocation(line: 348, column: 8, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 348, column: 8)
!1918 = !DILocation(line: 348, column: 8, scope: !1888)
!1919 = !DILocation(line: 350, column: 8, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 349, column: 6)
!1921 = !DILocation(line: 351, column: 12, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 351, column: 12)
!1923 = !DILocation(line: 351, column: 31, scope: !1922)
!1924 = !DILocation(line: 351, column: 12, scope: !1920)
!1925 = !DILocation(line: 353, column: 5, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 352, column: 3)
!1927 = !DILocation(line: 354, column: 5, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 354, column: 5)
!1929 = !DILocation(line: 355, column: 3, scope: !1926)
!1930 = !DILocation(line: 359, column: 8, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 358, column: 6)
!1932 = !DILocation(line: 362, column: 5, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 360, column: 3)
!1934 = !DILocation(line: 365, column: 5, scope: !1933)
!1935 = !DILocation(line: 367, column: 5, scope: !1933)
!1936 = !DILocation(line: 368, column: 5, scope: !1933)
!1937 = !DILocation(line: 370, column: 5, scope: !1933)
!1938 = !DILocation(line: 371, column: 5, scope: !1933)
!1939 = !DILocation(line: 373, column: 5, scope: !1933)
!1940 = !DILocation(line: 374, column: 3, scope: !1933)
!1941 = !DILocation(line: 375, column: 8, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 375, column: 8)
!1943 = !DILocation(line: 376, column: 8, scope: !1931)
!1944 = !DILocation(line: 382, column: 11, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 382, column: 11)
!1946 = !DILocation(line: 382, column: 11, scope: !1890)
!1947 = !DILocation(line: 383, column: 2, scope: !1945)
!1948 = !DILocation(line: 385, column: 2, scope: !1945)
!1949 = !DILocation(line: 392, column: 2, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 391, column: 11)
!1951 = !DILocation(line: 394, column: 2, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 393, column: 16)
!1953 = !DILocation(line: 396, column: 2, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 395, column: 16)
!1955 = !DILocation(line: 400, column: 11, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 400, column: 11)
!1957 = !DILocation(line: 400, column: 11, scope: !1890)
!1958 = !DILocation(line: 401, column: 2, scope: !1956)
!1959 = !DILocation(line: 403, column: 2, scope: !1956)
!1960 = !DILocation(line: 407, column: 7, scope: !1890)
!1961 = !DILocation(line: 408, column: 7, scope: !1890)
!1962 = !DILocation(line: 410, column: 1, scope: !1881)
!1963 = distinct !DISubprogram(name: "pp_c_ws_string", scope: !3, file: !3, line: 1097, type: !1850, scopeLine: 1098, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1964)
!1964 = !{!1965, !1966}
!1965 = !DILocalVariable(name: "pp", arg: 1, scope: !1963, file: !3, line: 1097, type: !1126)
!1966 = !DILocalVariable(name: "str", arg: 2, scope: !1963, file: !3, line: 1097, type: !507)
!1967 = !DILocation(line: 0, scope: !1963)
!1968 = !DILocation(line: 1099, column: 3, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 1099, column: 3)
!1970 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 1099, column: 3)
!1971 = !DILocation(line: 1099, column: 3, scope: !1970)
!1972 = !DILocation(line: 1100, column: 3, scope: !1963)
!1973 = !DILocation(line: 1101, column: 25, scope: !1963)
!1974 = !DILocation(line: 1102, column: 1, scope: !1963)
!1975 = !DILocation(line: 0, scope: !1123)
!1976 = !DILocation(line: 2247, column: 3, scope: !1123)
!1977 = !DILocation(line: 2249, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 2249, column: 7)
!1979 = !DILocation(line: 2249, column: 7, scope: !1123)
!1980 = !DILocation(line: 2250, column: 12, scope: !1978)
!1981 = !DILocation(line: 2250, column: 5, scope: !1978)
!1982 = !DILocation(line: 2254, column: 45, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 2252, column: 5)
!1984 = !DILocation(line: 2254, column: 34, scope: !1983)
!1985 = !DILocation(line: 2254, column: 7, scope: !1983)
!1986 = !DILocation(line: 0, scope: !1978)
!1987 = !DILocation(line: 2258, column: 3, scope: !1123)
!1988 = !DILocation(line: 2259, column: 1, scope: !1123)
!1989 = distinct !DISubprogram(name: "pp_c_specifier_qualifier_list", scope: !3, file: !3, line: 424, type: !1124, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !1990)
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DILocalVariable(name: "pp", arg: 1, scope: !1989, file: !3, line: 424, type: !1126)
!1992 = !DILocalVariable(name: "t", arg: 2, scope: !1989, file: !3, line: 424, type: !69)
!1993 = !DILocalVariable(name: "code", scope: !1989, file: !3, line: 426, type: !1886)
!1994 = !DILocalVariable(name: "pointee", scope: !1995, file: !3, line: 436, type: !69)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 434, column: 7)
!1996 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 431, column: 5)
!1997 = !DILocation(line: 0, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 463, column: 4)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 460, column: 2)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 459, column: 16)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 457, column: 11)
!2002 = !DILocation(line: 452, column: 7, scope: !1996)
!2003 = !DILocation(line: 0, scope: !1989)
!2004 = !DILocation(line: 426, column: 31, scope: !1989)
!2005 = !DILocation(line: 428, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 428, column: 7)
!2007 = !DILocation(line: 428, column: 7, scope: !1989)
!2008 = !DILocation(line: 429, column: 5, scope: !2006)
!2009 = !DILocation(line: 430, column: 3, scope: !1989)
!2010 = !DILocation(line: 436, column: 41, scope: !1995)
!2011 = !DILocation(line: 436, column: 17, scope: !1995)
!2012 = !DILocation(line: 0, scope: !1995)
!2013 = !DILocation(line: 437, column: 2, scope: !1995)
!2014 = !DILocation(line: 438, column: 6, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 438, column: 6)
!2016 = !DILocation(line: 438, column: 26, scope: !2015)
!2017 = !DILocation(line: 439, column: 6, scope: !2015)
!2018 = !DILocation(line: 439, column: 29, scope: !2015)
!2019 = !DILocation(line: 438, column: 6, scope: !1995)
!2020 = !DILocation(line: 441, column: 6, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 440, column: 4)
!2022 = !DILocation(line: 442, column: 6, scope: !2021)
!2023 = !DILocation(line: 443, column: 4, scope: !2021)
!2024 = !DILocation(line: 444, column: 12, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 444, column: 11)
!2026 = !DILocation(line: 444, column: 11, scope: !2015)
!2027 = !DILocation(line: 445, column: 4, scope: !2025)
!2028 = !DILocation(line: 446, column: 2, scope: !1995)
!2029 = !DILocation(line: 448, column: 7, scope: !1996)
!2030 = !DILocation(line: 0, scope: !1996)
!2031 = !DILocation(line: 458, column: 22, scope: !2001)
!2032 = !DILocation(line: 458, column: 2, scope: !2001)
!2033 = !DILocation(line: 461, column: 4, scope: !1999)
!2034 = !DILocation(line: 462, column: 4, scope: !1999)
!2035 = !DILocation(line: 463, column: 4, scope: !1998)
!2036 = !DILocation(line: 464, column: 4, scope: !1999)
!2037 = !DILocation(line: 465, column: 4, scope: !1999)
!2038 = !DILocation(line: 467, column: 7, scope: !1996)
!2039 = !DILocation(line: 471, column: 7, scope: !1996)
!2040 = !DILocation(line: 472, column: 7, scope: !1996)
!2041 = !DILocation(line: 474, column: 1, scope: !1989)
!2042 = distinct !DISubprogram(name: "pp_c_parameter_type_list", scope: !3, file: !3, line: 489, type: !1124, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2043)
!2043 = !{!2044, !2045, !2046, !2047, !2048}
!2044 = !DILocalVariable(name: "pp", arg: 1, scope: !2042, file: !3, line: 489, type: !1126)
!2045 = !DILocalVariable(name: "t", arg: 2, scope: !2042, file: !3, line: 489, type: !69)
!2046 = !DILocalVariable(name: "want_parm_decl", scope: !2042, file: !3, line: 491, type: !312)
!2047 = !DILocalVariable(name: "parms", scope: !2042, file: !3, line: 492, type: !69)
!2048 = !DILocalVariable(name: "first", scope: !2049, file: !3, line: 498, type: !312)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 497, column: 5)
!2050 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 494, column: 7)
!2051 = !DILocation(line: 0, scope: !2042)
!2052 = !DILocation(line: 491, column: 25, scope: !2042)
!2053 = !DILocation(line: 491, column: 36, scope: !2042)
!2054 = !DILocation(line: 491, column: 45, scope: !2042)
!2055 = !DILocation(line: 492, column: 16, scope: !2042)
!2056 = !DILocation(line: 492, column: 33, scope: !2042)
!2057 = !DILocation(line: 492, column: 55, scope: !2042)
!2058 = !DILocation(line: 493, column: 3, scope: !2042)
!2059 = !DILocation(line: 494, column: 16, scope: !2050)
!2060 = !DILocation(line: 494, column: 13, scope: !2050)
!2061 = !DILocation(line: 494, column: 7, scope: !2042)
!2062 = !DILocation(line: 0, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 502, column: 6)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 501, column: 8)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 500, column: 2)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 499, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 499, column: 7)
!2068 = !DILocation(line: 0, scope: !2065)
!2069 = !DILocation(line: 0, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 506, column: 8)
!2071 = !DILocation(line: 499, column: 7, scope: !2067)
!2072 = !DILocation(line: 499, column: 21, scope: !2066)
!2073 = !DILocation(line: 0, scope: !2049)
!2074 = !DILocation(line: 499, column: 15, scope: !2066)
!2075 = !DILocation(line: 501, column: 9, scope: !2064)
!2076 = !DILocation(line: 501, column: 8, scope: !2065)
!2077 = !DILocation(line: 502, column: 6, scope: !2063)
!2078 = !DILocation(line: 504, column: 4, scope: !2065)
!2079 = !DILocation(line: 509, column: 6, scope: !2070)
!2080 = !DILocation(line: 499, column: 57, scope: !2066)
!2081 = !DILocation(line: 499, column: 7, scope: !2066)
!2082 = distinct !{!2082, !2071, !2083}
!2083 = !DILocation(line: 510, column: 2, scope: !2067)
!2084 = !DILocation(line: 512, column: 3, scope: !2042)
!2085 = !DILocation(line: 495, column: 5, scope: !2050)
!2086 = !DILocation(line: 507, column: 6, scope: !2070)
!2087 = !DILocation(line: 513, column: 1, scope: !2042)
!2088 = distinct !DISubprogram(name: "pp_c_direct_abstract_declarator", scope: !3, file: !3, line: 540, type: !1124, scopeLine: 541, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2089)
!2089 = !{!2090, !2091, !2092, !2096}
!2090 = !DILocalVariable(name: "pp", arg: 1, scope: !2088, file: !3, line: 540, type: !1126)
!2091 = !DILocalVariable(name: "t", arg: 2, scope: !2088, file: !3, line: 540, type: !69)
!2092 = !DILocalVariable(name: "maxval", scope: !2093, file: !3, line: 557, type: !69)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 556, column: 2)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 555, column: 11)
!2095 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 543, column: 5)
!2096 = !DILocalVariable(name: "type", scope: !2093, file: !3, line: 558, type: !69)
!2097 = !DILocation(line: 0, scope: !2088)
!2098 = !DILocation(line: 542, column: 11, scope: !2088)
!2099 = !DILocation(line: 542, column: 3, scope: !2088)
!2100 = !DILocation(line: 545, column: 7, scope: !2095)
!2101 = !DILocation(line: 546, column: 7, scope: !2095)
!2102 = !DILocation(line: 549, column: 7, scope: !2095)
!2103 = !DILocation(line: 550, column: 7, scope: !2095)
!2104 = !DILocation(line: 551, column: 7, scope: !2095)
!2105 = !DILocation(line: 554, column: 7, scope: !2095)
!2106 = !DILocation(line: 555, column: 11, scope: !2094)
!2107 = !DILocation(line: 555, column: 27, scope: !2094)
!2108 = !DILocation(line: 555, column: 30, scope: !2094)
!2109 = !DILocation(line: 555, column: 11, scope: !2095)
!2110 = !DILocation(line: 0, scope: !2093)
!2111 = !DILocation(line: 558, column: 16, scope: !2093)
!2112 = !DILocation(line: 560, column: 8, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 560, column: 8)
!2114 = !DILocation(line: 560, column: 8, scope: !2093)
!2115 = !DILocation(line: 561, column: 6, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 561, column: 6)
!2117 = !DILocation(line: 563, column: 6, scope: !2113)
!2118 = !DILocation(line: 566, column: 7, scope: !2095)
!2119 = !DILocation(line: 567, column: 7, scope: !2095)
!2120 = !DILocation(line: 568, column: 7, scope: !2095)
!2121 = !DILocation(line: 585, column: 7, scope: !2095)
!2122 = !DILocation(line: 586, column: 7, scope: !2095)
!2123 = !DILocation(line: 588, column: 1, scope: !2088)
!2124 = distinct !DISubprogram(name: "pp_c_type_id", scope: !3, file: !3, line: 594, type: !1124, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2125)
!2125 = !{!2126, !2127}
!2126 = !DILocalVariable(name: "pp", arg: 1, scope: !2124, file: !3, line: 594, type: !1126)
!2127 = !DILocalVariable(name: "t", arg: 2, scope: !2124, file: !3, line: 594, type: !69)
!2128 = !DILocation(line: 0, scope: !2124)
!2129 = !DILocation(line: 596, column: 3, scope: !2124)
!2130 = !DILocation(line: 597, column: 3, scope: !2124)
!2131 = !DILocation(line: 598, column: 1, scope: !2124)
!2132 = distinct !DISubprogram(name: "pp_c_storage_class_specifier", scope: !3, file: !3, line: 608, type: !1124, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2133)
!2133 = !{!2134, !2135}
!2134 = !DILocalVariable(name: "pp", arg: 1, scope: !2132, file: !3, line: 608, type: !1126)
!2135 = !DILocalVariable(name: "t", arg: 2, scope: !2132, file: !3, line: 608, type: !69)
!2136 = !DILocation(line: 0, scope: !2132)
!2137 = !DILocation(line: 610, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 610, column: 7)
!2139 = !DILocation(line: 610, column: 21, scope: !2138)
!2140 = !DILocation(line: 610, column: 7, scope: !2132)
!2141 = !DILocation(line: 611, column: 5, scope: !2138)
!2142 = !DILocation(line: 612, column: 12, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 612, column: 12)
!2144 = !DILocation(line: 612, column: 12, scope: !2138)
!2145 = !DILocation(line: 614, column: 11, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 614, column: 11)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 613, column: 5)
!2148 = !DILocation(line: 614, column: 11, scope: !2147)
!2149 = !DILocation(line: 615, column: 2, scope: !2146)
!2150 = !DILocation(line: 616, column: 16, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 616, column: 16)
!2152 = !DILocation(line: 616, column: 32, scope: !2151)
!2153 = !DILocation(line: 616, column: 49, scope: !2151)
!2154 = !DILocation(line: 616, column: 16, scope: !2146)
!2155 = !DILocation(line: 617, column: 2, scope: !2151)
!2156 = !DILocation(line: 619, column: 1, scope: !2132)
!2157 = distinct !DISubprogram(name: "pp_c_function_specifier", scope: !3, file: !3, line: 625, type: !1124, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2158)
!2158 = !{!2159, !2160}
!2159 = !DILocalVariable(name: "pp", arg: 1, scope: !2157, file: !3, line: 625, type: !1126)
!2160 = !DILocalVariable(name: "t", arg: 2, scope: !2157, file: !3, line: 625, type: !69)
!2161 = !DILocation(line: 0, scope: !2157)
!2162 = !DILocation(line: 627, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 627, column: 7)
!2164 = !DILocation(line: 627, column: 21, scope: !2163)
!2165 = !DILocation(line: 627, column: 38, scope: !2163)
!2166 = !DILocation(line: 627, column: 41, scope: !2163)
!2167 = !DILocation(line: 627, column: 7, scope: !2157)
!2168 = !DILocation(line: 628, column: 5, scope: !2163)
!2169 = !DILocation(line: 629, column: 1, scope: !2157)
!2170 = distinct !DISubprogram(name: "pp_c_declaration_specifiers", scope: !3, file: !3, line: 638, type: !1124, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2171)
!2171 = !{!2172, !2173}
!2172 = !DILocalVariable(name: "pp", arg: 1, scope: !2170, file: !3, line: 638, type: !1126)
!2173 = !DILocalVariable(name: "t", arg: 2, scope: !2170, file: !3, line: 638, type: !69)
!2174 = !DILocation(line: 0, scope: !2170)
!2175 = !DILocation(line: 640, column: 3, scope: !2170)
!2176 = !DILocation(line: 641, column: 3, scope: !2170)
!2177 = !DILocation(line: 642, column: 38, scope: !2170)
!2178 = !DILocation(line: 642, column: 52, scope: !2170)
!2179 = !DILocation(line: 642, column: 3, scope: !2170)
!2180 = !DILocation(line: 643, column: 1, scope: !2170)
!2181 = distinct !DISubprogram(name: "pp_c_direct_declarator", scope: !3, file: !3, line: 656, type: !1124, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2182)
!2182 = !{!2183, !2184}
!2183 = !DILocalVariable(name: "pp", arg: 1, scope: !2181, file: !3, line: 656, type: !1126)
!2184 = !DILocalVariable(name: "t", arg: 2, scope: !2181, file: !3, line: 656, type: !69)
!2185 = !DILocation(line: 0, scope: !2181)
!2186 = !DILocation(line: 658, column: 11, scope: !2181)
!2187 = !DILocation(line: 658, column: 3, scope: !2181)
!2188 = !DILocation(line: 665, column: 44, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 659, column: 5)
!2190 = !DILocation(line: 665, column: 7, scope: !2189)
!2191 = !DILocation(line: 666, column: 7, scope: !2189)
!2192 = !DILocation(line: 667, column: 7, scope: !2189)
!2193 = !DILocation(line: 671, column: 7, scope: !2189)
!2194 = !DILocation(line: 672, column: 7, scope: !2189)
!2195 = !DILocation(line: 675, column: 7, scope: !2189)
!2196 = !DILocation(line: 676, column: 7, scope: !2189)
!2197 = !DILocation(line: 677, column: 7, scope: !2189)
!2198 = !DILocation(line: 680, column: 44, scope: !2189)
!2199 = !DILocation(line: 680, column: 7, scope: !2189)
!2200 = !DILocation(line: 681, column: 7, scope: !2189)
!2201 = !DILocation(line: 682, column: 27, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 682, column: 11)
!2203 = !DILocation(line: 682, column: 33, scope: !2202)
!2204 = !DILocation(line: 682, column: 11, scope: !2189)
!2205 = !DILocation(line: 683, column: 2, scope: !2202)
!2206 = !DILocation(line: 686, column: 4, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 685, column: 2)
!2208 = !DILocation(line: 687, column: 4, scope: !2207)
!2209 = !DILocation(line: 700, column: 7, scope: !2189)
!2210 = !DILocation(line: 701, column: 7, scope: !2189)
!2211 = !DILocation(line: 703, column: 1, scope: !2181)
!2212 = distinct !DISubprogram(name: "pp_c_declarator", scope: !3, file: !3, line: 710, type: !1124, scopeLine: 711, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2213)
!2213 = !{!2214, !2215}
!2214 = !DILocalVariable(name: "pp", arg: 1, scope: !2212, file: !3, line: 710, type: !1126)
!2215 = !DILocalVariable(name: "t", arg: 2, scope: !2212, file: !3, line: 710, type: !69)
!2216 = !DILocation(line: 0, scope: !2212)
!2217 = !DILocation(line: 712, column: 11, scope: !2212)
!2218 = !DILocation(line: 712, column: 3, scope: !2212)
!2219 = !DILocation(line: 729, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 713, column: 5)
!2221 = !DILocation(line: 730, column: 5, scope: !2220)
!2222 = !DILocation(line: 734, column: 7, scope: !2220)
!2223 = !DILocation(line: 735, column: 7, scope: !2220)
!2224 = !DILocation(line: 737, column: 1, scope: !2212)
!2225 = distinct !DISubprogram(name: "pp_c_declaration", scope: !3, file: !3, line: 743, type: !1124, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2226)
!2226 = !{!2227, !2228}
!2227 = !DILocalVariable(name: "pp", arg: 1, scope: !2225, file: !3, line: 743, type: !1126)
!2228 = !DILocalVariable(name: "t", arg: 2, scope: !2225, file: !3, line: 743, type: !69)
!2229 = !DILocation(line: 0, scope: !2225)
!2230 = !DILocation(line: 745, column: 3, scope: !2225)
!2231 = !DILocation(line: 746, column: 3, scope: !2225)
!2232 = !DILocation(line: 747, column: 1, scope: !2225)
!2233 = distinct !DISubprogram(name: "pp_c_init_declarator", scope: !3, file: !3, line: 1201, type: !1124, scopeLine: 1202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2234)
!2234 = !{!2235, !2236, !2237}
!2235 = !DILocalVariable(name: "pp", arg: 1, scope: !2233, file: !3, line: 1201, type: !1126)
!2236 = !DILocalVariable(name: "t", arg: 2, scope: !2233, file: !3, line: 1201, type: !69)
!2237 = !DILocalVariable(name: "init", scope: !2238, file: !3, line: 1208, type: !69)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 1207, column: 5)
!2239 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 1206, column: 7)
!2240 = !DILocation(line: 0, scope: !2233)
!2241 = !DILocation(line: 1203, column: 3, scope: !2233)
!2242 = !DILocation(line: 1206, column: 7, scope: !2239)
!2243 = !DILocation(line: 1206, column: 21, scope: !2239)
!2244 = !DILocation(line: 1206, column: 38, scope: !2239)
!2245 = !DILocation(line: 1206, column: 41, scope: !2239)
!2246 = !DILocation(line: 1206, column: 7, scope: !2233)
!2247 = !DILocation(line: 0, scope: !2238)
!2248 = !DILocation(line: 1213, column: 11, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 1213, column: 11)
!2250 = !DILocation(line: 1213, column: 28, scope: !2249)
!2251 = !DILocation(line: 1213, column: 11, scope: !2238)
!2252 = !DILocation(line: 1215, column: 4, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1214, column: 2)
!2254 = !DILocation(line: 1216, column: 4, scope: !2253)
!2255 = !DILocation(line: 1217, column: 4, scope: !2253)
!2256 = !DILocation(line: 1218, column: 2, scope: !2253)
!2257 = !DILocation(line: 1221, column: 4, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1220, column: 2)
!2259 = !DILocation(line: 1222, column: 4, scope: !2258)
!2260 = !DILocation(line: 1223, column: 4, scope: !2258)
!2261 = !DILocation(line: 1224, column: 4, scope: !2258)
!2262 = !DILocation(line: 1227, column: 1, scope: !2233)
!2263 = distinct !DISubprogram(name: "pp_c_attributes", scope: !3, file: !3, line: 752, type: !1124, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2264)
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "pp", arg: 1, scope: !2263, file: !3, line: 752, type: !1126)
!2266 = !DILocalVariable(name: "attributes", arg: 2, scope: !2263, file: !3, line: 752, type: !69)
!2267 = !DILocation(line: 0, scope: !2263)
!2268 = !DILocation(line: 754, column: 18, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 754, column: 7)
!2270 = !DILocation(line: 754, column: 7, scope: !2263)
!2271 = !DILocation(line: 757, column: 3, scope: !2263)
!2272 = !DILocation(line: 758, column: 3, scope: !2263)
!2273 = !DILocation(line: 759, column: 3, scope: !2263)
!2274 = !DILocation(line: 0, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 761, column: 5)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 760, column: 3)
!2277 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 760, column: 3)
!2278 = !DILocation(line: 760, column: 3, scope: !2263)
!2279 = !DILocation(line: 760, column: 21, scope: !2276)
!2280 = !DILocation(line: 760, column: 3, scope: !2277)
!2281 = !DILocation(line: 762, column: 7, scope: !2275)
!2282 = !DILocation(line: 763, column: 11, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 763, column: 11)
!2284 = !DILocation(line: 763, column: 11, scope: !2275)
!2285 = !DILocation(line: 764, column: 2, scope: !2283)
!2286 = !DILocation(line: 766, column: 11, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 766, column: 11)
!2288 = !DILocation(line: 766, column: 11, scope: !2275)
!2289 = !DILocation(line: 767, column: 2, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 767, column: 2)
!2291 = !DILocation(line: 760, column: 48, scope: !2276)
!2292 = !DILocation(line: 760, column: 3, scope: !2276)
!2293 = distinct !{!2293, !2280, !2294}
!2294 = !DILocation(line: 768, column: 5, scope: !2277)
!2295 = !DILocation(line: 769, column: 3, scope: !2263)
!2296 = !DILocation(line: 770, column: 3, scope: !2263)
!2297 = !DILocation(line: 771, column: 1, scope: !2263)
!2298 = distinct !DISubprogram(name: "pp_c_call_argument_list", scope: !3, file: !3, line: 1583, type: !1124, scopeLine: 1584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2299)
!2299 = !{!2300, !2301}
!2300 = !DILocalVariable(name: "pp", arg: 1, scope: !2298, file: !3, line: 1583, type: !1126)
!2301 = !DILocalVariable(name: "t", arg: 2, scope: !2298, file: !3, line: 1583, type: !69)
!2302 = !DILocation(line: 0, scope: !2298)
!2303 = !DILocation(line: 1585, column: 3, scope: !2298)
!2304 = !DILocation(line: 1586, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1586, column: 7)
!2306 = !DILocation(line: 1586, column: 9, scope: !2305)
!2307 = !DILocation(line: 1586, column: 12, scope: !2305)
!2308 = !DILocation(line: 1586, column: 26, scope: !2305)
!2309 = !DILocation(line: 1586, column: 7, scope: !2298)
!2310 = !DILocation(line: 1587, column: 5, scope: !2305)
!2311 = !DILocation(line: 1588, column: 3, scope: !2298)
!2312 = !DILocation(line: 1589, column: 1, scope: !2298)
!2313 = distinct !DISubprogram(name: "pp_c_function_definition", scope: !3, file: !3, line: 777, type: !1124, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2314)
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "pp", arg: 1, scope: !2313, file: !3, line: 777, type: !1126)
!2316 = !DILocalVariable(name: "t", arg: 2, scope: !2313, file: !3, line: 777, type: !69)
!2317 = !DILocation(line: 0, scope: !2313)
!2318 = !DILocation(line: 779, column: 3, scope: !2313)
!2319 = !DILocation(line: 780, column: 3, scope: !2313)
!2320 = !DILocation(line: 781, column: 3, scope: !2313)
!2321 = !DILocation(line: 781, column: 25, scope: !2313)
!2322 = !DILocation(line: 782, column: 3, scope: !2313)
!2323 = !DILocation(line: 783, column: 3, scope: !2313)
!2324 = !DILocation(line: 784, column: 3, scope: !2313)
!2325 = !DILocation(line: 785, column: 1, scope: !2313)
!2326 = distinct !DISubprogram(name: "pp_c_string_literal", scope: !3, file: !3, line: 826, type: !1124, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2327)
!2327 = !{!2328, !2329, !2330, !2331, !2332}
!2328 = !DILocalVariable(name: "pp", arg: 1, scope: !2326, file: !3, line: 826, type: !1126)
!2329 = !DILocalVariable(name: "s", arg: 2, scope: !2326, file: !3, line: 826, type: !69)
!2330 = !DILocalVariable(name: "p", scope: !2326, file: !3, line: 828, type: !507)
!2331 = !DILocalVariable(name: "n", scope: !2326, file: !3, line: 829, type: !13)
!2332 = !DILocalVariable(name: "i", scope: !2326, file: !3, line: 830, type: !13)
!2333 = !DILocation(line: 0, scope: !2326)
!2334 = !DILocation(line: 828, column: 19, scope: !2326)
!2335 = !DILocation(line: 829, column: 11, scope: !2326)
!2336 = !DILocation(line: 829, column: 34, scope: !2326)
!2337 = !DILocation(line: 831, column: 3, scope: !2326)
!2338 = !DILocation(line: 832, column: 8, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 832, column: 3)
!2340 = !DILocation(line: 0, scope: !2339)
!2341 = !DILocation(line: 832, column: 17, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 832, column: 3)
!2343 = !DILocation(line: 832, column: 3, scope: !2339)
!2344 = !DILocation(line: 833, column: 20, scope: !2342)
!2345 = !DILocation(line: 833, column: 5, scope: !2342)
!2346 = !DILocation(line: 832, column: 22, scope: !2342)
!2347 = !DILocation(line: 832, column: 3, scope: !2342)
!2348 = distinct !{!2348, !2343, !2349}
!2349 = !DILocation(line: 833, column: 24, scope: !2339)
!2350 = !DILocation(line: 834, column: 3, scope: !2326)
!2351 = !DILocation(line: 835, column: 1, scope: !2326)
!2352 = distinct !DISubprogram(name: "pp_c_char", scope: !3, file: !3, line: 807, type: !2353, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !1126, !13}
!2355 = !{!2356, !2357}
!2356 = !DILocalVariable(name: "pp", arg: 1, scope: !2352, file: !3, line: 807, type: !1126)
!2357 = !DILocalVariable(name: "c", arg: 2, scope: !2352, file: !3, line: 807, type: !13)
!2358 = !DILocation(line: 0, scope: !2352)
!2359 = !DILocation(line: 809, column: 7, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 809, column: 7)
!2361 = !DILocation(line: 809, column: 7, scope: !2352)
!2362 = !DILocation(line: 811, column: 7, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 810, column: 5)
!2364 = !DILocation(line: 813, column: 13, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 812, column: 2)
!2366 = !DILocation(line: 813, column: 37, scope: !2365)
!2367 = !DILocation(line: 814, column: 13, scope: !2365)
!2368 = !DILocation(line: 814, column: 37, scope: !2365)
!2369 = !DILocation(line: 815, column: 13, scope: !2365)
!2370 = !DILocation(line: 815, column: 37, scope: !2365)
!2371 = !DILocation(line: 816, column: 13, scope: !2365)
!2372 = !DILocation(line: 817, column: 2, scope: !2365)
!2373 = !DILocation(line: 820, column: 5, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 820, column: 5)
!2375 = !DILocation(line: 821, column: 1, scope: !2352)
!2376 = distinct !DISubprogram(name: "pp_c_constant", scope: !3, file: !3, line: 1047, type: !1124, scopeLine: 1048, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2377)
!2377 = !{!2378, !2379, !2380, !2381}
!2378 = !DILocalVariable(name: "pp", arg: 1, scope: !2376, file: !3, line: 1047, type: !1126)
!2379 = !DILocalVariable(name: "e", arg: 2, scope: !2376, file: !3, line: 1047, type: !69)
!2380 = !DILocalVariable(name: "code", scope: !2376, file: !3, line: 1049, type: !1886)
!2381 = !DILocalVariable(name: "type", scope: !2382, file: !3, line: 1055, type: !69)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 1054, column: 7)
!2383 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1052, column: 5)
!2384 = !DILocation(line: 0, scope: !2376)
!2385 = !DILocation(line: 1049, column: 31, scope: !2376)
!2386 = !DILocation(line: 1051, column: 3, scope: !2376)
!2387 = !DILocation(line: 1055, column: 14, scope: !2382)
!2388 = !DILocation(line: 0, scope: !2382)
!2389 = !DILocation(line: 1056, column: 14, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 1056, column: 6)
!2391 = !DILocation(line: 1056, column: 11, scope: !2390)
!2392 = !DILocation(line: 1056, column: 6, scope: !2382)
!2393 = !DILocation(line: 1057, column: 4, scope: !2390)
!2394 = !DILocation(line: 1058, column: 19, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 1058, column: 11)
!2396 = !DILocation(line: 1058, column: 16, scope: !2395)
!2397 = !DILocation(line: 1058, column: 11, scope: !2390)
!2398 = !DILocation(line: 1059, column: 4, scope: !2395)
!2399 = !DILocation(line: 1060, column: 11, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 1060, column: 11)
!2401 = !DILocation(line: 1060, column: 28, scope: !2400)
!2402 = !DILocation(line: 1061, column: 4, scope: !2400)
!2403 = !DILocation(line: 1061, column: 7, scope: !2400)
!2404 = !DILocation(line: 1060, column: 11, scope: !2395)
!2405 = !DILocation(line: 1064, column: 4, scope: !2400)
!2406 = !DILocation(line: 1069, column: 7, scope: !2383)
!2407 = !DILocation(line: 1070, column: 7, scope: !2383)
!2408 = !DILocation(line: 1073, column: 7, scope: !2383)
!2409 = !DILocation(line: 1074, column: 7, scope: !2383)
!2410 = !DILocation(line: 1077, column: 7, scope: !2383)
!2411 = !DILocation(line: 1078, column: 7, scope: !2383)
!2412 = !DILocation(line: 1084, column: 7, scope: !2383)
!2413 = !DILocation(line: 1085, column: 7, scope: !2383)
!2414 = !DILocation(line: 1088, column: 7, scope: !2383)
!2415 = !DILocation(line: 1089, column: 7, scope: !2383)
!2416 = !DILocation(line: 1091, column: 1, scope: !2376)
!2417 = distinct !DISubprogram(name: "pp_c_bool_constant", scope: !3, file: !3, line: 888, type: !1124, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2418)
!2418 = !{!2419, !2420}
!2419 = !DILocalVariable(name: "pp", arg: 1, scope: !2417, file: !3, line: 888, type: !1126)
!2420 = !DILocalVariable(name: "b", arg: 2, scope: !2417, file: !3, line: 888, type: !69)
!2421 = !DILocation(line: 0, scope: !2417)
!2422 = !DILocation(line: 890, column: 12, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 890, column: 7)
!2424 = !DILocation(line: 890, column: 9, scope: !2423)
!2425 = !DILocation(line: 890, column: 7, scope: !2417)
!2426 = !DILocation(line: 892, column: 11, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 892, column: 11)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 891, column: 5)
!2429 = !DILocation(line: 892, column: 11, scope: !2428)
!2430 = !DILocation(line: 893, column: 2, scope: !2427)
!2431 = !DILocation(line: 894, column: 16, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 894, column: 16)
!2433 = !DILocation(line: 894, column: 16, scope: !2427)
!2434 = !DILocation(line: 895, column: 2, scope: !2432)
!2435 = !DILocation(line: 897, column: 2, scope: !2432)
!2436 = !DILocation(line: 899, column: 17, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 899, column: 12)
!2438 = !DILocation(line: 899, column: 14, scope: !2437)
!2439 = !DILocation(line: 899, column: 12, scope: !2423)
!2440 = !DILocation(line: 901, column: 11, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 901, column: 11)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 900, column: 5)
!2443 = !DILocation(line: 901, column: 11, scope: !2442)
!2444 = !DILocation(line: 902, column: 2, scope: !2441)
!2445 = !DILocation(line: 903, column: 16, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 903, column: 16)
!2447 = !DILocation(line: 903, column: 16, scope: !2441)
!2448 = !DILocation(line: 904, column: 2, scope: !2446)
!2449 = !DILocation(line: 906, column: 2, scope: !2446)
!2450 = !DILocation(line: 908, column: 12, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 908, column: 12)
!2452 = !DILocation(line: 908, column: 26, scope: !2451)
!2453 = !DILocation(line: 908, column: 12, scope: !2437)
!2454 = !DILocation(line: 909, column: 5, scope: !2451)
!2455 = !DILocation(line: 911, column: 5, scope: !2451)
!2456 = !DILocation(line: 912, column: 1, scope: !2417)
!2457 = distinct !DISubprogram(name: "pp_c_character_constant", scope: !3, file: !3, line: 872, type: !1124, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2458)
!2458 = !{!2459, !2460, !2461}
!2459 = !DILocalVariable(name: "pp", arg: 1, scope: !2457, file: !3, line: 872, type: !1126)
!2460 = !DILocalVariable(name: "c", arg: 2, scope: !2457, file: !3, line: 872, type: !69)
!2461 = !DILocalVariable(name: "type", scope: !2457, file: !3, line: 874, type: !69)
!2462 = !DILocation(line: 0, scope: !2457)
!2463 = !DILocation(line: 874, column: 15, scope: !2457)
!2464 = !DILocation(line: 875, column: 15, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 875, column: 7)
!2466 = !DILocation(line: 875, column: 12, scope: !2465)
!2467 = !DILocation(line: 875, column: 7, scope: !2457)
!2468 = !DILocation(line: 876, column: 5, scope: !2465)
!2469 = !DILocation(line: 877, column: 3, scope: !2457)
!2470 = !DILocation(line: 878, column: 25, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 878, column: 7)
!2472 = !DILocation(line: 878, column: 7, scope: !2471)
!2473 = !DILocation(line: 878, column: 7, scope: !2457)
!2474 = !DILocation(line: 879, column: 37, scope: !2471)
!2475 = !DILocation(line: 879, column: 20, scope: !2471)
!2476 = !DILocation(line: 879, column: 5, scope: !2471)
!2477 = !DILocation(line: 881, column: 5, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 881, column: 5)
!2479 = !DILocation(line: 882, column: 3, scope: !2457)
!2480 = !DILocation(line: 883, column: 1, scope: !2457)
!2481 = distinct !DISubprogram(name: "pp_c_enumeration_constant", scope: !3, file: !3, line: 920, type: !2482, scopeLine: 921, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2484)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!312, !1126, !69}
!2484 = !{!2485, !2486, !2487, !2488, !2489}
!2485 = !DILocalVariable(name: "pp", arg: 1, scope: !2481, file: !3, line: 920, type: !1126)
!2486 = !DILocalVariable(name: "e", arg: 2, scope: !2481, file: !3, line: 920, type: !69)
!2487 = !DILocalVariable(name: "value_is_named", scope: !2481, file: !3, line: 922, type: !312)
!2488 = !DILocalVariable(name: "type", scope: !2481, file: !3, line: 923, type: !69)
!2489 = !DILocalVariable(name: "value", scope: !2481, file: !3, line: 924, type: !69)
!2490 = !DILocation(line: 0, scope: !2481)
!2491 = !DILocation(line: 923, column: 15, scope: !2481)
!2492 = !DILocation(line: 927, column: 16, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 927, column: 3)
!2494 = !DILocation(line: 927, column: 8, scope: !2493)
!2495 = !DILocation(line: 0, scope: !2493)
!2496 = !DILocation(line: 928, column: 27, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 927, column: 3)
!2498 = !DILocation(line: 928, column: 51, scope: !2497)
!2499 = !DILocation(line: 928, column: 31, scope: !2497)
!2500 = !DILocation(line: 928, column: 30, scope: !2497)
!2501 = !DILocation(line: 927, column: 3, scope: !2493)
!2502 = !DILocation(line: 929, column: 16, scope: !2497)
!2503 = !DILocation(line: 927, column: 3, scope: !2497)
!2504 = distinct !{!2504, !2501, !2505}
!2505 = !DILocation(line: 930, column: 5, scope: !2493)
!2506 = !DILocation(line: 933, column: 5, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 932, column: 7)
!2508 = !DILocation(line: 937, column: 7, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 935, column: 5)
!2510 = !DILocation(line: 941, column: 3, scope: !2481)
!2511 = distinct !DISubprogram(name: "pp_c_integer_constant", scope: !3, file: !3, line: 840, type: !1124, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2519}
!2513 = !DILocalVariable(name: "pp", arg: 1, scope: !2511, file: !3, line: 840, type: !1126)
!2514 = !DILocalVariable(name: "i", arg: 2, scope: !2511, file: !3, line: 840, type: !69)
!2515 = !DILocalVariable(name: "type", scope: !2511, file: !3, line: 842, type: !69)
!2516 = !DILocalVariable(name: "low", scope: !2517, file: !3, line: 848, type: !63)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 847, column: 5)
!2518 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 844, column: 7)
!2519 = !DILocalVariable(name: "high", scope: !2517, file: !3, line: 849, type: !37)
!2520 = !DILocation(line: 0, scope: !2511)
!2521 = !DILocation(line: 842, column: 15, scope: !2511)
!2522 = !DILocation(line: 844, column: 7, scope: !2518)
!2523 = !DILocation(line: 844, column: 29, scope: !2518)
!2524 = !DILocation(line: 844, column: 7, scope: !2511)
!2525 = !DILocation(line: 845, column: 5, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 845, column: 5)
!2527 = !DILocation(line: 848, column: 36, scope: !2517)
!2528 = !DILocation(line: 0, scope: !2517)
!2529 = !DILocation(line: 850, column: 11, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 850, column: 11)
!2531 = !DILocation(line: 850, column: 32, scope: !2530)
!2532 = !DILocation(line: 850, column: 11, scope: !2517)
!2533 = !DILocation(line: 852, column: 4, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 851, column: 2)
!2535 = !DILocation(line: 853, column: 11, scope: !2534)
!2536 = !DILocation(line: 853, column: 19, scope: !2534)
!2537 = !DILocation(line: 853, column: 17, scope: !2534)
!2538 = !DILocation(line: 854, column: 10, scope: !2534)
!2539 = !DILocation(line: 855, column: 2, scope: !2534)
!2540 = !DILocation(line: 856, column: 16, scope: !2517)
!2541 = !DILocation(line: 856, column: 7, scope: !2517)
!2542 = !DILocation(line: 858, column: 7, scope: !2517)
!2543 = !DILocation(line: 860, column: 7, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 860, column: 7)
!2545 = !DILocation(line: 860, column: 7, scope: !2511)
!2546 = !DILocation(line: 861, column: 5, scope: !2544)
!2547 = !DILocation(line: 862, column: 15, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 862, column: 7)
!2549 = !DILocation(line: 862, column: 12, scope: !2548)
!2550 = !DILocation(line: 862, column: 49, scope: !2548)
!2551 = !DILocation(line: 862, column: 46, scope: !2548)
!2552 = !DILocation(line: 862, column: 38, scope: !2548)
!2553 = !DILocation(line: 863, column: 5, scope: !2548)
!2554 = !DILocation(line: 864, column: 20, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 864, column: 12)
!2556 = !DILocation(line: 864, column: 17, scope: !2555)
!2557 = !DILocation(line: 865, column: 16, scope: !2555)
!2558 = !DILocation(line: 865, column: 13, scope: !2555)
!2559 = !DILocation(line: 865, column: 5, scope: !2555)
!2560 = !DILocation(line: 866, column: 5, scope: !2555)
!2561 = !DILocation(line: 867, column: 1, scope: !2511)
!2562 = distinct !DISubprogram(name: "pp_c_floating_constant", scope: !3, file: !3, line: 947, type: !1124, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2563)
!2563 = !{!2564, !2565}
!2564 = !DILocalVariable(name: "pp", arg: 1, scope: !2562, file: !3, line: 947, type: !1126)
!2565 = !DILocalVariable(name: "r", arg: 2, scope: !2562, file: !3, line: 947, type: !69)
!2566 = !DILocation(line: 0, scope: !2562)
!2567 = !DILocation(line: 949, column: 20, scope: !2562)
!2568 = !DILocation(line: 949, column: 51, scope: !2562)
!2569 = !DILocation(line: 949, column: 3, scope: !2562)
!2570 = !DILocation(line: 951, column: 3, scope: !2562)
!2571 = !DILocation(line: 952, column: 7, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 952, column: 7)
!2573 = !DILocation(line: 952, column: 24, scope: !2572)
!2574 = !DILocation(line: 952, column: 21, scope: !2572)
!2575 = !DILocation(line: 952, column: 7, scope: !2562)
!2576 = !DILocation(line: 953, column: 5, scope: !2572)
!2577 = !DILocation(line: 954, column: 29, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 954, column: 12)
!2579 = !DILocation(line: 954, column: 26, scope: !2578)
!2580 = !DILocation(line: 954, column: 12, scope: !2572)
!2581 = !DILocation(line: 955, column: 5, scope: !2578)
!2582 = !DILocation(line: 956, column: 29, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 956, column: 12)
!2584 = !DILocation(line: 956, column: 26, scope: !2583)
!2585 = !DILocation(line: 956, column: 12, scope: !2578)
!2586 = !DILocation(line: 957, column: 5, scope: !2583)
!2587 = !DILocation(line: 958, column: 29, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 958, column: 12)
!2589 = !DILocation(line: 958, column: 26, scope: !2588)
!2590 = !DILocation(line: 958, column: 12, scope: !2583)
!2591 = !DILocation(line: 959, column: 5, scope: !2588)
!2592 = !DILocation(line: 960, column: 29, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 960, column: 12)
!2594 = !DILocation(line: 960, column: 26, scope: !2593)
!2595 = !DILocation(line: 960, column: 12, scope: !2588)
!2596 = !DILocation(line: 961, column: 5, scope: !2593)
!2597 = !DILocation(line: 962, column: 1, scope: !2562)
!2598 = distinct !DISubprogram(name: "pp_c_fixed_constant", scope: !3, file: !3, line: 967, type: !1124, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2599)
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "pp", arg: 1, scope: !2598, file: !3, line: 967, type: !1126)
!2601 = !DILocalVariable(name: "r", arg: 2, scope: !2598, file: !3, line: 967, type: !69)
!2602 = !DILocation(line: 0, scope: !2598)
!2603 = !DILocation(line: 969, column: 21, scope: !2598)
!2604 = !DILocation(line: 969, column: 52, scope: !2598)
!2605 = !DILocation(line: 969, column: 3, scope: !2598)
!2606 = !DILocation(line: 971, column: 3, scope: !2598)
!2607 = !DILocation(line: 972, column: 1, scope: !2598)
!2608 = distinct !DISubprogram(name: "pp_c_compound_literal", scope: !3, file: !3, line: 978, type: !1124, scopeLine: 979, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DILocalVariable(name: "pp", arg: 1, scope: !2608, file: !3, line: 978, type: !1126)
!2611 = !DILocalVariable(name: "e", arg: 2, scope: !2608, file: !3, line: 978, type: !69)
!2612 = !DILocalVariable(name: "type", scope: !2608, file: !3, line: 980, type: !69)
!2613 = !DILocation(line: 0, scope: !2608)
!2614 = !DILocation(line: 980, column: 15, scope: !2608)
!2615 = !DILocation(line: 981, column: 3, scope: !2608)
!2616 = !DILocation(line: 983, column: 11, scope: !2608)
!2617 = !DILocation(line: 983, column: 3, scope: !2608)
!2618 = !DILocation(line: 990, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 984, column: 5)
!2620 = !DILocation(line: 991, column: 7, scope: !2619)
!2621 = !DILocation(line: 994, column: 7, scope: !2619)
!2622 = !DILocation(line: 995, column: 7, scope: !2619)
!2623 = !DILocation(line: 997, column: 1, scope: !2608)
!2624 = distinct !DISubprogram(name: "pp_c_primary_expression", scope: !3, file: !3, line: 1124, type: !1124, scopeLine: 1125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2625)
!2625 = !{!2626, !2627}
!2626 = !DILocalVariable(name: "pp", arg: 1, scope: !2624, file: !3, line: 1124, type: !1126)
!2627 = !DILocalVariable(name: "e", arg: 2, scope: !2624, file: !3, line: 1124, type: !69)
!2628 = !DILocation(line: 0, scope: !2624)
!2629 = !DILocation(line: 1126, column: 11, scope: !2624)
!2630 = !DILocation(line: 1126, column: 3, scope: !2624)
!2631 = !DILocation(line: 1134, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 1127, column: 5)
!2633 = !DILocation(line: 1135, column: 7, scope: !2632)
!2634 = !DILocation(line: 1138, column: 7, scope: !2632)
!2635 = !DILocation(line: 1139, column: 7, scope: !2632)
!2636 = !DILocation(line: 1142, column: 7, scope: !2632)
!2637 = !DILocation(line: 1143, column: 7, scope: !2632)
!2638 = !DILocation(line: 1146, column: 7, scope: !2632)
!2639 = !DILocation(line: 1147, column: 7, scope: !2632)
!2640 = !DILocation(line: 1153, column: 7, scope: !2632)
!2641 = !DILocation(line: 1154, column: 7, scope: !2632)
!2642 = !DILocation(line: 1157, column: 7, scope: !2632)
!2643 = !DILocation(line: 1158, column: 7, scope: !2632)
!2644 = !DILocation(line: 1159, column: 7, scope: !2632)
!2645 = !DILocation(line: 1160, column: 7, scope: !2632)
!2646 = !DILocation(line: 1161, column: 7, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1161, column: 7)
!2648 = !DILocation(line: 1162, column: 7, scope: !2632)
!2649 = !DILocation(line: 1163, column: 7, scope: !2632)
!2650 = !DILocation(line: 1164, column: 11, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1164, column: 11)
!2652 = !DILocation(line: 1164, column: 11, scope: !2632)
!2653 = !DILocation(line: 1166, column: 4, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 1166, column: 4)
!2655 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1165, column: 2)
!2656 = !DILocation(line: 1167, column: 25, scope: !2655)
!2657 = !DILocation(line: 1167, column: 4, scope: !2655)
!2658 = !DILocation(line: 1168, column: 2, scope: !2655)
!2659 = !DILocation(line: 1169, column: 7, scope: !2632)
!2660 = !DILocation(line: 1170, column: 7, scope: !2632)
!2661 = !DILocation(line: 1174, column: 7, scope: !2632)
!2662 = !DILocation(line: 1175, column: 7, scope: !2632)
!2663 = !DILocation(line: 1176, column: 7, scope: !2632)
!2664 = !DILocation(line: 1177, column: 7, scope: !2632)
!2665 = !DILocation(line: 1179, column: 1, scope: !2624)
!2666 = distinct !DISubprogram(name: "pp_c_expression", scope: !3, file: !3, line: 1986, type: !1124, scopeLine: 1987, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2667)
!2667 = !{!2668, !2669}
!2668 = !DILocalVariable(name: "pp", arg: 1, scope: !2666, file: !3, line: 1986, type: !1126)
!2669 = !DILocalVariable(name: "e", arg: 2, scope: !2666, file: !3, line: 1986, type: !69)
!2670 = !DILocation(line: 0, scope: !2666)
!2671 = !DILocation(line: 1988, column: 11, scope: !2666)
!2672 = !DILocation(line: 1988, column: 3, scope: !2666)
!2673 = !DILocation(line: 1991, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 1989, column: 5)
!2675 = !DILocation(line: 1992, column: 7, scope: !2674)
!2676 = !DILocation(line: 1995, column: 7, scope: !2674)
!2677 = !DILocation(line: 1996, column: 7, scope: !2674)
!2678 = !DILocation(line: 1999, column: 7, scope: !2674)
!2679 = !DILocation(line: 2000, column: 7, scope: !2674)
!2680 = !DILocation(line: 2003, column: 7, scope: !2674)
!2681 = !DILocation(line: 2004, column: 7, scope: !2674)
!2682 = !DILocation(line: 2015, column: 7, scope: !2674)
!2683 = !DILocation(line: 2016, column: 7, scope: !2674)
!2684 = !DILocation(line: 2039, column: 7, scope: !2674)
!2685 = !DILocation(line: 2040, column: 7, scope: !2674)
!2686 = !DILocation(line: 2052, column: 7, scope: !2674)
!2687 = !DILocation(line: 2053, column: 7, scope: !2674)
!2688 = !DILocation(line: 2059, column: 7, scope: !2674)
!2689 = !DILocation(line: 2060, column: 7, scope: !2674)
!2690 = !DILocation(line: 2065, column: 7, scope: !2674)
!2691 = !DILocation(line: 2066, column: 7, scope: !2674)
!2692 = !DILocation(line: 2070, column: 7, scope: !2674)
!2693 = !DILocation(line: 2071, column: 7, scope: !2674)
!2694 = !DILocation(line: 2077, column: 7, scope: !2674)
!2695 = !DILocation(line: 2078, column: 7, scope: !2674)
!2696 = !DILocation(line: 2081, column: 7, scope: !2674)
!2697 = !DILocation(line: 2082, column: 7, scope: !2674)
!2698 = !DILocation(line: 2086, column: 7, scope: !2674)
!2699 = !DILocation(line: 2087, column: 7, scope: !2674)
!2700 = !DILocation(line: 2090, column: 7, scope: !2674)
!2701 = !DILocation(line: 2091, column: 7, scope: !2674)
!2702 = !DILocation(line: 2095, column: 7, scope: !2674)
!2703 = !DILocation(line: 2096, column: 7, scope: !2674)
!2704 = !DILocation(line: 2100, column: 7, scope: !2674)
!2705 = !DILocation(line: 2101, column: 7, scope: !2674)
!2706 = !DILocation(line: 2105, column: 7, scope: !2674)
!2707 = !DILocation(line: 2106, column: 7, scope: !2674)
!2708 = !DILocation(line: 2109, column: 7, scope: !2674)
!2709 = !DILocation(line: 2110, column: 7, scope: !2674)
!2710 = !DILocation(line: 2115, column: 7, scope: !2674)
!2711 = !DILocation(line: 2116, column: 7, scope: !2674)
!2712 = !DILocation(line: 2120, column: 7, scope: !2674)
!2713 = !DILocation(line: 2121, column: 7, scope: !2674)
!2714 = !DILocation(line: 2124, column: 7, scope: !2674)
!2715 = !DILocation(line: 2125, column: 7, scope: !2674)
!2716 = !DILocation(line: 2126, column: 7, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 2126, column: 7)
!2718 = !DILocation(line: 2127, column: 7, scope: !2674)
!2719 = !DILocation(line: 2128, column: 7, scope: !2674)
!2720 = !DILocation(line: 2129, column: 7, scope: !2674)
!2721 = !DILocation(line: 2133, column: 7, scope: !2674)
!2722 = !DILocation(line: 2134, column: 7, scope: !2674)
!2723 = !DILocation(line: 2137, column: 7, scope: !2674)
!2724 = !DILocation(line: 2138, column: 7, scope: !2674)
!2725 = !DILocation(line: 2144, column: 7, scope: !2674)
!2726 = !DILocation(line: 2145, column: 7, scope: !2674)
!2727 = !DILocation(line: 2148, column: 7, scope: !2674)
!2728 = !DILocation(line: 2149, column: 7, scope: !2674)
!2729 = !DILocation(line: 2151, column: 1, scope: !2666)
!2730 = distinct !DISubprogram(name: "pp_c_initializer", scope: !3, file: !3, line: 1188, type: !1124, scopeLine: 1189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2731)
!2731 = !{!2732, !2733}
!2732 = !DILocalVariable(name: "pp", arg: 1, scope: !2730, file: !3, line: 1188, type: !1126)
!2733 = !DILocalVariable(name: "e", arg: 2, scope: !2730, file: !3, line: 1188, type: !69)
!2734 = !DILocation(line: 0, scope: !2730)
!2735 = !DILocation(line: 1190, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1190, column: 7)
!2737 = !DILocation(line: 1190, column: 21, scope: !2736)
!2738 = !DILocation(line: 1190, column: 7, scope: !2730)
!2739 = !DILocation(line: 1191, column: 5, scope: !2736)
!2740 = !DILocation(line: 1193, column: 5, scope: !2736)
!2741 = !DILocation(line: 1194, column: 1, scope: !2730)
!2742 = distinct !DISubprogram(name: "pp_c_id_expression", scope: !3, file: !3, line: 1331, type: !1124, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2743)
!2743 = !{!2744, !2745}
!2744 = !DILocalVariable(name: "pp", arg: 1, scope: !2742, file: !3, line: 1331, type: !1126)
!2745 = !DILocalVariable(name: "t", arg: 2, scope: !2742, file: !3, line: 1331, type: !69)
!2746 = !DILocation(line: 0, scope: !2742)
!2747 = !DILocation(line: 1333, column: 11, scope: !2742)
!2748 = !DILocation(line: 1333, column: 3, scope: !2742)
!2749 = !DILocation(line: 1342, column: 7, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 1334, column: 5)
!2751 = !DILocation(line: 1343, column: 7, scope: !2750)
!2752 = !DILocation(line: 1346, column: 7, scope: !2750)
!2753 = !DILocation(line: 1347, column: 7, scope: !2750)
!2754 = !DILocation(line: 1350, column: 7, scope: !2750)
!2755 = !DILocation(line: 1351, column: 7, scope: !2750)
!2756 = !DILocation(line: 1353, column: 1, scope: !2742)
!2757 = distinct !DISubprogram(name: "pp_c_postfix_expression", scope: !3, file: !3, line: 1367, type: !1124, scopeLine: 1368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2758)
!2758 = !{!2759, !2760, !2761, !2762, !2771, !2772, !2774, !2776, !2779, !2780}
!2759 = !DILocalVariable(name: "pp", arg: 1, scope: !2757, file: !3, line: 1367, type: !1126)
!2760 = !DILocalVariable(name: "e", arg: 2, scope: !2757, file: !3, line: 1367, type: !69)
!2761 = !DILocalVariable(name: "code", scope: !2757, file: !3, line: 1369, type: !689)
!2762 = !DILocalVariable(name: "iter", scope: !2763, file: !3, line: 1387, type: !2765)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1386, column: 7)
!2764 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 1371, column: 5)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "call_expr_arg_iterator", file: !73, line: 5364, baseType: !2766)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "call_expr_arg_iterator_d", file: !73, line: 5360, size: 128, elements: !2767)
!2767 = !{!2768, !2769, !2770}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !2766, file: !73, line: 5361, baseType: !69, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !2766, file: !73, line: 5362, baseType: !13, size: 32, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !2766, file: !73, line: 5363, baseType: !13, size: 32, offset: 96)
!2771 = !DILocalVariable(name: "arg", scope: !2763, file: !3, line: 1388, type: !69)
!2772 = !DILocalVariable(name: "object", scope: !2773, file: !3, line: 1466, type: !69)
!2773 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1465, column: 7)
!2774 = !DILocalVariable(name: "type", scope: !2775, file: !3, line: 1483, type: !69)
!2775 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1482, column: 7)
!2776 = !DILocalVariable(name: "bitpos", scope: !2777, file: !3, line: 1489, type: !37)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 1488, column: 4)
!2778 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 1486, column: 6)
!2779 = !DILocalVariable(name: "size", scope: !2777, file: !3, line: 1490, type: !37)
!2780 = !DILabel(scope: !2764, name: "two_args_fun", file: !3, line: 1449)
!2781 = !DILocation(line: 0, scope: !2757)
!2782 = !DILocation(line: 1369, column: 25, scope: !2757)
!2783 = !DILocation(line: 1370, column: 3, scope: !2757)
!2784 = !DILocation(line: 1374, column: 7, scope: !2764)
!2785 = !DILocation(line: 1375, column: 7, scope: !2764)
!2786 = !DILocation(line: 1376, column: 7, scope: !2764)
!2787 = !DILocation(line: 1379, column: 7, scope: !2764)
!2788 = !DILocation(line: 1380, column: 7, scope: !2764)
!2789 = !DILocation(line: 1381, column: 7, scope: !2764)
!2790 = !DILocation(line: 1382, column: 7, scope: !2764)
!2791 = !DILocation(line: 1383, column: 7, scope: !2764)
!2792 = !DILocation(line: 1387, column: 2, scope: !2763)
!2793 = !DILocation(line: 1389, column: 2, scope: !2763)
!2794 = !DILocation(line: 1390, column: 2, scope: !2763)
!2795 = !DILocation(line: 0, scope: !2763)
!2796 = !DILocation(line: 1391, column: 2, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1391, column: 2)
!2798 = !DILocation(line: 0, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1392, column: 4)
!2800 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 1391, column: 2)
!2801 = !DILocation(line: 0, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 1395, column: 8)
!2803 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 1394, column: 10)
!2804 = !DILocation(line: 0, scope: !2797)
!2805 = !DILocation(line: 1393, column: 6, scope: !2799)
!2806 = !DILocation(line: 1394, column: 10, scope: !2803)
!2807 = !DILocation(line: 1394, column: 10, scope: !2799)
!2808 = !DILocation(line: 1395, column: 8, scope: !2802)
!2809 = !DILocation(line: 1391, column: 2, scope: !2800)
!2810 = distinct !{!2810, !2796, !2811}
!2811 = !DILocation(line: 1396, column: 4, scope: !2797)
!2812 = !DILocation(line: 1397, column: 2, scope: !2763)
!2813 = !DILocation(line: 1399, column: 7, scope: !2764)
!2814 = !DILocation(line: 1402, column: 27, scope: !2764)
!2815 = !DILocation(line: 1402, column: 7, scope: !2764)
!2816 = !DILocation(line: 1405, column: 7, scope: !2764)
!2817 = !DILocation(line: 1408, column: 27, scope: !2764)
!2818 = !DILocation(line: 1408, column: 7, scope: !2764)
!2819 = !DILocation(line: 1411, column: 7, scope: !2764)
!2820 = !DILocation(line: 1414, column: 27, scope: !2764)
!2821 = !DILocation(line: 1414, column: 7, scope: !2764)
!2822 = !DILocation(line: 1417, column: 7, scope: !2764)
!2823 = !DILocation(line: 1420, column: 27, scope: !2764)
!2824 = !DILocation(line: 1420, column: 7, scope: !2764)
!2825 = !DILocation(line: 1423, column: 7, scope: !2764)
!2826 = !DILocation(line: 1426, column: 27, scope: !2764)
!2827 = !DILocation(line: 1426, column: 7, scope: !2764)
!2828 = !DILocation(line: 1429, column: 7, scope: !2764)
!2829 = !DILocation(line: 1432, column: 27, scope: !2764)
!2830 = !DILocation(line: 1432, column: 7, scope: !2764)
!2831 = !DILocation(line: 1435, column: 7, scope: !2764)
!2832 = !DILocation(line: 1438, column: 27, scope: !2764)
!2833 = !DILocation(line: 1438, column: 7, scope: !2764)
!2834 = !DILocation(line: 1441, column: 7, scope: !2764)
!2835 = !DILocation(line: 1444, column: 27, scope: !2764)
!2836 = !DILocation(line: 1444, column: 7, scope: !2764)
!2837 = !DILocation(line: 1447, column: 7, scope: !2764)
!2838 = !DILocation(line: 1449, column: 5, scope: !2764)
!2839 = !DILocation(line: 1450, column: 7, scope: !2764)
!2840 = !DILocation(line: 1451, column: 7, scope: !2764)
!2841 = !DILocation(line: 1452, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1452, column: 7)
!2843 = !DILocation(line: 1453, column: 7, scope: !2764)
!2844 = !DILocation(line: 1454, column: 7, scope: !2764)
!2845 = !DILocation(line: 1455, column: 7, scope: !2764)
!2846 = !DILocation(line: 1458, column: 7, scope: !2764)
!2847 = !DILocation(line: 1459, column: 7, scope: !2764)
!2848 = !DILocation(line: 1460, column: 7, scope: !2764)
!2849 = !DILocation(line: 1461, column: 7, scope: !2764)
!2850 = !DILocation(line: 1462, column: 7, scope: !2764)
!2851 = !DILocation(line: 1466, column: 16, scope: !2773)
!2852 = !DILocation(line: 0, scope: !2773)
!2853 = !DILocation(line: 1467, column: 6, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 1467, column: 6)
!2855 = !DILocation(line: 1467, column: 25, scope: !2854)
!2856 = !DILocation(line: 0, scope: !2854)
!2857 = !DILocation(line: 1467, column: 6, scope: !2773)
!2858 = !DILocation(line: 1469, column: 6, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 1468, column: 4)
!2860 = !DILocation(line: 1470, column: 6, scope: !2859)
!2861 = !DILocation(line: 1471, column: 4, scope: !2859)
!2862 = !DILocation(line: 1474, column: 6, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 1473, column: 4)
!2864 = !DILocation(line: 1475, column: 6, scope: !2863)
!2865 = !DILocation(line: 1477, column: 2, scope: !2773)
!2866 = !DILocation(line: 1479, column: 7, scope: !2764)
!2867 = !DILocation(line: 1483, column: 14, scope: !2775)
!2868 = !DILocation(line: 0, scope: !2775)
!2869 = !DILocation(line: 1485, column: 38, scope: !2775)
!2870 = !DILocation(line: 1485, column: 9, scope: !2775)
!2871 = !DILocation(line: 1486, column: 6, scope: !2778)
!2872 = !DILocation(line: 1487, column: 6, scope: !2778)
!2873 = !DILocation(line: 1487, column: 29, scope: !2778)
!2874 = !DILocation(line: 1487, column: 47, scope: !2778)
!2875 = !DILocation(line: 1487, column: 9, scope: !2778)
!2876 = !DILocation(line: 1486, column: 6, scope: !2775)
!2877 = !DILocation(line: 1489, column: 43, scope: !2777)
!2878 = !DILocation(line: 1489, column: 29, scope: !2777)
!2879 = !DILocation(line: 0, scope: !2777)
!2880 = !DILocation(line: 1490, column: 41, scope: !2777)
!2881 = !DILocation(line: 1490, column: 27, scope: !2777)
!2882 = !DILocation(line: 1491, column: 18, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1491, column: 10)
!2884 = !DILocation(line: 1491, column: 26, scope: !2883)
!2885 = !DILocation(line: 1491, column: 10, scope: !2777)
!2886 = !DILocation(line: 1493, column: 3, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1492, column: 8)
!2888 = !DILocation(line: 1494, column: 3, scope: !2887)
!2889 = !DILocation(line: 1495, column: 3, scope: !2887)
!2890 = !DILocation(line: 1496, column: 3, scope: !2887)
!2891 = !DILocation(line: 1497, column: 3, scope: !2887)
!2892 = !DILocation(line: 1498, column: 3, scope: !2887)
!2893 = !DILocation(line: 1499, column: 3, scope: !2887)
!2894 = !DILocation(line: 1500, column: 3, scope: !2887)
!2895 = !DILocation(line: 1501, column: 3, scope: !2887)
!2896 = !DILocation(line: 1502, column: 3, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1502, column: 3)
!2898 = !DILocation(line: 1503, column: 3, scope: !2887)
!2899 = !DILocation(line: 1504, column: 3, scope: !2887)
!2900 = !DILocation(line: 1507, column: 2, scope: !2775)
!2901 = !DILocation(line: 1508, column: 7, scope: !2764)
!2902 = !DILocation(line: 1513, column: 7, scope: !2764)
!2903 = !DILocation(line: 1514, column: 7, scope: !2764)
!2904 = !DILocation(line: 1517, column: 7, scope: !2764)
!2905 = !DILocation(line: 1518, column: 7, scope: !2764)
!2906 = !DILocation(line: 1521, column: 11, scope: !2764)
!2907 = !DILocation(line: 1521, column: 7, scope: !2764)
!2908 = !DILocation(line: 1524, column: 7, scope: !2764)
!2909 = !DILocation(line: 1525, column: 7, scope: !2764)
!2910 = !DILocation(line: 1528, column: 7, scope: !2764)
!2911 = !DILocation(line: 1529, column: 7, scope: !2764)
!2912 = !DILocation(line: 1530, column: 7, scope: !2764)
!2913 = !DILocation(line: 1531, column: 7, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1531, column: 7)
!2915 = !DILocation(line: 1532, column: 7, scope: !2764)
!2916 = !DILocation(line: 1533, column: 7, scope: !2764)
!2917 = !DILocation(line: 1534, column: 7, scope: !2764)
!2918 = !DILocation(line: 1537, column: 11, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1537, column: 11)
!2920 = !DILocation(line: 1537, column: 43, scope: !2919)
!2921 = !DILocation(line: 1537, column: 11, scope: !2764)
!2922 = !DILocation(line: 1539, column: 4, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 1538, column: 2)
!2924 = !DILocation(line: 1540, column: 4, scope: !2923)
!2925 = !DILocation(line: 1545, column: 7, scope: !2764)
!2926 = !DILocation(line: 1546, column: 7, scope: !2764)
!2927 = !DILocation(line: 1548, column: 1, scope: !2757)
!2928 = distinct !DISubprogram(name: "first_call_expr_arg", scope: !73, file: !73, line: 5419, type: !2929, scopeLine: 5420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2932)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!69, !69, !2931}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "exp", arg: 1, scope: !2928, file: !73, line: 5419, type: !69)
!2934 = !DILocalVariable(name: "iter", arg: 2, scope: !2928, file: !73, line: 5419, type: !2931)
!2935 = !DILocation(line: 0, scope: !2928)
!2936 = !DILocation(line: 5421, column: 3, scope: !2928)
!2937 = !DILocation(line: 5422, column: 10, scope: !2928)
!2938 = !DILocation(line: 5422, column: 3, scope: !2928)
!2939 = distinct !DISubprogram(name: "more_call_expr_args_p", scope: !73, file: !73, line: 5435, type: !2940, scopeLine: 5436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2944)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!312, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2765)
!2944 = !{!2945}
!2945 = !DILocalVariable(name: "iter", arg: 1, scope: !2939, file: !73, line: 5435, type: !2942)
!2946 = !DILocation(line: 0, scope: !2939)
!2947 = !DILocation(line: 5437, column: 17, scope: !2939)
!2948 = !DILocation(line: 5437, column: 27, scope: !2939)
!2949 = !DILocation(line: 5437, column: 19, scope: !2939)
!2950 = !DILocation(line: 5437, column: 10, scope: !2939)
!2951 = !DILocation(line: 5437, column: 3, scope: !2939)
!2952 = distinct !DISubprogram(name: "next_call_expr_arg", scope: !73, file: !73, line: 5393, type: !2953, scopeLine: 5394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!69, !2931}
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "iter", arg: 1, scope: !2952, file: !73, line: 5393, type: !2931)
!2957 = !DILocalVariable(name: "result", scope: !2952, file: !73, line: 5395, type: !69)
!2958 = !DILocation(line: 0, scope: !2952)
!2959 = !DILocation(line: 5396, column: 13, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2952, file: !73, line: 5396, column: 7)
!2961 = !DILocation(line: 5396, column: 24, scope: !2960)
!2962 = !DILocation(line: 5396, column: 15, scope: !2960)
!2963 = !DILocation(line: 5396, column: 7, scope: !2952)
!2964 = !DILocation(line: 5398, column: 12, scope: !2952)
!2965 = !DILocation(line: 5399, column: 10, scope: !2952)
!2966 = !DILocation(line: 5400, column: 3, scope: !2952)
!2967 = !DILocation(line: 5401, column: 1, scope: !2952)
!2968 = distinct !DISubprogram(name: "pp_c_complex_expr", scope: !3, file: !3, line: 1002, type: !1124, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !2969)
!2969 = !{!2970, !2971, !2972, !2973, !2974}
!2970 = !DILocalVariable(name: "pp", arg: 1, scope: !2968, file: !3, line: 1002, type: !1126)
!2971 = !DILocalVariable(name: "e", arg: 2, scope: !2968, file: !3, line: 1002, type: !69)
!2972 = !DILocalVariable(name: "type", scope: !2968, file: !3, line: 1006, type: !69)
!2973 = !DILocalVariable(name: "realexpr", scope: !2968, file: !3, line: 1007, type: !69)
!2974 = !DILocalVariable(name: "imagexpr", scope: !2968, file: !3, line: 1008, type: !69)
!2975 = !DILocation(line: 0, scope: !2968)
!2976 = !DILocation(line: 1006, column: 15, scope: !2968)
!2977 = !DILocation(line: 1007, column: 19, scope: !2968)
!2978 = !DILocation(line: 1008, column: 19, scope: !2968)
!2979 = !DILocation(line: 1011, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 1011, column: 7)
!2981 = !DILocation(line: 1011, column: 28, scope: !2980)
!2982 = !DILocation(line: 1012, column: 7, scope: !2980)
!2983 = !DILocation(line: 1012, column: 10, scope: !2980)
!2984 = !DILocation(line: 1012, column: 31, scope: !2980)
!2985 = !DILocation(line: 1013, column: 7, scope: !2980)
!2986 = !DILocation(line: 1013, column: 10, scope: !2980)
!2987 = !DILocation(line: 1013, column: 34, scope: !2980)
!2988 = !DILocation(line: 1013, column: 31, scope: !2980)
!2989 = !DILocation(line: 1014, column: 7, scope: !2980)
!2990 = !DILocation(line: 1014, column: 10, scope: !2980)
!2991 = !DILocation(line: 1014, column: 31, scope: !2980)
!2992 = !DILocation(line: 1015, column: 7, scope: !2980)
!2993 = !DILocation(line: 1015, column: 10, scope: !2980)
!2994 = !DILocation(line: 1015, column: 49, scope: !2980)
!2995 = !DILocation(line: 1016, column: 7, scope: !2980)
!2996 = !DILocation(line: 1016, column: 10, scope: !2980)
!2997 = !DILocation(line: 1016, column: 49, scope: !2980)
!2998 = !DILocation(line: 1017, column: 7, scope: !2980)
!2999 = !DILocation(line: 1017, column: 10, scope: !2980)
!3000 = !DILocation(line: 1018, column: 6, scope: !2980)
!3001 = !DILocation(line: 1018, column: 3, scope: !2980)
!3002 = !DILocation(line: 1011, column: 7, scope: !2968)
!3003 = !DILocation(line: 1020, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1019, column: 5)
!3005 = !DILocation(line: 1021, column: 7, scope: !3004)
!3006 = !DILocation(line: 1022, column: 7, scope: !3004)
!3007 = !DILocation(line: 1026, column: 8, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 1026, column: 7)
!3009 = !DILocation(line: 1026, column: 33, scope: !3008)
!3010 = !DILocation(line: 1026, column: 36, scope: !3008)
!3011 = !DILocation(line: 1027, column: 7, scope: !3008)
!3012 = !DILocation(line: 1027, column: 10, scope: !3008)
!3013 = !DILocation(line: 1027, column: 34, scope: !3008)
!3014 = !DILocation(line: 1027, column: 31, scope: !3008)
!3015 = !DILocation(line: 1026, column: 7, scope: !2968)
!3016 = !DILocation(line: 1029, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1028, column: 5)
!3018 = !DILocation(line: 1030, column: 11, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 1030, column: 11)
!3020 = !DILocation(line: 1030, column: 32, scope: !3019)
!3021 = !DILocation(line: 1030, column: 11, scope: !3017)
!3022 = !DILocation(line: 1031, column: 13, scope: !3019)
!3023 = !DILocation(line: 1031, column: 2, scope: !3019)
!3024 = !DILocation(line: 1032, column: 7, scope: !3017)
!3025 = !DILocation(line: 1033, column: 7, scope: !3017)
!3026 = !DILocation(line: 1036, column: 3, scope: !2968)
!3027 = !DILocation(line: 1037, column: 1, scope: !2968)
!3028 = distinct !DISubprogram(name: "pp_c_expression_list", scope: !3, file: !3, line: 1553, type: !1124, scopeLine: 1554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3029)
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "pp", arg: 1, scope: !3028, file: !3, line: 1553, type: !1126)
!3031 = !DILocalVariable(name: "e", arg: 2, scope: !3028, file: !3, line: 1553, type: !69)
!3032 = !DILocation(line: 0, scope: !3028)
!3033 = !DILocation(line: 0, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1556, column: 5)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 1555, column: 3)
!3036 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1555, column: 3)
!3037 = !DILocation(line: 0, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1559, column: 2)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1558, column: 11)
!3040 = !DILocation(line: 1555, column: 3, scope: !3028)
!3041 = !DILocation(line: 1555, column: 12, scope: !3035)
!3042 = !DILocation(line: 1555, column: 3, scope: !3036)
!3043 = !DILocation(line: 1557, column: 7, scope: !3034)
!3044 = !DILocation(line: 1558, column: 11, scope: !3039)
!3045 = !DILocation(line: 1558, column: 11, scope: !3034)
!3046 = !DILocation(line: 1559, column: 2, scope: !3038)
!3047 = !DILocation(line: 1555, column: 30, scope: !3035)
!3048 = !DILocation(line: 1555, column: 3, scope: !3035)
!3049 = distinct !{!3049, !3042, !3050}
!3050 = !DILocation(line: 1560, column: 5, scope: !3036)
!3051 = !DILocation(line: 1561, column: 1, scope: !3028)
!3052 = distinct !DISubprogram(name: "pp_c_constructor_elts", scope: !3, file: !3, line: 1566, type: !3053, scopeLine: 1567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null, !1126, !628}
!3055 = !{!3056, !3057, !3058, !3059}
!3056 = !DILocalVariable(name: "pp", arg: 1, scope: !3052, file: !3, line: 1566, type: !1126)
!3057 = !DILocalVariable(name: "v", arg: 2, scope: !3052, file: !3, line: 1566, type: !628)
!3058 = !DILocalVariable(name: "ix", scope: !3052, file: !3, line: 1568, type: !63)
!3059 = !DILocalVariable(name: "value", scope: !3052, file: !3, line: 1569, type: !69)
!3060 = !DILocation(line: 0, scope: !3052)
!3061 = !DILocation(line: 0, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 1571, column: 3)
!3063 = distinct !DILexicalBlock(scope: !3052, file: !3, line: 1571, column: 3)
!3064 = !DILocation(line: 0, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1572, column: 5)
!3066 = !DILocation(line: 0, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 1575, column: 2)
!3068 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 1574, column: 11)
!3069 = !DILocation(line: 1571, column: 3, scope: !3063)
!3070 = !DILocation(line: 0, scope: !3063)
!3071 = !DILocation(line: 1571, column: 3, scope: !3062)
!3072 = !DILocation(line: 1573, column: 7, scope: !3065)
!3073 = !DILocation(line: 1574, column: 17, scope: !3068)
!3074 = !DILocation(line: 1574, column: 49, scope: !3068)
!3075 = !DILocation(line: 1574, column: 14, scope: !3068)
!3076 = !DILocation(line: 1574, column: 11, scope: !3065)
!3077 = !DILocation(line: 1575, column: 2, scope: !3067)
!3078 = distinct !{!3078, !3069, !3079}
!3079 = !DILocation(line: 1576, column: 5, scope: !3063)
!3080 = !DILocation(line: 1577, column: 1, scope: !3052)
!3081 = distinct !DISubprogram(name: "VEC_constructor_elt_base_length", scope: !73, file: !73, line: 1537, type: !3082, scopeLine: 1537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3086)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!79, !3084}
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!3086 = !{!3087}
!3087 = !DILocalVariable(name: "vec_", arg: 1, scope: !3081, file: !73, line: 1537, type: !3084)
!3088 = !DILocation(line: 0, scope: !3081)
!3089 = !DILocation(line: 1537, column: 1, scope: !3081)
!3090 = distinct !DISubprogram(name: "VEC_constructor_elt_base_index", scope: !73, file: !73, line: 1537, type: !3091, scopeLine: 1537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3095)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!3093, !3094, !79}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "vec_", arg: 1, scope: !3090, file: !73, line: 1537, type: !3094)
!3097 = !DILocalVariable(name: "ix_", arg: 2, scope: !3090, file: !73, line: 1537, type: !79)
!3098 = !DILocation(line: 0, scope: !3090)
!3099 = !DILocation(line: 1537, column: 1, scope: !3090)
!3100 = distinct !DISubprogram(name: "pp_c_unary_expression", scope: !3, file: !3, line: 1610, type: !1124, scopeLine: 1611, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3101)
!3101 = !{!3102, !3103, !3104}
!3102 = !DILocalVariable(name: "pp", arg: 1, scope: !3100, file: !3, line: 1610, type: !1126)
!3103 = !DILocalVariable(name: "e", arg: 2, scope: !3100, file: !3, line: 1610, type: !69)
!3104 = !DILocalVariable(name: "code", scope: !3100, file: !3, line: 1612, type: !689)
!3105 = !DILocation(line: 0, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1614, column: 5)
!3107 = !DILocation(line: 1618, column: 7, scope: !3106)
!3108 = !DILocation(line: 0, scope: !3100)
!3109 = !DILocation(line: 1612, column: 25, scope: !3100)
!3110 = !DILocation(line: 1613, column: 3, scope: !3100)
!3111 = !DILocation(line: 1617, column: 7, scope: !3106)
!3112 = !DILocation(line: 1618, column: 34, scope: !3106)
!3113 = !DILocation(line: 1628, column: 32, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1628, column: 11)
!3115 = !DILocation(line: 1628, column: 64, scope: !3114)
!3116 = !DILocation(line: 1628, column: 11, scope: !3106)
!3117 = !DILocation(line: 1629, column: 2, scope: !3114)
!3118 = !DILocation(line: 1630, column: 16, scope: !3114)
!3119 = !DILocation(line: 1631, column: 2, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 1630, column: 16)
!3121 = !DILocation(line: 1633, column: 2, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 1632, column: 16)
!3123 = !DILocation(line: 1635, column: 2, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1634, column: 16)
!3125 = !DILocation(line: 1637, column: 2, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 1636, column: 16)
!3127 = !DILocation(line: 1638, column: 33, scope: !3106)
!3128 = !DILocation(line: 1638, column: 7, scope: !3106)
!3129 = !DILocation(line: 1639, column: 7, scope: !3106)
!3130 = !DILocation(line: 1643, column: 32, scope: !3106)
!3131 = !DILocation(line: 1643, column: 27, scope: !3106)
!3132 = !DILocation(line: 1643, column: 7, scope: !3106)
!3133 = !DILocation(line: 1644, column: 7, scope: !3106)
!3134 = !DILocation(line: 1645, column: 7, scope: !3106)
!3135 = !DILocation(line: 1646, column: 7, scope: !3106)
!3136 = !DILocation(line: 1649, column: 7, scope: !3106)
!3137 = !DILocation(line: 1650, column: 7, scope: !3106)
!3138 = !DILocation(line: 1652, column: 1, scope: !3100)
!3139 = distinct !DISubprogram(name: "pp_c_cast_expression", scope: !3, file: !3, line: 1659, type: !1124, scopeLine: 1660, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3140)
!3140 = !{!3141, !3142}
!3141 = !DILocalVariable(name: "pp", arg: 1, scope: !3139, file: !3, line: 1659, type: !1126)
!3142 = !DILocalVariable(name: "e", arg: 2, scope: !3139, file: !3, line: 1659, type: !69)
!3143 = !DILocation(line: 1668, column: 7, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1662, column: 5)
!3145 = !DILocation(line: 0, scope: !3139)
!3146 = !DILocation(line: 1661, column: 11, scope: !3139)
!3147 = !DILocation(line: 1661, column: 3, scope: !3139)
!3148 = !DILocation(line: 1667, column: 27, scope: !3144)
!3149 = !DILocation(line: 1667, column: 7, scope: !3144)
!3150 = !DILocation(line: 1668, column: 33, scope: !3144)
!3151 = !DILocation(line: 1672, column: 7, scope: !3144)
!3152 = !DILocation(line: 1674, column: 1, scope: !3139)
!3153 = distinct !DISubprogram(name: "pp_c_type_cast", scope: !3, file: !3, line: 191, type: !1124, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3154)
!3154 = !{!3155, !3156}
!3155 = !DILocalVariable(name: "pp", arg: 1, scope: !3153, file: !3, line: 191, type: !1126)
!3156 = !DILocalVariable(name: "t", arg: 2, scope: !3153, file: !3, line: 191, type: !69)
!3157 = !DILocation(line: 0, scope: !3153)
!3158 = !DILocation(line: 193, column: 3, scope: !3153)
!3159 = !DILocation(line: 194, column: 3, scope: !3153)
!3160 = !DILocation(line: 195, column: 3, scope: !3153)
!3161 = !DILocation(line: 196, column: 1, scope: !3153)
!3162 = distinct !DISubprogram(name: "pp_c_logical_or_expression", scope: !3, file: !3, line: 1913, type: !1124, scopeLine: 1914, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3163)
!3163 = !{!3164, !3165}
!3164 = !DILocalVariable(name: "pp", arg: 1, scope: !3162, file: !3, line: 1913, type: !1126)
!3165 = !DILocalVariable(name: "e", arg: 2, scope: !3162, file: !3, line: 1913, type: !69)
!3166 = !DILocation(line: 0, scope: !3162)
!3167 = !DILocation(line: 1915, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1915, column: 7)
!3169 = !DILocation(line: 1915, column: 21, scope: !3168)
!3170 = !DILocation(line: 1916, column: 7, scope: !3168)
!3171 = !DILocation(line: 1916, column: 24, scope: !3168)
!3172 = !DILocation(line: 1915, column: 7, scope: !3162)
!3173 = !DILocation(line: 1918, column: 39, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 1917, column: 5)
!3175 = !DILocation(line: 1918, column: 7, scope: !3174)
!3176 = !DILocation(line: 1919, column: 7, scope: !3174)
!3177 = !DILocation(line: 1920, column: 7, scope: !3174)
!3178 = !DILocation(line: 1921, column: 7, scope: !3174)
!3179 = !DILocation(line: 1922, column: 40, scope: !3174)
!3180 = !DILocation(line: 1922, column: 7, scope: !3174)
!3181 = !DILocation(line: 1926, column: 1, scope: !3162)
!3182 = !DILocation(line: 1925, column: 5, scope: !3168)
!3183 = distinct !DISubprogram(name: "pp_c_logical_and_expression", scope: !3, file: !3, line: 1893, type: !1124, scopeLine: 1894, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3184)
!3184 = !{!3185, !3186}
!3185 = !DILocalVariable(name: "pp", arg: 1, scope: !3183, file: !3, line: 1893, type: !1126)
!3186 = !DILocalVariable(name: "e", arg: 2, scope: !3183, file: !3, line: 1893, type: !69)
!3187 = !DILocation(line: 0, scope: !3183)
!3188 = !DILocation(line: 1895, column: 7, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 1895, column: 7)
!3190 = !DILocation(line: 1895, column: 21, scope: !3189)
!3191 = !DILocation(line: 1896, column: 7, scope: !3189)
!3192 = !DILocation(line: 1896, column: 24, scope: !3189)
!3193 = !DILocation(line: 1895, column: 7, scope: !3183)
!3194 = !DILocation(line: 1898, column: 40, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 1897, column: 5)
!3196 = !DILocation(line: 1898, column: 7, scope: !3195)
!3197 = !DILocation(line: 1899, column: 7, scope: !3195)
!3198 = !DILocation(line: 1900, column: 7, scope: !3195)
!3199 = !DILocation(line: 1901, column: 7, scope: !3195)
!3200 = !DILocation(line: 1902, column: 41, scope: !3195)
!3201 = !DILocation(line: 1902, column: 7, scope: !3195)
!3202 = !DILocation(line: 1906, column: 1, scope: !3183)
!3203 = !DILocation(line: 1905, column: 5, scope: !3189)
!3204 = distinct !DISubprogram(name: "pp_c_shift_expression", scope: !3, file: !3, line: 1745, type: !1124, scopeLine: 1746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3205)
!3205 = !{!3206, !3207, !3208}
!3206 = !DILocalVariable(name: "pp", arg: 1, scope: !3204, file: !3, line: 1745, type: !1126)
!3207 = !DILocalVariable(name: "e", arg: 2, scope: !3204, file: !3, line: 1745, type: !69)
!3208 = !DILocalVariable(name: "code", scope: !3204, file: !3, line: 1747, type: !689)
!3209 = !DILocation(line: 0, scope: !3204)
!3210 = !DILocation(line: 1747, column: 25, scope: !3204)
!3211 = !DILocation(line: 1748, column: 3, scope: !3204)
!3212 = !DILocation(line: 1752, column: 34, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1749, column: 5)
!3214 = !DILocation(line: 1752, column: 7, scope: !3213)
!3215 = !DILocation(line: 1753, column: 7, scope: !3213)
!3216 = !DILocation(line: 1754, column: 7, scope: !3213)
!3217 = !DILocation(line: 1755, column: 7, scope: !3213)
!3218 = !DILocation(line: 1756, column: 37, scope: !3213)
!3219 = !DILocation(line: 1756, column: 7, scope: !3213)
!3220 = !DILocation(line: 1762, column: 1, scope: !3204)
!3221 = !DILocation(line: 1760, column: 7, scope: !3213)
!3222 = distinct !DISubprogram(name: "pp_c_relational_expression", scope: !3, file: !3, line: 1772, type: !1124, scopeLine: 1773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3223)
!3223 = !{!3224, !3225, !3226}
!3224 = !DILocalVariable(name: "pp", arg: 1, scope: !3222, file: !3, line: 1772, type: !1126)
!3225 = !DILocalVariable(name: "e", arg: 2, scope: !3222, file: !3, line: 1772, type: !69)
!3226 = !DILocalVariable(name: "code", scope: !3222, file: !3, line: 1774, type: !689)
!3227 = !DILocation(line: 0, scope: !3222)
!3228 = !DILocation(line: 1774, column: 25, scope: !3222)
!3229 = !DILocation(line: 1775, column: 3, scope: !3222)
!3230 = !DILocation(line: 1781, column: 39, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 1776, column: 5)
!3232 = !DILocation(line: 1781, column: 7, scope: !3231)
!3233 = !DILocation(line: 1782, column: 7, scope: !3231)
!3234 = !DILocation(line: 1783, column: 11, scope: !3231)
!3235 = !DILocation(line: 1784, column: 2, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1783, column: 11)
!3237 = !DILocation(line: 1786, column: 2, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 1785, column: 16)
!3239 = !DILocation(line: 1788, column: 2, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 1787, column: 16)
!3241 = !DILocation(line: 1790, column: 2, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 1789, column: 16)
!3243 = !DILocation(line: 1791, column: 7, scope: !3231)
!3244 = !DILocation(line: 1792, column: 34, scope: !3231)
!3245 = !DILocation(line: 1792, column: 7, scope: !3231)
!3246 = !DILocation(line: 1793, column: 7, scope: !3231)
!3247 = !DILocation(line: 1796, column: 7, scope: !3231)
!3248 = !DILocation(line: 1797, column: 7, scope: !3231)
!3249 = !DILocation(line: 1799, column: 1, scope: !3222)
!3250 = distinct !DISubprogram(name: "pp_c_and_expression", scope: !3, file: !3, line: 1832, type: !1124, scopeLine: 1833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3251)
!3251 = !{!3252, !3253}
!3252 = !DILocalVariable(name: "pp", arg: 1, scope: !3250, file: !3, line: 1832, type: !1126)
!3253 = !DILocalVariable(name: "e", arg: 2, scope: !3250, file: !3, line: 1832, type: !69)
!3254 = !DILocation(line: 0, scope: !3250)
!3255 = !DILocation(line: 1834, column: 7, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 1834, column: 7)
!3257 = !DILocation(line: 1834, column: 21, scope: !3256)
!3258 = !DILocation(line: 1834, column: 7, scope: !3250)
!3259 = !DILocation(line: 1836, column: 32, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 1835, column: 5)
!3261 = !DILocation(line: 1836, column: 7, scope: !3260)
!3262 = !DILocation(line: 1837, column: 7, scope: !3260)
!3263 = !DILocation(line: 1838, column: 7, scope: !3260)
!3264 = !DILocation(line: 1839, column: 7, scope: !3260)
!3265 = !DILocation(line: 1840, column: 37, scope: !3260)
!3266 = !DILocation(line: 1840, column: 7, scope: !3260)
!3267 = !DILocation(line: 1844, column: 1, scope: !3250)
!3268 = !DILocation(line: 1843, column: 5, scope: !3256)
!3269 = distinct !DISubprogram(name: "pp_c_exclusive_or_expression", scope: !3, file: !3, line: 1851, type: !1124, scopeLine: 1852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3270)
!3270 = !{!3271, !3272}
!3271 = !DILocalVariable(name: "pp", arg: 1, scope: !3269, file: !3, line: 1851, type: !1126)
!3272 = !DILocalVariable(name: "e", arg: 2, scope: !3269, file: !3, line: 1851, type: !69)
!3273 = !DILocation(line: 0, scope: !3269)
!3274 = !DILocation(line: 1853, column: 7, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1853, column: 7)
!3276 = !DILocation(line: 1853, column: 21, scope: !3275)
!3277 = !DILocation(line: 1854, column: 7, scope: !3275)
!3278 = !DILocation(line: 1854, column: 24, scope: !3275)
!3279 = !DILocation(line: 1853, column: 7, scope: !3269)
!3280 = !DILocation(line: 1856, column: 41, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1855, column: 5)
!3282 = !DILocation(line: 1856, column: 7, scope: !3281)
!3283 = !DILocation(line: 1857, column: 11, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 1857, column: 11)
!3285 = !DILocation(line: 1857, column: 25, scope: !3284)
!3286 = !DILocation(line: 1857, column: 11, scope: !3281)
!3287 = !DILocation(line: 1858, column: 2, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1858, column: 2)
!3289 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 1858, column: 2)
!3290 = !DILocation(line: 1858, column: 2, scope: !3289)
!3291 = !DILocation(line: 1860, column: 2, scope: !3284)
!3292 = !DILocation(line: 1861, column: 7, scope: !3281)
!3293 = !DILocation(line: 1862, column: 7, scope: !3281)
!3294 = !DILocation(line: 1863, column: 32, scope: !3281)
!3295 = !DILocation(line: 1863, column: 7, scope: !3281)
!3296 = !DILocation(line: 1864, column: 5, scope: !3281)
!3297 = !DILocation(line: 1866, column: 5, scope: !3275)
!3298 = !DILocation(line: 1867, column: 1, scope: !3269)
!3299 = distinct !DISubprogram(name: "pp_c_inclusive_or_expression", scope: !3, file: !3, line: 1874, type: !1124, scopeLine: 1875, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3300)
!3300 = !{!3301, !3302}
!3301 = !DILocalVariable(name: "pp", arg: 1, scope: !3299, file: !3, line: 1874, type: !1126)
!3302 = !DILocalVariable(name: "e", arg: 2, scope: !3299, file: !3, line: 1874, type: !69)
!3303 = !DILocation(line: 0, scope: !3299)
!3304 = !DILocation(line: 1876, column: 7, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 1876, column: 7)
!3306 = !DILocation(line: 1876, column: 21, scope: !3305)
!3307 = !DILocation(line: 1876, column: 7, scope: !3299)
!3308 = !DILocation(line: 1878, column: 41, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 1877, column: 5)
!3310 = !DILocation(line: 1878, column: 7, scope: !3309)
!3311 = !DILocation(line: 1879, column: 7, scope: !3309)
!3312 = !DILocation(line: 1880, column: 7, scope: !3309)
!3313 = !DILocation(line: 1881, column: 7, scope: !3309)
!3314 = !DILocation(line: 1882, column: 41, scope: !3309)
!3315 = !DILocation(line: 1882, column: 7, scope: !3309)
!3316 = !DILocation(line: 1883, column: 5, scope: !3309)
!3317 = !DILocation(line: 1885, column: 5, scope: !3305)
!3318 = !DILocation(line: 1886, column: 1, scope: !3299)
!3319 = distinct !DISubprogram(name: "pp_c_equality_expression", scope: !3, file: !3, line: 1807, type: !1124, scopeLine: 1808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3320)
!3320 = !{!3321, !3322, !3323}
!3321 = !DILocalVariable(name: "pp", arg: 1, scope: !3319, file: !3, line: 1807, type: !1126)
!3322 = !DILocalVariable(name: "e", arg: 2, scope: !3319, file: !3, line: 1807, type: !69)
!3323 = !DILocalVariable(name: "code", scope: !3319, file: !3, line: 1809, type: !689)
!3324 = !DILocation(line: 0, scope: !3319)
!3325 = !DILocation(line: 1809, column: 25, scope: !3319)
!3326 = !DILocation(line: 1810, column: 3, scope: !3319)
!3327 = !DILocation(line: 1814, column: 37, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 1811, column: 5)
!3329 = !DILocation(line: 1814, column: 7, scope: !3328)
!3330 = !DILocation(line: 1815, column: 7, scope: !3328)
!3331 = !DILocation(line: 1816, column: 7, scope: !3328)
!3332 = !DILocation(line: 1817, column: 7, scope: !3328)
!3333 = !DILocation(line: 1818, column: 39, scope: !3328)
!3334 = !DILocation(line: 1818, column: 7, scope: !3328)
!3335 = !DILocation(line: 1825, column: 1, scope: !3319)
!3336 = !DILocation(line: 1822, column: 7, scope: !3328)
!3337 = distinct !DISubprogram(name: "pp_c_additive_expression", scope: !3, file: !3, line: 1715, type: !1124, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3338)
!3338 = !{!3339, !3340, !3341}
!3339 = !DILocalVariable(name: "pp", arg: 1, scope: !3337, file: !3, line: 1715, type: !1126)
!3340 = !DILocalVariable(name: "e", arg: 2, scope: !3337, file: !3, line: 1715, type: !69)
!3341 = !DILocalVariable(name: "code", scope: !3337, file: !3, line: 1717, type: !689)
!3342 = !DILocation(line: 0, scope: !3337)
!3343 = !DILocation(line: 1717, column: 25, scope: !3337)
!3344 = !DILocation(line: 1718, column: 3, scope: !3337)
!3345 = !DILocation(line: 1723, column: 37, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 1719, column: 5)
!3347 = !DILocation(line: 1723, column: 7, scope: !3346)
!3348 = !DILocation(line: 1724, column: 7, scope: !3346)
!3349 = !DILocation(line: 1725, column: 29, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 1725, column: 11)
!3351 = !DILocation(line: 1726, column: 2, scope: !3350)
!3352 = !DILocation(line: 1728, column: 2, scope: !3350)
!3353 = !DILocation(line: 1729, column: 7, scope: !3346)
!3354 = !DILocation(line: 1730, column: 7, scope: !3346)
!3355 = !DILocation(line: 1731, column: 7, scope: !3346)
!3356 = !DILocation(line: 1734, column: 7, scope: !3346)
!3357 = !DILocation(line: 1735, column: 7, scope: !3346)
!3358 = !DILocation(line: 1737, column: 1, scope: !3337)
!3359 = distinct !DISubprogram(name: "pp_c_statement", scope: !3, file: !3, line: 2158, type: !1124, scopeLine: 2159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3360)
!3360 = !{!3361, !3362}
!3361 = !DILocalVariable(name: "pp", arg: 1, scope: !3359, file: !3, line: 2158, type: !1126)
!3362 = !DILocalVariable(name: "stmt", arg: 2, scope: !3359, file: !3, line: 2158, type: !69)
!3363 = !DILocation(line: 0, scope: !3359)
!3364 = !DILocation(line: 2160, column: 12, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 2160, column: 7)
!3366 = !DILocation(line: 2160, column: 7, scope: !3359)
!3367 = !DILocation(line: 2163, column: 7, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 2163, column: 7)
!3369 = !DILocation(line: 2163, column: 7, scope: !3359)
!3370 = !DILocation(line: 2164, column: 5, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 2164, column: 5)
!3372 = !DILocation(line: 2166, column: 22, scope: !3359)
!3373 = !DILocation(line: 2166, column: 42, scope: !3359)
!3374 = !DILocation(line: 2166, column: 3, scope: !3359)
!3375 = !DILocation(line: 2167, column: 1, scope: !3359)
!3376 = distinct !DISubprogram(name: "pp_c_pretty_printer_init", scope: !3, file: !3, line: 2173, type: !1674, scopeLine: 2174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3377)
!3377 = !{!3378}
!3378 = !DILocalVariable(name: "pp", arg: 1, scope: !3376, file: !3, line: 2173, type: !1126)
!3379 = !DILocation(line: 0, scope: !3376)
!3380 = !DILocation(line: 2175, column: 7, scope: !3376)
!3381 = !DILocation(line: 2175, column: 33, scope: !3376)
!3382 = !DILocation(line: 2177, column: 7, scope: !3376)
!3383 = !DILocation(line: 2177, column: 33, scope: !3376)
!3384 = !DILocation(line: 2178, column: 7, scope: !3376)
!3385 = !DILocation(line: 2178, column: 33, scope: !3376)
!3386 = !DILocation(line: 2179, column: 7, scope: !3376)
!3387 = !DILocation(line: 2179, column: 33, scope: !3376)
!3388 = !DILocation(line: 2180, column: 7, scope: !3376)
!3389 = !DILocation(line: 2180, column: 33, scope: !3376)
!3390 = !DILocation(line: 2181, column: 7, scope: !3376)
!3391 = !DILocation(line: 2181, column: 33, scope: !3376)
!3392 = !DILocation(line: 2182, column: 7, scope: !3376)
!3393 = !DILocation(line: 2182, column: 33, scope: !3376)
!3394 = !DILocation(line: 2183, column: 7, scope: !3376)
!3395 = !DILocation(line: 2183, column: 34, scope: !3376)
!3396 = !DILocation(line: 2184, column: 7, scope: !3376)
!3397 = !DILocation(line: 2184, column: 33, scope: !3376)
!3398 = !DILocation(line: 2185, column: 7, scope: !3376)
!3399 = !DILocation(line: 2185, column: 33, scope: !3376)
!3400 = !DILocation(line: 2186, column: 7, scope: !3376)
!3401 = !DILocation(line: 2186, column: 33, scope: !3376)
!3402 = !DILocation(line: 2187, column: 7, scope: !3376)
!3403 = !DILocation(line: 2187, column: 33, scope: !3376)
!3404 = !DILocation(line: 2188, column: 7, scope: !3376)
!3405 = !DILocation(line: 2188, column: 33, scope: !3376)
!3406 = !DILocation(line: 2189, column: 7, scope: !3376)
!3407 = !DILocation(line: 2189, column: 33, scope: !3376)
!3408 = !DILocation(line: 2191, column: 7, scope: !3376)
!3409 = !DILocation(line: 2191, column: 33, scope: !3376)
!3410 = !DILocation(line: 2193, column: 7, scope: !3376)
!3411 = !DILocation(line: 2193, column: 33, scope: !3376)
!3412 = !DILocation(line: 2194, column: 7, scope: !3376)
!3413 = !DILocation(line: 2194, column: 33, scope: !3376)
!3414 = !DILocation(line: 2195, column: 7, scope: !3376)
!3415 = !DILocation(line: 2195, column: 33, scope: !3376)
!3416 = !DILocation(line: 2196, column: 7, scope: !3376)
!3417 = !DILocation(line: 2196, column: 33, scope: !3376)
!3418 = !DILocation(line: 2197, column: 7, scope: !3376)
!3419 = !DILocation(line: 2197, column: 33, scope: !3376)
!3420 = !DILocation(line: 2198, column: 7, scope: !3376)
!3421 = !DILocation(line: 2198, column: 33, scope: !3376)
!3422 = !DILocation(line: 2199, column: 7, scope: !3376)
!3423 = !DILocation(line: 2199, column: 33, scope: !3376)
!3424 = !DILocation(line: 2200, column: 7, scope: !3376)
!3425 = !DILocation(line: 2200, column: 33, scope: !3376)
!3426 = !DILocation(line: 2201, column: 7, scope: !3376)
!3427 = !DILocation(line: 2201, column: 33, scope: !3376)
!3428 = !DILocation(line: 2202, column: 7, scope: !3376)
!3429 = !DILocation(line: 2202, column: 33, scope: !3376)
!3430 = !DILocation(line: 2203, column: 1, scope: !3376)
!3431 = distinct !DISubprogram(name: "pp_c_abstract_declarator", scope: !3, file: !3, line: 520, type: !1124, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3432)
!3432 = !{!3433, !3434}
!3433 = !DILocalVariable(name: "pp", arg: 1, scope: !3431, file: !3, line: 520, type: !1126)
!3434 = !DILocalVariable(name: "t", arg: 2, scope: !3431, file: !3, line: 520, type: !69)
!3435 = !DILocation(line: 0, scope: !3431)
!3436 = !DILocation(line: 522, column: 7, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 522, column: 7)
!3438 = !DILocation(line: 522, column: 21, scope: !3437)
!3439 = !DILocation(line: 522, column: 7, scope: !3431)
!3440 = !DILocation(line: 524, column: 11, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 524, column: 11)
!3442 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 523, column: 5)
!3443 = !DILocation(line: 524, column: 37, scope: !3441)
!3444 = !DILocation(line: 525, column: 4, scope: !3441)
!3445 = !DILocation(line: 525, column: 33, scope: !3441)
!3446 = !DILocation(line: 524, column: 11, scope: !3442)
!3447 = !DILocation(line: 526, column: 2, scope: !3441)
!3448 = !DILocation(line: 527, column: 11, scope: !3442)
!3449 = !DILocation(line: 528, column: 5, scope: !3442)
!3450 = !DILocation(line: 530, column: 3, scope: !3431)
!3451 = !DILocation(line: 531, column: 1, scope: !3431)
!3452 = distinct !DISubprogram(name: "pp_c_pointer", scope: !3, file: !3, line: 265, type: !1124, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3453)
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "pp", arg: 1, scope: !3452, file: !3, line: 265, type: !1126)
!3455 = !DILocalVariable(name: "t", arg: 2, scope: !3452, file: !3, line: 265, type: !69)
!3456 = !DILocation(line: 0, scope: !3452)
!3457 = !DILocation(line: 267, column: 8, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 267, column: 7)
!3459 = !DILocation(line: 267, column: 19, scope: !3458)
!3460 = !DILocation(line: 267, column: 36, scope: !3458)
!3461 = !DILocation(line: 267, column: 7, scope: !3452)
!3462 = !DILocation(line: 268, column: 9, scope: !3458)
!3463 = !DILocation(line: 269, column: 11, scope: !3452)
!3464 = !DILocation(line: 268, column: 5, scope: !3458)
!3465 = !DILocation(line: 269, column: 3, scope: !3452)
!3466 = !DILocation(line: 274, column: 11, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 274, column: 11)
!3468 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 270, column: 5)
!3469 = !DILocation(line: 274, column: 37, scope: !3467)
!3470 = !DILocation(line: 274, column: 11, scope: !3468)
!3471 = !DILocation(line: 275, column: 2, scope: !3467)
!3472 = !DILocation(line: 276, column: 11, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 276, column: 11)
!3474 = !DILocation(line: 276, column: 25, scope: !3473)
!3475 = !DILocation(line: 276, column: 11, scope: !3468)
!3476 = !DILocation(line: 277, column: 2, scope: !3473)
!3477 = !DILocation(line: 279, column: 2, scope: !3473)
!3478 = !DILocation(line: 280, column: 7, scope: !3468)
!3479 = !DILocation(line: 281, column: 7, scope: !3468)
!3480 = !DILocation(line: 286, column: 7, scope: !3468)
!3481 = !DILocation(line: 287, column: 7, scope: !3468)
!3482 = !DILocation(line: 287, column: 29, scope: !3468)
!3483 = !DILocation(line: 288, column: 7, scope: !3468)
!3484 = !DILocation(line: 291, column: 7, scope: !3468)
!3485 = !DILocation(line: 292, column: 5, scope: !3468)
!3486 = !DILocation(line: 293, column: 1, scope: !3452)
!3487 = distinct !DISubprogram(name: "pp_c_multiplicative_expression", scope: !3, file: !3, line: 1683, type: !1124, scopeLine: 1684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3488)
!3488 = !{!3489, !3490, !3491}
!3489 = !DILocalVariable(name: "pp", arg: 1, scope: !3487, file: !3, line: 1683, type: !1126)
!3490 = !DILocalVariable(name: "e", arg: 2, scope: !3487, file: !3, line: 1683, type: !69)
!3491 = !DILocalVariable(name: "code", scope: !3487, file: !3, line: 1685, type: !689)
!3492 = !DILocation(line: 0, scope: !3487)
!3493 = !DILocation(line: 1685, column: 25, scope: !3487)
!3494 = !DILocation(line: 1686, column: 3, scope: !3487)
!3495 = !DILocation(line: 1691, column: 7, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 1687, column: 5)
!3497 = !DILocation(line: 1692, column: 7, scope: !3496)
!3498 = !DILocation(line: 1693, column: 11, scope: !3496)
!3499 = !DILocation(line: 1694, column: 2, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 1693, column: 11)
!3501 = !DILocation(line: 1696, column: 2, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 1695, column: 16)
!3503 = !DILocation(line: 1698, column: 2, scope: !3502)
!3504 = !DILocation(line: 1699, column: 7, scope: !3496)
!3505 = !DILocation(line: 1700, column: 33, scope: !3496)
!3506 = !DILocation(line: 1700, column: 7, scope: !3496)
!3507 = !DILocation(line: 1701, column: 7, scope: !3496)
!3508 = !DILocation(line: 1704, column: 7, scope: !3496)
!3509 = !DILocation(line: 1705, column: 7, scope: !3496)
!3510 = !DILocation(line: 1707, column: 1, scope: !3487)
!3511 = distinct !DISubprogram(name: "pp_c_conditional_expression", scope: !3, file: !3, line: 1933, type: !1124, scopeLine: 1934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3512)
!3512 = !{!3513, !3514}
!3513 = !DILocalVariable(name: "pp", arg: 1, scope: !3511, file: !3, line: 1933, type: !1126)
!3514 = !DILocalVariable(name: "e", arg: 2, scope: !3511, file: !3, line: 1933, type: !69)
!3515 = !DILocation(line: 0, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1936, column: 5)
!3517 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 1935, column: 7)
!3518 = !DILocation(line: 1945, column: 7, scope: !3516)
!3519 = !DILocation(line: 0, scope: !3511)
!3520 = !DILocation(line: 1935, column: 7, scope: !3517)
!3521 = !DILocation(line: 1935, column: 21, scope: !3517)
!3522 = !DILocation(line: 1935, column: 7, scope: !3511)
!3523 = !DILocation(line: 1937, column: 39, scope: !3516)
!3524 = !DILocation(line: 1937, column: 7, scope: !3516)
!3525 = !DILocation(line: 1938, column: 7, scope: !3516)
!3526 = !DILocation(line: 1939, column: 7, scope: !3516)
!3527 = !DILocation(line: 1940, column: 7, scope: !3516)
!3528 = !DILocation(line: 1941, column: 7, scope: !3516)
!3529 = !DILocation(line: 1942, column: 7, scope: !3516)
!3530 = !DILocation(line: 1943, column: 7, scope: !3516)
!3531 = !DILocation(line: 1944, column: 7, scope: !3516)
!3532 = !DILocation(line: 1945, column: 40, scope: !3516)
!3533 = !DILocation(line: 1948, column: 5, scope: !3517)
!3534 = !DILocation(line: 1949, column: 1, scope: !3511)
!3535 = distinct !DISubprogram(name: "pp_c_assignment_expression", scope: !3, file: !3, line: 1960, type: !1124, scopeLine: 1961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3536)
!3536 = !{!3537, !3538}
!3537 = !DILocalVariable(name: "pp", arg: 1, scope: !3535, file: !3, line: 1960, type: !1126)
!3538 = !DILocalVariable(name: "e", arg: 2, scope: !3535, file: !3, line: 1960, type: !69)
!3539 = !DILocation(line: 0, scope: !3535)
!3540 = !DILocation(line: 1962, column: 7, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 1962, column: 7)
!3542 = !DILocation(line: 1962, column: 21, scope: !3541)
!3543 = !DILocation(line: 1963, column: 7, scope: !3541)
!3544 = !DILocation(line: 1963, column: 24, scope: !3541)
!3545 = !DILocation(line: 1962, column: 7, scope: !3535)
!3546 = !DILocation(line: 1965, column: 34, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1964, column: 5)
!3548 = !DILocation(line: 1965, column: 7, scope: !3547)
!3549 = !DILocation(line: 1966, column: 7, scope: !3547)
!3550 = !DILocation(line: 1967, column: 7, scope: !3547)
!3551 = !DILocation(line: 1968, column: 7, scope: !3547)
!3552 = !DILocation(line: 1969, column: 28, scope: !3547)
!3553 = !DILocation(line: 1969, column: 7, scope: !3547)
!3554 = !DILocation(line: 1970, column: 5, scope: !3547)
!3555 = !DILocation(line: 1972, column: 5, scope: !3541)
!3556 = !DILocation(line: 1973, column: 1, scope: !3535)
!3557 = !DILocation(line: 0, scope: !2)
!3558 = !DILocation(line: 2215, column: 8, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !2, file: !3, line: 2215, column: 7)
!3560 = !DILocation(line: 2215, column: 7, scope: !2)
!3561 = !DILocation(line: 2217, column: 19, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 2216, column: 5)
!3563 = !DILocation(line: 2218, column: 7, scope: !3562)
!3564 = !DILocation(line: 2219, column: 7, scope: !3562)
!3565 = !DILocation(line: 2220, column: 29, scope: !3562)
!3566 = !DILocation(line: 2221, column: 5, scope: !3562)
!3567 = !DILocation(line: 2222, column: 17, scope: !2)
!3568 = !DILocation(line: 2222, column: 25, scope: !2)
!3569 = !DILocation(line: 2222, column: 32, scope: !2)
!3570 = !DILocation(line: 2224, column: 3, scope: !2)
!3571 = !DILocation(line: 2226, column: 3, scope: !2)
!3572 = !DILocation(line: 2227, column: 3, scope: !2)
!3573 = !DILocation(line: 2228, column: 1, scope: !2)
!3574 = distinct !DISubprogram(name: "debug_c_tree", scope: !3, file: !3, line: 2233, type: !3575, scopeLine: 2234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{null, !69}
!3577 = !{!3578}
!3578 = !DILocalVariable(name: "t", arg: 1, scope: !3574, file: !3, line: 2233, type: !69)
!3579 = !DILocation(line: 0, scope: !3574)
!3580 = !DILocation(line: 2235, column: 17, scope: !3574)
!3581 = !DILocation(line: 2235, column: 3, scope: !3574)
!3582 = !DILocation(line: 2236, column: 16, scope: !3574)
!3583 = !DILocation(line: 2236, column: 3, scope: !3574)
!3584 = !DILocation(line: 2237, column: 1, scope: !3574)
!3585 = distinct !DISubprogram(name: "pp_c_brace_enclosed_initializer_list", scope: !3, file: !3, line: 1316, type: !1124, scopeLine: 1317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3586)
!3586 = !{!3587, !3588}
!3587 = !DILocalVariable(name: "pp", arg: 1, scope: !3585, file: !3, line: 1316, type: !1126)
!3588 = !DILocalVariable(name: "l", arg: 2, scope: !3585, file: !3, line: 1316, type: !69)
!3589 = !DILocation(line: 0, scope: !3585)
!3590 = !DILocation(line: 1318, column: 3, scope: !3585)
!3591 = !DILocation(line: 1319, column: 3, scope: !3585)
!3592 = !DILocation(line: 1320, column: 3, scope: !3585)
!3593 = !DILocation(line: 1321, column: 1, scope: !3585)
!3594 = distinct !DISubprogram(name: "pp_c_initializer_list", scope: !3, file: !3, line: 1245, type: !1124, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3603}
!3596 = !DILocalVariable(name: "pp", arg: 1, scope: !3594, file: !3, line: 1245, type: !1126)
!3597 = !DILocalVariable(name: "e", arg: 2, scope: !3594, file: !3, line: 1245, type: !69)
!3598 = !DILocalVariable(name: "type", scope: !3594, file: !3, line: 1247, type: !69)
!3599 = !DILocalVariable(name: "code", scope: !3594, file: !3, line: 1248, type: !1886)
!3600 = !DILocalVariable(name: "init", scope: !3601, file: !3, line: 1262, type: !69)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 1261, column: 7)
!3602 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1257, column: 5)
!3603 = !DILocalVariable(name: "cst", scope: !3604, file: !3, line: 1297, type: !311)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 1296, column: 2)
!3605 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 1295, column: 11)
!3606 = !DILocation(line: 0, scope: !3594)
!3607 = !DILocation(line: 1247, column: 15, scope: !3594)
!3608 = !DILocation(line: 1248, column: 31, scope: !3594)
!3609 = !DILocation(line: 1250, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 1250, column: 7)
!3611 = !DILocation(line: 1250, column: 21, scope: !3610)
!3612 = !DILocation(line: 1250, column: 7, scope: !3594)
!3613 = !DILocation(line: 1252, column: 34, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 1251, column: 5)
!3615 = !DILocation(line: 1252, column: 7, scope: !3614)
!3616 = !DILocation(line: 1253, column: 7, scope: !3614)
!3617 = !DILocation(line: 1256, column: 3, scope: !3594)
!3618 = !DILocation(line: 1262, column: 14, scope: !3601)
!3619 = !DILocation(line: 0, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1265, column: 10)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 1264, column: 4)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 1263, column: 2)
!3623 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 1263, column: 2)
!3624 = !DILocation(line: 0, scope: !3621)
!3625 = !DILocation(line: 1263, column: 2, scope: !3601)
!3626 = !DILocation(line: 0, scope: !3601)
!3627 = !DILocation(line: 1263, column: 14, scope: !3622)
!3628 = !DILocation(line: 1263, column: 2, scope: !3623)
!3629 = !DILocation(line: 1267, column: 3, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 1266, column: 8)
!3631 = !DILocation(line: 1268, column: 32, scope: !3630)
!3632 = !DILocation(line: 1268, column: 3, scope: !3630)
!3633 = !DILocation(line: 1277, column: 6, scope: !3621)
!3634 = !DILocation(line: 1278, column: 6, scope: !3621)
!3635 = !DILocation(line: 1279, column: 6, scope: !3621)
!3636 = !DILocation(line: 1280, column: 6, scope: !3621)
!3637 = !DILocation(line: 1281, column: 10, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1281, column: 10)
!3639 = !DILocation(line: 1281, column: 10, scope: !3621)
!3640 = !DILocation(line: 1282, column: 8, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3638, file: !3, line: 1282, column: 8)
!3642 = !DILocation(line: 1263, column: 2, scope: !3622)
!3643 = distinct !{!3643, !3628, !3644}
!3644 = !DILocation(line: 1283, column: 4, scope: !3623)
!3645 = !DILocation(line: 1311, column: 1, scope: !3594)
!3646 = !DILocation(line: 1272, column: 3, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 1271, column: 8)
!3648 = !DILocation(line: 1273, column: 7, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 1273, column: 7)
!3650 = !DILocation(line: 1273, column: 7, scope: !3647)
!3651 = !DILocation(line: 1274, column: 5, scope: !3649)
!3652 = !DILocation(line: 1275, column: 3, scope: !3647)
!3653 = !DILocation(line: 1288, column: 25, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 1288, column: 11)
!3655 = !DILocation(line: 1288, column: 11, scope: !3602)
!3656 = !DILocation(line: 1289, column: 28, scope: !3654)
!3657 = !DILocation(line: 1289, column: 2, scope: !3654)
!3658 = !DILocation(line: 1292, column: 7, scope: !3602)
!3659 = !DILocation(line: 1295, column: 25, scope: !3605)
!3660 = !DILocation(line: 1295, column: 40, scope: !3605)
!3661 = !DILocation(line: 1295, column: 57, scope: !3605)
!3662 = !DILocation(line: 1295, column: 11, scope: !3602)
!3663 = !DILocation(line: 0, scope: !3604)
!3664 = !DILocation(line: 1298, column: 4, scope: !3604)
!3665 = !DILocation(line: 1299, column: 4, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1299, column: 4)
!3667 = !DILocation(line: 1300, column: 4, scope: !3604)
!3668 = !DILocation(line: 1304, column: 7, scope: !3602)
!3669 = !DILocation(line: 1310, column: 3, scope: !3594)
!3670 = distinct !DISubprogram(name: "init_call_expr_arg_iterator", scope: !73, file: !73, line: 5375, type: !3671, scopeLine: 5376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !69, !2931}
!3673 = !{!3674, !3675}
!3674 = !DILocalVariable(name: "exp", arg: 1, scope: !3670, file: !73, line: 5375, type: !69)
!3675 = !DILocalVariable(name: "iter", arg: 2, scope: !3670, file: !73, line: 5375, type: !2931)
!3676 = !DILocation(line: 0, scope: !3670)
!3677 = !DILocation(line: 5377, column: 9, scope: !3670)
!3678 = !DILocation(line: 5377, column: 11, scope: !3670)
!3679 = !DILocation(line: 5378, column: 13, scope: !3670)
!3680 = !DILocation(line: 5378, column: 9, scope: !3670)
!3681 = !DILocation(line: 5378, column: 11, scope: !3670)
!3682 = !DILocation(line: 5379, column: 9, scope: !3670)
!3683 = !DILocation(line: 5379, column: 11, scope: !3670)
!3684 = !DILocation(line: 5380, column: 1, scope: !3670)
