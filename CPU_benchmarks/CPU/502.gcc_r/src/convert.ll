; ModuleID = 'convert.bc'
source_filename = "convert.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type opaque
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
%struct.diagnostic_info = type opaque
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
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.real_value = type { i32, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@.str = private unnamed_addr constant [33 x i8] c"cannot convert to a pointer type\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_errno_math = external dso_local local_unnamed_addr global i32, align 4
@flag_rounding_math = external dso_local local_unnamed_addr global i32, align 4
@flag_unsafe_math_optimizations = external dso_local local_unnamed_addr global i32, align 4
@flag_float_store = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"pointer value used where a floating point value was expected\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"aggregate value used where a float was expected\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"conversion to incomplete type\00", align 1
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@linux_uclibc = external dso_local local_unnamed_addr global i32, align 4
@flag_trapping_math = external dso_local local_unnamed_addr global i32, align 4
@flag_finite_math_only = external dso_local local_unnamed_addr global i32, align 4
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16
@flag_wrapv = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"can't convert between vector values of different size\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"aggregate value used where an integer was expected\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"pointer value used where a complex was expected\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"aggregate value used where a complex was expected\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"can't convert value to a vector\00", align 1
@fconst0 = external dso_local global [18 x %struct.fixed_value], align 16
@fconst1 = external dso_local global [8 x %struct.fixed_value], align 16
@.str.9 = private unnamed_addr constant [54 x i8] c"aggregate value used where a fixed-point was expected\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1772 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1786, metadata !DIExpression()), !dbg !1787
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1788
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1789
  ret i32 %call, !dbg !1790
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1791 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1795
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1796
  ret i32 %call, !dbg !1797
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1798 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1854, metadata !DIExpression()), !dbg !1855
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1856
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1856
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1856
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1856
  %cmp = icmp uge i8* %0, %1, !dbg !1856
  %conv1 = zext i1 %cmp to i64, !dbg !1856
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1856
  %tobool = icmp eq i64 %expval, 0, !dbg !1856
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1856

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1856
  br label %cond.end, !dbg !1856

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1856
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1856
  %2 = load i8, i8* %0, align 1, !dbg !1856
  %conv3 = zext i8 %2 to i32, !dbg !1856
  br label %cond.end, !dbg !1856

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1856
  ret i32 %cond, !dbg !1857
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1858 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1860, metadata !DIExpression()), !dbg !1861
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1862
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1862
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1862
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1862
  %cmp = icmp uge i8* %0, %1, !dbg !1862
  %conv1 = zext i1 %cmp to i64, !dbg !1862
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1862
  %tobool = icmp eq i64 %expval, 0, !dbg !1862
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1862

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1862
  br label %cond.end, !dbg !1862

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1862
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1862
  %2 = load i8, i8* %0, align 1, !dbg !1862
  %conv3 = zext i8 %2 to i32, !dbg !1862
  br label %cond.end, !dbg !1862

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1862
  ret i32 %cond, !dbg !1863
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1864 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1865
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1865
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1865
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1865
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1865
  %cmp = icmp uge i8* %1, %2, !dbg !1865
  %conv1 = zext i1 %cmp to i64, !dbg !1865
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1865
  %tobool = icmp eq i64 %expval, 0, !dbg !1865
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1865

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1865
  br label %cond.end, !dbg !1865

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1865
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1865
  %3 = load i8, i8* %1, align 1, !dbg !1865
  %conv3 = zext i8 %3 to i32, !dbg !1865
  br label %cond.end, !dbg !1865

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1865
  ret i32 %cond, !dbg !1866
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1867 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1871, metadata !DIExpression()), !dbg !1872
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1873
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1874
  ret i32 %call, !dbg !1875
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1876 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1880, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1881, metadata !DIExpression()), !dbg !1882
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1883
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1883
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1883
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1883
  %cmp = icmp uge i8* %0, %1, !dbg !1883
  %conv1 = zext i1 %cmp to i64, !dbg !1883
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1883
  %tobool = icmp eq i64 %expval, 0, !dbg !1883
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1883

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1883
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1883
  br label %cond.end, !dbg !1883

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1883
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1883
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1883
  store i8 %conv2, i8* %0, align 1, !dbg !1883
  %conv6 = and i32 %__c, 255, !dbg !1883
  br label %cond.end, !dbg !1883

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1883
  ret i32 %cond, !dbg !1884
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1885 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1887, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1888, metadata !DIExpression()), !dbg !1889
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1890
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1890
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1890
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1890
  %cmp = icmp uge i8* %0, %1, !dbg !1890
  %conv1 = zext i1 %cmp to i64, !dbg !1890
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1890
  %tobool = icmp eq i64 %expval, 0, !dbg !1890
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1890

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1890
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1890
  br label %cond.end, !dbg !1890

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1890
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1890
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1890
  store i8 %conv2, i8* %0, align 1, !dbg !1890
  %conv6 = and i32 %__c, 255, !dbg !1890
  br label %cond.end, !dbg !1890

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1890
  ret i32 %cond, !dbg !1891
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1892 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1894, metadata !DIExpression()), !dbg !1895
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1896
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1896
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1896
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1896
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1896
  %cmp = icmp uge i8* %1, %2, !dbg !1896
  %conv1 = zext i1 %cmp to i64, !dbg !1896
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1896
  %tobool = icmp eq i64 %expval, 0, !dbg !1896
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1896

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1896
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1896
  br label %cond.end, !dbg !1896

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1896
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1896
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1896
  store i8 %conv4, i8* %1, align 1, !dbg !1896
  %conv6 = and i32 %__c, 255, !dbg !1896
  br label %cond.end, !dbg !1896

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1896
  ret i32 %cond, !dbg !1897
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1898 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1904, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1905, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1906, metadata !DIExpression()), !dbg !1907
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1908
  ret i64 %call, !dbg !1909
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1910 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1912, metadata !DIExpression()), !dbg !1913
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1914
  %0 = load i32, i32* %_flags, align 8, !dbg !1914
  %and = lshr i32 %0, 4, !dbg !1914
  %and.lobit = and i32 %and, 1, !dbg !1914
  ret i32 %and.lobit, !dbg !1915
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1916 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1918, metadata !DIExpression()), !dbg !1919
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1920
  %0 = load i32, i32* %_flags, align 8, !dbg !1920
  %and = lshr i32 %0, 5, !dbg !1920
  %and.lobit = and i32 %and, 1, !dbg !1920
  ret i32 %and.lobit, !dbg !1921
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1922 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1925, metadata !DIExpression()), !dbg !1926
  %__c.off = add i32 %__c, 128, !dbg !1927
  %0 = icmp ult i32 %__c.off, 384, !dbg !1927
  br i1 %0, label %cond.true, label %cond.end, !dbg !1927

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1928
  %1 = load i32*, i32** %call, align 8, !dbg !1929
  %idxprom = sext i32 %__c to i64, !dbg !1930
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1930
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1930
  br label %cond.end, !dbg !1931

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1931
  ret i32 %cond, !dbg !1932
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1933 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1935, metadata !DIExpression()), !dbg !1936
  %__c.off = add i32 %__c, 128, !dbg !1937
  %0 = icmp ult i32 %__c.off, 384, !dbg !1937
  br i1 %0, label %cond.true, label %cond.end, !dbg !1937

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1938
  %1 = load i32*, i32** %call, align 8, !dbg !1939
  %idxprom = sext i32 %__c to i64, !dbg !1940
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1940
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1940
  br label %cond.end, !dbg !1941

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1941
  ret i32 %cond, !dbg !1942
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1943 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1948, metadata !DIExpression()), !dbg !1949
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1950
  %conv = trunc i64 %call to i32, !dbg !1951
  ret i32 %conv, !dbg !1952
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1953 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1957, metadata !DIExpression()), !dbg !1958
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1959
  ret i64 %call, !dbg !1960
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1961 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1966, metadata !DIExpression()), !dbg !1967
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1968
  ret i64 %call, !dbg !1969
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1970 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1981, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1982, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1983, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1984, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1985, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 0, metadata !1986, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1987, metadata !DIExpression()), !dbg !1991
  br label %while.cond, !dbg !1992

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1993
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1991
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1987, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1986, metadata !DIExpression()), !dbg !1991
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1994
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1992

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1995
  %div = lshr i64 %add, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %div, metadata !1988, metadata !DIExpression()), !dbg !1991
  %mul = mul i64 %div, %__size, !dbg !1998
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1989, metadata !DIExpression()), !dbg !1991
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %call, metadata !1990, metadata !DIExpression()), !dbg !1991
  %cmp1 = icmp slt i32 %call, 0, !dbg !2001
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2003

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2004
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2006

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1986, metadata !DIExpression()), !dbg !1991
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1991
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1991
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1987, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1986, metadata !DIExpression()), !dbg !1991
  br label %while.cond, !dbg !1992, !llvm.loop !2008

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1991
  ret i8* %retval.0, !dbg !2010
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2017, metadata !DIExpression()), !dbg !2018
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2019
  ret double %call, !dbg !2020
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2021 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2030, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i32 %base, metadata !2032, metadata !DIExpression()), !dbg !2033
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2034
  ret i64 %call, !dbg !2035
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2036 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2042, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2043, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %base, metadata !2044, metadata !DIExpression()), !dbg !2045
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2046
  ret i64 %call, !dbg !2047
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2048 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2059, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2060, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32 %base, metadata !2061, metadata !DIExpression()), !dbg !2062
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2063
  ret i64 %call, !dbg !2064
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2065 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2069, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2070, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i32 %base, metadata !2071, metadata !DIExpression()), !dbg !2072
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2073
  ret i64 %call, !dbg !2074
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2116, metadata !DIExpression()), !dbg !2117
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2118
  ret i32 %call, !dbg !2119
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2120 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2123, metadata !DIExpression()), !dbg !2124
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2125
  ret i32 %call, !dbg !2126
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2127 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2131, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2132, metadata !DIExpression()), !dbg !2133
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2134
  ret i32 %call, !dbg !2135
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2136 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2140, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2141, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2143, metadata !DIExpression()), !dbg !2144
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2145
  ret i32 %call, !dbg !2146
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2147 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2153, metadata !DIExpression()), !dbg !2154
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2153, metadata !DIExpression(DW_OP_deref)), !dbg !2154
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2155
  ret i32 %call, !dbg !2156
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2157 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2161, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2162, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2163, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2164, metadata !DIExpression()), !dbg !2165
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2164, metadata !DIExpression(DW_OP_deref)), !dbg !2165
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2166
  ret i32 %call, !dbg !2167
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2168 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2193, metadata !DIExpression()), !dbg !2194
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2195
  ret i32 %call, !dbg !2196
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2197 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2199, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2200, metadata !DIExpression()), !dbg !2201
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2202
  ret i32 %call, !dbg !2203
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2204 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2209, metadata !DIExpression()), !dbg !2210
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2211
  ret i32 %call, !dbg !2212
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2213 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2217, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2218, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2220, metadata !DIExpression()), !dbg !2221
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2222
  ret i32 %call, !dbg !2223
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @convert_to_pointer(%union.tree_node* %type, %union.tree_node* %expr) local_unnamed_addr #4 !dbg !2224 {
entry:
  br label %tailrecurse, !dbg !2239

tailrecurse:                                      ; preds = %sw.default, %entry
  %expr.tr = phi %union.tree_node* [ %expr, %entry ], [ %15, %sw.default ]
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2228, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr, metadata !2229, metadata !DIExpression()), !dbg !2240
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2241
  %bf.load = load i64, i64* %0, align 8, !dbg !2241
  %bf.cast = and i64 %bf.load, 65535, !dbg !2241
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2241
  %1 = load i32, i32* %arrayidx, align 4, !dbg !2241
  %cmp = icmp ugt i32 %1, 3, !dbg !2241
  br i1 %cmp, label %land.lhs.true, label %cond.end, !dbg !2241

land.lhs.true:                                    ; preds = %tailrecurse
  %cmp7 = icmp ult i32 %1, 11, !dbg !2241
  br i1 %cmp7, label %cond.true, label %cond.end, !dbg !2241

cond.true:                                        ; preds = %land.lhs.true
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2241
  %3 = load i32, i32* %2, align 8, !dbg !2241
  br label %cond.end, !dbg !2241

cond.end:                                         ; preds = %tailrecurse, %land.lhs.true, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %land.lhs.true ], [ 0, %tailrecurse ], !dbg !2241
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2230, metadata !DIExpression()), !dbg !2240
  %type8 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2242
  %4 = load %union.tree_node*, %union.tree_node** %type8, align 8, !dbg !2242
  %cmp9 = icmp eq %union.tree_node* %4, %type, !dbg !2244
  br i1 %cmp9, label %cleanup65.loopexit, label %if.end, !dbg !2245

if.end:                                           ; preds = %cond.end
  %call = tail call i32 @integer_zerop(%union.tree_node* %expr.tr) #6, !dbg !2246
  %tobool = icmp eq i32 %call, 0, !dbg !2246
  br i1 %tobool, label %if.end16, label %if.then10, !dbg !2248

if.then10:                                        ; preds = %if.end
  %.lcssa21 = phi i64* [ %0, %if.end ], !dbg !2241
  %bf.load12 = load i64, i64* %.lcssa21, align 8, !dbg !2249
  %bf.lshr = lshr i64 %bf.load12, 27, !dbg !2249
  %5 = trunc i64 %bf.lshr to i8, !dbg !2249
  %bf.cast14 = and i8 %5, 1, !dbg !2249
  %call15 = tail call %union.tree_node* @force_fit_type_double(%union.tree_node* %type, i64 0, i64 0, i32 0, i8 zeroext %bf.cast14) #6, !dbg !2250
  br label %cleanup65, !dbg !2251

if.end16:                                         ; preds = %if.end
  %6 = bitcast %union.tree_node** %type8 to i64**, !dbg !2252
  %7 = load i64*, i64** %6, align 8, !dbg !2252
  %bf.load20 = load i64, i64* %7, align 8, !dbg !2252
  %8 = trunc i64 %bf.load20 to i16, !dbg !2252
  switch i16 %8, label %sw.default [
    i16 10, label %sw.bb
    i16 12, label %sw.bb
    i16 8, label %sw.bb47
    i16 6, label %sw.bb47
    i16 7, label %sw.bb47
  ], !dbg !2253

sw.bb:                                            ; preds = %if.end16, %if.end16
  %.lcssa30 = phi i64* [ %7, %if.end16 ], [ %7, %if.end16 ], !dbg !2252
  %cond.lcssa28 = phi i32 [ %cond, %if.end16 ], [ %cond, %if.end16 ], !dbg !2241
  %expr.tr.lcssa25 = phi %union.tree_node* [ %expr.tr, %if.end16 ], [ %expr.tr, %if.end16 ]
  call void @llvm.dbg.value(metadata i32 %cond.lcssa28, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa28, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa25, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa25, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa28, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa28, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa25, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa25, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa28, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa28, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa25, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa25, metadata !2229, metadata !DIExpression()), !dbg !2240
  %type24 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2254
  %9 = bitcast %union.tree_node** %type24 to i64**, !dbg !2254
  %10 = load i64*, i64** %9, align 8, !dbg !2254
  %bf.load26 = load i64, i64* %10, align 8, !dbg !2254
  %bf.lshr27 = lshr i64 %bf.load26, 56, !dbg !2254
  %conv29 = trunc i64 %bf.lshr27 to i32, !dbg !2254
  %type33 = getelementptr inbounds i64, i64* %.lcssa30, i64 2, !dbg !2255
  %11 = bitcast i64* %type33 to i64**, !dbg !2255
  %12 = load i64*, i64** %11, align 8, !dbg !2255
  %bf.load35 = load i64, i64* %12, align 8, !dbg !2255
  %bf.lshr36 = lshr i64 %bf.load35, 56, !dbg !2255
  %conv38 = trunc i64 %bf.lshr36 to i32, !dbg !2255
  call void @llvm.dbg.value(metadata i32 %conv38, metadata !2235, metadata !DIExpression()), !dbg !2256
  %cmp41 = icmp eq i32 %conv29, %conv38, !dbg !2257
  br i1 %cmp41, label %if.then43, label %if.else, !dbg !2259

if.then43:                                        ; preds = %sw.bb
  %call44 = tail call %union.tree_node* @fold_build1_stat_loc(i32 %cond.lcssa28, i32 116, %union.tree_node* %type, %union.tree_node* %expr.tr.lcssa25) #6, !dbg !2260
  br label %cleanup65, !dbg !2261

if.else:                                          ; preds = %sw.bb
  %call45 = tail call %union.tree_node* @fold_build1_stat_loc(i32 %cond.lcssa28, i32 114, %union.tree_node* %type, %union.tree_node* %expr.tr.lcssa25) #6, !dbg !2262
  br label %cleanup65, !dbg !2263

sw.bb47:                                          ; preds = %if.end16, %if.end16, %if.end16
  %.lcssa31 = phi i64* [ %7, %if.end16 ], [ %7, %if.end16 ], [ %7, %if.end16 ], !dbg !2252
  %cond.lcssa29 = phi i32 [ %cond, %if.end16 ], [ %cond, %if.end16 ], [ %cond, %if.end16 ], !dbg !2241
  %expr.tr.lcssa26 = phi %union.tree_node* [ %expr.tr, %if.end16 ], [ %expr.tr, %if.end16 ], [ %expr.tr, %if.end16 ]
  call void @llvm.dbg.value(metadata i32 %cond.lcssa29, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa29, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa29, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa26, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa26, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa26, metadata !2229, metadata !DIExpression()), !dbg !2240
  %13 = bitcast i64* %.lcssa31 to %struct.tree_type*, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %cond.lcssa29, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa29, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa29, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa26, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa26, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa26, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa29, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa29, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %cond.lcssa29, metadata !2230, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa26, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa26, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa26, metadata !2229, metadata !DIExpression()), !dbg !2240
  %type48 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2264
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type48, i64 0, i32 6, !dbg !2264
  %bf.load49 = load i32, i32* %precision, align 4, !dbg !2264
  %bf.clear50 = and i32 %bf.load49, 1023, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %bf.clear50, metadata !2236, metadata !DIExpression()), !dbg !2265
  %precision54 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %13, i64 0, i32 6, !dbg !2266
  %bf.load55 = load i32, i32* %precision54, align 4, !dbg !2266
  %bf.clear56 = and i32 %bf.load55, 1023, !dbg !2266
  call void @llvm.dbg.value(metadata i32 %bf.clear56, metadata !2238, metadata !DIExpression()), !dbg !2265
  %cmp57 = icmp eq i32 %bf.clear56, %bf.clear50, !dbg !2267
  br i1 %cmp57, label %if.end62, label %if.then59, !dbg !2269

if.then59:                                        ; preds = %sw.bb47
  %14 = load %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 3), align 8, !dbg !2270
  %call60 = tail call %union.tree_node* %14(i32 %bf.clear50, i32 0) #6, !dbg !2270
  %call61 = tail call %union.tree_node* @fold_build1_stat_loc(i32 %cond.lcssa29, i32 116, %union.tree_node* %call60, %union.tree_node* %expr.tr.lcssa26) #6, !dbg !2270
  call void @llvm.dbg.value(metadata %union.tree_node* %call61, metadata !2229, metadata !DIExpression()), !dbg !2240
  br label %if.end62, !dbg !2271

if.end62:                                         ; preds = %sw.bb47, %if.then59
  %expr.addr.0 = phi %union.tree_node* [ %call61, %if.then59 ], [ %expr.tr.lcssa26, %sw.bb47 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0, metadata !2229, metadata !DIExpression()), !dbg !2240
  %call63 = tail call %union.tree_node* @fold_build1_stat_loc(i32 %cond.lcssa29, i32 113, %union.tree_node* %type, %union.tree_node* %expr.addr.0) #6, !dbg !2272
  br label %cleanup65, !dbg !2273

sw.default:                                       ; preds = %if.end16
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2274
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !2275
  br label %tailrecurse, !dbg !2239

cleanup65.loopexit:                               ; preds = %cond.end
  %expr.tr.lcssa = phi %union.tree_node* [ %expr.tr, %cond.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !2229, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !2229, metadata !DIExpression()), !dbg !2240
  br label %cleanup65, !dbg !2276

cleanup65:                                        ; preds = %cleanup65.loopexit, %if.then43, %if.else, %if.end62, %if.then10
  %retval.1 = phi %union.tree_node* [ %call15, %if.then10 ], [ %call63, %if.end62 ], [ %call44, %if.then43 ], [ %call45, %if.else ], [ %expr.tr.lcssa, %cleanup65.loopexit ], !dbg !2240
  ret %union.tree_node* %retval.1, !dbg !2276
}

declare dso_local i32 @integer_zerop(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @force_fit_type_double(%union.tree_node*, i64, i64, i32, i8 zeroext) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_build1_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local void @error(i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @strip_float_extensions(%union.tree_node* %exp) local_unnamed_addr #4 !dbg !2277 {
entry:
  %orig = alloca %struct.real_value, align 8
  %agg.tmp = alloca %struct.real_value, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !2281, metadata !DIExpression()), !dbg !2289
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2290
  %bf.load = load i64, i64* %0, align 8, !dbg !2290
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2291
  %cmp = icmp eq i64 %bf.cast2, 24, !dbg !2291
  br i1 %cmp, label %land.lhs.true, label %if.end110, !dbg !2292

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2293
  %1 = bitcast %union.tree_node** %type to i64**, !dbg !2293
  %2 = load i64*, i64** %1, align 8, !dbg !2293
  %bf.load2 = load i64, i64* %2, align 8, !dbg !2293
  %bf.cast414 = and i64 %bf.load2, 65535, !dbg !2293
  %cmp5 = icmp eq i64 %bf.cast414, 9, !dbg !2293
  %3 = bitcast i64* %2 to %struct.tree_type*, !dbg !2293
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.if.then_crit_edge, !dbg !2293

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  %precision.phi.trans.insert = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !2294
  %bf.load27.pre = load i32, i32* %precision.phi.trans.insert, align 4, !dbg !2296
  br label %if.then, !dbg !2293

land.lhs.true6:                                   ; preds = %land.lhs.true
  br i1 false, label %cond.true, label %cond.false, !dbg !2293

cond.true:                                        ; preds = %land.lhs.true6
  br label %cond.end, !dbg !2293

cond.false:                                       ; preds = %land.lhs.true6
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !2293
  %bf.load19 = load i32, i32* %mode, align 4, !dbg !2293
  %bf.lshr = lshr i32 %bf.load19, 16, !dbg !2293
  %bf.clear20 = and i32 %bf.lshr, 255, !dbg !2293
  br label %cond.end, !dbg !2293

cond.end:                                         ; preds = %cond.false, %cond.true
  %bf.load2726 = phi i32 [ undef, %cond.true ], [ %bf.load19, %cond.false ]
  %cond = phi i32 [ undef, %cond.true ], [ %bf.clear20, %cond.false ], !dbg !2293
  %idxprom = zext i32 %cond to i64, !dbg !2293
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2293
  %4 = load i8, i8* %arrayidx, align 1, !dbg !2293
  %cmp21 = icmp eq i8 %4, 9, !dbg !2293
  br i1 %cmp21, label %if.end110, label %if.then, !dbg !2297

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %cond.end
  %bf.load27 = phi i32 [ %bf.load27.pre, %land.lhs.true.if.then_crit_edge ], [ %bf.load2726, %cond.end ], !dbg !2296
  %5 = bitcast %struct.real_value* %orig to i8*, !dbg !2298
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !2298
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2288, metadata !DIExpression()), !dbg !2299
  %real_cst_ptr = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2300
  %6 = bitcast i32* %real_cst_ptr to i8**, !dbg !2300
  %7 = load i8*, i8** %6, align 8, !dbg !2300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 %7, i64 32, i1 false), !dbg !2300
  %8 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !2296
  %bf.clear28 = and i32 %bf.load27, 1023, !dbg !2296
  %9 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31) to %struct.tree_type**), align 8, !dbg !2301
  %precision30 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 6, !dbg !2301
  %bf.load31 = load i32, i32* %precision30, align 4, !dbg !2301
  %bf.clear32 = and i32 %bf.load31, 1023, !dbg !2301
  %cmp33 = icmp ugt i32 %bf.clear28, %bf.clear32, !dbg !2302
  br i1 %cmp33, label %land.lhs.true35, label %if.else, !dbg !2303

land.lhs.true35:                                  ; preds = %if.then
  %10 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 0, i32 0, i32 0, !dbg !2303
  %bf.load37 = load i64, i64* %10, align 8, !dbg !2304
  %bf.cast3917 = and i64 %bf.load37, 65535, !dbg !2304
  %cmp40 = icmp eq i64 %bf.cast3917, 14, !dbg !2304
  br i1 %cmp40, label %cond.true42, label %cond.false44, !dbg !2304

cond.true42:                                      ; preds = %land.lhs.true35
  %.cast18 = bitcast %struct.tree_type* %9 to %union.tree_node*, !dbg !2304
  %call43 = tail call i32 @vector_type_mode(%union.tree_node* %.cast18) #6, !dbg !2304
  br label %cond.end50, !dbg !2304

cond.false44:                                     ; preds = %land.lhs.true35
  %bf.lshr48 = lshr i32 %bf.load31, 16, !dbg !2304
  %bf.clear49 = and i32 %bf.lshr48, 255, !dbg !2304
  br label %cond.end50, !dbg !2304

cond.end50:                                       ; preds = %cond.false44, %cond.true42
  %cond51 = phi i32 [ %call43, %cond.true42 ], [ %bf.clear49, %cond.false44 ], !dbg !2304
  call void @llvm.dbg.value(metadata %struct.real_value* %orig, metadata !2285, metadata !DIExpression(DW_OP_deref)), !dbg !2299
  %call52 = call zeroext i8 @exact_real_truncate(i32 %cond51, %struct.real_value* nonnull %orig) #6, !dbg !2305
  %tobool = icmp eq i8 %call52, 0, !dbg !2305
  br i1 %tobool, label %cond.end50.if.else_crit_edge, label %if.then54, !dbg !2306

cond.end50.if.else_crit_edge:                     ; preds = %cond.end50
  %.pre = load %struct.tree_type*, %struct.tree_type** %8, align 8, !dbg !2307
  %precision58.phi.trans.insert = getelementptr inbounds %struct.tree_type, %struct.tree_type* %.pre, i64 0, i32 6, !dbg !2309
  %bf.load59.pre = load i32, i32* %precision58.phi.trans.insert, align 4, !dbg !2307
  %.pre29 = and i32 %bf.load59.pre, 1023, !dbg !2307
  br label %if.else, !dbg !2306

if.then54:                                        ; preds = %cond.end50
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31), align 8, !dbg !2310
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2288, metadata !DIExpression()), !dbg !2299
  br label %if.end88, !dbg !2311

if.else:                                          ; preds = %cond.end50.if.else_crit_edge, %if.then
  %bf.clear60.pre-phi = phi i32 [ %.pre29, %cond.end50.if.else_crit_edge ], [ %bf.clear28, %if.then ], !dbg !2307
  %12 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 32) to %struct.tree_type**), align 16, !dbg !2312
  %precision62 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %12, i64 0, i32 6, !dbg !2312
  %bf.load63 = load i32, i32* %precision62, align 4, !dbg !2312
  %bf.clear64 = and i32 %bf.load63, 1023, !dbg !2312
  %cmp65 = icmp ugt i32 %bf.clear60.pre-phi, %bf.clear64, !dbg !2313
  br i1 %cmp65, label %land.lhs.true67, label %if.end88, !dbg !2314

land.lhs.true67:                                  ; preds = %if.else
  %13 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %12, i64 0, i32 0, i32 0, i32 0, !dbg !2314
  %bf.load69 = load i64, i64* %13, align 8, !dbg !2315
  %bf.cast7116 = and i64 %bf.load69, 65535, !dbg !2315
  %cmp72 = icmp eq i64 %bf.cast7116, 14, !dbg !2315
  br i1 %cmp72, label %cond.true74, label %cond.false76, !dbg !2315

cond.true74:                                      ; preds = %land.lhs.true67
  %.cast = bitcast %struct.tree_type* %12 to %union.tree_node*, !dbg !2315
  %call75 = call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !2315
  br label %cond.end82, !dbg !2315

cond.false76:                                     ; preds = %land.lhs.true67
  %bf.lshr80 = lshr i32 %bf.load63, 16, !dbg !2315
  %bf.clear81 = and i32 %bf.lshr80, 255, !dbg !2315
  br label %cond.end82, !dbg !2315

cond.end82:                                       ; preds = %cond.false76, %cond.true74
  %cond83 = phi i32 [ %call75, %cond.true74 ], [ %bf.clear81, %cond.false76 ], !dbg !2315
  call void @llvm.dbg.value(metadata %struct.real_value* %orig, metadata !2285, metadata !DIExpression(DW_OP_deref)), !dbg !2299
  %call84 = call zeroext i8 @exact_real_truncate(i32 %cond83, %struct.real_value* nonnull %orig) #6, !dbg !2316
  %tobool86 = icmp eq i8 %call84, 0, !dbg !2316
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 32), align 16, !dbg !2317
  %spec.select = select i1 %tobool86, %union.tree_node* null, %union.tree_node* %14, !dbg !2318
  br label %if.end88, !dbg !2318

if.end88:                                         ; preds = %cond.end82, %if.else, %if.then54
  %type23.1 = phi %union.tree_node* [ %11, %if.then54 ], [ null, %if.else ], [ %spec.select, %cond.end82 ], !dbg !2294
  call void @llvm.dbg.value(metadata %union.tree_node* %type23.1, metadata !2288, metadata !DIExpression()), !dbg !2299
  %tobool89 = icmp eq %union.tree_node* %type23.1, null, !dbg !2319
  br i1 %tobool89, label %cleanup, label %if.then90, !dbg !2321

if.then90:                                        ; preds = %if.end88
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %type23.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2322
  %bf.load92 = load i64, i64* %15, align 8, !dbg !2322
  %bf.cast9415 = and i64 %bf.load92, 65535, !dbg !2322
  %cmp95 = icmp eq i64 %bf.cast9415, 14, !dbg !2322
  br i1 %cmp95, label %cond.true97, label %cond.false99, !dbg !2322

cond.true97:                                      ; preds = %if.then90
  %call98 = call i32 @vector_type_mode(%union.tree_node* nonnull %type23.1) #6, !dbg !2322
  br label %cond.end105, !dbg !2322

cond.false99:                                     ; preds = %if.then90
  %type100 = bitcast %union.tree_node* %type23.1 to %struct.tree_type*, !dbg !2322
  %mode101 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type100, i64 0, i32 6, !dbg !2322
  %bf.load102 = load i32, i32* %mode101, align 4, !dbg !2322
  %bf.lshr103 = lshr i32 %bf.load102, 16, !dbg !2322
  %bf.clear104 = and i32 %bf.lshr103, 255, !dbg !2322
  br label %cond.end105, !dbg !2322

cond.end105:                                      ; preds = %cond.false99, %cond.true97
  %cond106 = phi i32 [ %call98, %cond.true97 ], [ %bf.clear104, %cond.false99 ], !dbg !2322
  call void @llvm.dbg.value(metadata %struct.real_value* %orig, metadata !2285, metadata !DIExpression(DW_OP_deref)), !dbg !2299
  call void @real_value_truncate(%struct.real_value* nonnull sret %agg.tmp, i32 %cond106, %struct.real_value* nonnull byval(%struct.real_value) align 8 %orig) #6, !dbg !2323
  %call107 = call %union.tree_node* @build_real(%union.tree_node* nonnull %type23.1, %struct.real_value* nonnull byval(%struct.real_value) align 8 %agg.tmp) #6, !dbg !2324
  br label %cleanup, !dbg !2325

cleanup:                                          ; preds = %if.end88, %cond.end105
  %cleanup.dest.slot.0 = phi i1 [ false, %cond.end105 ], [ true, %if.end88 ]
  %retval.0 = phi %union.tree_node* [ %call107, %cond.end105 ], [ undef, %if.end88 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !2326
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end110_crit_edge, label %cleanup236

cleanup.if.end110_crit_edge:                      ; preds = %cleanup
  %bf.load112.pre = load i64, i64* %0, align 8, !dbg !2327
  %.pre28 = and i64 %bf.load112.pre, 65535, !dbg !2327
  br label %if.end110

if.end110:                                        ; preds = %cleanup.if.end110_crit_edge, %cond.end, %entry
  %bf.cast1143.pre-phi = phi i64 [ %.pre28, %cleanup.if.end110_crit_edge ], [ 24, %cond.end ], [ %bf.cast2, %entry ], !dbg !2327
  %cmp115 = icmp eq i64 %bf.cast1143.pre-phi, 116, !dbg !2327
  br i1 %cmp115, label %if.end124, label %lor.lhs.false, !dbg !2327

lor.lhs.false:                                    ; preds = %if.end110
  %cmp121 = icmp eq i64 %bf.cast1143.pre-phi, 113, !dbg !2327
  br i1 %cmp121, label %if.end124, label %cleanup236, !dbg !2329

if.end124:                                        ; preds = %lor.lhs.false, %if.end110
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2330
  %16 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2330
  call void @llvm.dbg.value(metadata %union.tree_node* %16, metadata !2282, metadata !DIExpression()), !dbg !2289
  %type128 = getelementptr inbounds %union.tree_node, %union.tree_node* %16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2331
  %17 = load %union.tree_node*, %union.tree_node** %type128, align 8, !dbg !2331
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !2284, metadata !DIExpression()), !dbg !2289
  %type130 = getelementptr inbounds %union.tree_node, %union.tree_node* %exp, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2332
  %18 = load %union.tree_node*, %union.tree_node** %type130, align 8, !dbg !2332
  call void @llvm.dbg.value(metadata %union.tree_node* %18, metadata !2283, metadata !DIExpression()), !dbg !2289
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2333
  %bf.load132 = load i64, i64* %19, align 8, !dbg !2333
  %bf.cast1345 = and i64 %bf.load132, 65535, !dbg !2333
  %cmp135 = icmp eq i64 %bf.cast1345, 9, !dbg !2333
  br i1 %cmp135, label %if.end161, label %lor.lhs.false137, !dbg !2333

lor.lhs.false137:                                 ; preds = %if.end124
  %cmp142 = icmp eq i64 %bf.cast1345, 13, !dbg !2333
  br i1 %cmp142, label %land.lhs.true151, label %lor.lhs.false144, !dbg !2333

lor.lhs.false144:                                 ; preds = %lor.lhs.false137
  %cmp149 = icmp eq i64 %bf.cast1345, 14, !dbg !2333
  br i1 %cmp149, label %land.lhs.true151, label %cleanup236, !dbg !2333

land.lhs.true151:                                 ; preds = %lor.lhs.false144, %lor.lhs.false137
  %type153 = getelementptr inbounds %union.tree_node, %union.tree_node* %17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2333
  %20 = bitcast %union.tree_node** %type153 to i64**, !dbg !2333
  %21 = load i64*, i64** %20, align 8, !dbg !2333
  %bf.load155 = load i64, i64* %21, align 8, !dbg !2333
  %bf.cast1578 = and i64 %bf.load155, 65535, !dbg !2333
  %cmp158 = icmp eq i64 %bf.cast1578, 9, !dbg !2333
  br i1 %cmp158, label %if.end161, label %cleanup236, !dbg !2335

if.end161:                                        ; preds = %land.lhs.true151, %if.end124
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2336
  %bf.load163 = load i64, i64* %22, align 8, !dbg !2336
  %bf.cast1659 = and i64 %bf.load163, 65535, !dbg !2336
  %cmp166 = icmp eq i64 %bf.cast1659, 9, !dbg !2336
  br i1 %cmp166, label %land.rhs, label %land.end, !dbg !2336

land.rhs:                                         ; preds = %if.end161
  br i1 false, label %cond.true174, label %cond.false176, !dbg !2336

cond.true174:                                     ; preds = %land.rhs
  br label %cond.end182, !dbg !2336

cond.false176:                                    ; preds = %land.rhs
  %type177 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !2336
  %mode178 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type177, i64 0, i32 6, !dbg !2336
  %bf.load179 = load i32, i32* %mode178, align 4, !dbg !2336
  %bf.lshr180 = lshr i32 %bf.load179, 16, !dbg !2336
  %bf.clear181 = and i32 %bf.lshr180, 255, !dbg !2336
  %phitmp31 = zext i32 %bf.clear181 to i64, !dbg !2336
  br label %cond.end182, !dbg !2336

cond.end182:                                      ; preds = %cond.false176, %cond.true174
  %cond183 = phi i64 [ 0, %cond.true174 ], [ %phitmp31, %cond.false176 ]
  %arrayidx185 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %cond183, !dbg !2336
  %23 = load i8, i8* %arrayidx185, align 1, !dbg !2336
  %cmp187 = icmp eq i8 %23, 9, !dbg !2336
  %phitmp = zext i1 %cmp187 to i32
  br label %land.end

land.end:                                         ; preds = %cond.end182, %if.end161
  %24 = phi i32 [ 0, %if.end161 ], [ %phitmp, %cond.end182 ]
  br i1 %cmp135, label %land.rhs195, label %land.end217, !dbg !2338

land.rhs195:                                      ; preds = %land.end
  br i1 false, label %cond.true202, label %cond.false204, !dbg !2338

cond.true202:                                     ; preds = %land.rhs195
  br label %cond.end210, !dbg !2338

cond.false204:                                    ; preds = %land.rhs195
  %type205 = bitcast %union.tree_node* %17 to %struct.tree_type*, !dbg !2338
  %mode206 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type205, i64 0, i32 6, !dbg !2338
  %bf.load207 = load i32, i32* %mode206, align 4, !dbg !2338
  %bf.lshr208 = lshr i32 %bf.load207, 16, !dbg !2338
  %bf.clear209 = and i32 %bf.lshr208, 255, !dbg !2338
  %phitmp30 = zext i32 %bf.clear209 to i64, !dbg !2338
  br label %cond.end210, !dbg !2338

cond.end210:                                      ; preds = %cond.false204, %cond.true202
  %cond211 = phi i64 [ 0, %cond.true202 ], [ %phitmp30, %cond.false204 ]
  %arrayidx213 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %cond211, !dbg !2338
  %25 = load i8, i8* %arrayidx213, align 1, !dbg !2338
  %cmp215 = icmp eq i8 %25, 9, !dbg !2338
  %phitmp11 = zext i1 %cmp215 to i32
  br label %land.end217

land.end217:                                      ; preds = %cond.end210, %land.end
  %26 = phi i32 [ 0, %land.end ], [ %phitmp11, %cond.end210 ]
  %cmp219 = icmp eq i32 %24, %26, !dbg !2339
  br i1 %cmp219, label %if.end222, label %cleanup236, !dbg !2340

if.end222:                                        ; preds = %land.end217
  %type223 = bitcast %union.tree_node* %17 to %struct.tree_type*, !dbg !2341
  %precision224 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type223, i64 0, i32 6, !dbg !2341
  %bf.load225 = load i32, i32* %precision224, align 4, !dbg !2341
  %bf.clear226 = and i32 %bf.load225, 1023, !dbg !2341
  %type227 = bitcast %union.tree_node* %18 to %struct.tree_type*, !dbg !2343
  %precision228 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type227, i64 0, i32 6, !dbg !2343
  %bf.load229 = load i32, i32* %precision228, align 4, !dbg !2343
  %bf.clear230 = and i32 %bf.load229, 1023, !dbg !2343
  %cmp231 = icmp ugt i32 %bf.clear226, %bf.clear230, !dbg !2344
  br i1 %cmp231, label %cleanup236, label %if.end234, !dbg !2345

if.end234:                                        ; preds = %if.end222
  %call235 = call %union.tree_node* @strip_float_extensions(%union.tree_node* %16) #8, !dbg !2346
  br label %cleanup236, !dbg !2347

cleanup236:                                       ; preds = %land.end217, %if.end222, %lor.lhs.false144, %land.lhs.true151, %lor.lhs.false, %cleanup, %if.end234
  %retval.1 = phi %union.tree_node* [ %call235, %if.end234 ], [ %retval.0, %cleanup ], [ %exp, %lor.lhs.false ], [ %exp, %land.lhs.true151 ], [ %exp, %lor.lhs.false144 ], [ %exp, %land.end217 ], [ %exp, %if.end222 ], !dbg !2289
  ret %union.tree_node* %retval.1, !dbg !2348
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local zeroext i8 @exact_real_truncate(i32, %struct.real_value*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_real(%union.tree_node*, %struct.real_value* byval(%struct.real_value) align 8) local_unnamed_addr #1

declare dso_local void @real_value_truncate(%struct.real_value* sret, i32, %struct.real_value* byval(%struct.real_value) align 8) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @convert_to_real(%union.tree_node* %type, %union.tree_node* %expr) local_unnamed_addr #4 !dbg !2349 {
entry:
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2381
  %type3 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2381
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i64 0, i32 6, !dbg !2381
  %type374 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2382
  %1 = bitcast %union.tree_node** %type374 to i64**, !dbg !2382
  br label %tailrecurse, !dbg !2383

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %expr.tr = phi %union.tree_node* [ %expr, %entry ], [ %expr.tr.be, %tailrecurse.backedge ]
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2351, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr, metadata !2352, metadata !DIExpression()), !dbg !2385
  %call = tail call i32 @builtin_mathfn_code(%union.tree_node* %expr.tr) #6, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %call, metadata !2353, metadata !DIExpression()), !dbg !2385
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2387
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2387
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2354, metadata !DIExpression()), !dbg !2385
  %3 = load i32, i32* @optimize, align 4, !dbg !2388
  %tobool = icmp eq i32 %3, 0, !dbg !2388
  br i1 %tobool, label %if.end197, label %land.lhs.true, !dbg !2389

land.lhs.true:                                    ; preds = %tailrecurse
  %bf.load = load i64, i64* %0, align 8, !dbg !2390
  %bf.cast54 = and i64 %bf.load, 65535, !dbg !2390
  %cmp = icmp eq i64 %bf.cast54, 14, !dbg !2390
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2390

cond.true:                                        ; preds = %land.lhs.true
  %call2 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2390
  br label %cond.end, !dbg !2390

cond.false:                                       ; preds = %land.lhs.true
  %bf.load4 = load i32, i32* %mode, align 4, !dbg !2390
  %bf.lshr = lshr i32 %bf.load4, 16, !dbg !2390
  %bf.clear5 = and i32 %bf.lshr, 255, !dbg !2390
  br label %cond.end, !dbg !2390

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ %bf.clear5, %cond.false ], !dbg !2390
  %4 = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 32) to i64**), align 16, !dbg !2391
  %bf.load7 = load i64, i64* %4, align 8, !dbg !2391
  %bf.cast955 = and i64 %bf.load7, 65535, !dbg !2391
  %cmp10 = icmp eq i64 %bf.cast955, 14, !dbg !2391
  br i1 %cmp10, label %cond.true11, label %cond.false13, !dbg !2391

cond.true11:                                      ; preds = %cond.end
  %.cast56 = bitcast i64* %4 to %union.tree_node*, !dbg !2391
  %call12 = tail call i32 @vector_type_mode(%union.tree_node* %.cast56) #6, !dbg !2391
  br label %cond.end19, !dbg !2391

cond.false13:                                     ; preds = %cond.end
  %type14 = bitcast i64* %4 to %struct.tree_type*, !dbg !2391
  %mode15 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i64 0, i32 6, !dbg !2391
  %bf.load16 = load i32, i32* %mode15, align 4, !dbg !2391
  %bf.lshr17 = lshr i32 %bf.load16, 16, !dbg !2391
  %bf.clear18 = and i32 %bf.lshr17, 255, !dbg !2391
  br label %cond.end19, !dbg !2391

cond.end19:                                       ; preds = %cond.false13, %cond.true11
  %cond20 = phi i32 [ %call12, %cond.true11 ], [ %bf.clear18, %cond.false13 ], !dbg !2391
  %cmp21 = icmp eq i32 %cond, %cond20, !dbg !2392
  br i1 %cmp21, label %if.then, label %lor.lhs.false, !dbg !2393

lor.lhs.false:                                    ; preds = %cond.end19
  %bf.load23 = load i64, i64* %0, align 8, !dbg !2394
  %bf.cast2557 = and i64 %bf.load23, 65535, !dbg !2394
  %cmp26 = icmp eq i64 %bf.cast2557, 14, !dbg !2394
  br i1 %cmp26, label %cond.true27, label %cond.false29, !dbg !2394

cond.true27:                                      ; preds = %lor.lhs.false
  %call28 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2394
  br label %cond.end35, !dbg !2394

cond.false29:                                     ; preds = %lor.lhs.false
  %bf.load32 = load i32, i32* %mode, align 4, !dbg !2394
  %bf.lshr33 = lshr i32 %bf.load32, 16, !dbg !2394
  %bf.clear34 = and i32 %bf.lshr33, 255, !dbg !2394
  br label %cond.end35, !dbg !2394

cond.end35:                                       ; preds = %cond.false29, %cond.true27
  %cond36 = phi i32 [ %call28, %cond.true27 ], [ %bf.clear34, %cond.false29 ], !dbg !2394
  %5 = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31) to i64**), align 8, !dbg !2395
  %bf.load38 = load i64, i64* %5, align 8, !dbg !2395
  %bf.cast4058 = and i64 %bf.load38, 65535, !dbg !2395
  %cmp41 = icmp eq i64 %bf.cast4058, 14, !dbg !2395
  br i1 %cmp41, label %cond.true42, label %cond.false44, !dbg !2395

cond.true42:                                      ; preds = %cond.end35
  %.cast59 = bitcast i64* %5 to %union.tree_node*, !dbg !2395
  %call43 = tail call i32 @vector_type_mode(%union.tree_node* %.cast59) #6, !dbg !2395
  br label %cond.end50, !dbg !2395

cond.false44:                                     ; preds = %cond.end35
  %type45 = bitcast i64* %5 to %struct.tree_type*, !dbg !2395
  %mode46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type45, i64 0, i32 6, !dbg !2395
  %bf.load47 = load i32, i32* %mode46, align 4, !dbg !2395
  %bf.lshr48 = lshr i32 %bf.load47, 16, !dbg !2395
  %bf.clear49 = and i32 %bf.lshr48, 255, !dbg !2395
  br label %cond.end50, !dbg !2395

cond.end50:                                       ; preds = %cond.false44, %cond.true42
  %cond51 = phi i32 [ %call43, %cond.true42 ], [ %bf.clear49, %cond.false44 ], !dbg !2395
  %cmp52 = icmp eq i32 %cond36, %cond51, !dbg !2396
  br i1 %cmp52, label %if.then, label %if.end197, !dbg !2397

if.then:                                          ; preds = %cond.end50, %cond.end19
  switch i32 %call, label %if.end197 [
    i32 32, label %sw.bb
    i32 34, label %sw.bb
    i32 45, label %sw.bb
    i32 53, label %sw.bb
    i32 46, label %sw.bb
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 51, label %sw.bb
    i32 54, label %sw.bb
    i32 56, label %sw.bb
    i32 81, label %sw.bb
    i32 83, label %sw.bb
    i32 102, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 107, label %sw.bb
    i32 120, label %sw.bb
    i32 122, label %sw.bb
    i32 181, label %sw.bb
    i32 183, label %sw.bb
    i32 224, label %sw.bb
    i32 226, label %sw.bb
    i32 237, label %sw.bb
    i32 239, label %sw.bb
    i32 243, label %sw.bb
    i32 245, label %sw.bb
    i32 246, label %sw.bb
    i32 248, label %sw.bb
    i32 0, label %sw.bb55
    i32 5, label %sw.bb55
    i32 2, label %sw.bb55
    i32 4, label %sw.bb55
    i32 6, label %sw.bb55
    i32 11, label %sw.bb55
    i32 8, label %sw.bb55
    i32 10, label %sw.bb55
    i32 12, label %sw.bb55
    i32 20, label %sw.bb55
    i32 17, label %sw.bb55
    i32 19, label %sw.bb55
    i32 21, label %sw.bb55
    i32 23, label %sw.bb55
    i32 30, label %sw.bb55
    i32 35, label %sw.bb55
    i32 39, label %sw.bb55
    i32 44, label %sw.bb55
    i32 40, label %sw.bb55
    i32 42, label %sw.bb55
    i32 57, label %sw.bb55
    i32 59, label %sw.bb55
    i32 138, label %sw.bb55
    i32 152, label %sw.bb55
    i32 139, label %sw.bb55
    i32 141, label %sw.bb55
    i32 145, label %sw.bb55
    i32 147, label %sw.bb55
    i32 142, label %sw.bb55
    i32 144, label %sw.bb55
    i32 148, label %sw.bb55
    i32 150, label %sw.bb55
    i32 219, label %sw.bb55
    i32 227, label %sw.bb55
    i32 228, label %sw.bb55
    i32 230, label %sw.bb55
    i32 231, label %sw.bb55
    i32 236, label %sw.bb55
    i32 233, label %sw.bb55
    i32 235, label %sw.bb55
  ], !dbg !2398

sw.bb:                                            ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %6 = load i32, i32* @flag_errno_math, align 4, !dbg !2399
  %tobool53 = icmp eq i32 %6, 0, !dbg !2399
  br i1 %tobool53, label %sw.bb55, label %if.end197, !dbg !2401

sw.bb55:                                          ; preds = %sw.bb, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2402
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 3, !dbg !2402
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2402
  %call56 = tail call %union.tree_node* @strip_float_extensions(%union.tree_node* %7) #8, !dbg !2403
  call void @llvm.dbg.value(metadata %union.tree_node* %call56, metadata !2355, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2360, metadata !DIExpression()), !dbg !2404
  %type58 = getelementptr inbounds %union.tree_node, %union.tree_node* %call56, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2405
  %8 = bitcast %union.tree_node** %type58 to %struct.tree_type**, !dbg !2405
  %9 = load %struct.tree_type*, %struct.tree_type** %8, align 8, !dbg !2405
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 6, !dbg !2405
  %bf.load60 = load i32, i32* %precision, align 4, !dbg !2405
  %bf.clear61 = and i32 %bf.load60, 1023, !dbg !2405
  %bf.load64 = load i32, i32* %mode, align 4, !dbg !2407
  %bf.clear65 = and i32 %bf.load64, 1023, !dbg !2407
  %cmp66 = icmp ugt i32 %bf.clear61, %bf.clear65, !dbg !2408
  %10 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 0, i32 0, i32 0, !dbg !2409
  br i1 %cmp66, label %if.then67, label %if.end70, !dbg !2409

if.then67:                                        ; preds = %sw.bb55
  %11 = bitcast %struct.tree_type* %9 to %union.tree_node*, !dbg !2409
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2360, metadata !DIExpression()), !dbg !2404
  br label %if.end70, !dbg !2410

if.end70:                                         ; preds = %if.then67, %sw.bb55
  %newtype.0 = phi %union.tree_node* [ %11, %if.then67 ], [ %type, %sw.bb55 ], !dbg !2404
  call void @llvm.dbg.value(metadata %union.tree_node* %newtype.0, metadata !2360, metadata !DIExpression()), !dbg !2404
  %bf.load74 = load i64, i64* %10, align 8, !dbg !2411
  %bf.cast7660 = and i64 %bf.load74, 65535, !dbg !2411
  %cmp77 = icmp eq i64 %bf.cast7660, 9, !dbg !2411
  br i1 %cmp77, label %land.lhs.true104, label %lor.lhs.false78, !dbg !2411

lor.lhs.false78:                                  ; preds = %if.end70
  %cmp85 = icmp eq i64 %bf.cast7660, 13, !dbg !2411
  br i1 %cmp85, label %land.lhs.true94, label %lor.lhs.false86, !dbg !2411

lor.lhs.false86:                                  ; preds = %lor.lhs.false78
  %cmp93 = icmp eq i64 %bf.cast7660, 14, !dbg !2411
  br i1 %cmp93, label %land.lhs.true94, label %if.end192, !dbg !2411

land.lhs.true94:                                  ; preds = %lor.lhs.false86, %lor.lhs.false78
  %type98 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 0, i32 2, !dbg !2411
  %12 = bitcast %union.tree_node** %type98 to i64**, !dbg !2411
  %13 = load i64*, i64** %12, align 8, !dbg !2411
  %bf.load100 = load i64, i64* %13, align 8, !dbg !2411
  %bf.cast10263 = and i64 %bf.load100, 65535, !dbg !2411
  %cmp103 = icmp eq i64 %bf.cast10263, 9, !dbg !2411
  br i1 %cmp103, label %land.lhs.true104, label %if.end192, !dbg !2412

land.lhs.true104:                                 ; preds = %land.lhs.true94, %if.end70
  %type105 = bitcast %union.tree_node* %newtype.0 to %struct.tree_type*, !dbg !2413
  %precision106 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type105, i64 0, i32 6, !dbg !2413
  %bf.load107 = load i32, i32* %precision106, align 4, !dbg !2413
  %bf.clear108 = and i32 %bf.load107, 1023, !dbg !2413
  %type109 = bitcast %union.tree_node* %2 to %struct.tree_type*, !dbg !2414
  %precision110 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type109, i64 0, i32 6, !dbg !2414
  %bf.load111 = load i32, i32* %precision110, align 4, !dbg !2414
  %bf.clear112 = and i32 %bf.load111, 1023, !dbg !2414
  %cmp113 = icmp ult i32 %bf.clear108, %bf.clear112, !dbg !2415
  br i1 %cmp113, label %land.lhs.true114, label %if.end192, !dbg !2416

land.lhs.true114:                                 ; preds = %land.lhs.true104
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %newtype.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2417
  %bf.load116 = load i64, i64* %14, align 8, !dbg !2417
  %bf.cast11864 = and i64 %bf.load116, 65535, !dbg !2417
  %cmp119 = icmp eq i64 %bf.cast11864, 14, !dbg !2417
  br i1 %cmp119, label %cond.true120, label %cond.false122, !dbg !2417

cond.true120:                                     ; preds = %land.lhs.true114
  %call121 = tail call i32 @vector_type_mode(%union.tree_node* %newtype.0) #6, !dbg !2417
  br label %cond.end128, !dbg !2417

cond.false122:                                    ; preds = %land.lhs.true114
  %bf.lshr126 = lshr i32 %bf.load107, 16, !dbg !2417
  %bf.clear127 = and i32 %bf.lshr126, 255, !dbg !2417
  br label %cond.end128, !dbg !2417

cond.end128:                                      ; preds = %cond.false122, %cond.true120
  %cond129 = phi i32 [ %call121, %cond.true120 ], [ %bf.clear127, %cond.false122 ], !dbg !2417
  %15 = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 32) to i64**), align 16, !dbg !2418
  %bf.load131 = load i64, i64* %15, align 8, !dbg !2418
  %bf.cast13365 = and i64 %bf.load131, 65535, !dbg !2418
  %cmp134 = icmp eq i64 %bf.cast13365, 14, !dbg !2418
  br i1 %cmp134, label %cond.true135, label %cond.false137, !dbg !2418

cond.true135:                                     ; preds = %cond.end128
  %.cast66 = bitcast i64* %15 to %union.tree_node*, !dbg !2418
  %call136 = tail call i32 @vector_type_mode(%union.tree_node* %.cast66) #6, !dbg !2418
  br label %cond.end143, !dbg !2418

cond.false137:                                    ; preds = %cond.end128
  %type138 = bitcast i64* %15 to %struct.tree_type*, !dbg !2418
  %mode139 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type138, i64 0, i32 6, !dbg !2418
  %bf.load140 = load i32, i32* %mode139, align 4, !dbg !2418
  %bf.lshr141 = lshr i32 %bf.load140, 16, !dbg !2418
  %bf.clear142 = and i32 %bf.lshr141, 255, !dbg !2418
  br label %cond.end143, !dbg !2418

cond.end143:                                      ; preds = %cond.false137, %cond.true135
  %cond144 = phi i32 [ %call136, %cond.true135 ], [ %bf.clear142, %cond.false137 ], !dbg !2418
  %cmp145 = icmp eq i32 %cond129, %cond144, !dbg !2419
  br i1 %cmp145, label %if.then178, label %lor.lhs.false146, !dbg !2420

lor.lhs.false146:                                 ; preds = %cond.end143
  %bf.load148 = load i64, i64* %14, align 8, !dbg !2421
  %bf.cast15067 = and i64 %bf.load148, 65535, !dbg !2421
  %cmp151 = icmp eq i64 %bf.cast15067, 14, !dbg !2421
  br i1 %cmp151, label %cond.true152, label %cond.false154, !dbg !2421

cond.true152:                                     ; preds = %lor.lhs.false146
  %call153 = tail call i32 @vector_type_mode(%union.tree_node* %newtype.0) #6, !dbg !2421
  br label %cond.end160, !dbg !2421

cond.false154:                                    ; preds = %lor.lhs.false146
  %bf.load157 = load i32, i32* %precision106, align 4, !dbg !2421
  %bf.lshr158 = lshr i32 %bf.load157, 16, !dbg !2421
  %bf.clear159 = and i32 %bf.lshr158, 255, !dbg !2421
  br label %cond.end160, !dbg !2421

cond.end160:                                      ; preds = %cond.false154, %cond.true152
  %cond161 = phi i32 [ %call153, %cond.true152 ], [ %bf.clear159, %cond.false154 ], !dbg !2421
  %16 = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31) to i64**), align 8, !dbg !2422
  %bf.load163 = load i64, i64* %16, align 8, !dbg !2422
  %bf.cast16568 = and i64 %bf.load163, 65535, !dbg !2422
  %cmp166 = icmp eq i64 %bf.cast16568, 14, !dbg !2422
  br i1 %cmp166, label %cond.true167, label %cond.false169, !dbg !2422

cond.true167:                                     ; preds = %cond.end160
  %.cast69 = bitcast i64* %16 to %union.tree_node*, !dbg !2422
  %call168 = tail call i32 @vector_type_mode(%union.tree_node* %.cast69) #6, !dbg !2422
  br label %cond.end175, !dbg !2422

cond.false169:                                    ; preds = %cond.end160
  %type170 = bitcast i64* %16 to %struct.tree_type*, !dbg !2422
  %mode171 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type170, i64 0, i32 6, !dbg !2422
  %bf.load172 = load i32, i32* %mode171, align 4, !dbg !2422
  %bf.lshr173 = lshr i32 %bf.load172, 16, !dbg !2422
  %bf.clear174 = and i32 %bf.lshr173, 255, !dbg !2422
  br label %cond.end175, !dbg !2422

cond.end175:                                      ; preds = %cond.false169, %cond.true167
  %cond176 = phi i32 [ %call168, %cond.true167 ], [ %bf.clear174, %cond.false169 ], !dbg !2422
  %cmp177 = icmp eq i32 %cond161, %cond176, !dbg !2423
  br i1 %cmp177, label %if.then178, label %if.end192, !dbg !2424

if.then178:                                       ; preds = %cond.end175, %cond.end143
  %call179 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %newtype.0, i32 %call) #6, !dbg !2425
  call void @llvm.dbg.value(metadata %union.tree_node* %call179, metadata !2361, metadata !DIExpression()), !dbg !2426
  %tobool180 = icmp eq %union.tree_node* %call179, null, !dbg !2427
  br i1 %tobool180, label %if.end188, label %if.then181, !dbg !2428

if.then181:                                       ; preds = %if.then178
  %call182 = tail call %union.tree_node* @convert_to_real(%union.tree_node* %newtype.0, %union.tree_node* %call56) #8, !dbg !2429
  %call183 = tail call %union.tree_node* @fold(%union.tree_node* %call182) #6, !dbg !2430
  call void @llvm.dbg.value(metadata %union.tree_node* %call183, metadata !2364, metadata !DIExpression()), !dbg !2431
  %call184 = tail call %union.tree_node* (i32, %union.tree_node*, i32, ...) @build_call_expr_loc(i32 0, %union.tree_node* nonnull %call179, i32 1, %union.tree_node* %call183) #6, !dbg !2432
  call void @llvm.dbg.value(metadata %union.tree_node* %call184, metadata !2352, metadata !DIExpression()), !dbg !2385
  %cmp185 = icmp eq %union.tree_node* %newtype.0, %type, !dbg !2433
  %. = zext i1 %cmp185 to i32, !dbg !2435
  br i1 %cmp185, label %cleanup189, label %if.end188

if.end188:                                        ; preds = %if.then181, %if.then178
  %expr.addr.0 = phi %union.tree_node* [ %expr.tr, %if.then178 ], [ %call184, %if.then181 ]
  %retval.1 = phi %union.tree_node* [ undef, %if.then178 ], [ %call184, %if.then181 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0, metadata !2352, metadata !DIExpression()), !dbg !2385
  br label %cleanup189, !dbg !2436

cleanup189:                                       ; preds = %if.then181, %if.end188
  %cleanup.dest.slot.1 = phi i32 [ %., %if.then181 ], [ 0, %if.end188 ]
  %expr.addr.1 = phi %union.tree_node* [ %call184, %if.then181 ], [ %expr.addr.0, %if.end188 ], !dbg !2437
  %retval.2 = phi %union.tree_node* [ %call184, %if.then181 ], [ %retval.1, %if.end188 ], !dbg !2438
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.1, metadata !2352, metadata !DIExpression()), !dbg !2385
  %cond5 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond5, label %if.end192, label %cleanup193

if.end192:                                        ; preds = %cleanup189, %cond.end175, %land.lhs.true104, %land.lhs.true94, %lor.lhs.false86
  %expr.addr.2 = phi %union.tree_node* [ %expr.tr, %cond.end175 ], [ %expr.tr, %land.lhs.true104 ], [ %expr.tr, %land.lhs.true94 ], [ %expr.tr, %lor.lhs.false86 ], [ %expr.addr.1, %cleanup189 ]
  %retval.3 = phi %union.tree_node* [ undef, %cond.end175 ], [ undef, %land.lhs.true104 ], [ undef, %land.lhs.true94 ], [ undef, %lor.lhs.false86 ], [ %retval.2, %cleanup189 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.2, metadata !2352, metadata !DIExpression()), !dbg !2385
  br label %cleanup193, !dbg !2439

cleanup193:                                       ; preds = %cleanup189, %if.end192
  %cleanup.dest.slot.2 = phi i32 [ %cleanup.dest.slot.1, %cleanup189 ], [ 0, %if.end192 ]
  %expr.addr.3 = phi %union.tree_node* [ %expr.addr.1, %cleanup189 ], [ %expr.addr.2, %if.end192 ], !dbg !2437
  %retval.4 = phi %union.tree_node* [ %retval.2, %cleanup189 ], [ %retval.3, %if.end192 ], !dbg !2438
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.3, metadata !2352, metadata !DIExpression()), !dbg !2385
  %cond4 = icmp eq i32 %cleanup.dest.slot.2, 0
  br i1 %cond4, label %if.end197, label %cleanup983.loopexit

if.end197:                                        ; preds = %sw.bb, %tailrecurse, %cleanup193, %if.then, %cond.end50
  %expr.addr.6 = phi %union.tree_node* [ %expr.tr, %cond.end50 ], [ %expr.tr, %tailrecurse ], [ %expr.tr, %sw.bb ], [ %expr.tr, %if.then ], [ %expr.addr.3, %cleanup193 ]
  %retval.7 = phi %union.tree_node* [ undef, %cond.end50 ], [ undef, %tailrecurse ], [ undef, %sw.bb ], [ undef, %if.then ], [ %retval.4, %cleanup193 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.6, metadata !2352, metadata !DIExpression()), !dbg !2385
  %17 = load i32, i32* @optimize, align 4, !dbg !2440
  %tobool198 = icmp eq i32 %17, 0, !dbg !2440
  br i1 %tobool198, label %if.end352, label %land.lhs.true199, !dbg !2441

land.lhs.true199:                                 ; preds = %if.end197
  switch i32 %call, label %if.end352 [
    i32 65, label %land.lhs.true211
    i32 26, label %land.lhs.true211
    i32 200, label %land.lhs.true211
    i32 197, label %land.lhs.true211
    i32 242, label %land.lhs.true211
    i32 173, label %land.lhs.true211
    i32 63, label %land.lhs.true287
    i32 24, label %land.lhs.true287
    i32 198, label %land.lhs.true287
    i32 195, label %land.lhs.true287
    i32 240, label %land.lhs.true287
    i32 171, label %land.lhs.true287
  ], !dbg !2442

land.lhs.true211:                                 ; preds = %land.lhs.true199, %land.lhs.true199, %land.lhs.true199, %land.lhs.true199, %land.lhs.true199, %land.lhs.true199
  %bf.load213 = load i64, i64* %0, align 8, !dbg !2443
  %bf.cast21548 = and i64 %bf.load213, 65535, !dbg !2443
  %cmp216 = icmp eq i64 %bf.cast21548, 14, !dbg !2443
  br i1 %cmp216, label %cond.true217, label %cond.false219, !dbg !2443

cond.true217:                                     ; preds = %land.lhs.true211
  %call218 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2443
  br label %cond.end225, !dbg !2443

cond.false219:                                    ; preds = %land.lhs.true211
  %bf.load222 = load i32, i32* %mode, align 4, !dbg !2443
  %bf.lshr223 = lshr i32 %bf.load222, 16, !dbg !2443
  %bf.clear224 = and i32 %bf.lshr223, 255, !dbg !2443
  br label %cond.end225, !dbg !2443

cond.end225:                                      ; preds = %cond.false219, %cond.true217
  %cond226 = phi i32 [ %call218, %cond.true217 ], [ %bf.clear224, %cond.false219 ], !dbg !2443
  %18 = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 32) to i64**), align 16, !dbg !2444
  %bf.load228 = load i64, i64* %18, align 8, !dbg !2444
  %bf.cast23049 = and i64 %bf.load228, 65535, !dbg !2444
  %cmp231 = icmp eq i64 %bf.cast23049, 14, !dbg !2444
  br i1 %cmp231, label %cond.true232, label %cond.false234, !dbg !2444

cond.true232:                                     ; preds = %cond.end225
  %.cast50 = bitcast i64* %18 to %union.tree_node*, !dbg !2444
  %call233 = tail call i32 @vector_type_mode(%union.tree_node* %.cast50) #6, !dbg !2444
  br label %cond.end240, !dbg !2444

cond.false234:                                    ; preds = %cond.end225
  %type235 = bitcast i64* %18 to %struct.tree_type*, !dbg !2444
  %mode236 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type235, i64 0, i32 6, !dbg !2444
  %bf.load237 = load i32, i32* %mode236, align 4, !dbg !2444
  %bf.lshr238 = lshr i32 %bf.load237, 16, !dbg !2444
  %bf.clear239 = and i32 %bf.lshr238, 255, !dbg !2444
  br label %cond.end240, !dbg !2444

cond.end240:                                      ; preds = %cond.false234, %cond.true232
  %cond241 = phi i32 [ %call233, %cond.true232 ], [ %bf.clear239, %cond.false234 ], !dbg !2444
  %cmp242 = icmp eq i32 %cond226, %cond241, !dbg !2445
  br i1 %cmp242, label %if.then319, label %lor.lhs.false243, !dbg !2446

lor.lhs.false243:                                 ; preds = %cond.end240
  %bf.load245 = load i64, i64* %0, align 8, !dbg !2447
  %bf.cast24751 = and i64 %bf.load245, 65535, !dbg !2447
  %cmp248 = icmp eq i64 %bf.cast24751, 14, !dbg !2447
  br i1 %cmp248, label %cond.true249, label %cond.false251, !dbg !2447

cond.true249:                                     ; preds = %lor.lhs.false243
  %call250 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2447
  br label %cond.end257, !dbg !2447

cond.false251:                                    ; preds = %lor.lhs.false243
  %bf.load254 = load i32, i32* %mode, align 4, !dbg !2447
  %bf.lshr255 = lshr i32 %bf.load254, 16, !dbg !2447
  %bf.clear256 = and i32 %bf.lshr255, 255, !dbg !2447
  br label %cond.end257, !dbg !2447

cond.end257:                                      ; preds = %cond.false251, %cond.true249
  %cond258 = phi i32 [ %call250, %cond.true249 ], [ %bf.clear256, %cond.false251 ], !dbg !2447
  %19 = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31) to i64**), align 8, !dbg !2448
  %bf.load260 = load i64, i64* %19, align 8, !dbg !2448
  %bf.cast26252 = and i64 %bf.load260, 65535, !dbg !2448
  %cmp263 = icmp eq i64 %bf.cast26252, 14, !dbg !2448
  br i1 %cmp263, label %cond.true264, label %cond.false266, !dbg !2448

cond.true264:                                     ; preds = %cond.end257
  %.cast53 = bitcast i64* %19 to %union.tree_node*, !dbg !2448
  %call265 = tail call i32 @vector_type_mode(%union.tree_node* %.cast53) #6, !dbg !2448
  br label %cond.end272, !dbg !2448

cond.false266:                                    ; preds = %cond.end257
  %type267 = bitcast i64* %19 to %struct.tree_type*, !dbg !2448
  %mode268 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type267, i64 0, i32 6, !dbg !2448
  %bf.load269 = load i32, i32* %mode268, align 4, !dbg !2448
  %bf.lshr270 = lshr i32 %bf.load269, 16, !dbg !2448
  %bf.clear271 = and i32 %bf.lshr270, 255, !dbg !2448
  br label %cond.end272, !dbg !2448

cond.end272:                                      ; preds = %cond.false266, %cond.true264
  %cond273 = phi i32 [ %call265, %cond.true264 ], [ %bf.clear271, %cond.false266 ], !dbg !2448
  %cmp274 = icmp eq i32 %cond258, %cond273, !dbg !2449
  br i1 %cmp274, label %if.then319, label %lor.lhs.false275, !dbg !2450

lor.lhs.false275:                                 ; preds = %cond.end272
  switch i32 %call, label %if.end352 [
    i32 63, label %land.lhs.true287
    i32 24, label %land.lhs.true287
    i32 198, label %land.lhs.true287
    i32 195, label %land.lhs.true287
    i32 240, label %land.lhs.true287
    i32 171, label %land.lhs.true287
  ], !dbg !2451

land.lhs.true287:                                 ; preds = %land.lhs.true199, %land.lhs.true199, %land.lhs.true199, %land.lhs.true199, %land.lhs.true199, %land.lhs.true199, %lor.lhs.false275, %lor.lhs.false275, %lor.lhs.false275, %lor.lhs.false275, %lor.lhs.false275, %lor.lhs.false275
  %bf.load289 = load i64, i64* %0, align 8, !dbg !2452
  %bf.cast29145 = and i64 %bf.load289, 65535, !dbg !2452
  %cmp292 = icmp eq i64 %bf.cast29145, 14, !dbg !2452
  br i1 %cmp292, label %cond.true293, label %cond.false295, !dbg !2452

cond.true293:                                     ; preds = %land.lhs.true287
  %call294 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2452
  br label %cond.end301, !dbg !2452

cond.false295:                                    ; preds = %land.lhs.true287
  %bf.load298 = load i32, i32* %mode, align 4, !dbg !2452
  %bf.lshr299 = lshr i32 %bf.load298, 16, !dbg !2452
  %bf.clear300 = and i32 %bf.lshr299, 255, !dbg !2452
  br label %cond.end301, !dbg !2452

cond.end301:                                      ; preds = %cond.false295, %cond.true293
  %cond302 = phi i32 [ %call294, %cond.true293 ], [ %bf.clear300, %cond.false295 ], !dbg !2452
  %20 = load i64*, i64** bitcast (%union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 31) to i64**), align 8, !dbg !2453
  %bf.load304 = load i64, i64* %20, align 8, !dbg !2453
  %bf.cast30646 = and i64 %bf.load304, 65535, !dbg !2453
  %cmp307 = icmp eq i64 %bf.cast30646, 14, !dbg !2453
  br i1 %cmp307, label %cond.true308, label %cond.false310, !dbg !2453

cond.true308:                                     ; preds = %cond.end301
  %.cast47 = bitcast i64* %20 to %union.tree_node*, !dbg !2453
  %call309 = tail call i32 @vector_type_mode(%union.tree_node* %.cast47) #6, !dbg !2453
  br label %cond.end316, !dbg !2453

cond.false310:                                    ; preds = %cond.end301
  %type311 = bitcast i64* %20 to %struct.tree_type*, !dbg !2453
  %mode312 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type311, i64 0, i32 6, !dbg !2453
  %bf.load313 = load i32, i32* %mode312, align 4, !dbg !2453
  %bf.lshr314 = lshr i32 %bf.load313, 16, !dbg !2453
  %bf.clear315 = and i32 %bf.lshr314, 255, !dbg !2453
  br label %cond.end316, !dbg !2453

cond.end316:                                      ; preds = %cond.false310, %cond.true308
  %cond317 = phi i32 [ %call309, %cond.true308 ], [ %bf.clear315, %cond.false310 ], !dbg !2453
  %cmp318 = icmp eq i32 %cond302, %cond317, !dbg !2454
  br i1 %cmp318, label %if.then319, label %if.end352, !dbg !2455

if.then319:                                       ; preds = %cond.end316, %cond.end272, %cond.end240
  %call321 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %type, i32 %call) #6, !dbg !2456
  call void @llvm.dbg.value(metadata %union.tree_node* %call321, metadata !2367, metadata !DIExpression()), !dbg !2457
  %tobool322 = icmp eq %union.tree_node* %call321, null, !dbg !2458
  br i1 %tobool322, label %if.end348, label %if.then323, !dbg !2459

if.then323:                                       ; preds = %if.then319
  %operands326 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.addr.6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2460
  %arrayidx327 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands326, i64 3, !dbg !2460
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx327, align 8, !dbg !2460
  %call328 = tail call %union.tree_node* @strip_float_extensions(%union.tree_node* %21) #8, !dbg !2461
  call void @llvm.dbg.value(metadata %union.tree_node* %call328, metadata !2370, metadata !DIExpression()), !dbg !2462
  %bf.load331 = load i32, i32* %mode, align 4, !dbg !2463
  %bf.clear332 = and i32 %bf.load331, 1023, !dbg !2463
  %type334 = getelementptr inbounds %union.tree_node, %union.tree_node* %call328, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2465
  %22 = bitcast %union.tree_node** %type334 to %struct.tree_type**, !dbg !2465
  %23 = load %struct.tree_type*, %struct.tree_type** %22, align 8, !dbg !2465
  %precision336 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %23, i64 0, i32 6, !dbg !2465
  %bf.load337 = load i32, i32* %precision336, align 4, !dbg !2465
  %bf.clear338 = and i32 %bf.load337, 1023, !dbg !2465
  %cmp339 = icmp ult i32 %bf.clear332, %bf.clear338, !dbg !2466
  br i1 %cmp339, label %cleanup345, label %if.then340, !dbg !2467

if.then340:                                       ; preds = %if.then323
  %call341 = tail call %union.tree_node* @convert_to_real(%union.tree_node* %type, %union.tree_node* %call328) #8, !dbg !2468
  %call342 = tail call %union.tree_node* @fold(%union.tree_node* %call341) #6, !dbg !2468
  %call343 = tail call %union.tree_node* (i32, %union.tree_node*, i32, ...) @build_call_expr_loc(i32 0, %union.tree_node* nonnull %call321, i32 1, %union.tree_node* %call342) #6, !dbg !2468
  br label %cleanup345, !dbg !2469

cleanup345:                                       ; preds = %if.then323, %if.then340
  %cleanup.dest.slot.3 = phi i32 [ 1, %if.then340 ], [ 0, %if.then323 ]
  %retval.8 = phi %union.tree_node* [ %call343, %if.then340 ], [ %retval.7, %if.then323 ]
  %cond3 = icmp eq i32 %cleanup.dest.slot.3, 0
  br i1 %cond3, label %if.end348, label %cleanup349

if.end348:                                        ; preds = %if.then319, %cleanup345
  %retval.9 = phi %union.tree_node* [ %retval.7, %if.then319 ], [ %retval.8, %cleanup345 ]
  br label %cleanup349, !dbg !2470

cleanup349:                                       ; preds = %cleanup345, %if.end348
  %cleanup.dest.slot.4 = phi i32 [ %cleanup.dest.slot.3, %cleanup345 ], [ 0, %if.end348 ]
  %retval.10 = phi %union.tree_node* [ %retval.8, %cleanup345 ], [ %retval.9, %if.end348 ], !dbg !2469
  %cond2 = icmp eq i32 %cleanup.dest.slot.4, 0
  br i1 %cond2, label %if.end352, label %cleanup983.loopexit

if.end352:                                        ; preds = %if.end197, %cleanup349, %land.lhs.true199, %lor.lhs.false275, %cond.end316
  %retval.11 = phi %union.tree_node* [ %retval.7, %cond.end316 ], [ %retval.7, %if.end197 ], [ %retval.7, %lor.lhs.false275 ], [ %retval.7, %land.lhs.true199 ], [ %retval.10, %cleanup349 ]
  %cmp353 = icmp eq %union.tree_node* %2, %type, !dbg !2471
  br i1 %cmp353, label %if.end898, label %land.lhs.true354, !dbg !2472

land.lhs.true354:                                 ; preds = %if.end352
  %bf.load356 = load i64, i64* %0, align 8, !dbg !2473
  %bf.cast35813 = and i64 %bf.load356, 65535, !dbg !2473
  %cmp359 = icmp eq i64 %bf.cast35813, 9, !dbg !2473
  br i1 %cmp359, label %if.then380, label %lor.lhs.false360, !dbg !2473

lor.lhs.false360:                                 ; preds = %land.lhs.true354
  %cmp365 = icmp eq i64 %bf.cast35813, 13, !dbg !2473
  br i1 %cmp365, label %land.lhs.true372, label %lor.lhs.false366, !dbg !2473

lor.lhs.false366:                                 ; preds = %lor.lhs.false360
  %cmp371 = icmp eq i64 %bf.cast35813, 14, !dbg !2473
  br i1 %cmp371, label %land.lhs.true372, label %if.end898, !dbg !2473

land.lhs.true372:                                 ; preds = %lor.lhs.false366, %lor.lhs.false360
  %24 = load i64*, i64** %1, align 8, !dbg !2473
  %bf.load376 = load i64, i64* %24, align 8, !dbg !2473
  %bf.cast37816 = and i64 %bf.load376, 65535, !dbg !2473
  %cmp379 = icmp eq i64 %bf.cast37816, 9, !dbg !2473
  br i1 %cmp379, label %if.then380, label %if.end898, !dbg !2474

if.then380:                                       ; preds = %land.lhs.true372, %land.lhs.true354
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.addr.6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2475
  %bf.load382 = load i64, i64* %25, align 8, !dbg !2475
  %26 = trunc i64 %bf.load382 to i16, !dbg !2475
  switch i16 %26, label %if.end898 [
    i16 82, label %sw.bb385
    i16 79, label %sw.bb385
    i16 63, label %sw.bb411
    i16 64, label %sw.bb411
    i16 65, label %sw.bb411
    i16 75, label %sw.bb411
  ], !dbg !2476

sw.bb385:                                         ; preds = %if.then380, %if.then380
  %27 = load i32, i32* @flag_rounding_math, align 4, !dbg !2477
  %tobool386 = icmp eq i32 %27, 0, !dbg !2477
  br i1 %tobool386, label %land.lhs.true387, label %if.end898, !dbg !2479

land.lhs.true387:                                 ; preds = %sw.bb385
  %bf.load390 = load i32, i32* %mode, align 4, !dbg !2480
  %bf.clear391 = and i32 %bf.load390, 1023, !dbg !2480
  %type393 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.addr.6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2481
  %28 = bitcast %union.tree_node** %type393 to %struct.tree_type**, !dbg !2481
  %29 = load %struct.tree_type*, %struct.tree_type** %28, align 8, !dbg !2481
  %precision395 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %29, i64 0, i32 6, !dbg !2481
  %bf.load396 = load i32, i32* %precision395, align 4, !dbg !2481
  %bf.clear397 = and i32 %bf.load396, 1023, !dbg !2481
  %cmp398 = icmp ult i32 %bf.clear391, %bf.clear397, !dbg !2482
  br i1 %cmp398, label %if.then399, label %if.end898, !dbg !2483

if.then399:                                       ; preds = %land.lhs.true387
  %expr.addr.6.lcssa = phi %union.tree_node* [ %expr.addr.6, %land.lhs.true387 ]
  %bf.load382.lcssa = phi i64 [ %bf.load382, %land.lhs.true387 ], !dbg !2475
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.6.lcssa, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.6.lcssa, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.6.lcssa, metadata !2352, metadata !DIExpression()), !dbg !2385
  %30 = trunc i64 %bf.load382.lcssa to i32, !dbg !2484
  %bf.cast403 = and i32 %30, 65535, !dbg !2484
  %operands405 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.addr.6.lcssa, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2484
  %31 = load %union.tree_node*, %union.tree_node** %operands405, align 8, !dbg !2484
  %call407 = tail call %union.tree_node* @convert_to_real(%union.tree_node* %type, %union.tree_node* %31) #8, !dbg !2484
  %call408 = tail call %union.tree_node* @fold(%union.tree_node* %call407) #6, !dbg !2484
  %call409 = tail call %union.tree_node* @build1_stat(i32 %bf.cast403, %union.tree_node* %type, %union.tree_node* %call408) #6, !dbg !2484
  ret %union.tree_node* %call409, !dbg !2485

sw.bb411:                                         ; preds = %if.then380, %if.then380, %if.then380, %if.then380
  %operands414 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.addr.6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2486
  %32 = load %union.tree_node*, %union.tree_node** %operands414, align 8, !dbg !2486
  %call416 = tail call %union.tree_node* @strip_float_extensions(%union.tree_node* %32) #8, !dbg !2487
  call void @llvm.dbg.value(metadata %union.tree_node* %call416, metadata !2373, metadata !DIExpression()), !dbg !2488
  %arrayidx419 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands414, i64 1, !dbg !2489
  %33 = load %union.tree_node*, %union.tree_node** %arrayidx419, align 8, !dbg !2489
  %call420 = tail call %union.tree_node* @strip_float_extensions(%union.tree_node* %33) #8, !dbg !2490
  call void @llvm.dbg.value(metadata %union.tree_node* %call420, metadata !2377, metadata !DIExpression()), !dbg !2488
  %type422 = getelementptr inbounds %union.tree_node, %union.tree_node* %call416, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2491
  %34 = bitcast %union.tree_node** %type422 to i64**, !dbg !2491
  %35 = load i64*, i64** %34, align 8, !dbg !2491
  %bf.load424 = load i64, i64* %35, align 8, !dbg !2491
  %bf.cast42617 = and i64 %bf.load424, 65535, !dbg !2491
  %cmp427 = icmp eq i64 %bf.cast42617, 9, !dbg !2491
  br i1 %cmp427, label %land.lhs.true454, label %lor.lhs.false428, !dbg !2491

lor.lhs.false428:                                 ; preds = %sw.bb411
  %cmp435 = icmp eq i64 %bf.cast42617, 13, !dbg !2491
  br i1 %cmp435, label %land.lhs.true444, label %lor.lhs.false436, !dbg !2491

lor.lhs.false436:                                 ; preds = %lor.lhs.false428
  %cmp443 = icmp eq i64 %bf.cast42617, 14, !dbg !2491
  br i1 %cmp443, label %land.lhs.true444, label %if.end891, !dbg !2491

land.lhs.true444:                                 ; preds = %lor.lhs.false436, %lor.lhs.false428
  %type448 = getelementptr inbounds i64, i64* %35, i64 2, !dbg !2491
  %36 = bitcast i64* %type448 to i64**, !dbg !2491
  %37 = load i64*, i64** %36, align 8, !dbg !2491
  %bf.load450 = load i64, i64* %37, align 8, !dbg !2491
  %bf.cast45220 = and i64 %bf.load450, 65535, !dbg !2491
  %cmp453 = icmp eq i64 %bf.cast45220, 9, !dbg !2491
  br i1 %cmp453, label %land.lhs.true454, label %if.end891, !dbg !2492

land.lhs.true454:                                 ; preds = %land.lhs.true444, %sw.bb411
  %type456 = getelementptr inbounds %union.tree_node, %union.tree_node* %call420, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2493
  %38 = bitcast %union.tree_node** %type456 to i64**, !dbg !2493
  %39 = load i64*, i64** %38, align 8, !dbg !2493
  %bf.load458 = load i64, i64* %39, align 8, !dbg !2493
  %bf.cast46021 = and i64 %bf.load458, 65535, !dbg !2493
  %cmp461 = icmp eq i64 %bf.cast46021, 9, !dbg !2493
  br i1 %cmp461, label %land.lhs.true488, label %lor.lhs.false462, !dbg !2493

lor.lhs.false462:                                 ; preds = %land.lhs.true454
  %cmp469 = icmp eq i64 %bf.cast46021, 13, !dbg !2493
  br i1 %cmp469, label %land.lhs.true478, label %lor.lhs.false470, !dbg !2493

lor.lhs.false470:                                 ; preds = %lor.lhs.false462
  %cmp477 = icmp eq i64 %bf.cast46021, 14, !dbg !2493
  br i1 %cmp477, label %land.lhs.true478, label %if.end891, !dbg !2493

land.lhs.true478:                                 ; preds = %lor.lhs.false470, %lor.lhs.false462
  %type482 = getelementptr inbounds i64, i64* %39, i64 2, !dbg !2493
  %40 = bitcast i64* %type482 to i64**, !dbg !2493
  %41 = load i64*, i64** %40, align 8, !dbg !2493
  %bf.load484 = load i64, i64* %41, align 8, !dbg !2493
  %bf.cast48624 = and i64 %bf.load484, 65535, !dbg !2493
  %cmp487 = icmp eq i64 %bf.cast48624, 9, !dbg !2493
  br i1 %cmp487, label %land.lhs.true488, label %if.end891, !dbg !2494

land.lhs.true488:                                 ; preds = %land.lhs.true478, %land.lhs.true454
  %42 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2495
  %bf.load490 = load i64, i64* %42, align 8, !dbg !2495
  %bf.cast49225 = and i64 %bf.load490, 65535, !dbg !2495
  %cmp493 = icmp eq i64 %bf.cast49225, 9, !dbg !2495
  br i1 %cmp493, label %land.rhs, label %land.end, !dbg !2495

land.rhs:                                         ; preds = %land.lhs.true488
  br i1 false, label %cond.true499, label %cond.false501, !dbg !2495

cond.true499:                                     ; preds = %land.rhs
  br label %cond.end507, !dbg !2495

cond.false501:                                    ; preds = %land.rhs
  %type502 = bitcast %union.tree_node* %2 to %struct.tree_type*, !dbg !2495
  %mode503 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type502, i64 0, i32 6, !dbg !2495
  %bf.load504 = load i32, i32* %mode503, align 4, !dbg !2495
  %bf.lshr505 = lshr i32 %bf.load504, 16, !dbg !2495
  %bf.clear506 = and i32 %bf.lshr505, 255, !dbg !2495
  br label %cond.end507, !dbg !2495

cond.end507:                                      ; preds = %cond.false501, %cond.true499
  %cond508 = phi i32 [ undef, %cond.true499 ], [ %bf.clear506, %cond.false501 ], !dbg !2495
  %idxprom = zext i32 %cond508 to i64, !dbg !2495
  %arrayidx509 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !2495
  %43 = load i8, i8* %arrayidx509, align 1, !dbg !2495
  %cmp510 = icmp eq i8 %43, 9, !dbg !2495
  br label %land.end

land.end:                                         ; preds = %cond.end507, %land.lhs.true488
  %44 = phi i1 [ false, %land.lhs.true488 ], [ %cmp510, %cond.end507 ], !dbg !2496
  %bf.load513 = load i64, i64* %0, align 8, !dbg !2497
  %bf.cast51526 = and i64 %bf.load513, 65535, !dbg !2497
  %cmp516 = icmp eq i64 %bf.cast51526, 9, !dbg !2497
  br i1 %cmp516, label %land.rhs518, label %land.end540, !dbg !2497

land.rhs518:                                      ; preds = %land.end
  br i1 false, label %cond.true525, label %cond.false527, !dbg !2497

cond.true525:                                     ; preds = %land.rhs518
  br label %cond.end533, !dbg !2497

cond.false527:                                    ; preds = %land.rhs518
  %bf.load530 = load i32, i32* %mode, align 4, !dbg !2497
  %bf.lshr531 = lshr i32 %bf.load530, 16, !dbg !2497
  %bf.clear532 = and i32 %bf.lshr531, 255, !dbg !2497
  br label %cond.end533, !dbg !2497

cond.end533:                                      ; preds = %cond.false527, %cond.true525
  %cond534 = phi i32 [ undef, %cond.true525 ], [ %bf.clear532, %cond.false527 ], !dbg !2497
  %idxprom535 = zext i32 %cond534 to i64, !dbg !2497
  %arrayidx536 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom535, !dbg !2497
  %45 = load i8, i8* %arrayidx536, align 1, !dbg !2497
  %cmp538 = icmp eq i8 %45, 9, !dbg !2497
  br label %land.end540

land.end540:                                      ; preds = %cond.end533, %land.end
  %46 = phi i1 [ false, %land.end ], [ %cmp538, %cond.end533 ], !dbg !2496
  %47 = xor i1 %44, %46, !dbg !2498
  br i1 %47, label %if.end891, label %if.then544, !dbg !2499

if.then544:                                       ; preds = %land.end540
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2378, metadata !DIExpression()), !dbg !2500
  %cmp552 = icmp eq i64 %bf.cast42617, 14, !dbg !2501
  br i1 %cmp552, label %cond.true554, label %cond.false558, !dbg !2501

cond.true554:                                     ; preds = %if.then544
  %.cast = bitcast i64* %35 to %union.tree_node*, !dbg !2501
  %call557 = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !2501
  br label %cond.end566, !dbg !2501

cond.false558:                                    ; preds = %if.then544
  %type561 = bitcast i64* %35 to %struct.tree_type*, !dbg !2501
  %mode562 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type561, i64 0, i32 6, !dbg !2501
  %bf.load563 = load i32, i32* %mode562, align 4, !dbg !2501
  %bf.lshr564 = lshr i32 %bf.load563, 16, !dbg !2501
  %bf.clear565 = and i32 %bf.lshr564, 255, !dbg !2501
  br label %cond.end566, !dbg !2501

cond.end566:                                      ; preds = %cond.false558, %cond.true554
  %cond567 = phi i32 [ %call557, %cond.true554 ], [ %bf.clear565, %cond.false558 ], !dbg !2501
  %cmp568 = icmp eq i32 %cond567, 42, !dbg !2503
  br i1 %cmp568, label %if.then614, label %lor.lhs.false570, !dbg !2504

lor.lhs.false570:                                 ; preds = %cond.end566
  %48 = load i64*, i64** %38, align 8, !dbg !2505
  %bf.load574 = load i64, i64* %48, align 8, !dbg !2505
  %bf.cast57628 = and i64 %bf.load574, 65535, !dbg !2505
  %cmp577 = icmp eq i64 %bf.cast57628, 14, !dbg !2505
  br i1 %cmp577, label %cond.true579, label %cond.false583, !dbg !2505

cond.true579:                                     ; preds = %lor.lhs.false570
  %.cast29 = bitcast i64* %48 to %union.tree_node*, !dbg !2505
  %call582 = tail call i32 @vector_type_mode(%union.tree_node* %.cast29) #6, !dbg !2505
  br label %cond.end591, !dbg !2505

cond.false583:                                    ; preds = %lor.lhs.false570
  %type586 = bitcast i64* %48 to %struct.tree_type*, !dbg !2505
  %mode587 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type586, i64 0, i32 6, !dbg !2505
  %bf.load588 = load i32, i32* %mode587, align 4, !dbg !2505
  %bf.lshr589 = lshr i32 %bf.load588, 16, !dbg !2505
  %bf.clear590 = and i32 %bf.lshr589, 255, !dbg !2505
  br label %cond.end591, !dbg !2505

cond.end591:                                      ; preds = %cond.false583, %cond.true579
  %cond592 = phi i32 [ %call582, %cond.true579 ], [ %bf.clear590, %cond.false583 ], !dbg !2505
  %cmp593 = icmp eq i32 %cond592, 42, !dbg !2506
  br i1 %cmp593, label %if.then614, label %lor.lhs.false595, !dbg !2507

lor.lhs.false595:                                 ; preds = %cond.end591
  %bf.load597 = load i64, i64* %0, align 8, !dbg !2508
  %bf.cast59930 = and i64 %bf.load597, 65535, !dbg !2508
  %cmp600 = icmp eq i64 %bf.cast59930, 14, !dbg !2508
  br i1 %cmp600, label %cond.true602, label %cond.false604, !dbg !2508

cond.true602:                                     ; preds = %lor.lhs.false595
  %call603 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2508
  br label %cond.end610, !dbg !2508

cond.false604:                                    ; preds = %lor.lhs.false595
  %bf.load607 = load i32, i32* %mode, align 4, !dbg !2508
  %bf.lshr608 = lshr i32 %bf.load607, 16, !dbg !2508
  %bf.clear609 = and i32 %bf.lshr608, 255, !dbg !2508
  br label %cond.end610, !dbg !2508

cond.end610:                                      ; preds = %cond.false604, %cond.true602
  %cond611 = phi i32 [ %call603, %cond.true602 ], [ %bf.clear609, %cond.false604 ], !dbg !2508
  %cmp612 = icmp eq i32 %cond611, 42, !dbg !2509
  br i1 %cmp612, label %if.then614, label %if.end615, !dbg !2510

if.then614:                                       ; preds = %cond.end610, %cond.end591, %cond.end566
  %49 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 49), align 8, !dbg !2511
  call void @llvm.dbg.value(metadata %union.tree_node* %49, metadata !2378, metadata !DIExpression()), !dbg !2500
  br label %if.end615, !dbg !2512

if.end615:                                        ; preds = %if.then614, %cond.end610
  %newtype545.0 = phi %union.tree_node* [ %49, %if.then614 ], [ %type, %cond.end610 ], !dbg !2500
  call void @llvm.dbg.value(metadata %union.tree_node* %newtype545.0, metadata !2378, metadata !DIExpression()), !dbg !2500
  %50 = load i64*, i64** %34, align 8, !dbg !2513
  %bf.load619 = load i64, i64* %50, align 8, !dbg !2513
  %bf.cast62131 = and i64 %bf.load619, 65535, !dbg !2513
  %cmp622 = icmp eq i64 %bf.cast62131, 14, !dbg !2513
  br i1 %cmp622, label %cond.true624, label %cond.false628, !dbg !2513

cond.true624:                                     ; preds = %if.end615
  %.cast32 = bitcast i64* %50 to %union.tree_node*, !dbg !2513
  %call627 = tail call i32 @vector_type_mode(%union.tree_node* %.cast32) #6, !dbg !2513
  br label %cond.end636, !dbg !2513

cond.false628:                                    ; preds = %if.end615
  %type631 = bitcast i64* %50 to %struct.tree_type*, !dbg !2513
  %mode632 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type631, i64 0, i32 6, !dbg !2513
  %bf.load633 = load i32, i32* %mode632, align 4, !dbg !2513
  %bf.lshr634 = lshr i32 %bf.load633, 16, !dbg !2513
  %bf.clear635 = and i32 %bf.lshr634, 255, !dbg !2513
  br label %cond.end636, !dbg !2513

cond.end636:                                      ; preds = %cond.false628, %cond.true624
  %cond637 = phi i32 [ %call627, %cond.true624 ], [ %bf.clear635, %cond.false628 ], !dbg !2513
  %cmp638 = icmp eq i32 %cond637, 43, !dbg !2515
  br i1 %cmp638, label %if.then684, label %lor.lhs.false640, !dbg !2516

lor.lhs.false640:                                 ; preds = %cond.end636
  %51 = load i64*, i64** %38, align 8, !dbg !2517
  %bf.load644 = load i64, i64* %51, align 8, !dbg !2517
  %bf.cast64633 = and i64 %bf.load644, 65535, !dbg !2517
  %cmp647 = icmp eq i64 %bf.cast64633, 14, !dbg !2517
  br i1 %cmp647, label %cond.true649, label %cond.false653, !dbg !2517

cond.true649:                                     ; preds = %lor.lhs.false640
  %.cast34 = bitcast i64* %51 to %union.tree_node*, !dbg !2517
  %call652 = tail call i32 @vector_type_mode(%union.tree_node* %.cast34) #6, !dbg !2517
  br label %cond.end661, !dbg !2517

cond.false653:                                    ; preds = %lor.lhs.false640
  %type656 = bitcast i64* %51 to %struct.tree_type*, !dbg !2517
  %mode657 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type656, i64 0, i32 6, !dbg !2517
  %bf.load658 = load i32, i32* %mode657, align 4, !dbg !2517
  %bf.lshr659 = lshr i32 %bf.load658, 16, !dbg !2517
  %bf.clear660 = and i32 %bf.lshr659, 255, !dbg !2517
  br label %cond.end661, !dbg !2517

cond.end661:                                      ; preds = %cond.false653, %cond.true649
  %cond662 = phi i32 [ %call652, %cond.true649 ], [ %bf.clear660, %cond.false653 ], !dbg !2517
  %cmp663 = icmp eq i32 %cond662, 43, !dbg !2518
  br i1 %cmp663, label %if.then684, label %lor.lhs.false665, !dbg !2519

lor.lhs.false665:                                 ; preds = %cond.end661
  %bf.load667 = load i64, i64* %0, align 8, !dbg !2520
  %bf.cast66935 = and i64 %bf.load667, 65535, !dbg !2520
  %cmp670 = icmp eq i64 %bf.cast66935, 14, !dbg !2520
  br i1 %cmp670, label %cond.true672, label %cond.false674, !dbg !2520

cond.true672:                                     ; preds = %lor.lhs.false665
  %call673 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2520
  br label %cond.end680, !dbg !2520

cond.false674:                                    ; preds = %lor.lhs.false665
  %bf.load677 = load i32, i32* %mode, align 4, !dbg !2520
  %bf.lshr678 = lshr i32 %bf.load677, 16, !dbg !2520
  %bf.clear679 = and i32 %bf.lshr678, 255, !dbg !2520
  br label %cond.end680, !dbg !2520

cond.end680:                                      ; preds = %cond.false674, %cond.true672
  %cond681 = phi i32 [ %call673, %cond.true672 ], [ %bf.clear679, %cond.false674 ], !dbg !2520
  %cmp682 = icmp eq i32 %cond681, 43, !dbg !2521
  br i1 %cmp682, label %if.then684, label %if.end685, !dbg !2522

if.then684:                                       ; preds = %cond.end680, %cond.end661, %cond.end636
  %52 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 50), align 16, !dbg !2523
  call void @llvm.dbg.value(metadata %union.tree_node* %52, metadata !2378, metadata !DIExpression()), !dbg !2500
  br label %if.end685, !dbg !2524

if.end685:                                        ; preds = %if.then684, %cond.end680
  %newtype545.1 = phi %union.tree_node* [ %52, %if.then684 ], [ %newtype545.0, %cond.end680 ], !dbg !2500
  call void @llvm.dbg.value(metadata %union.tree_node* %newtype545.1, metadata !2378, metadata !DIExpression()), !dbg !2500
  %53 = load i64*, i64** %34, align 8, !dbg !2525
  %bf.load689 = load i64, i64* %53, align 8, !dbg !2525
  %bf.cast69136 = and i64 %bf.load689, 65535, !dbg !2525
  %cmp692 = icmp eq i64 %bf.cast69136, 14, !dbg !2525
  br i1 %cmp692, label %cond.true694, label %cond.false698, !dbg !2525

cond.true694:                                     ; preds = %if.end685
  %.cast37 = bitcast i64* %53 to %union.tree_node*, !dbg !2525
  %call697 = tail call i32 @vector_type_mode(%union.tree_node* %.cast37) #6, !dbg !2525
  br label %cond.end706, !dbg !2525

cond.false698:                                    ; preds = %if.end685
  %type701 = bitcast i64* %53 to %struct.tree_type*, !dbg !2525
  %mode702 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type701, i64 0, i32 6, !dbg !2525
  %bf.load703 = load i32, i32* %mode702, align 4, !dbg !2525
  %bf.lshr704 = lshr i32 %bf.load703, 16, !dbg !2525
  %bf.clear705 = and i32 %bf.lshr704, 255, !dbg !2525
  br label %cond.end706, !dbg !2525

cond.end706:                                      ; preds = %cond.false698, %cond.true694
  %cond707 = phi i32 [ %call697, %cond.true694 ], [ %bf.clear705, %cond.false698 ], !dbg !2525
  %cmp708 = icmp eq i32 %cond707, 44, !dbg !2527
  br i1 %cmp708, label %if.then754, label %lor.lhs.false710, !dbg !2528

lor.lhs.false710:                                 ; preds = %cond.end706
  %54 = load i64*, i64** %38, align 8, !dbg !2529
  %bf.load714 = load i64, i64* %54, align 8, !dbg !2529
  %bf.cast71638 = and i64 %bf.load714, 65535, !dbg !2529
  %cmp717 = icmp eq i64 %bf.cast71638, 14, !dbg !2529
  br i1 %cmp717, label %cond.true719, label %cond.false723, !dbg !2529

cond.true719:                                     ; preds = %lor.lhs.false710
  %.cast39 = bitcast i64* %54 to %union.tree_node*, !dbg !2529
  %call722 = tail call i32 @vector_type_mode(%union.tree_node* %.cast39) #6, !dbg !2529
  br label %cond.end731, !dbg !2529

cond.false723:                                    ; preds = %lor.lhs.false710
  %type726 = bitcast i64* %54 to %struct.tree_type*, !dbg !2529
  %mode727 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type726, i64 0, i32 6, !dbg !2529
  %bf.load728 = load i32, i32* %mode727, align 4, !dbg !2529
  %bf.lshr729 = lshr i32 %bf.load728, 16, !dbg !2529
  %bf.clear730 = and i32 %bf.lshr729, 255, !dbg !2529
  br label %cond.end731, !dbg !2529

cond.end731:                                      ; preds = %cond.false723, %cond.true719
  %cond732 = phi i32 [ %call722, %cond.true719 ], [ %bf.clear730, %cond.false723 ], !dbg !2529
  %cmp733 = icmp eq i32 %cond732, 44, !dbg !2530
  br i1 %cmp733, label %if.then754, label %lor.lhs.false735, !dbg !2531

lor.lhs.false735:                                 ; preds = %cond.end731
  %bf.load737 = load i64, i64* %0, align 8, !dbg !2532
  %bf.cast73940 = and i64 %bf.load737, 65535, !dbg !2532
  %cmp740 = icmp eq i64 %bf.cast73940, 14, !dbg !2532
  br i1 %cmp740, label %cond.true742, label %cond.false744, !dbg !2532

cond.true742:                                     ; preds = %lor.lhs.false735
  %call743 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2532
  br label %cond.end750, !dbg !2532

cond.false744:                                    ; preds = %lor.lhs.false735
  %bf.load747 = load i32, i32* %mode, align 4, !dbg !2532
  %bf.lshr748 = lshr i32 %bf.load747, 16, !dbg !2532
  %bf.clear749 = and i32 %bf.lshr748, 255, !dbg !2532
  br label %cond.end750, !dbg !2532

cond.end750:                                      ; preds = %cond.false744, %cond.true742
  %cond751 = phi i32 [ %call743, %cond.true742 ], [ %bf.clear749, %cond.false744 ], !dbg !2532
  %cmp752 = icmp eq i32 %cond751, 44, !dbg !2533
  br i1 %cmp752, label %if.then754, label %cond.end750.if.end755_crit_edge, !dbg !2534

cond.end750.if.end755_crit_edge:                  ; preds = %cond.end750
  %.pre = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 51), align 8, !dbg !2535
  br label %if.end755, !dbg !2534

if.then754:                                       ; preds = %cond.end750, %cond.end731, %cond.end706
  %55 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 51), align 8, !dbg !2537
  call void @llvm.dbg.value(metadata %union.tree_node* %55, metadata !2378, metadata !DIExpression()), !dbg !2500
  br label %if.end755, !dbg !2538

if.end755:                                        ; preds = %cond.end750.if.end755_crit_edge, %if.then754
  %56 = phi %union.tree_node* [ %55, %if.then754 ], [ %.pre, %cond.end750.if.end755_crit_edge ], !dbg !2535
  %newtype545.2 = phi %union.tree_node* [ %55, %if.then754 ], [ %newtype545.1, %cond.end750.if.end755_crit_edge ], !dbg !2500
  call void @llvm.dbg.value(metadata %union.tree_node* %newtype545.2, metadata !2378, metadata !DIExpression()), !dbg !2500
  %57 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 49), align 8, !dbg !2539
  %cmp756 = icmp eq %union.tree_node* %newtype545.2, %57, !dbg !2540
  %58 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 50), align 16, !dbg !2541
  %cmp759 = icmp eq %union.tree_node* %newtype545.2, %58, !dbg !2542
  %or.cond = or i1 %cmp756, %cmp759, !dbg !2543
  %cmp762 = icmp eq %union.tree_node* %newtype545.2, %56, !dbg !2544
  %or.cond7 = or i1 %or.cond, %cmp762, !dbg !2543
  br i1 %or.cond7, label %if.then764, label %if.end778, !dbg !2543

if.then764:                                       ; preds = %if.end755
  %bf.load766 = load i64, i64* %25, align 8, !dbg !2545
  %59 = trunc i64 %bf.load766 to i32, !dbg !2545
  %bf.cast768 = and i32 %59, 65535, !dbg !2545
  %call769 = tail call %union.tree_node* @convert_to_real(%union.tree_node* %newtype545.2, %union.tree_node* %call416) #8, !dbg !2545
  %call770 = tail call %union.tree_node* @fold(%union.tree_node* %call769) #6, !dbg !2545
  %call771 = tail call %union.tree_node* @convert_to_real(%union.tree_node* %newtype545.2, %union.tree_node* %call420) #8, !dbg !2545
  %call772 = tail call %union.tree_node* @fold(%union.tree_node* %call771) #6, !dbg !2545
  %call773 = tail call %union.tree_node* @build2_stat(i32 %bf.cast768, %union.tree_node* %newtype545.2, %union.tree_node* %call770, %union.tree_node* %call772) #6, !dbg !2545
  call void @llvm.dbg.value(metadata %union.tree_node* %call773, metadata !2352, metadata !DIExpression()), !dbg !2385
  %cmp774 = icmp eq %union.tree_node* %newtype545.2, %type, !dbg !2547
  %.8 = select i1 %cmp774, i32 1, i32 3, !dbg !2549
  %call773.retval.11 = select i1 %cmp774, %union.tree_node* %call773, %union.tree_node* %retval.11, !dbg !2549
  br label %cleanup888, !dbg !2549

if.end778:                                        ; preds = %if.end755
  %60 = bitcast %union.tree_node** %type422 to %struct.tree_type**, !dbg !2550
  %61 = load %struct.tree_type*, %struct.tree_type** %60, align 8, !dbg !2550
  %precision782 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %61, i64 0, i32 6, !dbg !2550
  %bf.load783 = load i32, i32* %precision782, align 4, !dbg !2550
  %bf.clear784 = and i32 %bf.load783, 1023, !dbg !2550
  %type785 = bitcast %union.tree_node* %newtype545.2 to %struct.tree_type*, !dbg !2552
  %precision786 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type785, i64 0, i32 6, !dbg !2552
  %bf.load787 = load i32, i32* %precision786, align 4, !dbg !2552
  %bf.clear788 = and i32 %bf.load787, 1023, !dbg !2552
  %cmp789 = icmp ugt i32 %bf.clear784, %bf.clear788, !dbg !2553
  br i1 %cmp789, label %if.then791, label %if.end794, !dbg !2554

if.then791:                                       ; preds = %if.end778
  %62 = bitcast %struct.tree_type* %61 to %union.tree_node*, !dbg !2554
  call void @llvm.dbg.value(metadata %union.tree_node* %62, metadata !2378, metadata !DIExpression()), !dbg !2500
  br label %if.end794, !dbg !2555

if.end794:                                        ; preds = %if.then791, %if.end778
  %bf.clear804.pre-phi = phi i32 [ %bf.clear784, %if.then791 ], [ %bf.clear788, %if.end778 ], !dbg !2556
  %bf.load803 = phi i32 [ %bf.load783, %if.then791 ], [ %bf.load787, %if.end778 ], !dbg !2556
  %newtype545.3 = phi %union.tree_node* [ %62, %if.then791 ], [ %newtype545.2, %if.end778 ], !dbg !2500
  call void @llvm.dbg.value(metadata %union.tree_node* %newtype545.3, metadata !2378, metadata !DIExpression()), !dbg !2500
  %63 = bitcast %union.tree_node** %type456 to %struct.tree_type**, !dbg !2558
  %64 = load %struct.tree_type*, %struct.tree_type** %63, align 8, !dbg !2558
  %precision798 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %64, i64 0, i32 6, !dbg !2558
  %bf.load799 = load i32, i32* %precision798, align 4, !dbg !2558
  %bf.clear800 = and i32 %bf.load799, 1023, !dbg !2558
  %cmp805 = icmp ugt i32 %bf.clear800, %bf.clear804.pre-phi, !dbg !2559
  br i1 %cmp805, label %if.then807, label %if.end810, !dbg !2560

if.then807:                                       ; preds = %if.end794
  %65 = bitcast %struct.tree_type* %64 to %union.tree_node*, !dbg !2560
  call void @llvm.dbg.value(metadata %union.tree_node* %65, metadata !2378, metadata !DIExpression()), !dbg !2500
  br label %if.end810, !dbg !2561

if.end810:                                        ; preds = %if.then807, %if.end794
  %bf.clear814.pre-phi = phi i32 [ %bf.clear800, %if.then807 ], [ %bf.clear804.pre-phi, %if.end794 ], !dbg !2562
  %bf.load826 = phi i32 [ %bf.load799, %if.then807 ], [ %bf.load803, %if.end794 ], !dbg !2562
  %newtype545.4 = phi %union.tree_node* [ %65, %if.then807 ], [ %newtype545.3, %if.end794 ], !dbg !2500
  call void @llvm.dbg.value(metadata %union.tree_node* %newtype545.4, metadata !2378, metadata !DIExpression()), !dbg !2500
  %type815 = bitcast %union.tree_node* %2 to %struct.tree_type*, !dbg !2564
  %precision816 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type815, i64 0, i32 6, !dbg !2564
  %bf.load817 = load i32, i32* %precision816, align 4, !dbg !2564
  %bf.clear818 = and i32 %bf.load817, 1023, !dbg !2564
  %cmp819 = icmp ult i32 %bf.clear814.pre-phi, %bf.clear818, !dbg !2565
  br i1 %cmp819, label %land.lhs.true821, label %if.end887, !dbg !2566

land.lhs.true821:                                 ; preds = %if.end810
  %66 = load i32, i32* @flag_unsafe_math_optimizations, align 4, !dbg !2567
  %tobool822 = icmp eq i32 %66, 0, !dbg !2567
  br i1 %tobool822, label %lor.lhs.false823, label %if.then873, !dbg !2568

lor.lhs.false823:                                 ; preds = %land.lhs.true821
  %bf.load830 = load i32, i32* %mode, align 4, !dbg !2569
  %67 = xor i32 %bf.load826, %bf.load830, !dbg !2570
  %68 = and i32 %67, 1023, !dbg !2570
  %cmp832 = icmp eq i32 %68, 0, !dbg !2570
  br i1 %cmp832, label %land.lhs.true834, label %if.end887, !dbg !2571

land.lhs.true834:                                 ; preds = %lor.lhs.false823
  %bf.load836 = load i64, i64* %42, align 8, !dbg !2572
  %bf.cast83841 = and i64 %bf.load836, 65535, !dbg !2572
  %cmp839 = icmp eq i64 %bf.cast83841, 14, !dbg !2572
  br i1 %cmp839, label %cond.true841, label %cond.false843, !dbg !2572

cond.true841:                                     ; preds = %land.lhs.true834
  %call842 = tail call i32 @vector_type_mode(%union.tree_node* %2) #6, !dbg !2572
  br label %cond.end849, !dbg !2572

cond.false843:                                    ; preds = %land.lhs.true834
  %bf.lshr847 = lshr i32 %bf.load817, 16, !dbg !2572
  %bf.clear848 = and i32 %bf.lshr847, 255, !dbg !2572
  br label %cond.end849, !dbg !2572

cond.end849:                                      ; preds = %cond.false843, %cond.true841
  %cond850 = phi i32 [ %call842, %cond.true841 ], [ %bf.clear848, %cond.false843 ], !dbg !2572
  %bf.load852 = load i64, i64* %0, align 8, !dbg !2573
  %bf.cast85442 = and i64 %bf.load852, 65535, !dbg !2573
  %cmp855 = icmp eq i64 %bf.cast85442, 14, !dbg !2573
  br i1 %cmp855, label %cond.true857, label %cond.false859, !dbg !2573

cond.true857:                                     ; preds = %cond.end849
  %call858 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2573
  br label %cond.end865, !dbg !2573

cond.false859:                                    ; preds = %cond.end849
  %bf.load862 = load i32, i32* %mode, align 4, !dbg !2573
  %bf.lshr863 = lshr i32 %bf.load862, 16, !dbg !2573
  %bf.clear864 = and i32 %bf.lshr863, 255, !dbg !2573
  br label %cond.end865, !dbg !2573

cond.end865:                                      ; preds = %cond.false859, %cond.true857
  %cond866 = phi i32 [ %call858, %cond.true857 ], [ %bf.clear864, %cond.false859 ], !dbg !2573
  %call867 = tail call zeroext i8 @real_can_shorten_arithmetic(i32 %cond850, i32 %cond866) #6, !dbg !2574
  %tobool869 = icmp eq i8 %call867, 0, !dbg !2574
  br i1 %tobool869, label %if.end887, label %land.lhs.true870, !dbg !2575

land.lhs.true870:                                 ; preds = %cond.end865
  %call871 = tail call %union.tree_node* @excess_precision_type(%union.tree_node* %newtype545.4) #6, !dbg !2576
  %tobool872 = icmp eq %union.tree_node* %call871, null, !dbg !2576
  br i1 %tobool872, label %if.then873, label %if.end887, !dbg !2577

if.then873:                                       ; preds = %land.lhs.true870, %land.lhs.true821
  %bf.load875 = load i64, i64* %25, align 8, !dbg !2578
  %69 = trunc i64 %bf.load875 to i32, !dbg !2578
  %bf.cast877 = and i32 %69, 65535, !dbg !2578
  %call878 = tail call %union.tree_node* @convert_to_real(%union.tree_node* %newtype545.4, %union.tree_node* %call416) #8, !dbg !2578
  %call879 = tail call %union.tree_node* @fold(%union.tree_node* %call878) #6, !dbg !2578
  %call880 = tail call %union.tree_node* @convert_to_real(%union.tree_node* %newtype545.4, %union.tree_node* %call420) #8, !dbg !2578
  %call881 = tail call %union.tree_node* @fold(%union.tree_node* %call880) #6, !dbg !2578
  %call882 = tail call %union.tree_node* @build2_stat(i32 %bf.cast877, %union.tree_node* %newtype545.4, %union.tree_node* %call879, %union.tree_node* %call881) #6, !dbg !2578
  call void @llvm.dbg.value(metadata %union.tree_node* %call882, metadata !2352, metadata !DIExpression()), !dbg !2385
  %cmp883 = icmp eq %union.tree_node* %newtype545.4, %type, !dbg !2580
  br i1 %cmp883, label %cleanup888, label %if.end887, !dbg !2582

if.end887:                                        ; preds = %land.lhs.true870, %cond.end865, %if.then873, %lor.lhs.false823, %if.end810
  %expr.addr.7 = phi %union.tree_node* [ %expr.addr.6, %land.lhs.true870 ], [ %expr.addr.6, %cond.end865 ], [ %expr.addr.6, %lor.lhs.false823 ], [ %expr.addr.6, %if.end810 ], [ %call882, %if.then873 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.7, metadata !2352, metadata !DIExpression()), !dbg !2385
  br label %cleanup888, !dbg !2583

cleanup888:                                       ; preds = %if.then873, %if.then764, %if.end887
  %cleanup.dest.slot.5 = phi i32 [ 0, %if.end887 ], [ %.8, %if.then764 ], [ 1, %if.then873 ]
  %expr.addr.8 = phi %union.tree_node* [ %expr.addr.7, %if.end887 ], [ %call773, %if.then764 ], [ %call882, %if.then873 ], !dbg !2500
  %retval.12 = phi %union.tree_node* [ %retval.11, %if.end887 ], [ %call773.retval.11, %if.then764 ], [ %call882, %if.then873 ], !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.8, metadata !2352, metadata !DIExpression()), !dbg !2385
  %cond1 = icmp eq i32 %cleanup.dest.slot.5, 0
  br i1 %cond1, label %if.end891, label %cleanup892

if.end891:                                        ; preds = %land.end540, %cleanup888, %land.lhs.true478, %lor.lhs.false470, %land.lhs.true444, %lor.lhs.false436
  %expr.addr.9 = phi %union.tree_node* [ %expr.addr.6, %land.end540 ], [ %expr.addr.6, %land.lhs.true478 ], [ %expr.addr.6, %lor.lhs.false470 ], [ %expr.addr.6, %land.lhs.true444 ], [ %expr.addr.6, %lor.lhs.false436 ], [ %expr.addr.8, %cleanup888 ]
  %retval.13 = phi %union.tree_node* [ %retval.11, %land.end540 ], [ %retval.11, %land.lhs.true478 ], [ %retval.11, %lor.lhs.false470 ], [ %retval.11, %land.lhs.true444 ], [ %retval.11, %lor.lhs.false436 ], [ %retval.12, %cleanup888 ], !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.9, metadata !2352, metadata !DIExpression()), !dbg !2385
  br label %cleanup892, !dbg !2584

cleanup892:                                       ; preds = %cleanup888, %if.end891
  %cleanup.dest.slot.6 = phi i32 [ %cleanup.dest.slot.5, %cleanup888 ], [ 0, %if.end891 ]
  %expr.addr.10 = phi %union.tree_node* [ %expr.addr.8, %cleanup888 ], [ %expr.addr.9, %if.end891 ], !dbg !2585
  %retval.14 = phi %union.tree_node* [ %retval.12, %cleanup888 ], [ %retval.13, %if.end891 ], !dbg !2586
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.10, metadata !2352, metadata !DIExpression()), !dbg !2385
  switch i32 %cleanup.dest.slot.6, label %cleanup983.loopexit [
    i32 0, label %if.end898
    i32 3, label %if.end898
  ]

if.end898:                                        ; preds = %sw.bb385, %if.end352, %cleanup892, %land.lhs.true387, %cleanup892, %if.then380, %land.lhs.true372, %lor.lhs.false366
  %expr.addr.12 = phi %union.tree_node* [ %expr.addr.6, %land.lhs.true372 ], [ %expr.addr.6, %lor.lhs.false366 ], [ %expr.addr.6, %if.end352 ], [ %expr.addr.10, %cleanup892 ], [ %expr.addr.6, %land.lhs.true387 ], [ %expr.addr.6, %sw.bb385 ], [ %expr.addr.10, %cleanup892 ], [ %expr.addr.6, %if.then380 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12, metadata !2352, metadata !DIExpression()), !dbg !2385
  %type900 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.addr.12, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2587
  %70 = bitcast %union.tree_node** %type900 to i64**, !dbg !2587
  %71 = load i64*, i64** %70, align 8, !dbg !2587
  %bf.load902 = load i64, i64* %71, align 8, !dbg !2587
  %72 = trunc i64 %bf.load902 to i16, !dbg !2587
  switch i16 %72, label %sw.default981 [
    i16 9, label %sw.bb905
    i16 8, label %sw.bb968
    i16 6, label %sw.bb968
    i16 7, label %sw.bb968
    i16 11, label %sw.bb970
    i16 13, label %sw.bb972
    i16 10, label %sw.bb979
    i16 12, label %sw.bb979
  ], !dbg !2588

sw.bb905:                                         ; preds = %if.end898
  %expr.addr.12.lcssa = phi %union.tree_node* [ %expr.addr.12, %if.end898 ]
  %.lcssa109 = phi %union.tree_node* [ %2, %if.end898 ], !dbg !2387
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa, metadata !2352, metadata !DIExpression()), !dbg !2385
  %73 = load i32, i32* @flag_float_store, align 4, !dbg !2589
  %tobool906 = icmp eq i32 %73, 0, !dbg !2589
  br i1 %tobool906, label %lor.lhs.false907, label %lor.end, !dbg !2589

lor.lhs.false907:                                 ; preds = %sw.bb905
  %bf.load909 = load i64, i64* %0, align 8, !dbg !2589
  %bf.cast9119 = and i64 %bf.load909, 65535, !dbg !2589
  %cmp912 = icmp eq i64 %bf.cast9119, 9, !dbg !2589
  br i1 %cmp912, label %land.lhs.true914, label %lor.rhs, !dbg !2589

land.lhs.true914:                                 ; preds = %lor.lhs.false907
  br i1 false, label %cond.true921, label %cond.false923, !dbg !2589

cond.true921:                                     ; preds = %land.lhs.true914
  br label %cond.end929, !dbg !2589

cond.false923:                                    ; preds = %land.lhs.true914
  %bf.load926 = load i32, i32* %mode, align 4, !dbg !2589
  %bf.lshr927 = lshr i32 %bf.load926, 16, !dbg !2589
  %bf.clear928 = and i32 %bf.lshr927, 255, !dbg !2589
  %phitmp107 = zext i32 %bf.clear928 to i64, !dbg !2589
  br label %cond.end929, !dbg !2589

cond.end929:                                      ; preds = %cond.false923, %cond.true921
  %cond930 = phi i64 [ 0, %cond.true921 ], [ %phitmp107, %cond.false923 ]
  %arrayidx932 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %cond930, !dbg !2589
  %74 = load i8, i8* %arrayidx932, align 1, !dbg !2589
  %cmp934 = icmp eq i8 %74, 9, !dbg !2589
  br i1 %cmp934, label %lor.end, label %lor.rhs, !dbg !2589

lor.rhs:                                          ; preds = %cond.end929, %lor.lhs.false907
  %75 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa109, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2589
  %bf.load937 = load i64, i64* %75, align 8, !dbg !2589
  %bf.cast93910 = and i64 %bf.load937, 65535, !dbg !2589
  %cmp940 = icmp eq i64 %bf.cast93910, 9, !dbg !2589
  br i1 %cmp940, label %land.rhs942, label %lor.end, !dbg !2589

land.rhs942:                                      ; preds = %lor.rhs
  br i1 false, label %cond.true949, label %cond.false951, !dbg !2589

cond.true949:                                     ; preds = %land.rhs942
  br label %cond.end957, !dbg !2589

cond.false951:                                    ; preds = %land.rhs942
  %type952 = bitcast %union.tree_node* %.lcssa109 to %struct.tree_type*, !dbg !2589
  %mode953 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type952, i64 0, i32 6, !dbg !2589
  %bf.load954 = load i32, i32* %mode953, align 4, !dbg !2589
  %bf.lshr955 = lshr i32 %bf.load954, 16, !dbg !2589
  %bf.clear956 = and i32 %bf.lshr955, 255, !dbg !2589
  %phitmp106 = zext i32 %bf.clear956 to i64, !dbg !2589
  br label %cond.end957, !dbg !2589

cond.end957:                                      ; preds = %cond.false951, %cond.true949
  %cond958 = phi i64 [ 0, %cond.true949 ], [ %phitmp106, %cond.false951 ]
  %arrayidx960 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %cond958, !dbg !2589
  %76 = load i8, i8* %arrayidx960, align 1, !dbg !2589
  %cmp962 = icmp eq i8 %76, 9, !dbg !2589
  %phitmp = select i1 %cmp962, i32 113, i32 116
  br label %lor.end

lor.end:                                          ; preds = %sw.bb905, %lor.rhs, %cond.end957, %cond.end929
  %77 = phi i32 [ 113, %cond.end929 ], [ 113, %sw.bb905 ], [ 116, %lor.rhs ], [ %phitmp, %cond.end957 ]
  %call967 = tail call %union.tree_node* @build1_stat(i32 %77, %union.tree_node* %type, %union.tree_node* %expr.addr.12.lcssa) #6, !dbg !2589
  br label %cleanup983, !dbg !2590

sw.bb968:                                         ; preds = %if.end898, %if.end898, %if.end898
  %expr.addr.12.lcssa121 = phi %union.tree_node* [ %expr.addr.12, %if.end898 ], [ %expr.addr.12, %if.end898 ], [ %expr.addr.12, %if.end898 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa121, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa121, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa121, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa121, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa121, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa121, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa121, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa121, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa121, metadata !2352, metadata !DIExpression()), !dbg !2385
  %call969 = tail call %union.tree_node* @build1_stat(i32 78, %union.tree_node* %type, %union.tree_node* %expr.addr.12.lcssa121) #6, !dbg !2591
  br label %cleanup983, !dbg !2592

sw.bb970:                                         ; preds = %if.end898
  %expr.addr.12.lcssa122 = phi %union.tree_node* [ %expr.addr.12, %if.end898 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa122, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa122, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa122, metadata !2352, metadata !DIExpression()), !dbg !2385
  %call971 = tail call %union.tree_node* @build1_stat(i32 115, %union.tree_node* %type, %union.tree_node* %expr.addr.12.lcssa122) #6, !dbg !2593
  br label %cleanup983, !dbg !2594

sw.bb972:                                         ; preds = %if.end898
  %expr.addr.12.lcssa123 = phi %union.tree_node* [ %expr.addr.12, %if.end898 ]
  %.lcssa120 = phi i64* [ %71, %if.end898 ], !dbg !2587
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa123, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa123, metadata !2352, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.12.lcssa123, metadata !2352, metadata !DIExpression()), !dbg !2385
  %type976 = getelementptr inbounds i64, i64* %.lcssa120, i64 2, !dbg !2595
  %78 = bitcast i64* %type976 to %union.tree_node**, !dbg !2595
  %79 = load %union.tree_node*, %union.tree_node** %78, align 8, !dbg !2595
  %call977 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 43, %union.tree_node* %79, %union.tree_node* %expr.addr.12.lcssa123) #6, !dbg !2595
  %call978 = tail call %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %call977) #6, !dbg !2596
  br label %cleanup983, !dbg !2597

sw.bb979:                                         ; preds = %if.end898, %if.end898
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2598
  br label %tailrecurse.backedge, !dbg !2383

tailrecurse.backedge:                             ; preds = %sw.bb979, %sw.default981
  %expr.tr.be = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !2599
  br label %tailrecurse, !dbg !2385

sw.default981:                                    ; preds = %if.end898
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2600
  br label %tailrecurse.backedge, !dbg !2601

cleanup983.loopexit:                              ; preds = %cleanup892, %cleanup349, %cleanup193
  %retval.15.ph = phi %union.tree_node* [ %retval.4, %cleanup193 ], [ %retval.14, %cleanup892 ], [ %retval.10, %cleanup349 ]
  br label %cleanup983, !dbg !2485

cleanup983:                                       ; preds = %cleanup983.loopexit, %sw.bb972, %sw.bb970, %sw.bb968, %lor.end
  %retval.15 = phi %union.tree_node* [ %call978, %sw.bb972 ], [ %call971, %sw.bb970 ], [ %call969, %sw.bb968 ], [ %call967, %lor.end ], [ %retval.15.ph, %cleanup983.loopexit ], !dbg !2385
  ret %union.tree_node* %retval.15, !dbg !2485
}

declare dso_local i32 @builtin_mathfn_code(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @mathfn_built_in(%union.tree_node*, i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build_call_expr_loc(i32, %union.tree_node*, i32, ...) local_unnamed_addr #1

declare dso_local %union.tree_node* @build1_stat(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @build2_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local zeroext i8 @real_can_shorten_arithmetic(i32, i32) local_unnamed_addr #1

declare dso_local %union.tree_node* @excess_precision_type(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @convert_to_integer(%union.tree_node* %type, %union.tree_node* %expr) local_unnamed_addr #4 !dbg !2602 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2604, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2605, metadata !DIExpression()), !dbg !2656
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2657
  %bf.load = load i64, i64* %0, align 8, !dbg !2657
  %1 = trunc i64 %bf.load to i32, !dbg !2657
  %bf.cast = and i32 %1, 65535, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2606, metadata !DIExpression()), !dbg !2656
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2658
  %2 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !2658
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2607, metadata !DIExpression()), !dbg !2656
  %type2 = bitcast %union.tree_node* %2 to %struct.tree_type*, !dbg !2659
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i64 0, i32 6, !dbg !2659
  %bf.load3 = load i32, i32* %precision, align 4, !dbg !2659
  %bf.clear4 = and i32 %bf.load3, 1023, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %bf.clear4, metadata !2608, metadata !DIExpression()), !dbg !2656
  %type5 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !2660
  %precision6 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i64 0, i32 6, !dbg !2660
  %bf.load7 = load i32, i32* %precision6, align 4, !dbg !2660
  %bf.clear8 = and i32 %bf.load7, 1023, !dbg !2660
  call void @llvm.dbg.value(metadata i32 %bf.clear8, metadata !2609, metadata !DIExpression()), !dbg !2656
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2661
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !2661
  %cmp = icmp eq %union.tree_node* %4, null, !dbg !2661
  br i1 %cmp, label %if.then, label %if.end, !dbg !2663

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2664
  %5 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2666
  br label %cleanup929, !dbg !2667

if.end:                                           ; preds = %entry
  %6 = load i32, i32* @optimize, align 4, !dbg !2668
  %tobool = icmp eq i32 %6, 0, !dbg !2668
  br i1 %tobool, label %if.end195, label %land.lhs.true, !dbg !2669

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* @flag_unsafe_math_optimizations, align 4, !dbg !2670
  %tobool10 = icmp eq i32 %7, 0, !dbg !2670
  br i1 %tobool10, label %lor.lhs.false, label %if.then18, !dbg !2671

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 7), align 8, !dbg !2672
  %tobool11 = icmp eq %union.tree_node* %8, null, !dbg !2672
  br i1 %tobool11, label %if.end195, label %land.lhs.true12, !dbg !2673

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %9 = bitcast %union.tree_node* %8 to %struct.tree_type*, !dbg !2673
  %precision14 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %9, i64 0, i32 6, !dbg !2674
  %bf.load15 = load i32, i32* %precision14, align 4, !dbg !2674
  %bf.clear16 = and i32 %bf.load15, 1023, !dbg !2674
  %cmp17 = icmp ult i32 %bf.clear8, %bf.clear16, !dbg !2675
  br i1 %cmp17, label %if.end195, label %if.then18, !dbg !2676

if.then18:                                        ; preds = %land.lhs.true12, %land.lhs.true
  %call = tail call %union.tree_node* @strip_float_extensions(%union.tree_node* %expr) #8, !dbg !2677
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2610, metadata !DIExpression()), !dbg !2678
  %type20 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2679
  %10 = load %union.tree_node*, %union.tree_node** %type20, align 8, !dbg !2679
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !2613, metadata !DIExpression()), !dbg !2678
  %call21 = tail call i32 @builtin_mathfn_code(%union.tree_node* %call) #6, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %call21, metadata !2614, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2616, metadata !DIExpression()), !dbg !2678
  switch i32 %call21, label %sw.epilog [
    i32 24, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 63, label %sw.bb60
    i32 64, label %sw.bb60
    i32 65, label %sw.bb60
    i32 198, label %sw.bb102
    i32 199, label %sw.bb102
    i32 200, label %sw.bb102
    i32 171, label %sw.bb140
    i32 172, label %sw.bb140
    i32 173, label %sw.bb140
    i32 195, label %sw.bb144
    i32 196, label %sw.bb144
    i32 197, label %sw.bb144
    i32 240, label %sw.bb182
    i32 241, label %sw.bb182
    i32 242, label %sw.bb182
  ], !dbg !2681

sw.bb:                                            ; preds = %if.then18, %if.then18, %if.then18
  %11 = load i32, i32* @linux_uclibc, align 4, !dbg !2682
  %and = and i32 %11, 1, !dbg !2682
  %cmp22 = icmp eq i32 %and, 0, !dbg !2682
  br i1 %cmp22, label %if.end24, label %sw.epilog, !dbg !2685

if.end24:                                         ; preds = %sw.bb
  %12 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 7) to %struct.tree_type**), align 8, !dbg !2686
  %precision26 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %12, i64 0, i32 6, !dbg !2686
  %bf.load27 = load i32, i32* %precision26, align 4, !dbg !2686
  %bf.clear28 = and i32 %bf.load27, 1023, !dbg !2686
  %cmp29 = icmp ult i32 %bf.clear8, %bf.clear28, !dbg !2688
  br i1 %cmp29, label %if.then42, label %lor.lhs.false30, !dbg !2689

lor.lhs.false30:                                  ; preds = %if.end24
  %cmp35 = icmp eq i32 %bf.clear8, %bf.clear28, !dbg !2690
  br i1 %cmp35, label %land.lhs.true36, label %if.else, !dbg !2691

land.lhs.true36:                                  ; preds = %lor.lhs.false30
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2692
  %bf.load38 = load i64, i64* %13, align 8, !dbg !2692
  %bf.cast4052 = and i64 %bf.load38, 2097152, !dbg !2692
  %tobool41 = icmp eq i64 %bf.cast4052, 0, !dbg !2692
  br i1 %tobool41, label %if.then42, label %if.else, !dbg !2693

if.then42:                                        ; preds = %land.lhs.true36, %if.end24
  %call43 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %10, i32 111) #6, !dbg !2694
  call void @llvm.dbg.value(metadata %union.tree_node* %call43, metadata !2616, metadata !DIExpression()), !dbg !2678
  br label %sw.epilog, !dbg !2695

if.else:                                          ; preds = %land.lhs.true36, %lor.lhs.false30
  %14 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 9) to %struct.tree_type**), align 8, !dbg !2696
  %precision45 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %14, i64 0, i32 6, !dbg !2696
  %bf.load46 = load i32, i32* %precision45, align 4, !dbg !2696
  %bf.clear47 = and i32 %bf.load46, 1023, !dbg !2696
  %cmp48 = icmp eq i32 %bf.clear8, %bf.clear47, !dbg !2698
  br i1 %cmp48, label %land.lhs.true49, label %sw.epilog, !dbg !2699

land.lhs.true49:                                  ; preds = %if.else
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2700
  %bf.load51 = load i64, i64* %15, align 8, !dbg !2700
  %bf.cast5451 = and i64 %bf.load51, 2097152, !dbg !2700
  %tobool55 = icmp eq i64 %bf.cast5451, 0, !dbg !2700
  br i1 %tobool55, label %if.then56, label %sw.epilog, !dbg !2701

if.then56:                                        ; preds = %land.lhs.true49
  %call57 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %10, i32 126) #6, !dbg !2702
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !2616, metadata !DIExpression()), !dbg !2678
  br label %sw.epilog, !dbg !2703

sw.bb60:                                          ; preds = %if.then18, %if.then18, %if.then18
  %16 = load i32, i32* @linux_uclibc, align 4, !dbg !2704
  %and61 = and i32 %16, 1, !dbg !2704
  %cmp62 = icmp eq i32 %and61, 0, !dbg !2704
  br i1 %cmp62, label %if.end64, label %sw.epilog, !dbg !2706

if.end64:                                         ; preds = %sw.bb60
  %17 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 7) to %struct.tree_type**), align 8, !dbg !2707
  %precision66 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %17, i64 0, i32 6, !dbg !2707
  %bf.load67 = load i32, i32* %precision66, align 4, !dbg !2707
  %bf.clear68 = and i32 %bf.load67, 1023, !dbg !2707
  %cmp69 = icmp ult i32 %bf.clear8, %bf.clear68, !dbg !2709
  br i1 %cmp69, label %if.then83, label %lor.lhs.false70, !dbg !2710

lor.lhs.false70:                                  ; preds = %if.end64
  %cmp75 = icmp eq i32 %bf.clear8, %bf.clear68, !dbg !2711
  br i1 %cmp75, label %land.lhs.true76, label %if.else85, !dbg !2712

land.lhs.true76:                                  ; preds = %lor.lhs.false70
  %18 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2713
  %bf.load78 = load i64, i64* %18, align 8, !dbg !2713
  %bf.cast8150 = and i64 %bf.load78, 2097152, !dbg !2713
  %tobool82 = icmp eq i64 %bf.cast8150, 0, !dbg !2713
  br i1 %tobool82, label %if.then83, label %if.else85, !dbg !2714

if.then83:                                        ; preds = %land.lhs.true76, %if.end64
  %call84 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %10, i32 117) #6, !dbg !2715
  call void @llvm.dbg.value(metadata %union.tree_node* %call84, metadata !2616, metadata !DIExpression()), !dbg !2678
  br label %sw.epilog, !dbg !2716

if.else85:                                        ; preds = %land.lhs.true76, %lor.lhs.false70
  %19 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 9) to %struct.tree_type**), align 8, !dbg !2717
  %precision87 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %19, i64 0, i32 6, !dbg !2717
  %bf.load88 = load i32, i32* %precision87, align 4, !dbg !2717
  %bf.clear89 = and i32 %bf.load88, 1023, !dbg !2717
  %cmp90 = icmp eq i32 %bf.clear8, %bf.clear89, !dbg !2719
  br i1 %cmp90, label %land.lhs.true91, label %sw.epilog, !dbg !2720

land.lhs.true91:                                  ; preds = %if.else85
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2721
  %bf.load93 = load i64, i64* %20, align 8, !dbg !2721
  %bf.cast9649 = and i64 %bf.load93, 2097152, !dbg !2721
  %tobool97 = icmp eq i64 %bf.cast9649, 0, !dbg !2721
  br i1 %tobool97, label %if.then98, label %sw.epilog, !dbg !2722

if.then98:                                        ; preds = %land.lhs.true91
  %call99 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %10, i32 129) #6, !dbg !2723
  call void @llvm.dbg.value(metadata %union.tree_node* %call99, metadata !2616, metadata !DIExpression()), !dbg !2678
  br label %sw.epilog, !dbg !2724

sw.bb102:                                         ; preds = %if.then18, %if.then18, %if.then18
  %21 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 7) to %struct.tree_type**), align 8, !dbg !2725
  %precision104 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %21, i64 0, i32 6, !dbg !2725
  %bf.load105 = load i32, i32* %precision104, align 4, !dbg !2725
  %bf.clear106 = and i32 %bf.load105, 1023, !dbg !2725
  %cmp107 = icmp ult i32 %bf.clear8, %bf.clear106, !dbg !2727
  br i1 %cmp107, label %if.then121, label %lor.lhs.false108, !dbg !2728

lor.lhs.false108:                                 ; preds = %sw.bb102
  %cmp113 = icmp eq i32 %bf.clear8, %bf.clear106, !dbg !2729
  br i1 %cmp113, label %land.lhs.true114, label %if.else123, !dbg !2730

land.lhs.true114:                                 ; preds = %lor.lhs.false108
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2731
  %bf.load116 = load i64, i64* %22, align 8, !dbg !2731
  %bf.cast11948 = and i64 %bf.load116, 2097152, !dbg !2731
  %tobool120 = icmp eq i64 %bf.cast11948, 0, !dbg !2731
  br i1 %tobool120, label %if.then121, label %if.else123, !dbg !2732

if.then121:                                       ; preds = %land.lhs.true114, %sw.bb102
  %call122 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %10, i32 156) #6, !dbg !2733
  call void @llvm.dbg.value(metadata %union.tree_node* %call122, metadata !2616, metadata !DIExpression()), !dbg !2678
  br label %sw.epilog, !dbg !2734

if.else123:                                       ; preds = %land.lhs.true114, %lor.lhs.false108
  %23 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 9) to %struct.tree_type**), align 8, !dbg !2735
  %precision125 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %23, i64 0, i32 6, !dbg !2735
  %bf.load126 = load i32, i32* %precision125, align 4, !dbg !2735
  %bf.clear127 = and i32 %bf.load126, 1023, !dbg !2735
  %cmp128 = icmp eq i32 %bf.clear8, %bf.clear127, !dbg !2737
  br i1 %cmp128, label %land.lhs.true129, label %sw.epilog, !dbg !2738

land.lhs.true129:                                 ; preds = %if.else123
  %24 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2739
  %bf.load131 = load i64, i64* %24, align 8, !dbg !2739
  %bf.cast13447 = and i64 %bf.load131, 2097152, !dbg !2739
  %tobool135 = icmp eq i64 %bf.cast13447, 0, !dbg !2739
  br i1 %tobool135, label %if.then136, label %sw.epilog, !dbg !2740

if.then136:                                       ; preds = %land.lhs.true129
  %call137 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %10, i32 135) #6, !dbg !2741
  call void @llvm.dbg.value(metadata %union.tree_node* %call137, metadata !2616, metadata !DIExpression()), !dbg !2678
  br label %sw.epilog, !dbg !2742

sw.bb140:                                         ; preds = %if.then18, %if.then18, %if.then18
  %25 = load i32, i32* @flag_trapping_math, align 4, !dbg !2743
  %tobool141 = icmp eq i32 %25, 0, !dbg !2743
  br i1 %tobool141, label %sw.bb144, label %sw.epilog, !dbg !2745

sw.bb144:                                         ; preds = %sw.bb140, %if.then18, %if.then18, %if.then18
  %26 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 7) to %struct.tree_type**), align 8, !dbg !2746
  %precision146 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %26, i64 0, i32 6, !dbg !2746
  %bf.load147 = load i32, i32* %precision146, align 4, !dbg !2746
  %bf.clear148 = and i32 %bf.load147, 1023, !dbg !2746
  %cmp149 = icmp ult i32 %bf.clear8, %bf.clear148, !dbg !2748
  br i1 %cmp149, label %if.then163, label %lor.lhs.false150, !dbg !2749

lor.lhs.false150:                                 ; preds = %sw.bb144
  %cmp155 = icmp eq i32 %bf.clear8, %bf.clear148, !dbg !2750
  br i1 %cmp155, label %land.lhs.true156, label %if.else165, !dbg !2751

land.lhs.true156:                                 ; preds = %lor.lhs.false150
  %27 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2752
  %bf.load158 = load i64, i64* %27, align 8, !dbg !2752
  %bf.cast16146 = and i64 %bf.load158, 2097152, !dbg !2752
  %tobool162 = icmp eq i64 %bf.cast16146, 0, !dbg !2752
  br i1 %tobool162, label %if.then163, label %if.else165, !dbg !2753

if.then163:                                       ; preds = %land.lhs.true156, %sw.bb144
  %call164 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %10, i32 153) #6, !dbg !2754
  call void @llvm.dbg.value(metadata %union.tree_node* %call164, metadata !2616, metadata !DIExpression()), !dbg !2678
  br label %sw.epilog, !dbg !2755

if.else165:                                       ; preds = %land.lhs.true156, %lor.lhs.false150
  %28 = load %struct.tree_type*, %struct.tree_type** bitcast (%union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 9) to %struct.tree_type**), align 8, !dbg !2756
  %precision167 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %28, i64 0, i32 6, !dbg !2756
  %bf.load168 = load i32, i32* %precision167, align 4, !dbg !2756
  %bf.clear169 = and i32 %bf.load168, 1023, !dbg !2756
  %cmp170 = icmp eq i32 %bf.clear8, %bf.clear169, !dbg !2758
  br i1 %cmp170, label %land.lhs.true171, label %sw.epilog, !dbg !2759

land.lhs.true171:                                 ; preds = %if.else165
  %29 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2760
  %bf.load173 = load i64, i64* %29, align 8, !dbg !2760
  %bf.cast17645 = and i64 %bf.load173, 2097152, !dbg !2760
  %tobool177 = icmp eq i64 %bf.cast17645, 0, !dbg !2760
  br i1 %tobool177, label %if.then178, label %sw.epilog, !dbg !2761

if.then178:                                       ; preds = %land.lhs.true171
  %call179 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %10, i32 132) #6, !dbg !2762
  call void @llvm.dbg.value(metadata %union.tree_node* %call179, metadata !2616, metadata !DIExpression()), !dbg !2678
  br label %sw.epilog, !dbg !2763

sw.bb182:                                         ; preds = %if.then18, %if.then18, %if.then18
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2764
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 3, !dbg !2764
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2764
  %call183 = tail call %union.tree_node* @convert_to_integer(%union.tree_node* %type, %union.tree_node* %30) #8, !dbg !2765
  br label %cleanup, !dbg !2766

sw.epilog:                                        ; preds = %land.lhs.true49, %land.lhs.true91, %land.lhs.true129, %sw.bb140, %land.lhs.true171, %if.then18, %if.then163, %if.then178, %if.else165, %if.then121, %if.then136, %if.else123, %if.then83, %if.then98, %if.else85, %sw.bb60, %if.then42, %if.then56, %if.else, %sw.bb
  %fn.8 = phi %union.tree_node* [ null, %sw.bb ], [ %call43, %if.then42 ], [ null, %land.lhs.true49 ], [ %call57, %if.then56 ], [ null, %if.else ], [ null, %sw.bb60 ], [ %call84, %if.then83 ], [ null, %land.lhs.true91 ], [ %call99, %if.then98 ], [ null, %if.else85 ], [ %call122, %if.then121 ], [ null, %land.lhs.true129 ], [ %call137, %if.then136 ], [ null, %if.else123 ], [ null, %sw.bb140 ], [ %call164, %if.then163 ], [ null, %land.lhs.true171 ], [ %call179, %if.then178 ], [ null, %if.else165 ], [ null, %if.then18 ], !dbg !2678
  call void @llvm.dbg.value(metadata %union.tree_node* %fn.8, metadata !2616, metadata !DIExpression()), !dbg !2678
  %tobool184 = icmp eq %union.tree_node* %fn.8, null, !dbg !2767
  br i1 %tobool184, label %cleanup, label %if.then185, !dbg !2768

if.then185:                                       ; preds = %sw.epilog
  %operands187 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2769
  %arrayidx188 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands187, i64 3, !dbg !2769
  %31 = load %union.tree_node*, %union.tree_node** %arrayidx188, align 8, !dbg !2769
  %call189 = tail call %union.tree_node* (i32, %union.tree_node*, i32, ...) @build_call_expr_loc(i32 0, %union.tree_node* nonnull %fn.8, i32 1, %union.tree_node* %31) #6, !dbg !2769
  call void @llvm.dbg.value(metadata %union.tree_node* %call189, metadata !2617, metadata !DIExpression()), !dbg !2770
  %call190 = tail call %union.tree_node* @convert_to_integer(%union.tree_node* %type, %union.tree_node* %call189) #8, !dbg !2771
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then185, %sw.bb182
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then185 ], [ false, %sw.bb182 ], [ true, %sw.epilog ]
  %retval.0 = phi %union.tree_node* [ %call190, %if.then185 ], [ %call183, %sw.bb182 ], [ undef, %sw.epilog ]
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end195_crit_edge, label %cleanup929

cleanup.if.end195_crit_edge:                      ; preds = %cleanup
  %.pre = load i32, i32* @optimize, align 4, !dbg !2772
  br label %if.end195

if.end195:                                        ; preds = %cleanup.if.end195_crit_edge, %land.lhs.true12, %lor.lhs.false, %if.end
  %32 = phi i32 [ %6, %land.lhs.true12 ], [ %6, %lor.lhs.false ], [ 0, %if.end ], [ %.pre, %cleanup.if.end195_crit_edge ], !dbg !2772
  %retval.1 = phi %union.tree_node* [ undef, %land.lhs.true12 ], [ undef, %lor.lhs.false ], [ undef, %if.end ], [ %retval.0, %cleanup.if.end195_crit_edge ]
  %tobool196 = icmp eq i32 %32, 0, !dbg !2772
  %33 = load i32, i32* @flag_unsafe_math_optimizations, align 4, !dbg !2773
  %tobool198 = icmp eq i32 %33, 0, !dbg !2773
  %or.cond.not = or i1 %tobool198, %tobool196, !dbg !2774
  %34 = load i32, i32* @flag_trapping_math, align 4, !dbg !2775
  %35 = load i32, i32* @flag_errno_math, align 4, !dbg !2776
  %36 = or i32 %34, %35, !dbg !2774
  %37 = icmp ne i32 %36, 0, !dbg !2774
  %38 = or i1 %37, %or.cond.not, !dbg !2774
  %or.cond6.not = xor i1 %38, true, !dbg !2774
  %39 = load i32, i32* @flag_finite_math_only, align 4, !dbg !2777
  %tobool204 = icmp ne i32 %39, 0, !dbg !2777
  %or.cond7 = and i1 %tobool204, %or.cond6.not, !dbg !2774
  %40 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 5), align 8, !dbg !2778
  %tobool206 = icmp ne %union.tree_node* %40, null, !dbg !2778
  %or.cond8 = and i1 %or.cond7, %tobool206, !dbg !2774
  br i1 %or.cond8, label %land.lhs.true207, label %if.end255, !dbg !2774

land.lhs.true207:                                 ; preds = %if.end195
  %41 = bitcast %union.tree_node* %40 to %struct.tree_type*, !dbg !2774
  %precision209 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %41, i64 0, i32 6, !dbg !2779
  %bf.load210 = load i32, i32* %precision209, align 4, !dbg !2779
  %bf.clear211 = and i32 %bf.load210, 1023, !dbg !2779
  %cmp212 = icmp ugt i32 %bf.clear8, %bf.clear211, !dbg !2780
  br i1 %cmp212, label %if.then226, label %lor.lhs.false213, !dbg !2781

lor.lhs.false213:                                 ; preds = %land.lhs.true207
  %cmp218 = icmp eq i32 %bf.clear8, %bf.clear211, !dbg !2782
  br i1 %cmp218, label %land.lhs.true219, label %if.end255, !dbg !2783

land.lhs.true219:                                 ; preds = %lor.lhs.false213
  %42 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2784
  %bf.load221 = load i64, i64* %42, align 8, !dbg !2784
  %bf.cast22444 = and i64 %bf.load221, 2097152, !dbg !2784
  %tobool225 = icmp eq i64 %bf.cast22444, 0, !dbg !2784
  br i1 %tobool225, label %if.then226, label %if.end255, !dbg !2785

if.then226:                                       ; preds = %land.lhs.true219, %land.lhs.true207
  %call228 = tail call %union.tree_node* @strip_float_extensions(%union.tree_node* %expr) #8, !dbg !2786
  call void @llvm.dbg.value(metadata %union.tree_node* %call228, metadata !2620, metadata !DIExpression()), !dbg !2787
  %type231 = getelementptr inbounds %union.tree_node, %union.tree_node* %call228, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2788
  %43 = load %union.tree_node*, %union.tree_node** %type231, align 8, !dbg !2788
  call void @llvm.dbg.value(metadata %union.tree_node* %43, metadata !2623, metadata !DIExpression()), !dbg !2787
  %call233 = tail call i32 @builtin_mathfn_code(%union.tree_node* %call228) #6, !dbg !2789
  call void @llvm.dbg.value(metadata i32 %call233, metadata !2624, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2625, metadata !DIExpression()), !dbg !2787
  %call233.off = add i32 %call233, -148, !dbg !2790
  %switch = icmp ult i32 %call233.off, 3, !dbg !2790
  br i1 %switch, label %sw.bb235, label %sw.epilog238, !dbg !2790

sw.bb235:                                         ; preds = %if.then226
  %call236 = tail call %union.tree_node* @mathfn_built_in(%union.tree_node* %43, i32 93) #6, !dbg !2791
  call void @llvm.dbg.value(metadata %union.tree_node* %call236, metadata !2625, metadata !DIExpression()), !dbg !2787
  br label %sw.epilog238, !dbg !2793

sw.epilog238:                                     ; preds = %if.then226, %sw.bb235
  %fn234.0 = phi %union.tree_node* [ %call236, %sw.bb235 ], [ null, %if.then226 ], !dbg !2787
  call void @llvm.dbg.value(metadata %union.tree_node* %fn234.0, metadata !2625, metadata !DIExpression()), !dbg !2787
  %tobool239 = icmp eq %union.tree_node* %fn234.0, null, !dbg !2794
  br i1 %tobool239, label %cleanup249, label %if.then240, !dbg !2795

if.then240:                                       ; preds = %sw.epilog238
  %operands243 = getelementptr inbounds %union.tree_node, %union.tree_node* %call228, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2796
  %arrayidx244 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands243, i64 3, !dbg !2796
  %44 = load %union.tree_node*, %union.tree_node** %arrayidx244, align 8, !dbg !2796
  %call245 = tail call %union.tree_node* (i32, %union.tree_node*, i32, ...) @build_call_expr_loc(i32 0, %union.tree_node* nonnull %fn234.0, i32 1, %union.tree_node* %44) #6, !dbg !2796
  call void @llvm.dbg.value(metadata %union.tree_node* %call245, metadata !2626, metadata !DIExpression()), !dbg !2797
  %call246 = tail call %union.tree_node* @convert_to_integer(%union.tree_node* %type, %union.tree_node* %call245) #8, !dbg !2798
  br label %cleanup249

cleanup249:                                       ; preds = %sw.epilog238, %if.then240
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then240 ], [ true, %sw.epilog238 ]
  %retval.2 = phi %union.tree_node* [ %call246, %if.then240 ], [ %retval.1, %sw.epilog238 ], !dbg !2656
  br i1 %cleanup.dest.slot.1, label %if.end255, label %cleanup929

if.end255:                                        ; preds = %land.lhs.true219, %cleanup249, %if.end195, %lor.lhs.false213
  %retval.3 = phi %union.tree_node* [ %retval.1, %land.lhs.true219 ], [ %retval.1, %lor.lhs.false213 ], [ %retval.1, %if.end195 ], [ %retval.2, %cleanup249 ], !dbg !2656
  %45 = getelementptr inbounds %union.tree_node, %union.tree_node* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2799
  %bf.load257 = load i64, i64* %45, align 8, !dbg !2799
  %46 = trunc i64 %bf.load257 to i16, !dbg !2799
  switch i16 %46, label %sw.default927 [
    i16 10, label %sw.bb260
    i16 12, label %sw.bb260
    i16 8, label %sw.bb273
    i16 6, label %sw.bb273
    i16 7, label %sw.bb273
    i16 5, label %sw.bb273
    i16 9, label %sw.bb904
    i16 11, label %sw.bb906
    i16 13, label %sw.bb908
    i16 14, label %sw.bb915
  ], !dbg !2800

sw.bb260:                                         ; preds = %if.end255, %if.end255
  %call261 = tail call i32 @integer_zerop(%union.tree_node* %expr) #6, !dbg !2801
  %tobool262 = icmp eq i32 %call261, 0, !dbg !2801
  br i1 %tobool262, label %if.end265, label %if.then263, !dbg !2803

if.then263:                                       ; preds = %sw.bb260
  %call264 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %type, i64 0) #6, !dbg !2804
  br label %cleanup929, !dbg !2805

if.end265:                                        ; preds = %sw.bb260
  %47 = load %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 3), align 8, !dbg !2806
  %bf.load268 = load i32, i32* %precision, align 4, !dbg !2806
  %bf.clear269 = and i32 %bf.load268, 1023, !dbg !2806
  %call270 = tail call %union.tree_node* %47(i32 %bf.clear269, i32 0) #6, !dbg !2806
  %call271 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 113, %union.tree_node* %call270, %union.tree_node* %expr) #6, !dbg !2806
  call void @llvm.dbg.value(metadata %union.tree_node* %call271, metadata !2605, metadata !DIExpression()), !dbg !2656
  %call272 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %type, %union.tree_node* %call271) #6, !dbg !2807
  br label %cleanup929, !dbg !2808

sw.bb273:                                         ; preds = %if.end255, %if.end255, %if.end255, %if.end255
  %idxprom = zext i32 %bf.cast to i64, !dbg !2809
  %arrayidx274 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !2809
  %48 = load i32, i32* %arrayidx274, align 4, !dbg !2809
  %cmp275 = icmp eq i32 %48, 5, !dbg !2810
  br i1 %cmp275, label %if.then276, label %if.else280, !dbg !2811

if.then276:                                       ; preds = %sw.bb273
  %call277 = tail call %union.tree_node* @copy_node_stat(%union.tree_node* %expr) #6, !dbg !2812
  call void @llvm.dbg.value(metadata %union.tree_node* %call277, metadata !2605, metadata !DIExpression()), !dbg !2656
  %type279 = getelementptr inbounds %union.tree_node, %union.tree_node* %call277, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2814
  store %union.tree_node* %type, %union.tree_node** %type279, align 8, !dbg !2815
  br label %cleanup929, !dbg !2816

if.else280:                                       ; preds = %sw.bb273
  %cmp281 = icmp ult i32 %bf.clear8, %bf.clear4, !dbg !2817
  %49 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2818
  %bf.load284 = load i64, i64* %49, align 8, !dbg !2818
  br i1 %cmp281, label %if.else339, label %if.then282, !dbg !2819

if.then282:                                       ; preds = %if.else280
  %50 = bitcast %union.tree_node** %type1 to i64**, !dbg !2820
  %51 = load i64*, i64** %50, align 8, !dbg !2820
  %bf.load291 = load i64, i64* %51, align 8, !dbg !2820
  %bf.lshr28553 = xor i64 %bf.load284, %bf.load291, !dbg !2822
  %52 = and i64 %bf.lshr28553, 2097152, !dbg !2822
  %cmp295 = icmp eq i64 %52, 0, !dbg !2822
  br i1 %cmp295, label %if.else327, label %land.lhs.true296, !dbg !2823

land.lhs.true296:                                 ; preds = %if.then282
  %53 = bitcast i64* %51 to %struct.tree_type*, !dbg !2823
  %precision300 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %53, i64 0, i32 6, !dbg !2824
  %bf.load301 = load i32, i32* %precision300, align 4, !dbg !2824
  %bf.clear302 = and i32 %bf.load301, 1023, !dbg !2824
  %bf.cast30842 = and i64 %bf.load291, 65535, !dbg !2825
  %cmp309 = icmp eq i64 %bf.cast30842, 14, !dbg !2825
  br i1 %cmp309, label %cond.true, label %cond.false, !dbg !2825

cond.true:                                        ; preds = %land.lhs.true296
  %.cast = bitcast i64* %51 to %union.tree_node*, !dbg !2825
  %call312 = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !2825
  br label %cond.end, !dbg !2825

cond.false:                                       ; preds = %land.lhs.true296
  %bf.lshr317 = lshr i32 %bf.load301, 16, !dbg !2825
  %bf.clear318 = and i32 %bf.lshr317, 255, !dbg !2825
  br label %cond.end, !dbg !2825

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call312, %cond.true ], [ %bf.clear318, %cond.false ], !dbg !2825
  %idxprom319 = zext i32 %cond to i64, !dbg !2825
  %arrayidx320 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom319, !dbg !2825
  %54 = load i8, i8* %arrayidx320, align 1, !dbg !2825
  %conv321 = zext i8 %54 to i32, !dbg !2825
  %mul = shl nuw nsw i32 %conv321, 3, !dbg !2825
  %cmp324 = icmp eq i32 %bf.clear302, %mul, !dbg !2826
  br i1 %cmp324, label %if.else327, label %if.end328, !dbg !2827

if.else327:                                       ; preds = %cond.end, %if.then282
  call void @llvm.dbg.value(metadata i32 116, metadata !2629, metadata !DIExpression()), !dbg !2828
  br label %if.end328

if.end328:                                        ; preds = %cond.end, %if.else327
  %code.0 = phi i32 [ 116, %if.else327 ], [ 113, %cond.end ], !dbg !2829
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !2629, metadata !DIExpression()), !dbg !2828
  %call329 = tail call %union.tree_node* @fold_unary_loc(i32 0, i32 %code.0, %union.tree_node* %type, %union.tree_node* %expr) #6, !dbg !2830
  call void @llvm.dbg.value(metadata %union.tree_node* %call329, metadata !2634, metadata !DIExpression()), !dbg !2828
  %tobool330 = icmp eq %union.tree_node* %call329, null, !dbg !2831
  br i1 %tobool330, label %if.end332, label %cleanup929, !dbg !2833

if.end332:                                        ; preds = %if.end328
  %call333 = tail call %union.tree_node* @build1_stat(i32 %code.0, %union.tree_node* %type, %union.tree_node* %expr) #6, !dbg !2834
  call void @llvm.dbg.value(metadata %union.tree_node* %call333, metadata !2634, metadata !DIExpression()), !dbg !2828
  %55 = getelementptr inbounds %union.tree_node, %union.tree_node* %call333, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2835
  %bf.load335 = load i64, i64* %55, align 8, !dbg !2836
  %bf.set = or i64 %bf.load335, 8388608, !dbg !2836
  store i64 %bf.set, i64* %55, align 8, !dbg !2836
  br label %cleanup929, !dbg !2837

if.else339:                                       ; preds = %if.else280
  %bf.cast34320 = and i64 %bf.load284, 65535, !dbg !2838
  %cmp344 = icmp eq i64 %bf.cast34320, 6, !dbg !2838
  br i1 %cmp344, label %if.then372, label %lor.lhs.false346, !dbg !2840

lor.lhs.false346:                                 ; preds = %if.else339
  %cmp351 = icmp eq i64 %bf.cast34320, 14, !dbg !2841
  br i1 %cmp351, label %cond.true353, label %cond.false355, !dbg !2841

cond.true353:                                     ; preds = %lor.lhs.false346
  %call354 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2841
  br label %cond.end361, !dbg !2841

cond.false355:                                    ; preds = %lor.lhs.false346
  %bf.load358 = load i32, i32* %precision6, align 4, !dbg !2841
  %bf.lshr359 = lshr i32 %bf.load358, 16, !dbg !2841
  %bf.clear360 = and i32 %bf.lshr359, 255, !dbg !2841
  br label %cond.end361, !dbg !2841

cond.end361:                                      ; preds = %cond.false355, %cond.true353
  %cond362 = phi i32 [ %call354, %cond.true353 ], [ %bf.clear360, %cond.false355 ], !dbg !2841
  %idxprom363 = zext i32 %cond362 to i64, !dbg !2841
  %arrayidx364 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom363, !dbg !2841
  %56 = load i8, i8* %arrayidx364, align 1, !dbg !2841
  %conv366 = zext i8 %56 to i32, !dbg !2841
  %mul367 = shl nuw nsw i32 %conv366, 3, !dbg !2841
  %cmp370 = icmp eq i32 %bf.clear8, %mul367, !dbg !2842
  br i1 %cmp370, label %if.end399, label %cond.end361.if.then372_crit_edge, !dbg !2843

cond.end361.if.then372_crit_edge:                 ; preds = %cond.end361
  %bf.load374.pre = load i64, i64* %49, align 8, !dbg !2844
  br label %if.then372, !dbg !2843

if.then372:                                       ; preds = %cond.end361.if.then372_crit_edge, %if.else339
  %bf.load374 = phi i64 [ %bf.load374.pre, %cond.end361.if.then372_crit_edge ], [ %bf.load284, %if.else339 ], !dbg !2844
  %57 = load %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 2), align 8, !dbg !2844
  %bf.cast37641 = and i64 %bf.load374, 65535, !dbg !2844
  %cmp377 = icmp eq i64 %bf.cast37641, 14, !dbg !2844
  br i1 %cmp377, label %cond.true379, label %cond.false381, !dbg !2844

cond.true379:                                     ; preds = %if.then372
  %call380 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2844
  %bf.load390.pre = load i64, i64* %49, align 8, !dbg !2844
  br label %cond.end387, !dbg !2844

cond.false381:                                    ; preds = %if.then372
  %bf.load384 = load i32, i32* %precision6, align 4, !dbg !2844
  %bf.lshr385 = lshr i32 %bf.load384, 16, !dbg !2844
  %bf.clear386 = and i32 %bf.lshr385, 255, !dbg !2844
  br label %cond.end387, !dbg !2844

cond.end387:                                      ; preds = %cond.false381, %cond.true379
  %bf.load390 = phi i64 [ %bf.load390.pre, %cond.true379 ], [ %bf.load374, %cond.false381 ], !dbg !2844
  %cond388 = phi i32 [ %call380, %cond.true379 ], [ %bf.clear386, %cond.false381 ], !dbg !2844
  %bf.lshr391 = lshr i64 %bf.load390, 21, !dbg !2844
  %58 = trunc i64 %bf.lshr391 to i32, !dbg !2844
  %bf.cast393 = and i32 %58, 1, !dbg !2844
  %call394 = tail call %union.tree_node* %57(i32 %cond388, i32 %bf.cast393) #6, !dbg !2844
  %call395 = tail call %union.tree_node* @convert(%union.tree_node* %call394, %union.tree_node* %expr) #6, !dbg !2844
  %call396 = tail call %union.tree_node* @build1_stat(i32 116, %union.tree_node* %type, %union.tree_node* %call395) #6, !dbg !2844
  br label %cleanup929, !dbg !2845

if.end399:                                        ; preds = %cond.end361
  %trunc = trunc i64 %bf.load to i16, !dbg !2846
  switch i16 %trunc, label %sw.epilog902 [
    i16 84, label %sw.bb400
    i16 83, label %sw.bb419
    i16 67, label %sw.bb474
    i16 81, label %sw.bb558
    i16 80, label %sw.bb558
    i16 65, label %sw.bb558
    i16 63, label %trunc1
    i16 64, label %trunc1
    i16 89, label %trunc1
    i16 87, label %trunc1
    i16 88, label %trunc1
    i16 79, label %sw.bb753
    i16 90, label %sw.bb753
    i16 116, label %sw.bb775
    i16 56, label %sw.bb852
  ], !dbg !2846

sw.bb400:                                         ; preds = %if.end399
  %operands402 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2847
  %arrayidx403 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands402, i64 1, !dbg !2847
  %59 = bitcast %union.tree_node** %arrayidx403 to i64**, !dbg !2847
  %60 = load i64*, i64** %59, align 8, !dbg !2847
  %bf.load405 = load i64, i64* %60, align 8, !dbg !2847
  %bf.cast40740 = and i64 %bf.load405, 65535, !dbg !2849
  %cmp408 = icmp eq i64 %bf.cast40740, 23, !dbg !2849
  br i1 %cmp408, label %land.lhs.true410, label %sw.epilog902, !dbg !2850

land.lhs.true410:                                 ; preds = %sw.bb400
  %61 = bitcast i64* %60 to %union.tree_node*, !dbg !2850
  %call414 = tail call i32 @tree_int_cst_sgn(%union.tree_node* %61) #6, !dbg !2851
  %cmp415 = icmp slt i32 %call414, 1, !dbg !2852
  br i1 %cmp415, label %trunc1, label %sw.epilog902, !dbg !2853

sw.bb419:                                         ; preds = %if.end399
  %operands421 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2854
  %arrayidx422 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands421, i64 1, !dbg !2854
  %62 = bitcast %union.tree_node** %arrayidx422 to i64**, !dbg !2854
  %63 = load i64*, i64** %62, align 8, !dbg !2854
  %bf.load424 = load i64, i64* %63, align 8, !dbg !2854
  %bf.cast42636 = and i64 %bf.load424, 65535, !dbg !2855
  %cmp427 = icmp eq i64 %bf.cast42636, 23, !dbg !2855
  br i1 %cmp427, label %land.lhs.true429, label %sw.epilog902, !dbg !2856

land.lhs.true429:                                 ; preds = %sw.bb419
  %64 = bitcast i64* %63 to %union.tree_node*, !dbg !2856
  %call433 = tail call i32 @tree_int_cst_sgn(%union.tree_node* %64) #6, !dbg !2857
  %cmp434 = icmp sgt i32 %call433, -1, !dbg !2858
  br i1 %cmp434, label %land.lhs.true436, label %sw.epilog902, !dbg !2859

land.lhs.true436:                                 ; preds = %land.lhs.true429
  %bf.load438 = load i64, i64* %49, align 8, !dbg !2860
  %bf.cast44137 = and i64 %bf.load438, 2097152, !dbg !2860
  %tobool442 = icmp eq i64 %bf.cast44137, 0, !dbg !2860
  br i1 %tobool442, label %sw.epilog902, label %land.lhs.true443, !dbg !2861

land.lhs.true443:                                 ; preds = %land.lhs.true436
  %65 = bitcast %union.tree_node** %3 to i64**, !dbg !2862
  %66 = load i64*, i64** %65, align 8, !dbg !2862
  %bf.load447 = load i64, i64* %66, align 8, !dbg !2862
  %bf.cast44938 = and i64 %bf.load447, 65535, !dbg !2863
  %cmp450 = icmp eq i64 %bf.cast44938, 23, !dbg !2863
  br i1 %cmp450, label %if.then452, label %sw.epilog902, !dbg !2864

if.then452:                                       ; preds = %land.lhs.true443
  %67 = bitcast i64* %66 to %union.tree_node*, !dbg !2864
  %68 = load %union.tree_node*, %union.tree_node** %arrayidx422, align 8, !dbg !2865
  %call458 = tail call i32 @tree_int_cst_lt(%union.tree_node* %68, %union.tree_node* %67) #6, !dbg !2866
  %tobool459 = icmp eq i32 %call458, 0, !dbg !2866
  br i1 %tobool459, label %if.else461, label %trunc1, !dbg !2867

if.else461:                                       ; preds = %if.then452
  %call462 = tail call %union.tree_node* @build_int_cst(%union.tree_node* %type, i64 0) #6, !dbg !2868
  call void @llvm.dbg.value(metadata %union.tree_node* %call462, metadata !2635, metadata !DIExpression()), !dbg !2869
  %bf.load464 = load i64, i64* %0, align 8, !dbg !2870
  %bf.cast46739 = and i64 %bf.load464, 65536, !dbg !2870
  %tobool468 = icmp eq i64 %bf.cast46739, 0, !dbg !2870
  br i1 %tobool468, label %cleanup929, label %if.then469, !dbg !2872

if.then469:                                       ; preds = %if.else461
  %call470 = tail call %union.tree_node* @build2_stat(i32 52, %union.tree_node* %type, %union.tree_node* %expr, %union.tree_node* %call462) #6, !dbg !2873
  br label %cleanup929, !dbg !2874

sw.bb474:                                         ; preds = %if.end399
  %operands476 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2875
  %69 = load %union.tree_node*, %union.tree_node** %operands476, align 8, !dbg !2875
  %call478 = tail call %union.tree_node* @get_unwidened(%union.tree_node* %69, %union.tree_node* %type) #6, !dbg !2876
  call void @llvm.dbg.value(metadata %union.tree_node* %call478, metadata !2641, metadata !DIExpression()), !dbg !2877
  %arrayidx481 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands476, i64 1, !dbg !2878
  %70 = load %union.tree_node*, %union.tree_node** %arrayidx481, align 8, !dbg !2878
  %call482 = tail call %union.tree_node* @get_unwidened(%union.tree_node* %70, %union.tree_node* %type) #6, !dbg !2879
  call void @llvm.dbg.value(metadata %union.tree_node* %call482, metadata !2643, metadata !DIExpression()), !dbg !2877
  %type484 = getelementptr inbounds %union.tree_node, %union.tree_node* %call478, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2880
  %71 = bitcast %union.tree_node** %type484 to %struct.tree_type**, !dbg !2880
  %72 = load %struct.tree_type*, %struct.tree_type** %71, align 8, !dbg !2880
  %precision486 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %72, i64 0, i32 6, !dbg !2880
  %bf.load487 = load i32, i32* %precision486, align 4, !dbg !2880
  %bf.clear488 = and i32 %bf.load487, 1023, !dbg !2880
  %cmp489 = icmp ult i32 %bf.clear8, %bf.clear488, !dbg !2882
  %73 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %72, i64 0, i32 0, i32 0, i32 0, !dbg !2883
  br i1 %cmp489, label %if.end554, label %land.lhs.true491, !dbg !2883

land.lhs.true491:                                 ; preds = %sw.bb474
  %type493 = getelementptr inbounds %union.tree_node, %union.tree_node* %call482, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2884
  %74 = bitcast %union.tree_node** %type493 to %struct.tree_type**, !dbg !2884
  %75 = load %struct.tree_type*, %struct.tree_type** %74, align 8, !dbg !2884
  %precision495 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %75, i64 0, i32 6, !dbg !2884
  %bf.load496 = load i32, i32* %precision495, align 4, !dbg !2884
  %bf.clear497 = and i32 %bf.load496, 1023, !dbg !2884
  %cmp498 = icmp ult i32 %bf.clear8, %bf.clear497, !dbg !2885
  br i1 %cmp498, label %if.end554, label %land.lhs.true500, !dbg !2886

land.lhs.true500:                                 ; preds = %land.lhs.true491
  %76 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %75, i64 0, i32 0, i32 0, i32 0, !dbg !2886
  %bf.load504 = load i64, i64* %73, align 8, !dbg !2887
  %bf.load511 = load i64, i64* %76, align 8, !dbg !2888
  %bf.lshr50555 = xor i64 %bf.load504, %bf.load511, !dbg !2889
  %77 = and i64 %bf.lshr50555, 2097152, !dbg !2889
  %cmp515 = icmp eq i64 %77, 0, !dbg !2889
  br i1 %cmp515, label %land.lhs.true517, label %if.end554, !dbg !2890

land.lhs.true517:                                 ; preds = %land.lhs.true500
  %78 = bitcast %union.tree_node** %type1 to i64**, !dbg !2891
  %79 = load i64*, i64** %78, align 8, !dbg !2891
  %bf.load521 = load i64, i64* %79, align 8, !dbg !2891
  %bf.lshr52256 = xor i64 %bf.load521, %bf.load504, !dbg !2892
  %80 = and i64 %bf.lshr52256, 2097152, !dbg !2892
  %cmp532 = icmp eq i64 %80, 0, !dbg !2892
  br i1 %cmp532, label %land.lhs.true534, label %if.end554, !dbg !2893

land.lhs.true534:                                 ; preds = %land.lhs.true517
  %bf.cast54134 = and i64 %bf.load504, 2097152, !dbg !2894
  %tobool542 = icmp eq i64 %bf.cast54134, 0, !dbg !2894
  br i1 %tobool542, label %lor.lhs.false543, label %cleanup555, !dbg !2895

lor.lhs.false543:                                 ; preds = %land.lhs.true534
  %81 = getelementptr inbounds %union.tree_node, %union.tree_node* %call482, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2896
  %bf.load545 = load i64, i64* %81, align 8, !dbg !2896
  %bf.cast54735 = and i64 %bf.load545, 65535, !dbg !2897
  %cmp548 = icmp eq i64 %bf.cast54735, 23, !dbg !2897
  br i1 %cmp548, label %land.lhs.true550, label %if.end554, !dbg !2898

land.lhs.true550:                                 ; preds = %lor.lhs.false543
  %call551 = tail call i32 @integer_all_onesp(%union.tree_node* %call482) #6, !dbg !2899
  %tobool552 = icmp eq i32 %call551, 0, !dbg !2899
  br i1 %tobool552, label %cleanup555, label %if.end554, !dbg !2900

if.end554:                                        ; preds = %land.lhs.true550, %land.lhs.true491, %sw.bb474, %lor.lhs.false543, %land.lhs.true517, %land.lhs.true500
  br label %cleanup555, !dbg !2901

cleanup555:                                       ; preds = %land.lhs.true550, %land.lhs.true534, %if.end554
  %cleanup.dest.slot.2 = phi i32 [ 5, %if.end554 ], [ 6, %land.lhs.true550 ], [ 6, %land.lhs.true534 ]
  switch i32 %cleanup.dest.slot.2, label %cleanup929 [
    i32 5, label %sw.epilog902
    i32 6, label %trunc1
  ]

sw.bb558:                                         ; preds = %if.end399, %if.end399, %if.end399
  %operands561 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2902
  %82 = load %union.tree_node*, %union.tree_node** %operands561, align 8, !dbg !2902
  %call563 = tail call %union.tree_node* @get_unwidened(%union.tree_node* %82, %union.tree_node* %type) #6, !dbg !2903
  call void @llvm.dbg.value(metadata %union.tree_node* %call563, metadata !2644, metadata !DIExpression()), !dbg !2904
  %arrayidx567 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands561, i64 1, !dbg !2905
  %83 = load %union.tree_node*, %union.tree_node** %arrayidx567, align 8, !dbg !2905
  %call568 = tail call %union.tree_node* @get_unwidened(%union.tree_node* %83, %union.tree_node* %type) #6, !dbg !2906
  call void @llvm.dbg.value(metadata %union.tree_node* %call568, metadata !2646, metadata !DIExpression()), !dbg !2904
  %type570 = getelementptr inbounds %union.tree_node, %union.tree_node* %call563, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2907
  %84 = bitcast %union.tree_node** %type570 to %struct.tree_type**, !dbg !2907
  %85 = load %struct.tree_type*, %struct.tree_type** %84, align 8, !dbg !2907
  %precision572 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %85, i64 0, i32 6, !dbg !2907
  %bf.load573 = load i32, i32* %precision572, align 4, !dbg !2907
  %bf.clear574 = and i32 %bf.load573, 1023, !dbg !2907
  %cmp575 = icmp ult i32 %bf.clear8, %bf.clear574, !dbg !2909
  %86 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %85, i64 0, i32 0, i32 0, i32 0, !dbg !2910
  br i1 %cmp575, label %if.end604, label %land.lhs.true577, !dbg !2910

land.lhs.true577:                                 ; preds = %sw.bb558
  %type579 = getelementptr inbounds %union.tree_node, %union.tree_node* %call568, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2911
  %87 = bitcast %union.tree_node** %type579 to %struct.tree_type**, !dbg !2911
  %88 = load %struct.tree_type*, %struct.tree_type** %87, align 8, !dbg !2911
  %precision581 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %88, i64 0, i32 6, !dbg !2911
  %bf.load582 = load i32, i32* %precision581, align 4, !dbg !2911
  %bf.clear583 = and i32 %bf.load582, 1023, !dbg !2911
  %cmp584 = icmp ult i32 %bf.clear8, %bf.clear583, !dbg !2912
  br i1 %cmp584, label %if.end604, label %land.lhs.true586, !dbg !2913

land.lhs.true586:                                 ; preds = %land.lhs.true577
  %89 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %88, i64 0, i32 0, i32 0, i32 0, !dbg !2913
  %bf.load590 = load i64, i64* %86, align 8, !dbg !2914
  %bf.load597 = load i64, i64* %89, align 8, !dbg !2915
  %bf.lshr59154 = xor i64 %bf.load590, %bf.load597, !dbg !2916
  %90 = and i64 %bf.lshr59154, 2097152, !dbg !2916
  %cmp601 = icmp eq i64 %90, 0, !dbg !2916
  br i1 %cmp601, label %cleanup605, label %if.end604, !dbg !2917

if.end604:                                        ; preds = %land.lhs.true577, %sw.bb558, %land.lhs.true586
  br label %cleanup605, !dbg !2918

cleanup605:                                       ; preds = %land.lhs.true586, %if.end604
  %cleanup.dest.slot.3 = phi i32 [ 5, %if.end604 ], [ 6, %land.lhs.true586 ]
  switch i32 %cleanup.dest.slot.3, label %cleanup929 [
    i32 5, label %sw.epilog902
    i32 6, label %trunc1
  ]

trunc1:                                           ; preds = %if.then452, %if.end399, %if.end399, %if.end399, %if.end399, %if.end399, %land.lhs.true410, %cleanup605, %cleanup555
  call void @llvm.dbg.label(metadata !2655), !dbg !2919
  %operands611 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2920
  %91 = load %union.tree_node*, %union.tree_node** %operands611, align 8, !dbg !2920
  %call613 = tail call %union.tree_node* @get_unwidened(%union.tree_node* %91, %union.tree_node* %type) #6, !dbg !2921
  call void @llvm.dbg.value(metadata %union.tree_node* %call613, metadata !2647, metadata !DIExpression()), !dbg !2922
  %arrayidx617 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands611, i64 1, !dbg !2923
  %92 = load %union.tree_node*, %union.tree_node** %arrayidx617, align 8, !dbg !2923
  %call618 = tail call %union.tree_node* @get_unwidened(%union.tree_node* %92, %union.tree_node* %type) #6, !dbg !2924
  call void @llvm.dbg.value(metadata %union.tree_node* %call618, metadata !2649, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !2650, metadata !DIExpression()), !dbg !2925
  %bf.load642 = load i64, i64* %49, align 8, !dbg !2926
  %bf.cast64428 = and i64 %bf.load642, 65535, !dbg !2928
  %cmp645 = icmp eq i64 %bf.cast64428, 6, !dbg !2928
  br i1 %cmp645, label %if.then647, label %if.end658, !dbg !2929

if.then647:                                       ; preds = %trunc1
  %93 = load %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 3), align 8, !dbg !2930
  %bf.load650 = load i32, i32* %precision6, align 4, !dbg !2931
  %bf.clear651 = and i32 %bf.load650, 1023, !dbg !2931
  %bf.lshr654 = lshr i64 %bf.load642, 21, !dbg !2932
  %94 = trunc i64 %bf.lshr654 to i32, !dbg !2932
  %bf.cast656 = and i32 %94, 1, !dbg !2932
  %call657 = tail call %union.tree_node* %93(i32 %bf.clear651, i32 %bf.cast656) #6, !dbg !2933
  call void @llvm.dbg.value(metadata %union.tree_node* %call657, metadata !2650, metadata !DIExpression()), !dbg !2925
  %.pre60 = bitcast %union.tree_node* %call657 to %struct.tree_type*, !dbg !2934
  br label %if.end658, !dbg !2936

if.end658:                                        ; preds = %if.then647, %trunc1
  %type659.pre-phi = phi %struct.tree_type* [ %.pre60, %if.then647 ], [ %type5, %trunc1 ], !dbg !2934
  %typex.0 = phi %union.tree_node* [ %call657, %if.then647 ], [ %type, %trunc1 ], !dbg !2925
  call void @llvm.dbg.value(metadata %union.tree_node* %typex.0, metadata !2650, metadata !DIExpression()), !dbg !2925
  %precision660 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type659.pre-phi, i64 0, i32 6, !dbg !2934
  %bf.load661 = load i32, i32* %precision660, align 4, !dbg !2934
  %bf.clear662 = and i32 %bf.load661, 1023, !dbg !2934
  %cmp663 = icmp eq i32 %bf.clear662, %bf.clear4, !dbg !2937
  br i1 %cmp663, label %cleanup745, label %if.then665, !dbg !2938

if.then665:                                       ; preds = %if.end658
  %95 = bitcast %union.tree_node** %type1 to i64**, !dbg !2939
  %96 = load i64*, i64** %95, align 8, !dbg !2939
  %bf.load669 = load i64, i64* %96, align 8, !dbg !2939
  %bf.cast67229 = and i64 %bf.load669, 2097152, !dbg !2939
  %tobool673 = icmp eq i64 %bf.cast67229, 0, !dbg !2939
  br i1 %tobool673, label %lor.lhs.false674, label %if.then735, !dbg !2942

lor.lhs.false674:                                 ; preds = %if.then665
  %type676 = getelementptr inbounds %union.tree_node, %union.tree_node* %call613, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2943
  %97 = bitcast %union.tree_node** %type676 to i64**, !dbg !2943
  %98 = load i64*, i64** %97, align 8, !dbg !2943
  %bf.load678 = load i64, i64* %98, align 8, !dbg !2943
  %bf.cast68130 = and i64 %bf.load678, 2097152, !dbg !2943
  %tobool682 = icmp eq i64 %bf.cast68130, 0, !dbg !2943
  br i1 %tobool682, label %lor.lhs.false704, label %land.lhs.true683, !dbg !2944

land.lhs.true683:                                 ; preds = %lor.lhs.false674
  %type685 = getelementptr inbounds %union.tree_node, %union.tree_node* %call618, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2945
  %99 = bitcast %union.tree_node** %type685 to i64**, !dbg !2945
  %100 = load i64*, i64** %99, align 8, !dbg !2945
  %bf.load687 = load i64, i64* %100, align 8, !dbg !2945
  %bf.cast69033 = and i64 %bf.load687, 2097152, !dbg !2945
  %tobool691 = icmp ne i64 %bf.cast69033, 0, !dbg !2945
  %bf.cast.off17 = add nsw i32 %bf.cast, -83, !dbg !2946
  %switch18 = icmp ult i32 %bf.cast.off17, 4, !dbg !2946
  %or.cond19 = or i1 %tobool691, %switch18, !dbg !2946
  br i1 %or.cond19, label %if.then735, label %lor.lhs.false707, !dbg !2946

lor.lhs.false704:                                 ; preds = %lor.lhs.false674
  %cmp705.old = icmp eq i32 %bf.cast, 83, !dbg !2947
  br i1 %cmp705.old, label %if.then735, label %lor.lhs.false707, !dbg !2948

lor.lhs.false707:                                 ; preds = %land.lhs.true683, %lor.lhs.false704
  %tobool715 = icmp ne i64 %bf.cast68130, 0, !dbg !2949
  %101 = load i32, i32* @flag_wrapv, align 4, !dbg !2949
  %tobool717 = icmp ne i32 %101, 0, !dbg !2949
  %or.cond14 = or i1 %tobool715, %tobool717, !dbg !2949
  br i1 %or.cond14, label %lor.lhs.false718, label %land.lhs.true729, !dbg !2949

lor.lhs.false718:                                 ; preds = %lor.lhs.false707
  %type720 = getelementptr inbounds %union.tree_node, %union.tree_node* %call618, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2950
  %102 = bitcast %union.tree_node** %type720 to i64**, !dbg !2950
  %103 = load i64*, i64** %102, align 8, !dbg !2950
  %bf.load722 = load i64, i64* %103, align 8, !dbg !2950
  %bf.cast72532 = and i64 %bf.load722, 2097152, !dbg !2950
  %tobool726 = icmp ne i64 %bf.cast72532, 0, !dbg !2950
  %or.cond15 = or i1 %tobool726, %tobool717, !dbg !2950
  br i1 %or.cond15, label %if.else737, label %land.lhs.true729, !dbg !2950

land.lhs.true729:                                 ; preds = %lor.lhs.false718, %lor.lhs.false707
  %bf.cast.off = add nsw i32 %bf.cast, -63, !dbg !2951
  %switch16 = icmp ult i32 %bf.cast.off, 2, !dbg !2951
  br i1 %switch16, label %if.then735, label %if.else737, !dbg !2951

if.then735:                                       ; preds = %if.then665, %land.lhs.true729, %land.lhs.true683, %lor.lhs.false704
  %call736 = tail call %union.tree_node* @unsigned_type_for(%union.tree_node* %typex.0) #6, !dbg !2952
  call void @llvm.dbg.value(metadata %union.tree_node* %call736, metadata !2650, metadata !DIExpression()), !dbg !2925
  br label %if.end739, !dbg !2953

if.else737:                                       ; preds = %land.lhs.true729, %lor.lhs.false718
  %call738 = tail call %union.tree_node* @signed_type_for(%union.tree_node* %typex.0) #6, !dbg !2954
  call void @llvm.dbg.value(metadata %union.tree_node* %call738, metadata !2650, metadata !DIExpression()), !dbg !2925
  br label %if.end739

if.end739:                                        ; preds = %if.else737, %if.then735
  %typex.1 = phi %union.tree_node* [ %call736, %if.then735 ], [ %call738, %if.else737 ], !dbg !2955
  call void @llvm.dbg.value(metadata %union.tree_node* %typex.1, metadata !2650, metadata !DIExpression()), !dbg !2925
  %call740 = tail call %union.tree_node* @convert(%union.tree_node* %typex.1, %union.tree_node* %call613) #6, !dbg !2956
  %call741 = tail call %union.tree_node* @convert(%union.tree_node* %typex.1, %union.tree_node* %call618) #6, !dbg !2956
  %call742 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %bf.cast, %union.tree_node* %typex.1, %union.tree_node* %call740, %union.tree_node* %call741) #6, !dbg !2956
  %call743 = tail call %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %call742) #6, !dbg !2957
  br label %cleanup745, !dbg !2958

cleanup745:                                       ; preds = %if.end658, %if.end739
  %cleanup.dest.slot.4 = phi i1 [ false, %if.end739 ], [ true, %if.end658 ]
  %retval.6 = phi %union.tree_node* [ %call743, %if.end739 ], [ %retval.3, %if.end658 ], !dbg !2656
  br i1 %cleanup.dest.slot.4, label %sw.epilog902, label %cleanup929

sw.bb753:                                         ; preds = %if.end399, %if.end399
  %104 = bitcast %union.tree_node** %type1 to i64**, !dbg !2959
  %105 = load i64*, i64** %104, align 8, !dbg !2959
  %bf.load758 = load i64, i64* %105, align 8, !dbg !2959
  %bf.cast76127 = and i64 %bf.load758, 2097152, !dbg !2959
  %tobool762 = icmp eq i64 %bf.cast76127, 0, !dbg !2959
  br i1 %tobool762, label %if.else765, label %if.then763, !dbg !2961

if.then763:                                       ; preds = %sw.bb753
  %call764 = tail call %union.tree_node* @unsigned_type_for(%union.tree_node* %type) #6, !dbg !2962
  call void @llvm.dbg.value(metadata %union.tree_node* %call764, metadata !2653, metadata !DIExpression()), !dbg !2963
  br label %if.end767, !dbg !2964

if.else765:                                       ; preds = %sw.bb753
  %call766 = tail call %union.tree_node* @signed_type_for(%union.tree_node* %type) #6, !dbg !2965
  call void @llvm.dbg.value(metadata %union.tree_node* %call766, metadata !2653, metadata !DIExpression()), !dbg !2963
  br label %if.end767

if.end767:                                        ; preds = %if.else765, %if.then763
  %typex754.0 = phi %union.tree_node* [ %call764, %if.then763 ], [ %call766, %if.else765 ], !dbg !2966
  call void @llvm.dbg.value(metadata %union.tree_node* %typex754.0, metadata !2653, metadata !DIExpression()), !dbg !2963
  %operands769 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2967
  %106 = load %union.tree_node*, %union.tree_node** %operands769, align 8, !dbg !2967
  %call771 = tail call %union.tree_node* @convert(%union.tree_node* %typex754.0, %union.tree_node* %106) #6, !dbg !2967
  %call772 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 %bf.cast, %union.tree_node* %typex754.0, %union.tree_node* %call771) #6, !dbg !2967
  %call773 = tail call %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %call772) #6, !dbg !2968
  br label %cleanup929

sw.bb775:                                         ; preds = %if.end399
  %operands777 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2969
  %107 = bitcast %union.tree_node** %operands777 to %struct.tree_common**, !dbg !2969
  %108 = load %struct.tree_common*, %struct.tree_common** %107, align 8, !dbg !2969
  %type780 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %108, i64 0, i32 2, !dbg !2969
  %109 = bitcast %union.tree_node** %type780 to i64**, !dbg !2969
  %110 = load i64*, i64** %109, align 8, !dbg !2969
  %bf.load782 = load i64, i64* %110, align 8, !dbg !2969
  %bf.cast78424 = and i64 %bf.load782, 65535, !dbg !2971
  %cmp785 = icmp eq i64 %bf.cast78424, 14, !dbg !2971
  %111 = bitcast i64* %110 to %union.tree_node*, !dbg !2972
  %112 = bitcast %struct.tree_common* %108 to %union.tree_node*, !dbg !2972
  br i1 %cmp785, label %land.lhs.true787, label %if.end846, !dbg !2972

land.lhs.true787:                                 ; preds = %sw.bb775
  br i1 true, label %cond.true799, label %cond.false806, !dbg !2973

cond.true799:                                     ; preds = %land.lhs.true787
  %call805 = tail call i32 @vector_type_mode(%union.tree_node* %111) #6, !dbg !2973
  %phitmp = zext i32 %call805 to i64, !dbg !2973
  br label %cond.end817, !dbg !2973

cond.false806:                                    ; preds = %land.lhs.true787
  br label %cond.end817, !dbg !2973

cond.end817:                                      ; preds = %cond.false806, %cond.true799
  %cond818 = phi i64 [ %phitmp, %cond.true799 ], [ 0, %cond.false806 ]
  %arrayidx820 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %cond818, !dbg !2973
  %113 = load i8, i8* %arrayidx820, align 1, !dbg !2973
  %bf.load824 = load i64, i64* %49, align 8, !dbg !2974
  %bf.cast82626 = and i64 %bf.load824, 65535, !dbg !2974
  %cmp827 = icmp eq i64 %bf.cast82626, 14, !dbg !2974
  br i1 %cmp827, label %cond.true829, label %cond.false831, !dbg !2974

cond.true829:                                     ; preds = %cond.end817
  %call830 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !2974
  br label %cond.end837, !dbg !2974

cond.false831:                                    ; preds = %cond.end817
  %bf.load834 = load i32, i32* %precision6, align 4, !dbg !2974
  %bf.lshr835 = lshr i32 %bf.load834, 16, !dbg !2974
  %bf.clear836 = and i32 %bf.lshr835, 255, !dbg !2974
  br label %cond.end837, !dbg !2974

cond.end837:                                      ; preds = %cond.false831, %cond.true829
  %cond838 = phi i32 [ %call830, %cond.true829 ], [ %bf.clear836, %cond.false831 ], !dbg !2974
  %idxprom839 = zext i32 %cond838 to i64, !dbg !2974
  %arrayidx840 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom839, !dbg !2974
  %114 = load i8, i8* %arrayidx840, align 1, !dbg !2974
  %cmp843 = icmp eq i8 %113, %114, !dbg !2975
  br i1 %cmp843, label %cond.end837.if.end846_crit_edge, label %sw.epilog902, !dbg !2976

cond.end837.if.end846_crit_edge:                  ; preds = %cond.end837
  %.pre57 = load %union.tree_node*, %union.tree_node** %operands777, align 8, !dbg !2977
  br label %if.end846, !dbg !2976

if.end846:                                        ; preds = %cond.end837.if.end846_crit_edge, %sw.bb775
  %115 = phi %union.tree_node* [ %.pre57, %cond.end837.if.end846_crit_edge ], [ %112, %sw.bb775 ], !dbg !2977
  %call850 = tail call %union.tree_node* @get_unwidened(%union.tree_node* %115, %union.tree_node* %type) #6, !dbg !2978
  %call851 = tail call %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %call850) #6, !dbg !2979
  br label %cleanup929, !dbg !2980

sw.bb852:                                         ; preds = %if.end399
  %operands854 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2981
  %116 = load %union.tree_node*, %union.tree_node** %operands854, align 8, !dbg !2981
  %arrayidx858 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands854, i64 1, !dbg !2981
  %117 = bitcast %union.tree_node** %arrayidx858 to %struct.tree_common**, !dbg !2981
  %118 = load %struct.tree_common*, %struct.tree_common** %117, align 8, !dbg !2981
  %type860 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %118, i64 0, i32 2, !dbg !2981
  %119 = bitcast %union.tree_node** %type860 to i64**, !dbg !2981
  %120 = load i64*, i64** %119, align 8, !dbg !2981
  %bf.load862 = load i64, i64* %120, align 8, !dbg !2981
  %bf.cast86422 = and i64 %bf.load862, 65535, !dbg !2981
  %cmp865 = icmp eq i64 %bf.cast86422, 19, !dbg !2981
  %121 = bitcast %struct.tree_common* %118 to %union.tree_node*, !dbg !2981
  br i1 %cmp865, label %cond.end876, label %cond.false871, !dbg !2981

cond.false871:                                    ; preds = %sw.bb852
  %call875 = tail call %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %121) #6, !dbg !2981
  br label %cond.end876, !dbg !2981

cond.end876:                                      ; preds = %sw.bb852, %cond.false871
  %cond877 = phi %union.tree_node* [ %call875, %cond.false871 ], [ %121, %sw.bb852 ], !dbg !2981
  %arrayidx880 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands854, i64 2, !dbg !2981
  %122 = bitcast %union.tree_node** %arrayidx880 to %struct.tree_common**, !dbg !2981
  %123 = load %struct.tree_common*, %struct.tree_common** %122, align 8, !dbg !2981
  %type882 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %123, i64 0, i32 2, !dbg !2981
  %124 = bitcast %union.tree_node** %type882 to i64**, !dbg !2981
  %125 = load i64*, i64** %124, align 8, !dbg !2981
  %bf.load884 = load i64, i64* %125, align 8, !dbg !2981
  %bf.cast88623 = and i64 %bf.load884, 65535, !dbg !2981
  %cmp887 = icmp eq i64 %bf.cast88623, 19, !dbg !2981
  %126 = bitcast %struct.tree_common* %123 to %union.tree_node*, !dbg !2981
  br i1 %cmp887, label %cond.end898, label %cond.false893, !dbg !2981

cond.false893:                                    ; preds = %cond.end876
  %call897 = tail call %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %126) #6, !dbg !2981
  br label %cond.end898, !dbg !2981

cond.end898:                                      ; preds = %cond.end876, %cond.false893
  %cond899 = phi %union.tree_node* [ %call897, %cond.false893 ], [ %126, %cond.end876 ], !dbg !2981
  %call900 = tail call %union.tree_node* @fold_build3_stat_loc(i32 0, i32 56, %union.tree_node* %type, %union.tree_node* %116, %union.tree_node* %cond877, %union.tree_node* %cond899) #6, !dbg !2981
  br label %cleanup929, !dbg !2982

sw.epilog902:                                     ; preds = %land.lhs.true436, %cond.end837, %if.end399, %cleanup745, %sw.bb419, %land.lhs.true429, %land.lhs.true443, %sw.bb400, %land.lhs.true410, %cleanup605, %cleanup555
  %call903 = tail call %union.tree_node* @build1_stat(i32 113, %union.tree_node* %type, %union.tree_node* %expr) #6, !dbg !2983
  br label %cleanup929, !dbg !2984

sw.bb904:                                         ; preds = %if.end255
  %call905 = tail call %union.tree_node* @build1_stat(i32 77, %union.tree_node* %type, %union.tree_node* %expr) #6, !dbg !2985
  br label %cleanup929, !dbg !2986

sw.bb906:                                         ; preds = %if.end255
  %call907 = tail call %union.tree_node* @build1_stat(i32 115, %union.tree_node* %type, %union.tree_node* %expr) #6, !dbg !2987
  br label %cleanup929, !dbg !2988

sw.bb908:                                         ; preds = %if.end255
  %127 = bitcast %union.tree_node** %type1 to %struct.tree_common**, !dbg !2989
  %128 = load %struct.tree_common*, %struct.tree_common** %127, align 8, !dbg !2989
  %type912 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %128, i64 0, i32 2, !dbg !2989
  %129 = load %union.tree_node*, %union.tree_node** %type912, align 8, !dbg !2989
  %call913 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 43, %union.tree_node* %129, %union.tree_node* %expr) #6, !dbg !2989
  %call914 = tail call %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %call913) #6, !dbg !2990
  br label %cleanup929, !dbg !2991

sw.bb915:                                         ; preds = %if.end255
  %130 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !2992
  %131 = bitcast %union.tree_node** %type1 to %struct.tree_type**, !dbg !2994
  %132 = load %struct.tree_type*, %struct.tree_type** %131, align 8, !dbg !2994
  %size921 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %132, i64 0, i32 2, !dbg !2994
  %133 = load %union.tree_node*, %union.tree_node** %size921, align 8, !dbg !2994
  %call922 = tail call i32 @tree_int_cst_equal(%union.tree_node* %130, %union.tree_node* %133) #6, !dbg !2995
  %tobool923 = icmp eq i32 %call922, 0, !dbg !2995
  br i1 %tobool923, label %if.then924, label %if.end925, !dbg !2996

if.then924:                                       ; preds = %sw.bb915
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2997
  %134 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2999
  br label %cleanup929, !dbg !3000

if.end925:                                        ; preds = %sw.bb915
  %call926 = tail call %union.tree_node* @build1_stat(i32 118, %union.tree_node* %type, %union.tree_node* %expr) #6, !dbg !3001
  br label %cleanup929, !dbg !3002

sw.default927:                                    ; preds = %if.end255
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3003
  %135 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !3004
  %call928 = tail call %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %135) #6, !dbg !3005
  br label %cleanup929, !dbg !3006

cleanup929:                                       ; preds = %if.end328, %if.else461, %if.then469, %if.end332, %cleanup, %cleanup249, %cleanup745, %sw.default927, %if.end925, %if.then924, %sw.bb908, %sw.bb906, %sw.bb904, %sw.epilog902, %cond.end898, %if.end846, %if.end767, %cleanup605, %cleanup555, %cond.end387, %if.then276, %if.end265, %if.then263, %if.then
  %retval.9 = phi %union.tree_node* [ %retval.0, %cleanup ], [ %call928, %sw.default927 ], [ %call926, %if.end925 ], [ %134, %if.then924 ], [ %call914, %sw.bb908 ], [ %call907, %sw.bb906 ], [ %call905, %sw.bb904 ], [ %call277, %if.then276 ], [ %call396, %cond.end387 ], [ %call903, %sw.epilog902 ], [ %call900, %cond.end898 ], [ %call851, %if.end846 ], [ %call773, %if.end767 ], [ %retval.6, %cleanup745 ], [ %retval.3, %cleanup605 ], [ %retval.3, %cleanup555 ], [ %call264, %if.then263 ], [ %call272, %if.end265 ], [ %retval.2, %cleanup249 ], [ %5, %if.then ], [ %call333, %if.end332 ], [ %call329, %if.end328 ], [ %call470, %if.then469 ], [ %call462, %if.else461 ], !dbg !2656
  ret %union.tree_node* %retval.9, !dbg !3007
}

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @copy_node_stat(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_unary_loc(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @tree_int_cst_sgn(%union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @tree_int_cst_lt(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @get_unwidened(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @integer_all_onesp(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local %union.tree_node* @unsigned_type_for(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @signed_type_for(%union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local %union.tree_node* @fold_build3_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #1

declare dso_local i32 @tree_int_cst_equal(%union.tree_node*, %union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @convert_to_complex(%union.tree_node* %type, %union.tree_node* %expr) local_unnamed_addr #4 !dbg !3008 {
entry:
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3016
  br label %tailrecurse, !dbg !3017

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %expr.tr = phi %union.tree_node* [ %expr, %entry ], [ %expr.tr.be, %tailrecurse.backedge ]
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3010, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr, metadata !3011, metadata !DIExpression()), !dbg !3016
  %0 = load %union.tree_node*, %union.tree_node** %type1, align 8, !dbg !3018
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3012, metadata !DIExpression()), !dbg !3016
  %type3 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3019
  %1 = bitcast %union.tree_node** %type3 to i64**, !dbg !3019
  %2 = load i64*, i64** %1, align 8, !dbg !3019
  %bf.load = load i64, i64* %2, align 8, !dbg !3019
  %3 = trunc i64 %bf.load to i16, !dbg !3019
  switch i16 %3, label %sw.default [
    i16 9, label %sw.bb
    i16 11, label %sw.bb
    i16 8, label %sw.bb
    i16 6, label %sw.bb
    i16 7, label %sw.bb
    i16 13, label %sw.bb6
    i16 10, label %sw.bb41
    i16 12, label %sw.bb41
  ], !dbg !3020

sw.bb:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %expr.tr.lcssa = phi %union.tree_node* [ %expr.tr, %tailrecurse ], [ %expr.tr, %tailrecurse ], [ %expr.tr, %tailrecurse ], [ %expr.tr, %tailrecurse ], [ %expr.tr, %tailrecurse ]
  %.lcssa9 = phi %union.tree_node* [ %0, %tailrecurse ], [ %0, %tailrecurse ], [ %0, %tailrecurse ], [ %0, %tailrecurse ], [ %0, %tailrecurse ], !dbg !3018
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa, metadata !3011, metadata !DIExpression()), !dbg !3016
  %call = tail call %union.tree_node* @convert(%union.tree_node* %.lcssa9, %union.tree_node* %expr.tr.lcssa) #6, !dbg !3021
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !3021
  %call4 = tail call %union.tree_node* @convert(%union.tree_node* %.lcssa9, %union.tree_node* %4) #6, !dbg !3021
  %call5 = tail call %union.tree_node* @build2_stat(i32 123, %union.tree_node* %type, %union.tree_node* %call, %union.tree_node* %call4) #6, !dbg !3021
  br label %cleanup44, !dbg !3022

sw.bb6:                                           ; preds = %tailrecurse
  %expr.tr.lcssa11 = phi %union.tree_node* [ %expr.tr, %tailrecurse ]
  %.lcssa10 = phi %union.tree_node* [ %0, %tailrecurse ], !dbg !3018
  %.lcssa8 = phi i64* [ %2, %tailrecurse ], !dbg !3019
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa11, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa11, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.tr.lcssa11, metadata !3011, metadata !DIExpression()), !dbg !3016
  %type10 = getelementptr inbounds i64, i64* %.lcssa8, i64 2, !dbg !3023
  %5 = bitcast i64* %type10 to %struct.tree_type**, !dbg !3023
  %6 = load %struct.tree_type*, %struct.tree_type** %5, align 8, !dbg !3023
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %6, i64 0, i32 16, !dbg !3024
  %7 = load %union.tree_node*, %union.tree_node** %main_variant, align 8, !dbg !3024
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %.lcssa10, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3026
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8, !dbg !3026
  %cmp = icmp eq %union.tree_node* %7, %9, !dbg !3027
  br i1 %cmp, label %cleanup44, label %if.else, !dbg !3028

if.else:                                          ; preds = %sw.bb6
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr.lcssa11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3029
  %bf.load15 = load i64, i64* %10, align 8, !dbg !3029
  %bf.cast171 = and i64 %bf.load15, 65535, !dbg !3031
  %cmp18 = icmp eq i64 %bf.cast171, 123, !dbg !3031
  br i1 %cmp18, label %if.then19, label %if.else26, !dbg !3032

if.then19:                                        ; preds = %if.else
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.tr.lcssa11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3033
  %11 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3033
  %call20 = tail call %union.tree_node* @convert(%union.tree_node* %.lcssa10, %union.tree_node* %11) #6, !dbg !3033
  %arrayidx23 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !3033
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx23, align 8, !dbg !3033
  %call24 = tail call %union.tree_node* @convert(%union.tree_node* %.lcssa10, %union.tree_node* %12) #6, !dbg !3033
  %call25 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 123, %union.tree_node* %type, %union.tree_node* %call20, %union.tree_node* %call24) #6, !dbg !3033
  br label %cleanup44, !dbg !3034

if.else26:                                        ; preds = %if.else
  %call27 = tail call %union.tree_node* @save_expr(%union.tree_node* %expr.tr.lcssa11) #6, !dbg !3035
  call void @llvm.dbg.value(metadata %union.tree_node* %call27, metadata !3011, metadata !DIExpression()), !dbg !3016
  %type29 = getelementptr inbounds %union.tree_node, %union.tree_node* %call27, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3037
  %13 = bitcast %union.tree_node** %type29 to %struct.tree_common**, !dbg !3037
  %14 = load %struct.tree_common*, %struct.tree_common** %13, align 8, !dbg !3037
  %type31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %14, i64 0, i32 2, !dbg !3037
  %15 = load %union.tree_node*, %union.tree_node** %type31, align 8, !dbg !3037
  %call32 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 43, %union.tree_node* %15, %union.tree_node* %call27) #6, !dbg !3037
  %call33 = tail call %union.tree_node* @convert(%union.tree_node* %.lcssa10, %union.tree_node* %call32) #6, !dbg !3037
  %16 = load %struct.tree_common*, %struct.tree_common** %13, align 8, !dbg !3037
  %type37 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %16, i64 0, i32 2, !dbg !3037
  %17 = load %union.tree_node*, %union.tree_node** %type37, align 8, !dbg !3037
  %call38 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 44, %union.tree_node* %17, %union.tree_node* %call27) #6, !dbg !3037
  %call39 = tail call %union.tree_node* @convert(%union.tree_node* %.lcssa10, %union.tree_node* %call38) #6, !dbg !3037
  %call40 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 123, %union.tree_node* %type, %union.tree_node* %call33, %union.tree_node* %call39) #6, !dbg !3037
  br label %cleanup44, !dbg !3038

sw.bb41:                                          ; preds = %tailrecurse, %tailrecurse
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3039
  br label %tailrecurse.backedge, !dbg !3017

tailrecurse.backedge:                             ; preds = %sw.bb41, %sw.default
  %expr.tr.be = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !3040
  br label %tailrecurse, !dbg !3016

sw.default:                                       ; preds = %tailrecurse
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3041
  br label %tailrecurse.backedge, !dbg !3042

cleanup44:                                        ; preds = %if.then19, %if.else26, %sw.bb6, %sw.bb
  %retval.1 = phi %union.tree_node* [ %call5, %sw.bb ], [ %call25, %if.then19 ], [ %call40, %if.else26 ], [ %expr.tr.lcssa11, %sw.bb6 ], !dbg !3040
  ret %union.tree_node* %retval.1, !dbg !3043
}

declare dso_local %union.tree_node* @save_expr(%union.tree_node*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @convert_to_vector(%union.tree_node* %type, %union.tree_node* %expr) local_unnamed_addr #4 !dbg !3044 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3046, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !3047, metadata !DIExpression()), !dbg !3048
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3049
  %0 = bitcast %union.tree_node** %type1 to i64**, !dbg !3049
  %1 = load i64*, i64** %0, align 8, !dbg !3049
  %bf.load = load i64, i64* %1, align 8, !dbg !3049
  %2 = trunc i64 %bf.load to i16, !dbg !3049
  switch i16 %2, label %sw.default [
    i16 8, label %sw.bb
    i16 14, label %sw.bb
  ], !dbg !3050

sw.bb:                                            ; preds = %entry, %entry
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3051
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !3051
  %size6 = getelementptr inbounds i64, i64* %1, i64 4, !dbg !3054
  %5 = bitcast i64* %size6 to %union.tree_node**, !dbg !3054
  %6 = load %union.tree_node*, %union.tree_node** %5, align 8, !dbg !3054
  %call = tail call i32 @tree_int_cst_equal(%union.tree_node* %4, %union.tree_node* %6) #6, !dbg !3055
  %tobool = icmp eq i32 %call, 0, !dbg !3055
  br i1 %tobool, label %if.then, label %if.end, !dbg !3056

if.then:                                          ; preds = %sw.bb
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3057
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3059
  br label %return, !dbg !3060

if.end:                                           ; preds = %sw.bb
  %call7 = tail call %union.tree_node* @build1_stat(i32 118, %union.tree_node* %type, %union.tree_node* %expr) #6, !dbg !3061
  br label %return, !dbg !3062

sw.default:                                       ; preds = %entry
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3063
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3064
  br label %return, !dbg !3065

return:                                           ; preds = %sw.default, %if.end, %if.then
  %retval.0 = phi %union.tree_node* [ %8, %sw.default ], [ %call7, %if.end ], [ %7, %if.then ], !dbg !3066
  ret %union.tree_node* %retval.0, !dbg !3067
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @convert_to_fixed(%union.tree_node* %type, %union.tree_node* %expr) local_unnamed_addr #4 !dbg !3068 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3070, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !3071, metadata !DIExpression()), !dbg !3078
  %call = tail call i32 @integer_zerop(%union.tree_node* %expr) #6, !dbg !3079
  %tobool = icmp eq i32 %call, 0, !dbg !3079
  br i1 %tobool, label %if.else, label %if.then, !dbg !3080

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3081
  %bf.load = load i64, i64* %0, align 8, !dbg !3081
  %bf.cast4 = and i64 %bf.load, 65535, !dbg !3081
  %cmp = icmp eq i64 %bf.cast4, 14, !dbg !3081
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3081

cond.true:                                        ; preds = %if.then
  %call1 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !3081
  br label %cond.end, !dbg !3081

cond.false:                                       ; preds = %if.then
  %type2 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3081
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i64 0, i32 6, !dbg !3081
  %bf.load3 = load i32, i32* %mode, align 4, !dbg !3081
  %bf.lshr = lshr i32 %bf.load3, 16, !dbg !3081
  %bf.clear4 = and i32 %bf.lshr, 255, !dbg !3081
  br label %cond.end, !dbg !3081

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %bf.clear4, %cond.false ], !dbg !3081
  %sub = add i32 %cond, -20, !dbg !3081
  %idxprom = zext i32 %sub to i64, !dbg !3081
  %arrayidx = getelementptr inbounds [18 x %struct.fixed_value], [18 x %struct.fixed_value]* @fconst0, i64 0, i64 %idxprom, !dbg !3081
  %call5 = tail call %union.tree_node* @build_fixed(%union.tree_node* %type, %struct.fixed_value* nonnull byval(%struct.fixed_value) align 8 %arrayidx) #6, !dbg !3082
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3072, metadata !DIExpression()), !dbg !3083
  br label %return

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @integer_onep(%union.tree_node* %expr) #6, !dbg !3084
  %tobool7 = icmp eq i32 %call6, 0, !dbg !3084
  br i1 %tobool7, label %if.end69, label %land.lhs.true, !dbg !3085

land.lhs.true:                                    ; preds = %if.else
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3086
  %bf.load9 = load i64, i64* %1, align 8, !dbg !3086
  %bf.cast111 = and i64 %bf.load9, 65535, !dbg !3086
  %cmp12 = icmp eq i64 %bf.cast111, 14, !dbg !3086
  br i1 %cmp12, label %cond.true13, label %cond.false15, !dbg !3086

cond.true13:                                      ; preds = %land.lhs.true
  %call14 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !3086
  br label %cond.end21, !dbg !3086

cond.false15:                                     ; preds = %land.lhs.true
  %type16 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3086
  %mode17 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i64 0, i32 6, !dbg !3086
  %bf.load18 = load i32, i32* %mode17, align 4, !dbg !3086
  %bf.lshr19 = lshr i32 %bf.load18, 16, !dbg !3086
  %bf.clear20 = and i32 %bf.lshr19, 255, !dbg !3086
  br label %cond.end21, !dbg !3086

cond.end21:                                       ; preds = %cond.false15, %cond.true13
  %cond22 = phi i32 [ %call14, %cond.true13 ], [ %bf.clear20, %cond.false15 ], !dbg !3086
  %idxprom23 = zext i32 %cond22 to i64, !dbg !3086
  %arrayidx24 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom23, !dbg !3086
  %2 = load i8, i8* %arrayidx24, align 1, !dbg !3086
  %cmp25 = icmp eq i8 %2, 6, !dbg !3086
  br i1 %cmp25, label %if.then48, label %lor.lhs.false, !dbg !3086

lor.lhs.false:                                    ; preds = %cond.end21
  %bf.load28 = load i64, i64* %1, align 8, !dbg !3086
  %bf.cast302 = and i64 %bf.load28, 65535, !dbg !3086
  %cmp31 = icmp eq i64 %bf.cast302, 14, !dbg !3086
  br i1 %cmp31, label %cond.true33, label %cond.false35, !dbg !3086

cond.true33:                                      ; preds = %lor.lhs.false
  %call34 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !3086
  br label %cond.end41, !dbg !3086

cond.false35:                                     ; preds = %lor.lhs.false
  %type36 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3086
  %mode37 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type36, i64 0, i32 6, !dbg !3086
  %bf.load38 = load i32, i32* %mode37, align 4, !dbg !3086
  %bf.lshr39 = lshr i32 %bf.load38, 16, !dbg !3086
  %bf.clear40 = and i32 %bf.lshr39, 255, !dbg !3086
  br label %cond.end41, !dbg !3086

cond.end41:                                       ; preds = %cond.false35, %cond.true33
  %cond42 = phi i32 [ %call34, %cond.true33 ], [ %bf.clear40, %cond.false35 ], !dbg !3086
  %idxprom43 = zext i32 %cond42 to i64, !dbg !3086
  %arrayidx44 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom43, !dbg !3086
  %3 = load i8, i8* %arrayidx44, align 1, !dbg !3086
  %cmp46 = icmp eq i8 %3, 7, !dbg !3086
  br i1 %cmp46, label %if.then48, label %if.end69, !dbg !3087

if.then48:                                        ; preds = %cond.end41, %cond.end21
  %bf.load50 = load i64, i64* %1, align 8, !dbg !3088
  %bf.cast523 = and i64 %bf.load50, 65535, !dbg !3088
  %cmp53 = icmp eq i64 %bf.cast523, 14, !dbg !3088
  br i1 %cmp53, label %cond.true55, label %cond.false57, !dbg !3088

cond.true55:                                      ; preds = %if.then48
  %call56 = tail call i32 @vector_type_mode(%union.tree_node* %type) #6, !dbg !3088
  br label %cond.end63, !dbg !3088

cond.false57:                                     ; preds = %if.then48
  %type58 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !3088
  %mode59 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type58, i64 0, i32 6, !dbg !3088
  %bf.load60 = load i32, i32* %mode59, align 4, !dbg !3088
  %bf.lshr61 = lshr i32 %bf.load60, 16, !dbg !3088
  %bf.clear62 = and i32 %bf.lshr61, 255, !dbg !3088
  br label %cond.end63, !dbg !3088

cond.end63:                                       ; preds = %cond.false57, %cond.true55
  %cond64 = phi i32 [ %call56, %cond.true55 ], [ %bf.clear62, %cond.false57 ], !dbg !3088
  %sub65 = add i32 %cond64, -30, !dbg !3088
  %idxprom66 = zext i32 %sub65 to i64, !dbg !3088
  %arrayidx67 = getelementptr inbounds [8 x %struct.fixed_value], [8 x %struct.fixed_value]* @fconst1, i64 0, i64 %idxprom66, !dbg !3088
  %call68 = tail call %union.tree_node* @build_fixed(%union.tree_node* %type, %struct.fixed_value* nonnull byval(%struct.fixed_value) align 8 %arrayidx67) #6, !dbg !3089
  call void @llvm.dbg.value(metadata %union.tree_node* %call68, metadata !3075, metadata !DIExpression()), !dbg !3090
  br label %return

if.end69:                                         ; preds = %if.else, %cond.end41
  %type70 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3091
  %4 = bitcast %union.tree_node** %type70 to i64**, !dbg !3091
  %5 = load i64*, i64** %4, align 8, !dbg !3091
  %bf.load72 = load i64, i64* %5, align 8, !dbg !3091
  %6 = trunc i64 %bf.load72 to i16, !dbg !3091
  switch i16 %6, label %sw.default [
    i16 11, label %sw.bb
    i16 8, label %sw.bb
    i16 6, label %sw.bb
    i16 7, label %sw.bb
    i16 9, label %sw.bb
    i16 13, label %sw.bb76
  ], !dbg !3092

sw.bb:                                            ; preds = %if.end69, %if.end69, %if.end69, %if.end69, %if.end69
  %call75 = tail call %union.tree_node* @build1_stat(i32 115, %union.tree_node* %type, %union.tree_node* %expr) #6, !dbg !3093
  br label %return, !dbg !3095

sw.bb76:                                          ; preds = %if.end69
  %type80 = getelementptr inbounds i64, i64* %5, i64 2, !dbg !3096
  %7 = bitcast i64* %type80 to %union.tree_node**, !dbg !3096
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !3096
  %call81 = tail call %union.tree_node* @fold_build1_stat_loc(i32 0, i32 43, %union.tree_node* %8, %union.tree_node* %expr) #6, !dbg !3096
  %call82 = tail call %union.tree_node* @convert(%union.tree_node* %type, %union.tree_node* %call81) #6, !dbg !3097
  br label %return, !dbg !3098

sw.default:                                       ; preds = %if.end69
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3099
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3100
  br label %return, !dbg !3101

return:                                           ; preds = %sw.default, %sw.bb76, %sw.bb, %cond.end63, %cond.end
  %retval.0 = phi %union.tree_node* [ %call5, %cond.end ], [ %call68, %cond.end63 ], [ %9, %sw.default ], [ %call82, %sw.bb76 ], [ %call75, %sw.bb ], !dbg !3078
  ret %union.tree_node* %retval.0, !dbg !3102
}

declare dso_local %union.tree_node* @build_fixed(%union.tree_node*, %struct.fixed_value* byval(%struct.fixed_value) align 8) local_unnamed_addr #1

declare dso_local i32 @integer_onep(%union.tree_node*) local_unnamed_addr #1

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1768, !1769, !1770}
!llvm.ident = !{!1771}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !1101, nameTableKind: None)
!1 = !DIFile(filename: "convert.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !151, !158, !165, !359, !381}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !4, line: 7, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!7 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!66 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!67 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!68 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!69 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!70 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!71 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!72 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!73 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!74 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!75 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!76 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!77 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!78 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!79 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!80 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!81 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!82 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!83 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!84 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!85 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!86 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!87 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!88 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!89 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!90 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!91 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!92 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!93 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!94 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!95 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!99 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!100 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!101 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!105 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!131 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !133, line: 280, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!135 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!139 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!141 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!142 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!143 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!144 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!145 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!146 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!147 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!148 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!149 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!150 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !133, line: 1817, baseType: !5, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156, !157}
!153 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !133, line: 1805, baseType: !5, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163, !164}
!160 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !133, line: 39, baseType: !5, size: 32, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!167 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!169 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!170 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!171 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!172 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!173 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!174 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!175 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!176 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!177 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!178 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!179 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!180 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!181 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!182 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!183 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!184 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!185 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!186 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!187 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!188 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!189 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!190 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!191 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!192 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!193 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!194 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!195 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!196 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!197 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!198 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!199 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!200 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!201 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!202 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!203 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!204 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!205 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!206 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!207 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!208 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!209 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!210 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!211 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!212 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!213 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!214 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!215 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!216 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!217 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!218 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!219 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!220 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!221 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!222 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!223 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!224 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!225 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!226 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!227 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!228 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!229 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!230 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!231 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!232 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!233 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!234 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!235 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!236 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!237 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!238 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!239 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!240 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!241 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!242 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!243 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!244 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!245 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!246 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!247 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!248 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!249 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!250 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!251 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!252 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!253 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!254 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!255 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!256 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!257 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!258 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!259 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!260 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!261 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!262 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!263 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!264 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!265 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!266 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!267 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!268 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!269 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!270 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!271 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!272 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!273 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!274 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!275 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!276 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!277 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!278 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!279 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!280 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!281 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!282 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!283 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!284 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!285 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!286 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!287 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!288 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!289 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!290 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!291 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!292 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!293 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!294 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!295 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!296 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!297 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!298 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!299 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!300 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!301 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!302 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!303 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!304 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!305 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!306 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!307 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!308 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!309 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!310 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!311 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!312 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!313 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!314 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!315 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!316 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!317 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!318 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!319 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!320 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!321 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!322 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!323 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!324 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!325 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!326 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!327 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!328 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!329 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!330 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!331 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!332 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!333 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!334 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!335 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!336 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!337 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!338 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!339 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!340 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!341 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!342 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!343 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!344 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!345 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!346 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!347 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!348 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!349 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!350 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!351 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!352 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!353 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!354 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!355 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!356 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!357 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!358 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !360, line: 36, baseType: !5, size: 32, elements: !361)
!360 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!362 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!363 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!364 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!365 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!366 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!367 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!368 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!369 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!370 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!371 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!372 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!373 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!374 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!375 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!376 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!377 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!378 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!379 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!380 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!381 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "built_in_function", file: !133, line: 220, baseType: !5, size: 32, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!383 = !DIEnumerator(name: "BUILT_IN_ACOS", value: 0, isUnsigned: true)
!384 = !DIEnumerator(name: "BUILT_IN_ACOSF", value: 1, isUnsigned: true)
!385 = !DIEnumerator(name: "BUILT_IN_ACOSH", value: 2, isUnsigned: true)
!386 = !DIEnumerator(name: "BUILT_IN_ACOSHF", value: 3, isUnsigned: true)
!387 = !DIEnumerator(name: "BUILT_IN_ACOSHL", value: 4, isUnsigned: true)
!388 = !DIEnumerator(name: "BUILT_IN_ACOSL", value: 5, isUnsigned: true)
!389 = !DIEnumerator(name: "BUILT_IN_ASIN", value: 6, isUnsigned: true)
!390 = !DIEnumerator(name: "BUILT_IN_ASINF", value: 7, isUnsigned: true)
!391 = !DIEnumerator(name: "BUILT_IN_ASINH", value: 8, isUnsigned: true)
!392 = !DIEnumerator(name: "BUILT_IN_ASINHF", value: 9, isUnsigned: true)
!393 = !DIEnumerator(name: "BUILT_IN_ASINHL", value: 10, isUnsigned: true)
!394 = !DIEnumerator(name: "BUILT_IN_ASINL", value: 11, isUnsigned: true)
!395 = !DIEnumerator(name: "BUILT_IN_ATAN", value: 12, isUnsigned: true)
!396 = !DIEnumerator(name: "BUILT_IN_ATAN2", value: 13, isUnsigned: true)
!397 = !DIEnumerator(name: "BUILT_IN_ATAN2F", value: 14, isUnsigned: true)
!398 = !DIEnumerator(name: "BUILT_IN_ATAN2L", value: 15, isUnsigned: true)
!399 = !DIEnumerator(name: "BUILT_IN_ATANF", value: 16, isUnsigned: true)
!400 = !DIEnumerator(name: "BUILT_IN_ATANH", value: 17, isUnsigned: true)
!401 = !DIEnumerator(name: "BUILT_IN_ATANHF", value: 18, isUnsigned: true)
!402 = !DIEnumerator(name: "BUILT_IN_ATANHL", value: 19, isUnsigned: true)
!403 = !DIEnumerator(name: "BUILT_IN_ATANL", value: 20, isUnsigned: true)
!404 = !DIEnumerator(name: "BUILT_IN_CBRT", value: 21, isUnsigned: true)
!405 = !DIEnumerator(name: "BUILT_IN_CBRTF", value: 22, isUnsigned: true)
!406 = !DIEnumerator(name: "BUILT_IN_CBRTL", value: 23, isUnsigned: true)
!407 = !DIEnumerator(name: "BUILT_IN_CEIL", value: 24, isUnsigned: true)
!408 = !DIEnumerator(name: "BUILT_IN_CEILF", value: 25, isUnsigned: true)
!409 = !DIEnumerator(name: "BUILT_IN_CEILL", value: 26, isUnsigned: true)
!410 = !DIEnumerator(name: "BUILT_IN_COPYSIGN", value: 27, isUnsigned: true)
!411 = !DIEnumerator(name: "BUILT_IN_COPYSIGNF", value: 28, isUnsigned: true)
!412 = !DIEnumerator(name: "BUILT_IN_COPYSIGNL", value: 29, isUnsigned: true)
!413 = !DIEnumerator(name: "BUILT_IN_COS", value: 30, isUnsigned: true)
!414 = !DIEnumerator(name: "BUILT_IN_COSF", value: 31, isUnsigned: true)
!415 = !DIEnumerator(name: "BUILT_IN_COSH", value: 32, isUnsigned: true)
!416 = !DIEnumerator(name: "BUILT_IN_COSHF", value: 33, isUnsigned: true)
!417 = !DIEnumerator(name: "BUILT_IN_COSHL", value: 34, isUnsigned: true)
!418 = !DIEnumerator(name: "BUILT_IN_COSL", value: 35, isUnsigned: true)
!419 = !DIEnumerator(name: "BUILT_IN_DREM", value: 36, isUnsigned: true)
!420 = !DIEnumerator(name: "BUILT_IN_DREMF", value: 37, isUnsigned: true)
!421 = !DIEnumerator(name: "BUILT_IN_DREML", value: 38, isUnsigned: true)
!422 = !DIEnumerator(name: "BUILT_IN_ERF", value: 39, isUnsigned: true)
!423 = !DIEnumerator(name: "BUILT_IN_ERFC", value: 40, isUnsigned: true)
!424 = !DIEnumerator(name: "BUILT_IN_ERFCF", value: 41, isUnsigned: true)
!425 = !DIEnumerator(name: "BUILT_IN_ERFCL", value: 42, isUnsigned: true)
!426 = !DIEnumerator(name: "BUILT_IN_ERFF", value: 43, isUnsigned: true)
!427 = !DIEnumerator(name: "BUILT_IN_ERFL", value: 44, isUnsigned: true)
!428 = !DIEnumerator(name: "BUILT_IN_EXP", value: 45, isUnsigned: true)
!429 = !DIEnumerator(name: "BUILT_IN_EXP10", value: 46, isUnsigned: true)
!430 = !DIEnumerator(name: "BUILT_IN_EXP10F", value: 47, isUnsigned: true)
!431 = !DIEnumerator(name: "BUILT_IN_EXP10L", value: 48, isUnsigned: true)
!432 = !DIEnumerator(name: "BUILT_IN_EXP2", value: 49, isUnsigned: true)
!433 = !DIEnumerator(name: "BUILT_IN_EXP2F", value: 50, isUnsigned: true)
!434 = !DIEnumerator(name: "BUILT_IN_EXP2L", value: 51, isUnsigned: true)
!435 = !DIEnumerator(name: "BUILT_IN_EXPF", value: 52, isUnsigned: true)
!436 = !DIEnumerator(name: "BUILT_IN_EXPL", value: 53, isUnsigned: true)
!437 = !DIEnumerator(name: "BUILT_IN_EXPM1", value: 54, isUnsigned: true)
!438 = !DIEnumerator(name: "BUILT_IN_EXPM1F", value: 55, isUnsigned: true)
!439 = !DIEnumerator(name: "BUILT_IN_EXPM1L", value: 56, isUnsigned: true)
!440 = !DIEnumerator(name: "BUILT_IN_FABS", value: 57, isUnsigned: true)
!441 = !DIEnumerator(name: "BUILT_IN_FABSF", value: 58, isUnsigned: true)
!442 = !DIEnumerator(name: "BUILT_IN_FABSL", value: 59, isUnsigned: true)
!443 = !DIEnumerator(name: "BUILT_IN_FDIM", value: 60, isUnsigned: true)
!444 = !DIEnumerator(name: "BUILT_IN_FDIMF", value: 61, isUnsigned: true)
!445 = !DIEnumerator(name: "BUILT_IN_FDIML", value: 62, isUnsigned: true)
!446 = !DIEnumerator(name: "BUILT_IN_FLOOR", value: 63, isUnsigned: true)
!447 = !DIEnumerator(name: "BUILT_IN_FLOORF", value: 64, isUnsigned: true)
!448 = !DIEnumerator(name: "BUILT_IN_FLOORL", value: 65, isUnsigned: true)
!449 = !DIEnumerator(name: "BUILT_IN_FMA", value: 66, isUnsigned: true)
!450 = !DIEnumerator(name: "BUILT_IN_FMAF", value: 67, isUnsigned: true)
!451 = !DIEnumerator(name: "BUILT_IN_FMAL", value: 68, isUnsigned: true)
!452 = !DIEnumerator(name: "BUILT_IN_FMAX", value: 69, isUnsigned: true)
!453 = !DIEnumerator(name: "BUILT_IN_FMAXF", value: 70, isUnsigned: true)
!454 = !DIEnumerator(name: "BUILT_IN_FMAXL", value: 71, isUnsigned: true)
!455 = !DIEnumerator(name: "BUILT_IN_FMIN", value: 72, isUnsigned: true)
!456 = !DIEnumerator(name: "BUILT_IN_FMINF", value: 73, isUnsigned: true)
!457 = !DIEnumerator(name: "BUILT_IN_FMINL", value: 74, isUnsigned: true)
!458 = !DIEnumerator(name: "BUILT_IN_FMOD", value: 75, isUnsigned: true)
!459 = !DIEnumerator(name: "BUILT_IN_FMODF", value: 76, isUnsigned: true)
!460 = !DIEnumerator(name: "BUILT_IN_FMODL", value: 77, isUnsigned: true)
!461 = !DIEnumerator(name: "BUILT_IN_FREXP", value: 78, isUnsigned: true)
!462 = !DIEnumerator(name: "BUILT_IN_FREXPF", value: 79, isUnsigned: true)
!463 = !DIEnumerator(name: "BUILT_IN_FREXPL", value: 80, isUnsigned: true)
!464 = !DIEnumerator(name: "BUILT_IN_GAMMA", value: 81, isUnsigned: true)
!465 = !DIEnumerator(name: "BUILT_IN_GAMMAF", value: 82, isUnsigned: true)
!466 = !DIEnumerator(name: "BUILT_IN_GAMMAL", value: 83, isUnsigned: true)
!467 = !DIEnumerator(name: "BUILT_IN_GAMMA_R", value: 84, isUnsigned: true)
!468 = !DIEnumerator(name: "BUILT_IN_GAMMAF_R", value: 85, isUnsigned: true)
!469 = !DIEnumerator(name: "BUILT_IN_GAMMAL_R", value: 86, isUnsigned: true)
!470 = !DIEnumerator(name: "BUILT_IN_HUGE_VAL", value: 87, isUnsigned: true)
!471 = !DIEnumerator(name: "BUILT_IN_HUGE_VALF", value: 88, isUnsigned: true)
!472 = !DIEnumerator(name: "BUILT_IN_HUGE_VALL", value: 89, isUnsigned: true)
!473 = !DIEnumerator(name: "BUILT_IN_HYPOT", value: 90, isUnsigned: true)
!474 = !DIEnumerator(name: "BUILT_IN_HYPOTF", value: 91, isUnsigned: true)
!475 = !DIEnumerator(name: "BUILT_IN_HYPOTL", value: 92, isUnsigned: true)
!476 = !DIEnumerator(name: "BUILT_IN_ILOGB", value: 93, isUnsigned: true)
!477 = !DIEnumerator(name: "BUILT_IN_ILOGBF", value: 94, isUnsigned: true)
!478 = !DIEnumerator(name: "BUILT_IN_ILOGBL", value: 95, isUnsigned: true)
!479 = !DIEnumerator(name: "BUILT_IN_INF", value: 96, isUnsigned: true)
!480 = !DIEnumerator(name: "BUILT_IN_INFF", value: 97, isUnsigned: true)
!481 = !DIEnumerator(name: "BUILT_IN_INFL", value: 98, isUnsigned: true)
!482 = !DIEnumerator(name: "BUILT_IN_INFD32", value: 99, isUnsigned: true)
!483 = !DIEnumerator(name: "BUILT_IN_INFD64", value: 100, isUnsigned: true)
!484 = !DIEnumerator(name: "BUILT_IN_INFD128", value: 101, isUnsigned: true)
!485 = !DIEnumerator(name: "BUILT_IN_J0", value: 102, isUnsigned: true)
!486 = !DIEnumerator(name: "BUILT_IN_J0F", value: 103, isUnsigned: true)
!487 = !DIEnumerator(name: "BUILT_IN_J0L", value: 104, isUnsigned: true)
!488 = !DIEnumerator(name: "BUILT_IN_J1", value: 105, isUnsigned: true)
!489 = !DIEnumerator(name: "BUILT_IN_J1F", value: 106, isUnsigned: true)
!490 = !DIEnumerator(name: "BUILT_IN_J1L", value: 107, isUnsigned: true)
!491 = !DIEnumerator(name: "BUILT_IN_JN", value: 108, isUnsigned: true)
!492 = !DIEnumerator(name: "BUILT_IN_JNF", value: 109, isUnsigned: true)
!493 = !DIEnumerator(name: "BUILT_IN_JNL", value: 110, isUnsigned: true)
!494 = !DIEnumerator(name: "BUILT_IN_LCEIL", value: 111, isUnsigned: true)
!495 = !DIEnumerator(name: "BUILT_IN_LCEILF", value: 112, isUnsigned: true)
!496 = !DIEnumerator(name: "BUILT_IN_LCEILL", value: 113, isUnsigned: true)
!497 = !DIEnumerator(name: "BUILT_IN_LDEXP", value: 114, isUnsigned: true)
!498 = !DIEnumerator(name: "BUILT_IN_LDEXPF", value: 115, isUnsigned: true)
!499 = !DIEnumerator(name: "BUILT_IN_LDEXPL", value: 116, isUnsigned: true)
!500 = !DIEnumerator(name: "BUILT_IN_LFLOOR", value: 117, isUnsigned: true)
!501 = !DIEnumerator(name: "BUILT_IN_LFLOORF", value: 118, isUnsigned: true)
!502 = !DIEnumerator(name: "BUILT_IN_LFLOORL", value: 119, isUnsigned: true)
!503 = !DIEnumerator(name: "BUILT_IN_LGAMMA", value: 120, isUnsigned: true)
!504 = !DIEnumerator(name: "BUILT_IN_LGAMMAF", value: 121, isUnsigned: true)
!505 = !DIEnumerator(name: "BUILT_IN_LGAMMAL", value: 122, isUnsigned: true)
!506 = !DIEnumerator(name: "BUILT_IN_LGAMMA_R", value: 123, isUnsigned: true)
!507 = !DIEnumerator(name: "BUILT_IN_LGAMMAF_R", value: 124, isUnsigned: true)
!508 = !DIEnumerator(name: "BUILT_IN_LGAMMAL_R", value: 125, isUnsigned: true)
!509 = !DIEnumerator(name: "BUILT_IN_LLCEIL", value: 126, isUnsigned: true)
!510 = !DIEnumerator(name: "BUILT_IN_LLCEILF", value: 127, isUnsigned: true)
!511 = !DIEnumerator(name: "BUILT_IN_LLCEILL", value: 128, isUnsigned: true)
!512 = !DIEnumerator(name: "BUILT_IN_LLFLOOR", value: 129, isUnsigned: true)
!513 = !DIEnumerator(name: "BUILT_IN_LLFLOORF", value: 130, isUnsigned: true)
!514 = !DIEnumerator(name: "BUILT_IN_LLFLOORL", value: 131, isUnsigned: true)
!515 = !DIEnumerator(name: "BUILT_IN_LLRINT", value: 132, isUnsigned: true)
!516 = !DIEnumerator(name: "BUILT_IN_LLRINTF", value: 133, isUnsigned: true)
!517 = !DIEnumerator(name: "BUILT_IN_LLRINTL", value: 134, isUnsigned: true)
!518 = !DIEnumerator(name: "BUILT_IN_LLROUND", value: 135, isUnsigned: true)
!519 = !DIEnumerator(name: "BUILT_IN_LLROUNDF", value: 136, isUnsigned: true)
!520 = !DIEnumerator(name: "BUILT_IN_LLROUNDL", value: 137, isUnsigned: true)
!521 = !DIEnumerator(name: "BUILT_IN_LOG", value: 138, isUnsigned: true)
!522 = !DIEnumerator(name: "BUILT_IN_LOG10", value: 139, isUnsigned: true)
!523 = !DIEnumerator(name: "BUILT_IN_LOG10F", value: 140, isUnsigned: true)
!524 = !DIEnumerator(name: "BUILT_IN_LOG10L", value: 141, isUnsigned: true)
!525 = !DIEnumerator(name: "BUILT_IN_LOG1P", value: 142, isUnsigned: true)
!526 = !DIEnumerator(name: "BUILT_IN_LOG1PF", value: 143, isUnsigned: true)
!527 = !DIEnumerator(name: "BUILT_IN_LOG1PL", value: 144, isUnsigned: true)
!528 = !DIEnumerator(name: "BUILT_IN_LOG2", value: 145, isUnsigned: true)
!529 = !DIEnumerator(name: "BUILT_IN_LOG2F", value: 146, isUnsigned: true)
!530 = !DIEnumerator(name: "BUILT_IN_LOG2L", value: 147, isUnsigned: true)
!531 = !DIEnumerator(name: "BUILT_IN_LOGB", value: 148, isUnsigned: true)
!532 = !DIEnumerator(name: "BUILT_IN_LOGBF", value: 149, isUnsigned: true)
!533 = !DIEnumerator(name: "BUILT_IN_LOGBL", value: 150, isUnsigned: true)
!534 = !DIEnumerator(name: "BUILT_IN_LOGF", value: 151, isUnsigned: true)
!535 = !DIEnumerator(name: "BUILT_IN_LOGL", value: 152, isUnsigned: true)
!536 = !DIEnumerator(name: "BUILT_IN_LRINT", value: 153, isUnsigned: true)
!537 = !DIEnumerator(name: "BUILT_IN_LRINTF", value: 154, isUnsigned: true)
!538 = !DIEnumerator(name: "BUILT_IN_LRINTL", value: 155, isUnsigned: true)
!539 = !DIEnumerator(name: "BUILT_IN_LROUND", value: 156, isUnsigned: true)
!540 = !DIEnumerator(name: "BUILT_IN_LROUNDF", value: 157, isUnsigned: true)
!541 = !DIEnumerator(name: "BUILT_IN_LROUNDL", value: 158, isUnsigned: true)
!542 = !DIEnumerator(name: "BUILT_IN_MODF", value: 159, isUnsigned: true)
!543 = !DIEnumerator(name: "BUILT_IN_MODFF", value: 160, isUnsigned: true)
!544 = !DIEnumerator(name: "BUILT_IN_MODFL", value: 161, isUnsigned: true)
!545 = !DIEnumerator(name: "BUILT_IN_NAN", value: 162, isUnsigned: true)
!546 = !DIEnumerator(name: "BUILT_IN_NANF", value: 163, isUnsigned: true)
!547 = !DIEnumerator(name: "BUILT_IN_NANL", value: 164, isUnsigned: true)
!548 = !DIEnumerator(name: "BUILT_IN_NAND32", value: 165, isUnsigned: true)
!549 = !DIEnumerator(name: "BUILT_IN_NAND64", value: 166, isUnsigned: true)
!550 = !DIEnumerator(name: "BUILT_IN_NAND128", value: 167, isUnsigned: true)
!551 = !DIEnumerator(name: "BUILT_IN_NANS", value: 168, isUnsigned: true)
!552 = !DIEnumerator(name: "BUILT_IN_NANSF", value: 169, isUnsigned: true)
!553 = !DIEnumerator(name: "BUILT_IN_NANSL", value: 170, isUnsigned: true)
!554 = !DIEnumerator(name: "BUILT_IN_NEARBYINT", value: 171, isUnsigned: true)
!555 = !DIEnumerator(name: "BUILT_IN_NEARBYINTF", value: 172, isUnsigned: true)
!556 = !DIEnumerator(name: "BUILT_IN_NEARBYINTL", value: 173, isUnsigned: true)
!557 = !DIEnumerator(name: "BUILT_IN_NEXTAFTER", value: 174, isUnsigned: true)
!558 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERF", value: 175, isUnsigned: true)
!559 = !DIEnumerator(name: "BUILT_IN_NEXTAFTERL", value: 176, isUnsigned: true)
!560 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARD", value: 177, isUnsigned: true)
!561 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDF", value: 178, isUnsigned: true)
!562 = !DIEnumerator(name: "BUILT_IN_NEXTTOWARDL", value: 179, isUnsigned: true)
!563 = !DIEnumerator(name: "BUILT_IN_POW", value: 180, isUnsigned: true)
!564 = !DIEnumerator(name: "BUILT_IN_POW10", value: 181, isUnsigned: true)
!565 = !DIEnumerator(name: "BUILT_IN_POW10F", value: 182, isUnsigned: true)
!566 = !DIEnumerator(name: "BUILT_IN_POW10L", value: 183, isUnsigned: true)
!567 = !DIEnumerator(name: "BUILT_IN_POWF", value: 184, isUnsigned: true)
!568 = !DIEnumerator(name: "BUILT_IN_POWI", value: 185, isUnsigned: true)
!569 = !DIEnumerator(name: "BUILT_IN_POWIF", value: 186, isUnsigned: true)
!570 = !DIEnumerator(name: "BUILT_IN_POWIL", value: 187, isUnsigned: true)
!571 = !DIEnumerator(name: "BUILT_IN_POWL", value: 188, isUnsigned: true)
!572 = !DIEnumerator(name: "BUILT_IN_REMAINDER", value: 189, isUnsigned: true)
!573 = !DIEnumerator(name: "BUILT_IN_REMAINDERF", value: 190, isUnsigned: true)
!574 = !DIEnumerator(name: "BUILT_IN_REMAINDERL", value: 191, isUnsigned: true)
!575 = !DIEnumerator(name: "BUILT_IN_REMQUO", value: 192, isUnsigned: true)
!576 = !DIEnumerator(name: "BUILT_IN_REMQUOF", value: 193, isUnsigned: true)
!577 = !DIEnumerator(name: "BUILT_IN_REMQUOL", value: 194, isUnsigned: true)
!578 = !DIEnumerator(name: "BUILT_IN_RINT", value: 195, isUnsigned: true)
!579 = !DIEnumerator(name: "BUILT_IN_RINTF", value: 196, isUnsigned: true)
!580 = !DIEnumerator(name: "BUILT_IN_RINTL", value: 197, isUnsigned: true)
!581 = !DIEnumerator(name: "BUILT_IN_ROUND", value: 198, isUnsigned: true)
!582 = !DIEnumerator(name: "BUILT_IN_ROUNDF", value: 199, isUnsigned: true)
!583 = !DIEnumerator(name: "BUILT_IN_ROUNDL", value: 200, isUnsigned: true)
!584 = !DIEnumerator(name: "BUILT_IN_SCALB", value: 201, isUnsigned: true)
!585 = !DIEnumerator(name: "BUILT_IN_SCALBF", value: 202, isUnsigned: true)
!586 = !DIEnumerator(name: "BUILT_IN_SCALBL", value: 203, isUnsigned: true)
!587 = !DIEnumerator(name: "BUILT_IN_SCALBLN", value: 204, isUnsigned: true)
!588 = !DIEnumerator(name: "BUILT_IN_SCALBLNF", value: 205, isUnsigned: true)
!589 = !DIEnumerator(name: "BUILT_IN_SCALBLNL", value: 206, isUnsigned: true)
!590 = !DIEnumerator(name: "BUILT_IN_SCALBN", value: 207, isUnsigned: true)
!591 = !DIEnumerator(name: "BUILT_IN_SCALBNF", value: 208, isUnsigned: true)
!592 = !DIEnumerator(name: "BUILT_IN_SCALBNL", value: 209, isUnsigned: true)
!593 = !DIEnumerator(name: "BUILT_IN_SIGNBIT", value: 210, isUnsigned: true)
!594 = !DIEnumerator(name: "BUILT_IN_SIGNBITF", value: 211, isUnsigned: true)
!595 = !DIEnumerator(name: "BUILT_IN_SIGNBITL", value: 212, isUnsigned: true)
!596 = !DIEnumerator(name: "BUILT_IN_SIGNBITD32", value: 213, isUnsigned: true)
!597 = !DIEnumerator(name: "BUILT_IN_SIGNBITD64", value: 214, isUnsigned: true)
!598 = !DIEnumerator(name: "BUILT_IN_SIGNBITD128", value: 215, isUnsigned: true)
!599 = !DIEnumerator(name: "BUILT_IN_SIGNIFICAND", value: 216, isUnsigned: true)
!600 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDF", value: 217, isUnsigned: true)
!601 = !DIEnumerator(name: "BUILT_IN_SIGNIFICANDL", value: 218, isUnsigned: true)
!602 = !DIEnumerator(name: "BUILT_IN_SIN", value: 219, isUnsigned: true)
!603 = !DIEnumerator(name: "BUILT_IN_SINCOS", value: 220, isUnsigned: true)
!604 = !DIEnumerator(name: "BUILT_IN_SINCOSF", value: 221, isUnsigned: true)
!605 = !DIEnumerator(name: "BUILT_IN_SINCOSL", value: 222, isUnsigned: true)
!606 = !DIEnumerator(name: "BUILT_IN_SINF", value: 223, isUnsigned: true)
!607 = !DIEnumerator(name: "BUILT_IN_SINH", value: 224, isUnsigned: true)
!608 = !DIEnumerator(name: "BUILT_IN_SINHF", value: 225, isUnsigned: true)
!609 = !DIEnumerator(name: "BUILT_IN_SINHL", value: 226, isUnsigned: true)
!610 = !DIEnumerator(name: "BUILT_IN_SINL", value: 227, isUnsigned: true)
!611 = !DIEnumerator(name: "BUILT_IN_SQRT", value: 228, isUnsigned: true)
!612 = !DIEnumerator(name: "BUILT_IN_SQRTF", value: 229, isUnsigned: true)
!613 = !DIEnumerator(name: "BUILT_IN_SQRTL", value: 230, isUnsigned: true)
!614 = !DIEnumerator(name: "BUILT_IN_TAN", value: 231, isUnsigned: true)
!615 = !DIEnumerator(name: "BUILT_IN_TANF", value: 232, isUnsigned: true)
!616 = !DIEnumerator(name: "BUILT_IN_TANH", value: 233, isUnsigned: true)
!617 = !DIEnumerator(name: "BUILT_IN_TANHF", value: 234, isUnsigned: true)
!618 = !DIEnumerator(name: "BUILT_IN_TANHL", value: 235, isUnsigned: true)
!619 = !DIEnumerator(name: "BUILT_IN_TANL", value: 236, isUnsigned: true)
!620 = !DIEnumerator(name: "BUILT_IN_TGAMMA", value: 237, isUnsigned: true)
!621 = !DIEnumerator(name: "BUILT_IN_TGAMMAF", value: 238, isUnsigned: true)
!622 = !DIEnumerator(name: "BUILT_IN_TGAMMAL", value: 239, isUnsigned: true)
!623 = !DIEnumerator(name: "BUILT_IN_TRUNC", value: 240, isUnsigned: true)
!624 = !DIEnumerator(name: "BUILT_IN_TRUNCF", value: 241, isUnsigned: true)
!625 = !DIEnumerator(name: "BUILT_IN_TRUNCL", value: 242, isUnsigned: true)
!626 = !DIEnumerator(name: "BUILT_IN_Y0", value: 243, isUnsigned: true)
!627 = !DIEnumerator(name: "BUILT_IN_Y0F", value: 244, isUnsigned: true)
!628 = !DIEnumerator(name: "BUILT_IN_Y0L", value: 245, isUnsigned: true)
!629 = !DIEnumerator(name: "BUILT_IN_Y1", value: 246, isUnsigned: true)
!630 = !DIEnumerator(name: "BUILT_IN_Y1F", value: 247, isUnsigned: true)
!631 = !DIEnumerator(name: "BUILT_IN_Y1L", value: 248, isUnsigned: true)
!632 = !DIEnumerator(name: "BUILT_IN_YN", value: 249, isUnsigned: true)
!633 = !DIEnumerator(name: "BUILT_IN_YNF", value: 250, isUnsigned: true)
!634 = !DIEnumerator(name: "BUILT_IN_YNL", value: 251, isUnsigned: true)
!635 = !DIEnumerator(name: "BUILT_IN_CABS", value: 252, isUnsigned: true)
!636 = !DIEnumerator(name: "BUILT_IN_CABSF", value: 253, isUnsigned: true)
!637 = !DIEnumerator(name: "BUILT_IN_CABSL", value: 254, isUnsigned: true)
!638 = !DIEnumerator(name: "BUILT_IN_CACOS", value: 255, isUnsigned: true)
!639 = !DIEnumerator(name: "BUILT_IN_CACOSF", value: 256, isUnsigned: true)
!640 = !DIEnumerator(name: "BUILT_IN_CACOSH", value: 257, isUnsigned: true)
!641 = !DIEnumerator(name: "BUILT_IN_CACOSHF", value: 258, isUnsigned: true)
!642 = !DIEnumerator(name: "BUILT_IN_CACOSHL", value: 259, isUnsigned: true)
!643 = !DIEnumerator(name: "BUILT_IN_CACOSL", value: 260, isUnsigned: true)
!644 = !DIEnumerator(name: "BUILT_IN_CARG", value: 261, isUnsigned: true)
!645 = !DIEnumerator(name: "BUILT_IN_CARGF", value: 262, isUnsigned: true)
!646 = !DIEnumerator(name: "BUILT_IN_CARGL", value: 263, isUnsigned: true)
!647 = !DIEnumerator(name: "BUILT_IN_CASIN", value: 264, isUnsigned: true)
!648 = !DIEnumerator(name: "BUILT_IN_CASINF", value: 265, isUnsigned: true)
!649 = !DIEnumerator(name: "BUILT_IN_CASINH", value: 266, isUnsigned: true)
!650 = !DIEnumerator(name: "BUILT_IN_CASINHF", value: 267, isUnsigned: true)
!651 = !DIEnumerator(name: "BUILT_IN_CASINHL", value: 268, isUnsigned: true)
!652 = !DIEnumerator(name: "BUILT_IN_CASINL", value: 269, isUnsigned: true)
!653 = !DIEnumerator(name: "BUILT_IN_CATAN", value: 270, isUnsigned: true)
!654 = !DIEnumerator(name: "BUILT_IN_CATANF", value: 271, isUnsigned: true)
!655 = !DIEnumerator(name: "BUILT_IN_CATANH", value: 272, isUnsigned: true)
!656 = !DIEnumerator(name: "BUILT_IN_CATANHF", value: 273, isUnsigned: true)
!657 = !DIEnumerator(name: "BUILT_IN_CATANHL", value: 274, isUnsigned: true)
!658 = !DIEnumerator(name: "BUILT_IN_CATANL", value: 275, isUnsigned: true)
!659 = !DIEnumerator(name: "BUILT_IN_CCOS", value: 276, isUnsigned: true)
!660 = !DIEnumerator(name: "BUILT_IN_CCOSF", value: 277, isUnsigned: true)
!661 = !DIEnumerator(name: "BUILT_IN_CCOSH", value: 278, isUnsigned: true)
!662 = !DIEnumerator(name: "BUILT_IN_CCOSHF", value: 279, isUnsigned: true)
!663 = !DIEnumerator(name: "BUILT_IN_CCOSHL", value: 280, isUnsigned: true)
!664 = !DIEnumerator(name: "BUILT_IN_CCOSL", value: 281, isUnsigned: true)
!665 = !DIEnumerator(name: "BUILT_IN_CEXP", value: 282, isUnsigned: true)
!666 = !DIEnumerator(name: "BUILT_IN_CEXPF", value: 283, isUnsigned: true)
!667 = !DIEnumerator(name: "BUILT_IN_CEXPL", value: 284, isUnsigned: true)
!668 = !DIEnumerator(name: "BUILT_IN_CEXPI", value: 285, isUnsigned: true)
!669 = !DIEnumerator(name: "BUILT_IN_CEXPIF", value: 286, isUnsigned: true)
!670 = !DIEnumerator(name: "BUILT_IN_CEXPIL", value: 287, isUnsigned: true)
!671 = !DIEnumerator(name: "BUILT_IN_CIMAG", value: 288, isUnsigned: true)
!672 = !DIEnumerator(name: "BUILT_IN_CIMAGF", value: 289, isUnsigned: true)
!673 = !DIEnumerator(name: "BUILT_IN_CIMAGL", value: 290, isUnsigned: true)
!674 = !DIEnumerator(name: "BUILT_IN_CLOG", value: 291, isUnsigned: true)
!675 = !DIEnumerator(name: "BUILT_IN_CLOGF", value: 292, isUnsigned: true)
!676 = !DIEnumerator(name: "BUILT_IN_CLOGL", value: 293, isUnsigned: true)
!677 = !DIEnumerator(name: "BUILT_IN_CLOG10", value: 294, isUnsigned: true)
!678 = !DIEnumerator(name: "BUILT_IN_CLOG10F", value: 295, isUnsigned: true)
!679 = !DIEnumerator(name: "BUILT_IN_CLOG10L", value: 296, isUnsigned: true)
!680 = !DIEnumerator(name: "BUILT_IN_CONJ", value: 297, isUnsigned: true)
!681 = !DIEnumerator(name: "BUILT_IN_CONJF", value: 298, isUnsigned: true)
!682 = !DIEnumerator(name: "BUILT_IN_CONJL", value: 299, isUnsigned: true)
!683 = !DIEnumerator(name: "BUILT_IN_CPOW", value: 300, isUnsigned: true)
!684 = !DIEnumerator(name: "BUILT_IN_CPOWF", value: 301, isUnsigned: true)
!685 = !DIEnumerator(name: "BUILT_IN_CPOWL", value: 302, isUnsigned: true)
!686 = !DIEnumerator(name: "BUILT_IN_CPROJ", value: 303, isUnsigned: true)
!687 = !DIEnumerator(name: "BUILT_IN_CPROJF", value: 304, isUnsigned: true)
!688 = !DIEnumerator(name: "BUILT_IN_CPROJL", value: 305, isUnsigned: true)
!689 = !DIEnumerator(name: "BUILT_IN_CREAL", value: 306, isUnsigned: true)
!690 = !DIEnumerator(name: "BUILT_IN_CREALF", value: 307, isUnsigned: true)
!691 = !DIEnumerator(name: "BUILT_IN_CREALL", value: 308, isUnsigned: true)
!692 = !DIEnumerator(name: "BUILT_IN_CSIN", value: 309, isUnsigned: true)
!693 = !DIEnumerator(name: "BUILT_IN_CSINF", value: 310, isUnsigned: true)
!694 = !DIEnumerator(name: "BUILT_IN_CSINH", value: 311, isUnsigned: true)
!695 = !DIEnumerator(name: "BUILT_IN_CSINHF", value: 312, isUnsigned: true)
!696 = !DIEnumerator(name: "BUILT_IN_CSINHL", value: 313, isUnsigned: true)
!697 = !DIEnumerator(name: "BUILT_IN_CSINL", value: 314, isUnsigned: true)
!698 = !DIEnumerator(name: "BUILT_IN_CSQRT", value: 315, isUnsigned: true)
!699 = !DIEnumerator(name: "BUILT_IN_CSQRTF", value: 316, isUnsigned: true)
!700 = !DIEnumerator(name: "BUILT_IN_CSQRTL", value: 317, isUnsigned: true)
!701 = !DIEnumerator(name: "BUILT_IN_CTAN", value: 318, isUnsigned: true)
!702 = !DIEnumerator(name: "BUILT_IN_CTANF", value: 319, isUnsigned: true)
!703 = !DIEnumerator(name: "BUILT_IN_CTANH", value: 320, isUnsigned: true)
!704 = !DIEnumerator(name: "BUILT_IN_CTANHF", value: 321, isUnsigned: true)
!705 = !DIEnumerator(name: "BUILT_IN_CTANHL", value: 322, isUnsigned: true)
!706 = !DIEnumerator(name: "BUILT_IN_CTANL", value: 323, isUnsigned: true)
!707 = !DIEnumerator(name: "BUILT_IN_BCMP", value: 324, isUnsigned: true)
!708 = !DIEnumerator(name: "BUILT_IN_BCOPY", value: 325, isUnsigned: true)
!709 = !DIEnumerator(name: "BUILT_IN_BZERO", value: 326, isUnsigned: true)
!710 = !DIEnumerator(name: "BUILT_IN_INDEX", value: 327, isUnsigned: true)
!711 = !DIEnumerator(name: "BUILT_IN_MEMCHR", value: 328, isUnsigned: true)
!712 = !DIEnumerator(name: "BUILT_IN_MEMCMP", value: 329, isUnsigned: true)
!713 = !DIEnumerator(name: "BUILT_IN_MEMCPY", value: 330, isUnsigned: true)
!714 = !DIEnumerator(name: "BUILT_IN_MEMMOVE", value: 331, isUnsigned: true)
!715 = !DIEnumerator(name: "BUILT_IN_MEMPCPY", value: 332, isUnsigned: true)
!716 = !DIEnumerator(name: "BUILT_IN_MEMSET", value: 333, isUnsigned: true)
!717 = !DIEnumerator(name: "BUILT_IN_RINDEX", value: 334, isUnsigned: true)
!718 = !DIEnumerator(name: "BUILT_IN_STPCPY", value: 335, isUnsigned: true)
!719 = !DIEnumerator(name: "BUILT_IN_STPNCPY", value: 336, isUnsigned: true)
!720 = !DIEnumerator(name: "BUILT_IN_STRCASECMP", value: 337, isUnsigned: true)
!721 = !DIEnumerator(name: "BUILT_IN_STRCAT", value: 338, isUnsigned: true)
!722 = !DIEnumerator(name: "BUILT_IN_STRCHR", value: 339, isUnsigned: true)
!723 = !DIEnumerator(name: "BUILT_IN_STRCMP", value: 340, isUnsigned: true)
!724 = !DIEnumerator(name: "BUILT_IN_STRCPY", value: 341, isUnsigned: true)
!725 = !DIEnumerator(name: "BUILT_IN_STRCSPN", value: 342, isUnsigned: true)
!726 = !DIEnumerator(name: "BUILT_IN_STRDUP", value: 343, isUnsigned: true)
!727 = !DIEnumerator(name: "BUILT_IN_STRNDUP", value: 344, isUnsigned: true)
!728 = !DIEnumerator(name: "BUILT_IN_STRLEN", value: 345, isUnsigned: true)
!729 = !DIEnumerator(name: "BUILT_IN_STRNCASECMP", value: 346, isUnsigned: true)
!730 = !DIEnumerator(name: "BUILT_IN_STRNCAT", value: 347, isUnsigned: true)
!731 = !DIEnumerator(name: "BUILT_IN_STRNCMP", value: 348, isUnsigned: true)
!732 = !DIEnumerator(name: "BUILT_IN_STRNCPY", value: 349, isUnsigned: true)
!733 = !DIEnumerator(name: "BUILT_IN_STRPBRK", value: 350, isUnsigned: true)
!734 = !DIEnumerator(name: "BUILT_IN_STRRCHR", value: 351, isUnsigned: true)
!735 = !DIEnumerator(name: "BUILT_IN_STRSPN", value: 352, isUnsigned: true)
!736 = !DIEnumerator(name: "BUILT_IN_STRSTR", value: 353, isUnsigned: true)
!737 = !DIEnumerator(name: "BUILT_IN_FPRINTF", value: 354, isUnsigned: true)
!738 = !DIEnumerator(name: "BUILT_IN_FPRINTF_UNLOCKED", value: 355, isUnsigned: true)
!739 = !DIEnumerator(name: "BUILT_IN_PUTC", value: 356, isUnsigned: true)
!740 = !DIEnumerator(name: "BUILT_IN_PUTC_UNLOCKED", value: 357, isUnsigned: true)
!741 = !DIEnumerator(name: "BUILT_IN_FPUTC", value: 358, isUnsigned: true)
!742 = !DIEnumerator(name: "BUILT_IN_FPUTC_UNLOCKED", value: 359, isUnsigned: true)
!743 = !DIEnumerator(name: "BUILT_IN_FPUTS", value: 360, isUnsigned: true)
!744 = !DIEnumerator(name: "BUILT_IN_FPUTS_UNLOCKED", value: 361, isUnsigned: true)
!745 = !DIEnumerator(name: "BUILT_IN_FSCANF", value: 362, isUnsigned: true)
!746 = !DIEnumerator(name: "BUILT_IN_FWRITE", value: 363, isUnsigned: true)
!747 = !DIEnumerator(name: "BUILT_IN_FWRITE_UNLOCKED", value: 364, isUnsigned: true)
!748 = !DIEnumerator(name: "BUILT_IN_PRINTF", value: 365, isUnsigned: true)
!749 = !DIEnumerator(name: "BUILT_IN_PRINTF_UNLOCKED", value: 366, isUnsigned: true)
!750 = !DIEnumerator(name: "BUILT_IN_PUTCHAR", value: 367, isUnsigned: true)
!751 = !DIEnumerator(name: "BUILT_IN_PUTCHAR_UNLOCKED", value: 368, isUnsigned: true)
!752 = !DIEnumerator(name: "BUILT_IN_PUTS", value: 369, isUnsigned: true)
!753 = !DIEnumerator(name: "BUILT_IN_PUTS_UNLOCKED", value: 370, isUnsigned: true)
!754 = !DIEnumerator(name: "BUILT_IN_SCANF", value: 371, isUnsigned: true)
!755 = !DIEnumerator(name: "BUILT_IN_SNPRINTF", value: 372, isUnsigned: true)
!756 = !DIEnumerator(name: "BUILT_IN_SPRINTF", value: 373, isUnsigned: true)
!757 = !DIEnumerator(name: "BUILT_IN_SSCANF", value: 374, isUnsigned: true)
!758 = !DIEnumerator(name: "BUILT_IN_VFPRINTF", value: 375, isUnsigned: true)
!759 = !DIEnumerator(name: "BUILT_IN_VFSCANF", value: 376, isUnsigned: true)
!760 = !DIEnumerator(name: "BUILT_IN_VPRINTF", value: 377, isUnsigned: true)
!761 = !DIEnumerator(name: "BUILT_IN_VSCANF", value: 378, isUnsigned: true)
!762 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF", value: 379, isUnsigned: true)
!763 = !DIEnumerator(name: "BUILT_IN_VSPRINTF", value: 380, isUnsigned: true)
!764 = !DIEnumerator(name: "BUILT_IN_VSSCANF", value: 381, isUnsigned: true)
!765 = !DIEnumerator(name: "BUILT_IN_ISALNUM", value: 382, isUnsigned: true)
!766 = !DIEnumerator(name: "BUILT_IN_ISALPHA", value: 383, isUnsigned: true)
!767 = !DIEnumerator(name: "BUILT_IN_ISASCII", value: 384, isUnsigned: true)
!768 = !DIEnumerator(name: "BUILT_IN_ISBLANK", value: 385, isUnsigned: true)
!769 = !DIEnumerator(name: "BUILT_IN_ISCNTRL", value: 386, isUnsigned: true)
!770 = !DIEnumerator(name: "BUILT_IN_ISDIGIT", value: 387, isUnsigned: true)
!771 = !DIEnumerator(name: "BUILT_IN_ISGRAPH", value: 388, isUnsigned: true)
!772 = !DIEnumerator(name: "BUILT_IN_ISLOWER", value: 389, isUnsigned: true)
!773 = !DIEnumerator(name: "BUILT_IN_ISPRINT", value: 390, isUnsigned: true)
!774 = !DIEnumerator(name: "BUILT_IN_ISPUNCT", value: 391, isUnsigned: true)
!775 = !DIEnumerator(name: "BUILT_IN_ISSPACE", value: 392, isUnsigned: true)
!776 = !DIEnumerator(name: "BUILT_IN_ISUPPER", value: 393, isUnsigned: true)
!777 = !DIEnumerator(name: "BUILT_IN_ISXDIGIT", value: 394, isUnsigned: true)
!778 = !DIEnumerator(name: "BUILT_IN_TOASCII", value: 395, isUnsigned: true)
!779 = !DIEnumerator(name: "BUILT_IN_TOLOWER", value: 396, isUnsigned: true)
!780 = !DIEnumerator(name: "BUILT_IN_TOUPPER", value: 397, isUnsigned: true)
!781 = !DIEnumerator(name: "BUILT_IN_ISWALNUM", value: 398, isUnsigned: true)
!782 = !DIEnumerator(name: "BUILT_IN_ISWALPHA", value: 399, isUnsigned: true)
!783 = !DIEnumerator(name: "BUILT_IN_ISWBLANK", value: 400, isUnsigned: true)
!784 = !DIEnumerator(name: "BUILT_IN_ISWCNTRL", value: 401, isUnsigned: true)
!785 = !DIEnumerator(name: "BUILT_IN_ISWDIGIT", value: 402, isUnsigned: true)
!786 = !DIEnumerator(name: "BUILT_IN_ISWGRAPH", value: 403, isUnsigned: true)
!787 = !DIEnumerator(name: "BUILT_IN_ISWLOWER", value: 404, isUnsigned: true)
!788 = !DIEnumerator(name: "BUILT_IN_ISWPRINT", value: 405, isUnsigned: true)
!789 = !DIEnumerator(name: "BUILT_IN_ISWPUNCT", value: 406, isUnsigned: true)
!790 = !DIEnumerator(name: "BUILT_IN_ISWSPACE", value: 407, isUnsigned: true)
!791 = !DIEnumerator(name: "BUILT_IN_ISWUPPER", value: 408, isUnsigned: true)
!792 = !DIEnumerator(name: "BUILT_IN_ISWXDIGIT", value: 409, isUnsigned: true)
!793 = !DIEnumerator(name: "BUILT_IN_TOWLOWER", value: 410, isUnsigned: true)
!794 = !DIEnumerator(name: "BUILT_IN_TOWUPPER", value: 411, isUnsigned: true)
!795 = !DIEnumerator(name: "BUILT_IN_ABORT", value: 412, isUnsigned: true)
!796 = !DIEnumerator(name: "BUILT_IN_ABS", value: 413, isUnsigned: true)
!797 = !DIEnumerator(name: "BUILT_IN_AGGREGATE_INCOMING_ADDRESS", value: 414, isUnsigned: true)
!798 = !DIEnumerator(name: "BUILT_IN_ALLOCA", value: 415, isUnsigned: true)
!799 = !DIEnumerator(name: "BUILT_IN_APPLY", value: 416, isUnsigned: true)
!800 = !DIEnumerator(name: "BUILT_IN_APPLY_ARGS", value: 417, isUnsigned: true)
!801 = !DIEnumerator(name: "BUILT_IN_ARGS_INFO", value: 418, isUnsigned: true)
!802 = !DIEnumerator(name: "BUILT_IN_BSWAP32", value: 419, isUnsigned: true)
!803 = !DIEnumerator(name: "BUILT_IN_BSWAP64", value: 420, isUnsigned: true)
!804 = !DIEnumerator(name: "BUILT_IN_CLEAR_CACHE", value: 421, isUnsigned: true)
!805 = !DIEnumerator(name: "BUILT_IN_CALLOC", value: 422, isUnsigned: true)
!806 = !DIEnumerator(name: "BUILT_IN_CLASSIFY_TYPE", value: 423, isUnsigned: true)
!807 = !DIEnumerator(name: "BUILT_IN_CLZ", value: 424, isUnsigned: true)
!808 = !DIEnumerator(name: "BUILT_IN_CLZIMAX", value: 425, isUnsigned: true)
!809 = !DIEnumerator(name: "BUILT_IN_CLZL", value: 426, isUnsigned: true)
!810 = !DIEnumerator(name: "BUILT_IN_CLZLL", value: 427, isUnsigned: true)
!811 = !DIEnumerator(name: "BUILT_IN_CONSTANT_P", value: 428, isUnsigned: true)
!812 = !DIEnumerator(name: "BUILT_IN_CTZ", value: 429, isUnsigned: true)
!813 = !DIEnumerator(name: "BUILT_IN_CTZIMAX", value: 430, isUnsigned: true)
!814 = !DIEnumerator(name: "BUILT_IN_CTZL", value: 431, isUnsigned: true)
!815 = !DIEnumerator(name: "BUILT_IN_CTZLL", value: 432, isUnsigned: true)
!816 = !DIEnumerator(name: "BUILT_IN_DCGETTEXT", value: 433, isUnsigned: true)
!817 = !DIEnumerator(name: "BUILT_IN_DGETTEXT", value: 434, isUnsigned: true)
!818 = !DIEnumerator(name: "BUILT_IN_DWARF_CFA", value: 435, isUnsigned: true)
!819 = !DIEnumerator(name: "BUILT_IN_DWARF_SP_COLUMN", value: 436, isUnsigned: true)
!820 = !DIEnumerator(name: "BUILT_IN_EH_RETURN", value: 437, isUnsigned: true)
!821 = !DIEnumerator(name: "BUILT_IN_EH_RETURN_DATA_REGNO", value: 438, isUnsigned: true)
!822 = !DIEnumerator(name: "BUILT_IN_EXECL", value: 439, isUnsigned: true)
!823 = !DIEnumerator(name: "BUILT_IN_EXECLP", value: 440, isUnsigned: true)
!824 = !DIEnumerator(name: "BUILT_IN_EXECLE", value: 441, isUnsigned: true)
!825 = !DIEnumerator(name: "BUILT_IN_EXECV", value: 442, isUnsigned: true)
!826 = !DIEnumerator(name: "BUILT_IN_EXECVP", value: 443, isUnsigned: true)
!827 = !DIEnumerator(name: "BUILT_IN_EXECVE", value: 444, isUnsigned: true)
!828 = !DIEnumerator(name: "BUILT_IN_EXIT", value: 445, isUnsigned: true)
!829 = !DIEnumerator(name: "BUILT_IN_EXPECT", value: 446, isUnsigned: true)
!830 = !DIEnumerator(name: "BUILT_IN_EXTEND_POINTER", value: 447, isUnsigned: true)
!831 = !DIEnumerator(name: "BUILT_IN_EXTRACT_RETURN_ADDR", value: 448, isUnsigned: true)
!832 = !DIEnumerator(name: "BUILT_IN_FFS", value: 449, isUnsigned: true)
!833 = !DIEnumerator(name: "BUILT_IN_FFSIMAX", value: 450, isUnsigned: true)
!834 = !DIEnumerator(name: "BUILT_IN_FFSL", value: 451, isUnsigned: true)
!835 = !DIEnumerator(name: "BUILT_IN_FFSLL", value: 452, isUnsigned: true)
!836 = !DIEnumerator(name: "BUILT_IN_FORK", value: 453, isUnsigned: true)
!837 = !DIEnumerator(name: "BUILT_IN_FRAME_ADDRESS", value: 454, isUnsigned: true)
!838 = !DIEnumerator(name: "BUILT_IN_FREE", value: 455, isUnsigned: true)
!839 = !DIEnumerator(name: "BUILT_IN_FROB_RETURN_ADDR", value: 456, isUnsigned: true)
!840 = !DIEnumerator(name: "BUILT_IN_GETTEXT", value: 457, isUnsigned: true)
!841 = !DIEnumerator(name: "BUILT_IN_IMAXABS", value: 458, isUnsigned: true)
!842 = !DIEnumerator(name: "BUILT_IN_INIT_DWARF_REG_SIZES", value: 459, isUnsigned: true)
!843 = !DIEnumerator(name: "BUILT_IN_FINITE", value: 460, isUnsigned: true)
!844 = !DIEnumerator(name: "BUILT_IN_FINITEF", value: 461, isUnsigned: true)
!845 = !DIEnumerator(name: "BUILT_IN_FINITEL", value: 462, isUnsigned: true)
!846 = !DIEnumerator(name: "BUILT_IN_FINITED32", value: 463, isUnsigned: true)
!847 = !DIEnumerator(name: "BUILT_IN_FINITED64", value: 464, isUnsigned: true)
!848 = !DIEnumerator(name: "BUILT_IN_FINITED128", value: 465, isUnsigned: true)
!849 = !DIEnumerator(name: "BUILT_IN_FPCLASSIFY", value: 466, isUnsigned: true)
!850 = !DIEnumerator(name: "BUILT_IN_ISFINITE", value: 467, isUnsigned: true)
!851 = !DIEnumerator(name: "BUILT_IN_ISINF_SIGN", value: 468, isUnsigned: true)
!852 = !DIEnumerator(name: "BUILT_IN_ISINF", value: 469, isUnsigned: true)
!853 = !DIEnumerator(name: "BUILT_IN_ISINFF", value: 470, isUnsigned: true)
!854 = !DIEnumerator(name: "BUILT_IN_ISINFL", value: 471, isUnsigned: true)
!855 = !DIEnumerator(name: "BUILT_IN_ISINFD32", value: 472, isUnsigned: true)
!856 = !DIEnumerator(name: "BUILT_IN_ISINFD64", value: 473, isUnsigned: true)
!857 = !DIEnumerator(name: "BUILT_IN_ISINFD128", value: 474, isUnsigned: true)
!858 = !DIEnumerator(name: "BUILT_IN_ISNAN", value: 475, isUnsigned: true)
!859 = !DIEnumerator(name: "BUILT_IN_ISNANF", value: 476, isUnsigned: true)
!860 = !DIEnumerator(name: "BUILT_IN_ISNANL", value: 477, isUnsigned: true)
!861 = !DIEnumerator(name: "BUILT_IN_ISNAND32", value: 478, isUnsigned: true)
!862 = !DIEnumerator(name: "BUILT_IN_ISNAND64", value: 479, isUnsigned: true)
!863 = !DIEnumerator(name: "BUILT_IN_ISNAND128", value: 480, isUnsigned: true)
!864 = !DIEnumerator(name: "BUILT_IN_ISNORMAL", value: 481, isUnsigned: true)
!865 = !DIEnumerator(name: "BUILT_IN_ISGREATER", value: 482, isUnsigned: true)
!866 = !DIEnumerator(name: "BUILT_IN_ISGREATEREQUAL", value: 483, isUnsigned: true)
!867 = !DIEnumerator(name: "BUILT_IN_ISLESS", value: 484, isUnsigned: true)
!868 = !DIEnumerator(name: "BUILT_IN_ISLESSEQUAL", value: 485, isUnsigned: true)
!869 = !DIEnumerator(name: "BUILT_IN_ISLESSGREATER", value: 486, isUnsigned: true)
!870 = !DIEnumerator(name: "BUILT_IN_ISUNORDERED", value: 487, isUnsigned: true)
!871 = !DIEnumerator(name: "BUILT_IN_LABS", value: 488, isUnsigned: true)
!872 = !DIEnumerator(name: "BUILT_IN_LLABS", value: 489, isUnsigned: true)
!873 = !DIEnumerator(name: "BUILT_IN_LONGJMP", value: 490, isUnsigned: true)
!874 = !DIEnumerator(name: "BUILT_IN_MALLOC", value: 491, isUnsigned: true)
!875 = !DIEnumerator(name: "BUILT_IN_NEXT_ARG", value: 492, isUnsigned: true)
!876 = !DIEnumerator(name: "BUILT_IN_PARITY", value: 493, isUnsigned: true)
!877 = !DIEnumerator(name: "BUILT_IN_PARITYIMAX", value: 494, isUnsigned: true)
!878 = !DIEnumerator(name: "BUILT_IN_PARITYL", value: 495, isUnsigned: true)
!879 = !DIEnumerator(name: "BUILT_IN_PARITYLL", value: 496, isUnsigned: true)
!880 = !DIEnumerator(name: "BUILT_IN_POPCOUNT", value: 497, isUnsigned: true)
!881 = !DIEnumerator(name: "BUILT_IN_POPCOUNTIMAX", value: 498, isUnsigned: true)
!882 = !DIEnumerator(name: "BUILT_IN_POPCOUNTL", value: 499, isUnsigned: true)
!883 = !DIEnumerator(name: "BUILT_IN_POPCOUNTLL", value: 500, isUnsigned: true)
!884 = !DIEnumerator(name: "BUILT_IN_PREFETCH", value: 501, isUnsigned: true)
!885 = !DIEnumerator(name: "BUILT_IN_REALLOC", value: 502, isUnsigned: true)
!886 = !DIEnumerator(name: "BUILT_IN_RETURN", value: 503, isUnsigned: true)
!887 = !DIEnumerator(name: "BUILT_IN_RETURN_ADDRESS", value: 504, isUnsigned: true)
!888 = !DIEnumerator(name: "BUILT_IN_SAVEREGS", value: 505, isUnsigned: true)
!889 = !DIEnumerator(name: "BUILT_IN_SETJMP", value: 506, isUnsigned: true)
!890 = !DIEnumerator(name: "BUILT_IN_STRFMON", value: 507, isUnsigned: true)
!891 = !DIEnumerator(name: "BUILT_IN_STRFTIME", value: 508, isUnsigned: true)
!892 = !DIEnumerator(name: "BUILT_IN_TRAP", value: 509, isUnsigned: true)
!893 = !DIEnumerator(name: "BUILT_IN_UNREACHABLE", value: 510, isUnsigned: true)
!894 = !DIEnumerator(name: "BUILT_IN_UNWIND_INIT", value: 511, isUnsigned: true)
!895 = !DIEnumerator(name: "BUILT_IN_UPDATE_SETJMP_BUF", value: 512, isUnsigned: true)
!896 = !DIEnumerator(name: "BUILT_IN_VA_COPY", value: 513, isUnsigned: true)
!897 = !DIEnumerator(name: "BUILT_IN_VA_END", value: 514, isUnsigned: true)
!898 = !DIEnumerator(name: "BUILT_IN_VA_START", value: 515, isUnsigned: true)
!899 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK", value: 516, isUnsigned: true)
!900 = !DIEnumerator(name: "BUILT_IN_VA_ARG_PACK_LEN", value: 517, isUnsigned: true)
!901 = !DIEnumerator(name: "BUILT_IN__EXIT", value: 518, isUnsigned: true)
!902 = !DIEnumerator(name: "BUILT_IN__EXIT2", value: 519, isUnsigned: true)
!903 = !DIEnumerator(name: "BUILT_IN_INIT_TRAMPOLINE", value: 520, isUnsigned: true)
!904 = !DIEnumerator(name: "BUILT_IN_ADJUST_TRAMPOLINE", value: 521, isUnsigned: true)
!905 = !DIEnumerator(name: "BUILT_IN_NONLOCAL_GOTO", value: 522, isUnsigned: true)
!906 = !DIEnumerator(name: "BUILT_IN_SETJMP_SETUP", value: 523, isUnsigned: true)
!907 = !DIEnumerator(name: "BUILT_IN_SETJMP_DISPATCHER", value: 524, isUnsigned: true)
!908 = !DIEnumerator(name: "BUILT_IN_SETJMP_RECEIVER", value: 525, isUnsigned: true)
!909 = !DIEnumerator(name: "BUILT_IN_STACK_SAVE", value: 526, isUnsigned: true)
!910 = !DIEnumerator(name: "BUILT_IN_STACK_RESTORE", value: 527, isUnsigned: true)
!911 = !DIEnumerator(name: "BUILT_IN_OBJECT_SIZE", value: 528, isUnsigned: true)
!912 = !DIEnumerator(name: "BUILT_IN_MEMCPY_CHK", value: 529, isUnsigned: true)
!913 = !DIEnumerator(name: "BUILT_IN_MEMMOVE_CHK", value: 530, isUnsigned: true)
!914 = !DIEnumerator(name: "BUILT_IN_MEMPCPY_CHK", value: 531, isUnsigned: true)
!915 = !DIEnumerator(name: "BUILT_IN_MEMSET_CHK", value: 532, isUnsigned: true)
!916 = !DIEnumerator(name: "BUILT_IN_STPCPY_CHK", value: 533, isUnsigned: true)
!917 = !DIEnumerator(name: "BUILT_IN_STRCAT_CHK", value: 534, isUnsigned: true)
!918 = !DIEnumerator(name: "BUILT_IN_STRCPY_CHK", value: 535, isUnsigned: true)
!919 = !DIEnumerator(name: "BUILT_IN_STRNCAT_CHK", value: 536, isUnsigned: true)
!920 = !DIEnumerator(name: "BUILT_IN_STRNCPY_CHK", value: 537, isUnsigned: true)
!921 = !DIEnumerator(name: "BUILT_IN_SNPRINTF_CHK", value: 538, isUnsigned: true)
!922 = !DIEnumerator(name: "BUILT_IN_SPRINTF_CHK", value: 539, isUnsigned: true)
!923 = !DIEnumerator(name: "BUILT_IN_VSNPRINTF_CHK", value: 540, isUnsigned: true)
!924 = !DIEnumerator(name: "BUILT_IN_VSPRINTF_CHK", value: 541, isUnsigned: true)
!925 = !DIEnumerator(name: "BUILT_IN_FPRINTF_CHK", value: 542, isUnsigned: true)
!926 = !DIEnumerator(name: "BUILT_IN_PRINTF_CHK", value: 543, isUnsigned: true)
!927 = !DIEnumerator(name: "BUILT_IN_VFPRINTF_CHK", value: 544, isUnsigned: true)
!928 = !DIEnumerator(name: "BUILT_IN_VPRINTF_CHK", value: 545, isUnsigned: true)
!929 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_ENTER", value: 546, isUnsigned: true)
!930 = !DIEnumerator(name: "BUILT_IN_PROFILE_FUNC_EXIT", value: 547, isUnsigned: true)
!931 = !DIEnumerator(name: "BUILT_IN_EMUTLS_GET_ADDRESS", value: 548, isUnsigned: true)
!932 = !DIEnumerator(name: "BUILT_IN_EMUTLS_REGISTER_COMMON", value: 549, isUnsigned: true)
!933 = !DIEnumerator(name: "BUILT_IN_UNWIND_RESUME", value: 550, isUnsigned: true)
!934 = !DIEnumerator(name: "BUILT_IN_CXA_END_CLEANUP", value: 551, isUnsigned: true)
!935 = !DIEnumerator(name: "BUILT_IN_EH_POINTER", value: 552, isUnsigned: true)
!936 = !DIEnumerator(name: "BUILT_IN_EH_FILTER", value: 553, isUnsigned: true)
!937 = !DIEnumerator(name: "BUILT_IN_EH_COPY_VALUES", value: 554, isUnsigned: true)
!938 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_N", value: 555, isUnsigned: true)
!939 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_1", value: 556, isUnsigned: true)
!940 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_2", value: 557, isUnsigned: true)
!941 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_4", value: 558, isUnsigned: true)
!942 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_8", value: 559, isUnsigned: true)
!943 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_ADD_16", value: 560, isUnsigned: true)
!944 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_N", value: 561, isUnsigned: true)
!945 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_1", value: 562, isUnsigned: true)
!946 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_2", value: 563, isUnsigned: true)
!947 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_4", value: 564, isUnsigned: true)
!948 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_8", value: 565, isUnsigned: true)
!949 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_SUB_16", value: 566, isUnsigned: true)
!950 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_N", value: 567, isUnsigned: true)
!951 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_1", value: 568, isUnsigned: true)
!952 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_2", value: 569, isUnsigned: true)
!953 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_4", value: 570, isUnsigned: true)
!954 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_8", value: 571, isUnsigned: true)
!955 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_OR_16", value: 572, isUnsigned: true)
!956 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_N", value: 573, isUnsigned: true)
!957 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_1", value: 574, isUnsigned: true)
!958 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_2", value: 575, isUnsigned: true)
!959 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_4", value: 576, isUnsigned: true)
!960 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_8", value: 577, isUnsigned: true)
!961 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_AND_16", value: 578, isUnsigned: true)
!962 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_N", value: 579, isUnsigned: true)
!963 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_1", value: 580, isUnsigned: true)
!964 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_2", value: 581, isUnsigned: true)
!965 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_4", value: 582, isUnsigned: true)
!966 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_8", value: 583, isUnsigned: true)
!967 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_XOR_16", value: 584, isUnsigned: true)
!968 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_N", value: 585, isUnsigned: true)
!969 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_1", value: 586, isUnsigned: true)
!970 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_2", value: 587, isUnsigned: true)
!971 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_4", value: 588, isUnsigned: true)
!972 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_8", value: 589, isUnsigned: true)
!973 = !DIEnumerator(name: "BUILT_IN_FETCH_AND_NAND_16", value: 590, isUnsigned: true)
!974 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_N", value: 591, isUnsigned: true)
!975 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_1", value: 592, isUnsigned: true)
!976 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_2", value: 593, isUnsigned: true)
!977 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_4", value: 594, isUnsigned: true)
!978 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_8", value: 595, isUnsigned: true)
!979 = !DIEnumerator(name: "BUILT_IN_ADD_AND_FETCH_16", value: 596, isUnsigned: true)
!980 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_N", value: 597, isUnsigned: true)
!981 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_1", value: 598, isUnsigned: true)
!982 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_2", value: 599, isUnsigned: true)
!983 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_4", value: 600, isUnsigned: true)
!984 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_8", value: 601, isUnsigned: true)
!985 = !DIEnumerator(name: "BUILT_IN_SUB_AND_FETCH_16", value: 602, isUnsigned: true)
!986 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_N", value: 603, isUnsigned: true)
!987 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_1", value: 604, isUnsigned: true)
!988 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_2", value: 605, isUnsigned: true)
!989 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_4", value: 606, isUnsigned: true)
!990 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_8", value: 607, isUnsigned: true)
!991 = !DIEnumerator(name: "BUILT_IN_OR_AND_FETCH_16", value: 608, isUnsigned: true)
!992 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_N", value: 609, isUnsigned: true)
!993 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_1", value: 610, isUnsigned: true)
!994 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_2", value: 611, isUnsigned: true)
!995 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_4", value: 612, isUnsigned: true)
!996 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_8", value: 613, isUnsigned: true)
!997 = !DIEnumerator(name: "BUILT_IN_AND_AND_FETCH_16", value: 614, isUnsigned: true)
!998 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_N", value: 615, isUnsigned: true)
!999 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_1", value: 616, isUnsigned: true)
!1000 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_2", value: 617, isUnsigned: true)
!1001 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_4", value: 618, isUnsigned: true)
!1002 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_8", value: 619, isUnsigned: true)
!1003 = !DIEnumerator(name: "BUILT_IN_XOR_AND_FETCH_16", value: 620, isUnsigned: true)
!1004 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_N", value: 621, isUnsigned: true)
!1005 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_1", value: 622, isUnsigned: true)
!1006 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_2", value: 623, isUnsigned: true)
!1007 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_4", value: 624, isUnsigned: true)
!1008 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_8", value: 625, isUnsigned: true)
!1009 = !DIEnumerator(name: "BUILT_IN_NAND_AND_FETCH_16", value: 626, isUnsigned: true)
!1010 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_N", value: 627, isUnsigned: true)
!1011 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_1", value: 628, isUnsigned: true)
!1012 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_2", value: 629, isUnsigned: true)
!1013 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_4", value: 630, isUnsigned: true)
!1014 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_8", value: 631, isUnsigned: true)
!1015 = !DIEnumerator(name: "BUILT_IN_BOOL_COMPARE_AND_SWAP_16", value: 632, isUnsigned: true)
!1016 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_N", value: 633, isUnsigned: true)
!1017 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_1", value: 634, isUnsigned: true)
!1018 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_2", value: 635, isUnsigned: true)
!1019 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_4", value: 636, isUnsigned: true)
!1020 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_8", value: 637, isUnsigned: true)
!1021 = !DIEnumerator(name: "BUILT_IN_VAL_COMPARE_AND_SWAP_16", value: 638, isUnsigned: true)
!1022 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_N", value: 639, isUnsigned: true)
!1023 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_1", value: 640, isUnsigned: true)
!1024 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_2", value: 641, isUnsigned: true)
!1025 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_4", value: 642, isUnsigned: true)
!1026 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_8", value: 643, isUnsigned: true)
!1027 = !DIEnumerator(name: "BUILT_IN_LOCK_TEST_AND_SET_16", value: 644, isUnsigned: true)
!1028 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_N", value: 645, isUnsigned: true)
!1029 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_1", value: 646, isUnsigned: true)
!1030 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_2", value: 647, isUnsigned: true)
!1031 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_4", value: 648, isUnsigned: true)
!1032 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_8", value: 649, isUnsigned: true)
!1033 = !DIEnumerator(name: "BUILT_IN_LOCK_RELEASE_16", value: 650, isUnsigned: true)
!1034 = !DIEnumerator(name: "BUILT_IN_SYNCHRONIZE", value: 651, isUnsigned: true)
!1035 = !DIEnumerator(name: "BUILT_IN_OMP_GET_THREAD_NUM", value: 652, isUnsigned: true)
!1036 = !DIEnumerator(name: "BUILT_IN_OMP_GET_NUM_THREADS", value: 653, isUnsigned: true)
!1037 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_START", value: 654, isUnsigned: true)
!1038 = !DIEnumerator(name: "BUILT_IN_GOMP_ATOMIC_END", value: 655, isUnsigned: true)
!1039 = !DIEnumerator(name: "BUILT_IN_GOMP_BARRIER", value: 656, isUnsigned: true)
!1040 = !DIEnumerator(name: "BUILT_IN_GOMP_TASKWAIT", value: 657, isUnsigned: true)
!1041 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_START", value: 658, isUnsigned: true)
!1042 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_END", value: 659, isUnsigned: true)
!1043 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_START", value: 660, isUnsigned: true)
!1044 = !DIEnumerator(name: "BUILT_IN_GOMP_CRITICAL_NAME_END", value: 661, isUnsigned: true)
!1045 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_START", value: 662, isUnsigned: true)
!1046 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_START", value: 663, isUnsigned: true)
!1047 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_START", value: 664, isUnsigned: true)
!1048 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_START", value: 665, isUnsigned: true)
!1049 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_START", value: 666, isUnsigned: true)
!1050 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_START", value: 667, isUnsigned: true)
!1051 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_START", value: 668, isUnsigned: true)
!1052 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_START", value: 669, isUnsigned: true)
!1053 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_STATIC_NEXT", value: 670, isUnsigned: true)
!1054 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_DYNAMIC_NEXT", value: 671, isUnsigned: true)
!1055 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_GUIDED_NEXT", value: 672, isUnsigned: true)
!1056 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_RUNTIME_NEXT", value: 673, isUnsigned: true)
!1057 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_STATIC_NEXT", value: 674, isUnsigned: true)
!1058 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_NEXT", value: 675, isUnsigned: true)
!1059 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_NEXT", value: 676, isUnsigned: true)
!1060 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_NEXT", value: 677, isUnsigned: true)
!1061 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_START", value: 678, isUnsigned: true)
!1062 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_START", value: 679, isUnsigned: true)
!1063 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_START", value: 680, isUnsigned: true)
!1064 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_START", value: 681, isUnsigned: true)
!1065 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_START", value: 682, isUnsigned: true)
!1066 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_START", value: 683, isUnsigned: true)
!1067 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_START", value: 684, isUnsigned: true)
!1068 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_START", value: 685, isUnsigned: true)
!1069 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_STATIC_NEXT", value: 686, isUnsigned: true)
!1070 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_NEXT", value: 687, isUnsigned: true)
!1071 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_GUIDED_NEXT", value: 688, isUnsigned: true)
!1072 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_RUNTIME_NEXT", value: 689, isUnsigned: true)
!1073 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_NEXT", value: 690, isUnsigned: true)
!1074 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_NEXT", value: 691, isUnsigned: true)
!1075 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_NEXT", value: 692, isUnsigned: true)
!1076 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_NEXT", value: 693, isUnsigned: true)
!1077 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START", value: 694, isUnsigned: true)
!1078 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_DYNAMIC_START", value: 695, isUnsigned: true)
!1079 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_GUIDED_START", value: 696, isUnsigned: true)
!1080 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_LOOP_RUNTIME_START", value: 697, isUnsigned: true)
!1081 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END", value: 698, isUnsigned: true)
!1082 = !DIEnumerator(name: "BUILT_IN_GOMP_LOOP_END_NOWAIT", value: 699, isUnsigned: true)
!1083 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_START", value: 700, isUnsigned: true)
!1084 = !DIEnumerator(name: "BUILT_IN_GOMP_ORDERED_END", value: 701, isUnsigned: true)
!1085 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_START", value: 702, isUnsigned: true)
!1086 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_END", value: 703, isUnsigned: true)
!1087 = !DIEnumerator(name: "BUILT_IN_GOMP_TASK", value: 704, isUnsigned: true)
!1088 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_START", value: 705, isUnsigned: true)
!1089 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_NEXT", value: 706, isUnsigned: true)
!1090 = !DIEnumerator(name: "BUILT_IN_GOMP_PARALLEL_SECTIONS_START", value: 707, isUnsigned: true)
!1091 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END", value: 708, isUnsigned: true)
!1092 = !DIEnumerator(name: "BUILT_IN_GOMP_SECTIONS_END_NOWAIT", value: 709, isUnsigned: true)
!1093 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_START", value: 710, isUnsigned: true)
!1094 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_START", value: 711, isUnsigned: true)
!1095 = !DIEnumerator(name: "BUILT_IN_GOMP_SINGLE_COPY_END", value: 712, isUnsigned: true)
!1096 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MIN", value: 713, isUnsigned: true)
!1097 = !DIEnumerator(name: "BUILT_IN_COMPLEX_MUL_MAX", value: 716, isUnsigned: true)
!1098 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MIN", value: 717, isUnsigned: true)
!1099 = !DIEnumerator(name: "BUILT_IN_COMPLEX_DIV_MAX", value: 720, isUnsigned: true)
!1100 = !DIEnumerator(name: "END_BUILTINS", value: 721, isUnsigned: true)
!1101 = !{!1102, !1103, !1104, !1105, !1108, !1109, !165, !1111, !359, !1113, !1767}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !1112, line: 44, baseType: !5)
!1112 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !1114, line: 56, baseType: !1115)
!1114 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !133, line: 3371, size: 1792, elements: !1117)
!1117 = !{!1118, !1151, !1157, !1170, !1189, !1200, !1205, !1214, !1220, !1233, !1243, !1281, !1289, !1317, !1325, !1326, !1331, !1340, !1346, !1351, !1355, !1359, !1388, !1437, !1443, !1450, !1457, !1483, !1508, !1525, !1537, !1559, !1577, !1749}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1116, file: !133, line: 3372, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !133, line: 360, size: 64, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1119, file: !133, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !1119, file: !133, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !1119, file: !133, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !1119, file: !133, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !1119, file: !133, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !1119, file: !133, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !1119, file: !133, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !1119, file: !133, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !1119, file: !133, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !1119, file: !133, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !1119, file: !133, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !1119, file: !133, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !1119, file: !133, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !1119, file: !133, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !1119, file: !133, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !1119, file: !133, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !1119, file: !133, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !1119, file: !133, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1119, file: !133, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1119, file: !133, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1119, file: !133, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1119, file: !133, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1119, file: !133, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1119, file: !133, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1119, file: !133, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1119, file: !133, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !1119, file: !133, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !1119, file: !133, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !1119, file: !133, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !1119, file: !133, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1116, file: !133, line: 3373, baseType: !1152, size: 192)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !133, line: 402, size: 192, elements: !1153)
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1152, file: !133, line: 403, baseType: !1119, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !1152, file: !133, line: 404, baseType: !1113, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1152, file: !133, line: 405, baseType: !1113, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1116, file: !133, line: 3374, baseType: !1158, size: 320)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !133, line: 1384, size: 320, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1158, file: !133, line: 1385, baseType: !1152, size: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !1158, file: !133, line: 1386, baseType: !1162, size: 128, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !1163, line: 58, baseType: !1164)
!1163 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1163, line: 54, size: 128, elements: !1165)
!1165 = !{!1166, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1164, file: !1163, line: 56, baseType: !1167, size: 64)
!1167 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1164, file: !1163, line: 57, baseType: !1169, size: 64, offset: 64)
!1169 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !1116, file: !133, line: 3375, baseType: !1171, size: 256)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !133, line: 1397, size: 256, elements: !1172)
!1172 = !{!1173, !1174}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1171, file: !133, line: 1398, baseType: !1152, size: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !1171, file: !133, line: 1399, baseType: !1175, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !1177, line: 52, size: 256, elements: !1178)
!1177 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1185}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !1176, file: !1177, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !1176, file: !1177, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !1176, file: !1177, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !1176, file: !1177, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1176, file: !1177, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !1176, file: !1177, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1176, file: !1177, line: 62, baseType: !1186, size: 192, offset: 64)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1167, size: 192, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 3)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !1116, file: !133, line: 3376, baseType: !1190, size: 256)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !133, line: 1408, size: 256, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1190, file: !133, line: 1409, baseType: !1152, size: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !1190, file: !133, line: 1410, baseType: !1194, size: 64, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !1196, line: 27, size: 192, elements: !1197)
!1196 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1195, file: !1196, line: 29, baseType: !1162, size: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1195, file: !1196, line: 30, baseType: !3, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1116, file: !133, line: 3377, baseType: !1201, size: 256)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !133, line: 1437, size: 256, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1201, file: !133, line: 1438, baseType: !1152, size: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1201, file: !133, line: 1439, baseType: !1113, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1116, file: !133, line: 3378, baseType: !1206, size: 256)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !133, line: 1418, size: 256, elements: !1207)
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1206, file: !133, line: 1419, baseType: !1152, size: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1206, file: !133, line: 1420, baseType: !1104, size: 32, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1206, file: !133, line: 1421, baseType: !1211, size: 8, offset: 224)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 8, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 1)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !1116, file: !133, line: 3379, baseType: !1215, size: 320)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !133, line: 1428, size: 320, elements: !1216)
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1215, file: !133, line: 1429, baseType: !1152, size: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !1215, file: !133, line: 1430, baseType: !1113, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !1215, file: !133, line: 1431, baseType: !1113, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !1116, file: !133, line: 3380, baseType: !1221, size: 320)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !133, line: 1460, size: 320, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1221, file: !133, line: 1461, baseType: !1152, size: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1221, file: !133, line: 1462, baseType: !1225, size: 128, offset: 192)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !1226, line: 31, size: 128, elements: !1227)
!1226 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1227 = !{!1228, !1231, !1232}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1225, file: !1226, line: 32, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1103)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1225, file: !1226, line: 33, baseType: !5, size: 32, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !1225, file: !1226, line: 34, baseType: !5, size: 32, offset: 96)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !1116, file: !133, line: 3381, baseType: !1234, size: 384)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !133, line: 2507, size: 384, elements: !1235)
!1235 = !{!1236, !1237, !1240, !1241, !1242}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1234, file: !133, line: 2508, baseType: !1152, size: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1234, file: !133, line: 2509, baseType: !1238, size: 32, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !1239, line: 58, baseType: !1111)
!1239 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1234, file: !133, line: 2510, baseType: !5, size: 32, offset: 224)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1234, file: !133, line: 2511, baseType: !1113, size: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1234, file: !133, line: 2512, baseType: !1113, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !1116, file: !133, line: 3382, baseType: !1244, size: 896)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !133, line: 2652, size: 896, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1244, file: !133, line: 2653, baseType: !1234, size: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1244, file: !133, line: 2654, baseType: !1113, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1244, file: !133, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1244, file: !133, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1244, file: !133, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1244, file: !133, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1244, file: !133, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1244, file: !133, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1244, file: !133, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1244, file: !133, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1244, file: !133, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1244, file: !133, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1244, file: !133, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1244, file: !133, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1244, file: !133, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1244, file: !133, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1244, file: !133, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1244, file: !133, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1244, file: !133, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1244, file: !133, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1244, file: !133, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1244, file: !133, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1244, file: !133, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1244, file: !133, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1244, file: !133, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1244, file: !133, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1244, file: !133, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1244, file: !133, line: 2703, baseType: !5, size: 32, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1244, file: !133, line: 2705, baseType: !1113, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1244, file: !133, line: 2706, baseType: !1113, size: 64, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1244, file: !133, line: 2707, baseType: !1113, size: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1244, file: !133, line: 2708, baseType: !1113, size: 64, offset: 768)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1244, file: !133, line: 2711, baseType: !1279, size: 64, offset: 832)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !133, line: 2711, flags: DIFlagFwdDecl)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !1116, file: !133, line: 3383, baseType: !1282, size: 960)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !133, line: 2756, size: 960, elements: !1283)
!1283 = !{!1284, !1285}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1282, file: !133, line: 2757, baseType: !1244, size: 896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1282, file: !133, line: 2758, baseType: !1286, size: 64, offset: 896)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !1114, line: 50, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !1114, line: 49, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !1116, file: !133, line: 3384, baseType: !1290, size: 1472)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !133, line: 3114, size: 1472, elements: !1291)
!1291 = !{!1292, !1313, !1314, !1315, !1316}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1290, file: !133, line: 3115, baseType: !1293, size: 1216)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !133, line: 2984, size: 1216, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1293, file: !133, line: 2985, baseType: !1282, size: 960)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1293, file: !133, line: 2986, baseType: !1113, size: 64, offset: 960)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1293, file: !133, line: 2987, baseType: !1113, size: 64, offset: 1024)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1293, file: !133, line: 2988, baseType: !1113, size: 64, offset: 1088)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1293, file: !133, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1293, file: !133, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1293, file: !133, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1293, file: !133, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1293, file: !133, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1293, file: !133, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1293, file: !133, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1293, file: !133, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1293, file: !133, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1293, file: !133, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1293, file: !133, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1293, file: !133, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1293, file: !133, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1293, file: !133, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1290, file: !133, line: 3117, baseType: !1113, size: 64, offset: 1216)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1290, file: !133, line: 3119, baseType: !1113, size: 64, offset: 1280)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1290, file: !133, line: 3121, baseType: !1113, size: 64, offset: 1344)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1290, file: !133, line: 3123, baseType: !1113, size: 64, offset: 1408)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !1116, file: !133, line: 3385, baseType: !1318, size: 1088)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !133, line: 2874, size: 1088, elements: !1319)
!1319 = !{!1320, !1321, !1322}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1318, file: !133, line: 2875, baseType: !1282, size: 960)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1318, file: !133, line: 2876, baseType: !1286, size: 64, offset: 960)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1318, file: !133, line: 2877, baseType: !1323, size: 64, offset: 1024)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !133, line: 2856, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !1116, file: !133, line: 3386, baseType: !1293, size: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !1116, file: !133, line: 3387, baseType: !1327, size: 1280)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !133, line: 3093, size: 1280, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1327, file: !133, line: 3094, baseType: !1293, size: 1216)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1327, file: !133, line: 3095, baseType: !1323, size: 64, offset: 1216)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !1116, file: !133, line: 3388, baseType: !1332, size: 1216)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !133, line: 2824, size: 1216, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1332, file: !133, line: 2825, baseType: !1244, size: 896)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1332, file: !133, line: 2827, baseType: !1113, size: 64, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1332, file: !133, line: 2828, baseType: !1113, size: 64, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1332, file: !133, line: 2829, baseType: !1113, size: 64, offset: 1024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1332, file: !133, line: 2830, baseType: !1113, size: 64, offset: 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1332, file: !133, line: 2831, baseType: !1113, size: 64, offset: 1152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !1116, file: !133, line: 3389, baseType: !1341, size: 1024)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !133, line: 2850, size: 1024, elements: !1342)
!1342 = !{!1343, !1344, !1345}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1341, file: !133, line: 2851, baseType: !1282, size: 960)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1341, file: !133, line: 2852, baseType: !1104, size: 32, offset: 960)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1341, file: !133, line: 2853, baseType: !1104, size: 32, offset: 992)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !1116, file: !133, line: 3390, baseType: !1347, size: 1024)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !133, line: 2857, size: 1024, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1347, file: !133, line: 2858, baseType: !1282, size: 960)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1347, file: !133, line: 2859, baseType: !1323, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !1116, file: !133, line: 3391, baseType: !1352, size: 960)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !133, line: 2862, size: 960, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1352, file: !133, line: 2863, baseType: !1282, size: 960)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1116, file: !133, line: 3392, baseType: !1356, size: 1472)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !133, line: 3304, size: 1472, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1356, file: !133, line: 3305, baseType: !1290, size: 1472)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1116, file: !133, line: 3393, baseType: !1360, size: 1792)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !133, line: 3248, size: 1792, elements: !1361)
!1361 = !{!1362, !1363, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1360, file: !133, line: 3249, baseType: !1290, size: 1472)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1360, file: !133, line: 3251, baseType: !1364, size: 64, offset: 1472)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1366, line: 41, flags: DIFlagFwdDecl)
!1366 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1360, file: !133, line: 3254, baseType: !1113, size: 64, offset: 1536)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1360, file: !133, line: 3257, baseType: !1113, size: 64, offset: 1600)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1360, file: !133, line: 3258, baseType: !1113, size: 64, offset: 1664)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1360, file: !133, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1360, file: !133, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1360, file: !133, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1360, file: !133, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1360, file: !133, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1360, file: !133, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1360, file: !133, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1360, file: !133, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1360, file: !133, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1360, file: !133, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1360, file: !133, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1360, file: !133, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1360, file: !133, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1360, file: !133, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1360, file: !133, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1360, file: !133, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1360, file: !133, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1360, file: !133, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1116, file: !133, line: 3394, baseType: !1389, size: 1344)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !133, line: 2279, size: 1344, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1416, !1417, !1418, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1389, file: !133, line: 2280, baseType: !1152, size: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1389, file: !133, line: 2281, baseType: !1113, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1389, file: !133, line: 2282, baseType: !1113, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1389, file: !133, line: 2283, baseType: !1113, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1389, file: !133, line: 2284, baseType: !1113, size: 64, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1389, file: !133, line: 2285, baseType: !5, size: 32, offset: 448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1389, file: !133, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1389, file: !133, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1389, file: !133, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1389, file: !133, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1389, file: !133, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1389, file: !133, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1389, file: !133, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1389, file: !133, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1389, file: !133, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1389, file: !133, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1389, file: !133, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1389, file: !133, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1389, file: !133, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1389, file: !133, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1389, file: !133, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1389, file: !133, line: 2305, baseType: !5, size: 32, offset: 512)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1389, file: !133, line: 2306, baseType: !1414, size: 32, offset: 544)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1415, line: 31, baseType: !1104)
!1415 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1389, file: !133, line: 2307, baseType: !1113, size: 64, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1389, file: !133, line: 2308, baseType: !1113, size: 64, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1389, file: !133, line: 2314, baseType: !1419, size: 64, offset: 704)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !133, line: 2309, size: 64, elements: !1420)
!1420 = !{!1421, !1422, !1423}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1419, file: !133, line: 2310, baseType: !1104, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1419, file: !133, line: 2311, baseType: !1109, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1419, file: !133, line: 2312, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !133, line: 2277, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1389, file: !133, line: 2315, baseType: !1113, size: 64, offset: 768)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1389, file: !133, line: 2316, baseType: !1113, size: 64, offset: 832)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1389, file: !133, line: 2317, baseType: !1113, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1389, file: !133, line: 2318, baseType: !1113, size: 64, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1389, file: !133, line: 2319, baseType: !1113, size: 64, offset: 1024)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1389, file: !133, line: 2320, baseType: !1113, size: 64, offset: 1088)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1389, file: !133, line: 2321, baseType: !1113, size: 64, offset: 1152)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1389, file: !133, line: 2322, baseType: !1113, size: 64, offset: 1216)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1389, file: !133, line: 2324, baseType: !1435, size: 64, offset: 1280)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !133, line: 2324, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1116, file: !133, line: 3395, baseType: !1438, size: 320)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !133, line: 1469, size: 320, elements: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1438, file: !133, line: 1470, baseType: !1152, size: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1438, file: !133, line: 1471, baseType: !1113, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1438, file: !133, line: 1472, baseType: !1113, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1116, file: !133, line: 3396, baseType: !1444, size: 320)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !133, line: 1482, size: 320, elements: !1445)
!1445 = !{!1446, !1447, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1444, file: !133, line: 1483, baseType: !1152, size: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1444, file: !133, line: 1484, baseType: !1104, size: 32, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1444, file: !133, line: 1485, baseType: !1449, size: 64, offset: 256)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 64, elements: !1212)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !1116, file: !133, line: 3397, baseType: !1451, size: 384)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !133, line: 1829, size: 384, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1451, file: !133, line: 1830, baseType: !1152, size: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1451, file: !133, line: 1831, baseType: !1238, size: 32, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1451, file: !133, line: 1832, baseType: !1113, size: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1451, file: !133, line: 1835, baseType: !1449, size: 64, offset: 320)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1116, file: !133, line: 3398, baseType: !1458, size: 704)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !133, line: 1898, size: 704, elements: !1459)
!1459 = !{!1460, !1461, !1462, !1466, !1467, !1470}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1458, file: !133, line: 1899, baseType: !1152, size: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1458, file: !133, line: 1902, baseType: !1113, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1458, file: !133, line: 1905, baseType: !1463, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !1114, line: 58, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !1114, line: 57, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1458, file: !133, line: 1908, baseType: !5, size: 32, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1458, file: !133, line: 1911, baseType: !1468, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !133, line: 1876, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1458, file: !133, line: 1914, baseType: !1471, size: 256, offset: 448)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !133, line: 1883, size: 256, elements: !1472)
!1472 = !{!1473, !1475, !1476, !1481}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1471, file: !133, line: 1884, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1471, file: !133, line: 1885, baseType: !1474, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1471, file: !133, line: 1891, baseType: !1477, size: 64, offset: 128)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !133, line: 1891, size: 64, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1477, file: !133, line: 1891, baseType: !1463, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1477, file: !133, line: 1891, baseType: !1113, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1471, file: !133, line: 1892, baseType: !1482, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1116, file: !133, line: 3399, baseType: !1484, size: 704)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !133, line: 2008, size: 704, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1503, !1504, !1505, !1506, !1507}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1484, file: !133, line: 2009, baseType: !1152, size: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1484, file: !133, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1484, file: !133, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1484, file: !133, line: 2014, baseType: !1238, size: 32, offset: 224)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1484, file: !133, line: 2016, baseType: !1113, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1484, file: !133, line: 2017, baseType: !1492, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !133, line: 183, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !133, line: 183, size: 128, elements: !1495)
!1495 = !{!1496}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1494, file: !133, line: 183, baseType: !1497, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !133, line: 182, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !133, line: 182, size: 128, elements: !1499)
!1499 = !{!1500, !1501, !1502}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1498, file: !133, line: 182, baseType: !5, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1498, file: !133, line: 182, baseType: !5, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1498, file: !133, line: 182, baseType: !1449, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1484, file: !133, line: 2019, baseType: !1113, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1484, file: !133, line: 2020, baseType: !1113, size: 64, offset: 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1484, file: !133, line: 2021, baseType: !1113, size: 64, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1484, file: !133, line: 2022, baseType: !1113, size: 64, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1484, file: !133, line: 2023, baseType: !1113, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1116, file: !133, line: 3400, baseType: !1509, size: 832)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !133, line: 2430, size: 832, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1509, file: !133, line: 2431, baseType: !1152, size: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1509, file: !133, line: 2433, baseType: !1113, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1509, file: !133, line: 2434, baseType: !1113, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1509, file: !133, line: 2435, baseType: !1113, size: 64, offset: 320)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1509, file: !133, line: 2436, baseType: !1113, size: 64, offset: 384)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1509, file: !133, line: 2437, baseType: !1492, size: 64, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1509, file: !133, line: 2438, baseType: !1113, size: 64, offset: 512)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1509, file: !133, line: 2440, baseType: !1113, size: 64, offset: 576)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1509, file: !133, line: 2441, baseType: !1113, size: 64, offset: 640)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1509, file: !133, line: 2443, baseType: !1521, size: 128, offset: 704)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !133, line: 182, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !133, line: 182, size: 128, elements: !1523)
!1523 = !{!1524}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1522, file: !133, line: 182, baseType: !1497, size: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !1116, file: !133, line: 3401, baseType: !1526, size: 320)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !133, line: 3327, size: 320, elements: !1527)
!1527 = !{!1528, !1529, !1536}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1526, file: !133, line: 3329, baseType: !1152, size: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1526, file: !133, line: 3330, baseType: !1530, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !133, line: 3320, size: 192, elements: !1532)
!1532 = !{!1533, !1534, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1531, file: !133, line: 3322, baseType: !1530, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1531, file: !133, line: 3323, baseType: !1530, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1531, file: !133, line: 3324, baseType: !1113, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1526, file: !133, line: 3331, baseType: !1530, size: 64, offset: 256)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !1116, file: !133, line: 3402, baseType: !1538, size: 256)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !133, line: 1540, size: 256, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1538, file: !133, line: 1541, baseType: !1152, size: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1538, file: !133, line: 1542, baseType: !1542, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !133, line: 1538, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !133, line: 1538, size: 192, elements: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1544, file: !133, line: 1538, baseType: !1547, size: 192)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !133, line: 1537, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !133, line: 1537, size: 192, elements: !1549)
!1549 = !{!1550, !1551, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1548, file: !133, line: 1537, baseType: !5, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1548, file: !133, line: 1537, baseType: !5, size: 32, offset: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1548, file: !133, line: 1537, baseType: !1553, size: 128, offset: 64)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1554, size: 128, elements: !1212)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !133, line: 1535, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !133, line: 1532, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1555, file: !133, line: 1533, baseType: !1113, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1555, file: !133, line: 1534, baseType: !1113, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !1116, file: !133, line: 3403, baseType: !1560, size: 512)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !133, line: 1938, size: 512, elements: !1561)
!1561 = !{!1562, !1563, !1564, !1565, !1571, !1575, !1576}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1560, file: !133, line: 1939, baseType: !1152, size: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1560, file: !133, line: 1940, baseType: !1238, size: 32, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1560, file: !133, line: 1941, baseType: !132, size: 32, offset: 224)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1560, file: !133, line: 1946, baseType: !1566, size: 32, offset: 256)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !133, line: 1942, size: 32, elements: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1566, file: !133, line: 1943, baseType: !151, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1566, file: !133, line: 1944, baseType: !158, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1566, file: !133, line: 1945, baseType: !165, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1560, file: !133, line: 1950, baseType: !1572, size: 64, offset: 320)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !1114, line: 66, baseType: !1573)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !1114, line: 65, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1560, file: !133, line: 1951, baseType: !1572, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1560, file: !133, line: 1953, baseType: !1449, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !1116, file: !133, line: 3404, baseType: !1578, size: 1664)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !133, line: 3337, size: 1664, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1578, file: !133, line: 3338, baseType: !1152, size: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1578, file: !133, line: 3341, baseType: !1582, size: 1472, offset: 192)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1583, line: 410, size: 1472, elements: !1584)
!1583 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1582, file: !1583, line: 412, baseType: !1104, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1582, file: !1583, line: 413, baseType: !1104, size: 32, offset: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1582, file: !1583, line: 414, baseType: !1104, size: 32, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1582, file: !1583, line: 415, baseType: !1104, size: 32, offset: 96)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1582, file: !1583, line: 416, baseType: !1104, size: 32, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1582, file: !1583, line: 417, baseType: !1104, size: 32, offset: 160)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1582, file: !1583, line: 418, baseType: !1103, size: 8, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1582, file: !1583, line: 419, baseType: !1103, size: 8, offset: 200)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1582, file: !1583, line: 420, baseType: !1594, size: 8, offset: 208)
!1594 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1582, file: !1583, line: 421, baseType: !1594, size: 8, offset: 216)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1582, file: !1583, line: 422, baseType: !1594, size: 8, offset: 224)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1582, file: !1583, line: 423, baseType: !1594, size: 8, offset: 232)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1582, file: !1583, line: 424, baseType: !1594, size: 8, offset: 240)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1582, file: !1583, line: 425, baseType: !1594, size: 8, offset: 248)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1582, file: !1583, line: 426, baseType: !1594, size: 8, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1582, file: !1583, line: 427, baseType: !1594, size: 8, offset: 264)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1582, file: !1583, line: 428, baseType: !1594, size: 8, offset: 272)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1582, file: !1583, line: 429, baseType: !1594, size: 8, offset: 280)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1582, file: !1583, line: 430, baseType: !1594, size: 8, offset: 288)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1582, file: !1583, line: 431, baseType: !1594, size: 8, offset: 296)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1582, file: !1583, line: 432, baseType: !1594, size: 8, offset: 304)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1582, file: !1583, line: 433, baseType: !1594, size: 8, offset: 312)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1582, file: !1583, line: 434, baseType: !1594, size: 8, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1582, file: !1583, line: 435, baseType: !1594, size: 8, offset: 328)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1582, file: !1583, line: 436, baseType: !1594, size: 8, offset: 336)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1582, file: !1583, line: 437, baseType: !1594, size: 8, offset: 344)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1582, file: !1583, line: 438, baseType: !1594, size: 8, offset: 352)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1582, file: !1583, line: 439, baseType: !1594, size: 8, offset: 360)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1582, file: !1583, line: 440, baseType: !1594, size: 8, offset: 368)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1582, file: !1583, line: 441, baseType: !1594, size: 8, offset: 376)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1582, file: !1583, line: 442, baseType: !1594, size: 8, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1582, file: !1583, line: 443, baseType: !1594, size: 8, offset: 392)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1582, file: !1583, line: 444, baseType: !1594, size: 8, offset: 400)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1582, file: !1583, line: 445, baseType: !1594, size: 8, offset: 408)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1582, file: !1583, line: 446, baseType: !1594, size: 8, offset: 416)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1582, file: !1583, line: 447, baseType: !1594, size: 8, offset: 424)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1582, file: !1583, line: 448, baseType: !1594, size: 8, offset: 432)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1582, file: !1583, line: 449, baseType: !1594, size: 8, offset: 440)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1582, file: !1583, line: 450, baseType: !1594, size: 8, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1582, file: !1583, line: 451, baseType: !1594, size: 8, offset: 456)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1582, file: !1583, line: 452, baseType: !1594, size: 8, offset: 464)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1582, file: !1583, line: 453, baseType: !1594, size: 8, offset: 472)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1582, file: !1583, line: 454, baseType: !1594, size: 8, offset: 480)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1582, file: !1583, line: 455, baseType: !1594, size: 8, offset: 488)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1582, file: !1583, line: 456, baseType: !1594, size: 8, offset: 496)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1582, file: !1583, line: 457, baseType: !1594, size: 8, offset: 504)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1582, file: !1583, line: 458, baseType: !1594, size: 8, offset: 512)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1582, file: !1583, line: 459, baseType: !1594, size: 8, offset: 520)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1582, file: !1583, line: 460, baseType: !1594, size: 8, offset: 528)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1582, file: !1583, line: 461, baseType: !1594, size: 8, offset: 536)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1582, file: !1583, line: 462, baseType: !1594, size: 8, offset: 544)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1582, file: !1583, line: 463, baseType: !1594, size: 8, offset: 552)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1582, file: !1583, line: 464, baseType: !1594, size: 8, offset: 560)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1582, file: !1583, line: 465, baseType: !1594, size: 8, offset: 568)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1582, file: !1583, line: 466, baseType: !1594, size: 8, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1582, file: !1583, line: 467, baseType: !1594, size: 8, offset: 584)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1582, file: !1583, line: 468, baseType: !1594, size: 8, offset: 592)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1582, file: !1583, line: 469, baseType: !1594, size: 8, offset: 600)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1582, file: !1583, line: 470, baseType: !1594, size: 8, offset: 608)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1582, file: !1583, line: 471, baseType: !1594, size: 8, offset: 616)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1582, file: !1583, line: 472, baseType: !1594, size: 8, offset: 624)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1582, file: !1583, line: 473, baseType: !1594, size: 8, offset: 632)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1582, file: !1583, line: 474, baseType: !1594, size: 8, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1582, file: !1583, line: 475, baseType: !1594, size: 8, offset: 648)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1582, file: !1583, line: 476, baseType: !1594, size: 8, offset: 656)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1582, file: !1583, line: 477, baseType: !1594, size: 8, offset: 664)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1582, file: !1583, line: 478, baseType: !1594, size: 8, offset: 672)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1582, file: !1583, line: 479, baseType: !1594, size: 8, offset: 680)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1582, file: !1583, line: 480, baseType: !1594, size: 8, offset: 688)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1582, file: !1583, line: 481, baseType: !1594, size: 8, offset: 696)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1582, file: !1583, line: 482, baseType: !1594, size: 8, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1582, file: !1583, line: 483, baseType: !1594, size: 8, offset: 712)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1582, file: !1583, line: 484, baseType: !1594, size: 8, offset: 720)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1582, file: !1583, line: 485, baseType: !1594, size: 8, offset: 728)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1582, file: !1583, line: 486, baseType: !1594, size: 8, offset: 736)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1582, file: !1583, line: 487, baseType: !1594, size: 8, offset: 744)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1582, file: !1583, line: 488, baseType: !1594, size: 8, offset: 752)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1582, file: !1583, line: 489, baseType: !1594, size: 8, offset: 760)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1582, file: !1583, line: 490, baseType: !1594, size: 8, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1582, file: !1583, line: 491, baseType: !1594, size: 8, offset: 776)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1582, file: !1583, line: 492, baseType: !1594, size: 8, offset: 784)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1582, file: !1583, line: 493, baseType: !1594, size: 8, offset: 792)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1582, file: !1583, line: 494, baseType: !1594, size: 8, offset: 800)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1582, file: !1583, line: 495, baseType: !1594, size: 8, offset: 808)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1582, file: !1583, line: 496, baseType: !1594, size: 8, offset: 816)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1582, file: !1583, line: 497, baseType: !1594, size: 8, offset: 824)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1582, file: !1583, line: 498, baseType: !1594, size: 8, offset: 832)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1582, file: !1583, line: 499, baseType: !1594, size: 8, offset: 840)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1582, file: !1583, line: 500, baseType: !1594, size: 8, offset: 848)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1582, file: !1583, line: 501, baseType: !1594, size: 8, offset: 856)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1582, file: !1583, line: 502, baseType: !1594, size: 8, offset: 864)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1582, file: !1583, line: 503, baseType: !1594, size: 8, offset: 872)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1582, file: !1583, line: 504, baseType: !1594, size: 8, offset: 880)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1582, file: !1583, line: 505, baseType: !1594, size: 8, offset: 888)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1582, file: !1583, line: 506, baseType: !1594, size: 8, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1582, file: !1583, line: 507, baseType: !1594, size: 8, offset: 904)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1582, file: !1583, line: 508, baseType: !1594, size: 8, offset: 912)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1582, file: !1583, line: 509, baseType: !1594, size: 8, offset: 920)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1582, file: !1583, line: 510, baseType: !1594, size: 8, offset: 928)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1582, file: !1583, line: 511, baseType: !1594, size: 8, offset: 936)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1582, file: !1583, line: 512, baseType: !1594, size: 8, offset: 944)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1582, file: !1583, line: 513, baseType: !1594, size: 8, offset: 952)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1582, file: !1583, line: 514, baseType: !1594, size: 8, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1582, file: !1583, line: 515, baseType: !1594, size: 8, offset: 968)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1582, file: !1583, line: 516, baseType: !1594, size: 8, offset: 976)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1582, file: !1583, line: 517, baseType: !1594, size: 8, offset: 984)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1582, file: !1583, line: 518, baseType: !1594, size: 8, offset: 992)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1582, file: !1583, line: 519, baseType: !1594, size: 8, offset: 1000)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1582, file: !1583, line: 520, baseType: !1594, size: 8, offset: 1008)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1582, file: !1583, line: 521, baseType: !1594, size: 8, offset: 1016)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1582, file: !1583, line: 522, baseType: !1594, size: 8, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1582, file: !1583, line: 523, baseType: !1594, size: 8, offset: 1032)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1582, file: !1583, line: 524, baseType: !1594, size: 8, offset: 1040)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1582, file: !1583, line: 525, baseType: !1594, size: 8, offset: 1048)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1582, file: !1583, line: 526, baseType: !1594, size: 8, offset: 1056)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1582, file: !1583, line: 527, baseType: !1594, size: 8, offset: 1064)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1582, file: !1583, line: 528, baseType: !1594, size: 8, offset: 1072)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1582, file: !1583, line: 529, baseType: !1594, size: 8, offset: 1080)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1582, file: !1583, line: 530, baseType: !1594, size: 8, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1582, file: !1583, line: 531, baseType: !1594, size: 8, offset: 1096)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1582, file: !1583, line: 532, baseType: !1594, size: 8, offset: 1104)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1582, file: !1583, line: 533, baseType: !1594, size: 8, offset: 1112)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1582, file: !1583, line: 534, baseType: !1594, size: 8, offset: 1120)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1582, file: !1583, line: 535, baseType: !1594, size: 8, offset: 1128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1582, file: !1583, line: 536, baseType: !1594, size: 8, offset: 1136)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1582, file: !1583, line: 537, baseType: !1594, size: 8, offset: 1144)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1582, file: !1583, line: 538, baseType: !1594, size: 8, offset: 1152)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1582, file: !1583, line: 539, baseType: !1594, size: 8, offset: 1160)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1582, file: !1583, line: 540, baseType: !1594, size: 8, offset: 1168)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1582, file: !1583, line: 541, baseType: !1594, size: 8, offset: 1176)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1582, file: !1583, line: 542, baseType: !1594, size: 8, offset: 1184)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1582, file: !1583, line: 543, baseType: !1594, size: 8, offset: 1192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1582, file: !1583, line: 544, baseType: !1594, size: 8, offset: 1200)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1582, file: !1583, line: 545, baseType: !1594, size: 8, offset: 1208)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1582, file: !1583, line: 546, baseType: !1594, size: 8, offset: 1216)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1582, file: !1583, line: 547, baseType: !1594, size: 8, offset: 1224)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1582, file: !1583, line: 548, baseType: !1594, size: 8, offset: 1232)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1582, file: !1583, line: 549, baseType: !1594, size: 8, offset: 1240)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1582, file: !1583, line: 550, baseType: !1594, size: 8, offset: 1248)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1582, file: !1583, line: 551, baseType: !1594, size: 8, offset: 1256)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1582, file: !1583, line: 552, baseType: !1594, size: 8, offset: 1264)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1582, file: !1583, line: 553, baseType: !1594, size: 8, offset: 1272)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1582, file: !1583, line: 554, baseType: !1594, size: 8, offset: 1280)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1582, file: !1583, line: 555, baseType: !1594, size: 8, offset: 1288)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1582, file: !1583, line: 556, baseType: !1594, size: 8, offset: 1296)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1582, file: !1583, line: 557, baseType: !1594, size: 8, offset: 1304)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1582, file: !1583, line: 558, baseType: !1594, size: 8, offset: 1312)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1582, file: !1583, line: 559, baseType: !1594, size: 8, offset: 1320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1582, file: !1583, line: 560, baseType: !1594, size: 8, offset: 1328)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1582, file: !1583, line: 561, baseType: !1594, size: 8, offset: 1336)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1582, file: !1583, line: 562, baseType: !1594, size: 8, offset: 1344)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1582, file: !1583, line: 563, baseType: !1594, size: 8, offset: 1352)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1582, file: !1583, line: 564, baseType: !1594, size: 8, offset: 1360)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1582, file: !1583, line: 565, baseType: !1594, size: 8, offset: 1368)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1582, file: !1583, line: 566, baseType: !1594, size: 8, offset: 1376)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1582, file: !1583, line: 567, baseType: !1594, size: 8, offset: 1384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1582, file: !1583, line: 568, baseType: !1594, size: 8, offset: 1392)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1582, file: !1583, line: 569, baseType: !1594, size: 8, offset: 1400)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1582, file: !1583, line: 570, baseType: !1594, size: 8, offset: 1408)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1582, file: !1583, line: 571, baseType: !1594, size: 8, offset: 1416)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1582, file: !1583, line: 572, baseType: !1594, size: 8, offset: 1424)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1582, file: !1583, line: 573, baseType: !1594, size: 8, offset: 1432)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1582, file: !1583, line: 574, baseType: !1594, size: 8, offset: 1440)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !1116, file: !133, line: 3405, baseType: !1750, size: 384)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !133, line: 3352, size: 384, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1750, file: !133, line: 3353, baseType: !1152, size: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1750, file: !133, line: 3356, baseType: !1754, size: 192, offset: 192)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1583, line: 578, size: 192, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1754, file: !1583, line: 580, baseType: !1104, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1754, file: !1583, line: 581, baseType: !1104, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1754, file: !1583, line: 582, baseType: !1104, size: 32, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1754, file: !1583, line: 583, baseType: !1104, size: 32, offset: 96)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1754, file: !1583, line: 584, baseType: !1103, size: 8, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1754, file: !1583, line: 585, baseType: !1103, size: 8, offset: 136)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1754, file: !1583, line: 586, baseType: !1103, size: 8, offset: 144)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1754, file: !1583, line: 587, baseType: !1103, size: 8, offset: 152)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1754, file: !1583, line: 588, baseType: !1103, size: 8, offset: 160)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1754, file: !1583, line: 589, baseType: !1103, size: 8, offset: 168)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1754, file: !1583, line: 590, baseType: !1103, size: 8, offset: 176)
!1767 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1768 = !{i32 2, !"Dwarf Version", i32 4}
!1769 = !{i32 2, !"Debug Info Version", i32 3}
!1770 = !{i32 1, !"wchar_size", i32 4}
!1771 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1772 = distinct !DISubprogram(name: "vprintf", scope: !1773, file: !1773, line: 39, type: !1774, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1784)
!1773 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1104, !1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1109)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1779)
!1779 = !{!1780, !1781, !1782, !1783}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1778, file: !1, baseType: !5, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1778, file: !1, baseType: !5, size: 32, offset: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1778, file: !1, baseType: !1108, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1778, file: !1, baseType: !1108, size: 64, offset: 128)
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1772, file: !1773, line: 39, type: !1776)
!1786 = !DILocalVariable(name: "__arg", arg: 2, scope: !1772, file: !1773, line: 39, type: !1777)
!1787 = !DILocation(line: 0, scope: !1772)
!1788 = !DILocation(line: 41, column: 20, scope: !1772)
!1789 = !DILocation(line: 41, column: 10, scope: !1772)
!1790 = !DILocation(line: 41, column: 3, scope: !1772)
!1791 = distinct !DISubprogram(name: "getchar", scope: !1773, file: !1773, line: 47, type: !1792, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!1104}
!1794 = !{}
!1795 = !DILocation(line: 49, column: 16, scope: !1791)
!1796 = !DILocation(line: 49, column: 10, scope: !1791)
!1797 = !DILocation(line: 49, column: 3, scope: !1791)
!1798 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1773, file: !1773, line: 56, type: !1799, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1853)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!1104, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1803, line: 7, baseType: !1804)
!1803 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1805, line: 49, size: 1728, elements: !1806)
!1805 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1822, !1824, !1825, !1826, !1829, !1830, !1831, !1832, !1835, !1837, !1840, !1843, !1844, !1845, !1848, !1849}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1804, file: !1805, line: 51, baseType: !1104, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1804, file: !1805, line: 54, baseType: !1106, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1804, file: !1805, line: 55, baseType: !1106, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1804, file: !1805, line: 56, baseType: !1106, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1804, file: !1805, line: 57, baseType: !1106, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1804, file: !1805, line: 58, baseType: !1106, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1804, file: !1805, line: 59, baseType: !1106, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1804, file: !1805, line: 60, baseType: !1106, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1804, file: !1805, line: 61, baseType: !1106, size: 64, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1804, file: !1805, line: 64, baseType: !1106, size: 64, offset: 576)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1804, file: !1805, line: 65, baseType: !1106, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1804, file: !1805, line: 66, baseType: !1106, size: 64, offset: 704)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1804, file: !1805, line: 68, baseType: !1820, size: 64, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1805, line: 36, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1804, file: !1805, line: 70, baseType: !1823, size: 64, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1804, file: !1805, line: 72, baseType: !1104, size: 32, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1804, file: !1805, line: 73, baseType: !1104, size: 32, offset: 928)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1804, file: !1805, line: 74, baseType: !1827, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1828, line: 152, baseType: !1169)
!1828 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1804, file: !1805, line: 77, baseType: !1767, size: 16, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1804, file: !1805, line: 78, baseType: !1594, size: 8, offset: 1040)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1804, file: !1805, line: 79, baseType: !1211, size: 8, offset: 1048)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1804, file: !1805, line: 81, baseType: !1833, size: 64, offset: 1088)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1805, line: 43, baseType: null)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1804, file: !1805, line: 89, baseType: !1836, size: 64, offset: 1152)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1828, line: 153, baseType: !1169)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1804, file: !1805, line: 91, baseType: !1838, size: 64, offset: 1216)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1805, line: 37, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1804, file: !1805, line: 92, baseType: !1841, size: 64, offset: 1280)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1805, line: 38, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1804, file: !1805, line: 93, baseType: !1823, size: 64, offset: 1344)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1804, file: !1805, line: 94, baseType: !1108, size: 64, offset: 1408)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1804, file: !1805, line: 95, baseType: !1846, size: 64, offset: 1472)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1847, line: 46, baseType: !1167)
!1847 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1804, file: !1805, line: 96, baseType: !1104, size: 32, offset: 1536)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1804, file: !1805, line: 98, baseType: !1850, size: 160, offset: 1568)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 160, elements: !1851)
!1851 = !{!1852}
!1852 = !DISubrange(count: 20)
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "__fp", arg: 1, scope: !1798, file: !1773, line: 56, type: !1801)
!1855 = !DILocation(line: 0, scope: !1798)
!1856 = !DILocation(line: 58, column: 10, scope: !1798)
!1857 = !DILocation(line: 58, column: 3, scope: !1798)
!1858 = distinct !DISubprogram(name: "getc_unlocked", scope: !1773, file: !1773, line: 66, type: !1799, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1859)
!1859 = !{!1860}
!1860 = !DILocalVariable(name: "__fp", arg: 1, scope: !1858, file: !1773, line: 66, type: !1801)
!1861 = !DILocation(line: 0, scope: !1858)
!1862 = !DILocation(line: 68, column: 10, scope: !1858)
!1863 = !DILocation(line: 68, column: 3, scope: !1858)
!1864 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1773, file: !1773, line: 73, type: !1792, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1794)
!1865 = !DILocation(line: 75, column: 10, scope: !1864)
!1866 = !DILocation(line: 75, column: 3, scope: !1864)
!1867 = distinct !DISubprogram(name: "putchar", scope: !1773, file: !1773, line: 82, type: !1868, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1870)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!1104, !1104}
!1870 = !{!1871}
!1871 = !DILocalVariable(name: "__c", arg: 1, scope: !1867, file: !1773, line: 82, type: !1104)
!1872 = !DILocation(line: 0, scope: !1867)
!1873 = !DILocation(line: 84, column: 21, scope: !1867)
!1874 = !DILocation(line: 84, column: 10, scope: !1867)
!1875 = !DILocation(line: 84, column: 3, scope: !1867)
!1876 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1773, file: !1773, line: 91, type: !1877, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1104, !1104, !1801}
!1879 = !{!1880, !1881}
!1880 = !DILocalVariable(name: "__c", arg: 1, scope: !1876, file: !1773, line: 91, type: !1104)
!1881 = !DILocalVariable(name: "__stream", arg: 2, scope: !1876, file: !1773, line: 91, type: !1801)
!1882 = !DILocation(line: 0, scope: !1876)
!1883 = !DILocation(line: 93, column: 10, scope: !1876)
!1884 = !DILocation(line: 93, column: 3, scope: !1876)
!1885 = distinct !DISubprogram(name: "putc_unlocked", scope: !1773, file: !1773, line: 101, type: !1877, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1886)
!1886 = !{!1887, !1888}
!1887 = !DILocalVariable(name: "__c", arg: 1, scope: !1885, file: !1773, line: 101, type: !1104)
!1888 = !DILocalVariable(name: "__stream", arg: 2, scope: !1885, file: !1773, line: 101, type: !1801)
!1889 = !DILocation(line: 0, scope: !1885)
!1890 = !DILocation(line: 103, column: 10, scope: !1885)
!1891 = !DILocation(line: 103, column: 3, scope: !1885)
!1892 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1773, file: !1773, line: 108, type: !1868, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1893)
!1893 = !{!1894}
!1894 = !DILocalVariable(name: "__c", arg: 1, scope: !1892, file: !1773, line: 108, type: !1104)
!1895 = !DILocation(line: 0, scope: !1892)
!1896 = !DILocation(line: 110, column: 10, scope: !1892)
!1897 = !DILocation(line: 110, column: 3, scope: !1892)
!1898 = distinct !DISubprogram(name: "getline", scope: !1773, file: !1773, line: 118, type: !1899, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1903)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!1901, !1105, !1902, !1801}
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1828, line: 193, baseType: !1169)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1903 = !{!1904, !1905, !1906}
!1904 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1898, file: !1773, line: 118, type: !1105)
!1905 = !DILocalVariable(name: "__n", arg: 2, scope: !1898, file: !1773, line: 118, type: !1902)
!1906 = !DILocalVariable(name: "__stream", arg: 3, scope: !1898, file: !1773, line: 118, type: !1801)
!1907 = !DILocation(line: 0, scope: !1898)
!1908 = !DILocation(line: 120, column: 10, scope: !1898)
!1909 = !DILocation(line: 120, column: 3, scope: !1898)
!1910 = distinct !DISubprogram(name: "feof_unlocked", scope: !1773, file: !1773, line: 128, type: !1799, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1911)
!1911 = !{!1912}
!1912 = !DILocalVariable(name: "__stream", arg: 1, scope: !1910, file: !1773, line: 128, type: !1801)
!1913 = !DILocation(line: 0, scope: !1910)
!1914 = !DILocation(line: 130, column: 10, scope: !1910)
!1915 = !DILocation(line: 130, column: 3, scope: !1910)
!1916 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1773, file: !1773, line: 135, type: !1799, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1917)
!1917 = !{!1918}
!1918 = !DILocalVariable(name: "__stream", arg: 1, scope: !1916, file: !1773, line: 135, type: !1801)
!1919 = !DILocation(line: 0, scope: !1916)
!1920 = !DILocation(line: 137, column: 10, scope: !1916)
!1921 = !DILocation(line: 137, column: 3, scope: !1916)
!1922 = distinct !DISubprogram(name: "tolower", scope: !1923, file: !1923, line: 207, type: !1868, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1924)
!1923 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1924 = !{!1925}
!1925 = !DILocalVariable(name: "__c", arg: 1, scope: !1922, file: !1923, line: 207, type: !1104)
!1926 = !DILocation(line: 0, scope: !1922)
!1927 = !DILocation(line: 209, column: 22, scope: !1922)
!1928 = !DILocation(line: 209, column: 39, scope: !1922)
!1929 = !DILocation(line: 209, column: 38, scope: !1922)
!1930 = !DILocation(line: 209, column: 37, scope: !1922)
!1931 = !DILocation(line: 209, column: 10, scope: !1922)
!1932 = !DILocation(line: 209, column: 3, scope: !1922)
!1933 = distinct !DISubprogram(name: "toupper", scope: !1923, file: !1923, line: 213, type: !1868, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1934)
!1934 = !{!1935}
!1935 = !DILocalVariable(name: "__c", arg: 1, scope: !1933, file: !1923, line: 213, type: !1104)
!1936 = !DILocation(line: 0, scope: !1933)
!1937 = !DILocation(line: 215, column: 22, scope: !1933)
!1938 = !DILocation(line: 215, column: 39, scope: !1933)
!1939 = !DILocation(line: 215, column: 38, scope: !1933)
!1940 = !DILocation(line: 215, column: 37, scope: !1933)
!1941 = !DILocation(line: 215, column: 10, scope: !1933)
!1942 = !DILocation(line: 215, column: 3, scope: !1933)
!1943 = distinct !DISubprogram(name: "atoi", scope: !1944, file: !1944, line: 361, type: !1945, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1947)
!1944 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1104, !1109}
!1947 = !{!1948}
!1948 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1943, file: !1944, line: 361, type: !1109)
!1949 = !DILocation(line: 0, scope: !1943)
!1950 = !DILocation(line: 363, column: 16, scope: !1943)
!1951 = !DILocation(line: 363, column: 10, scope: !1943)
!1952 = !DILocation(line: 363, column: 3, scope: !1943)
!1953 = distinct !DISubprogram(name: "atol", scope: !1944, file: !1944, line: 366, type: !1954, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1169, !1109}
!1956 = !{!1957}
!1957 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1953, file: !1944, line: 366, type: !1109)
!1958 = !DILocation(line: 0, scope: !1953)
!1959 = !DILocation(line: 368, column: 10, scope: !1953)
!1960 = !DILocation(line: 368, column: 3, scope: !1953)
!1961 = distinct !DISubprogram(name: "atoll", scope: !1944, file: !1944, line: 373, type: !1962, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1965)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!1964, !1109}
!1964 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1965 = !{!1966}
!1966 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1961, file: !1944, line: 373, type: !1109)
!1967 = !DILocation(line: 0, scope: !1961)
!1968 = !DILocation(line: 375, column: 10, scope: !1961)
!1969 = !DILocation(line: 375, column: 3, scope: !1961)
!1970 = distinct !DISubprogram(name: "bsearch", scope: !1971, file: !1971, line: 20, type: !1972, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1980)
!1971 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1108, !1974, !1974, !1846, !1846, !1976}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1944, line: 808, baseType: !1977)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!1104, !1974, !1974}
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990}
!1981 = !DILocalVariable(name: "__key", arg: 1, scope: !1970, file: !1971, line: 20, type: !1974)
!1982 = !DILocalVariable(name: "__base", arg: 2, scope: !1970, file: !1971, line: 20, type: !1974)
!1983 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1970, file: !1971, line: 20, type: !1846)
!1984 = !DILocalVariable(name: "__size", arg: 4, scope: !1970, file: !1971, line: 20, type: !1846)
!1985 = !DILocalVariable(name: "__compar", arg: 5, scope: !1970, file: !1971, line: 21, type: !1976)
!1986 = !DILocalVariable(name: "__l", scope: !1970, file: !1971, line: 23, type: !1846)
!1987 = !DILocalVariable(name: "__u", scope: !1970, file: !1971, line: 23, type: !1846)
!1988 = !DILocalVariable(name: "__idx", scope: !1970, file: !1971, line: 23, type: !1846)
!1989 = !DILocalVariable(name: "__p", scope: !1970, file: !1971, line: 24, type: !1974)
!1990 = !DILocalVariable(name: "__comparison", scope: !1970, file: !1971, line: 25, type: !1104)
!1991 = !DILocation(line: 0, scope: !1970)
!1992 = !DILocation(line: 29, column: 3, scope: !1970)
!1993 = !DILocation(line: 27, column: 7, scope: !1970)
!1994 = !DILocation(line: 29, column: 14, scope: !1970)
!1995 = !DILocation(line: 31, column: 20, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1970, file: !1971, line: 30, column: 5)
!1997 = !DILocation(line: 31, column: 27, scope: !1996)
!1998 = !DILocation(line: 32, column: 56, scope: !1996)
!1999 = !DILocation(line: 32, column: 47, scope: !1996)
!2000 = !DILocation(line: 33, column: 22, scope: !1996)
!2001 = !DILocation(line: 34, column: 24, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1996, file: !1971, line: 34, column: 11)
!2003 = !DILocation(line: 34, column: 11, scope: !1996)
!2004 = !DILocation(line: 36, column: 29, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !1971, line: 36, column: 16)
!2006 = !DILocation(line: 36, column: 16, scope: !2002)
!2007 = !DILocation(line: 37, column: 14, scope: !2005)
!2008 = distinct !{!2008, !1992, !2009}
!2009 = !DILocation(line: 40, column: 5, scope: !1970)
!2010 = !DILocation(line: 43, column: 1, scope: !1970)
!2011 = distinct !DISubprogram(name: "atof", scope: !2012, file: !2012, line: 25, type: !2013, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2016)
!2012 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!2015, !1109}
!2015 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2016 = !{!2017}
!2017 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2011, file: !2012, line: 25, type: !1109)
!2018 = !DILocation(line: 0, scope: !2011)
!2019 = !DILocation(line: 27, column: 10, scope: !2011)
!2020 = !DILocation(line: 27, column: 3, scope: !2011)
!2021 = distinct !DISubprogram(name: "strtoimax", scope: !2022, file: !2022, line: 324, type: !2023, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2029)
!2022 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!2025, !1776, !2028, !1104}
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2026, line: 101, baseType: !2027)
!2026 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1828, line: 72, baseType: !1169)
!2028 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1105)
!2029 = !{!2030, !2031, !2032}
!2030 = !DILocalVariable(name: "nptr", arg: 1, scope: !2021, file: !2022, line: 324, type: !1776)
!2031 = !DILocalVariable(name: "endptr", arg: 2, scope: !2021, file: !2022, line: 324, type: !2028)
!2032 = !DILocalVariable(name: "base", arg: 3, scope: !2021, file: !2022, line: 324, type: !1104)
!2033 = !DILocation(line: 0, scope: !2021)
!2034 = !DILocation(line: 327, column: 10, scope: !2021)
!2035 = !DILocation(line: 327, column: 3, scope: !2021)
!2036 = distinct !DISubprogram(name: "strtoumax", scope: !2022, file: !2022, line: 336, type: !2037, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2041)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!2039, !1776, !2028, !1104}
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2026, line: 102, baseType: !2040)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1828, line: 73, baseType: !1167)
!2041 = !{!2042, !2043, !2044}
!2042 = !DILocalVariable(name: "nptr", arg: 1, scope: !2036, file: !2022, line: 336, type: !1776)
!2043 = !DILocalVariable(name: "endptr", arg: 2, scope: !2036, file: !2022, line: 336, type: !2028)
!2044 = !DILocalVariable(name: "base", arg: 3, scope: !2036, file: !2022, line: 336, type: !1104)
!2045 = !DILocation(line: 0, scope: !2036)
!2046 = !DILocation(line: 339, column: 10, scope: !2036)
!2047 = !DILocation(line: 339, column: 3, scope: !2036)
!2048 = distinct !DISubprogram(name: "wcstoimax", scope: !2022, file: !2022, line: 348, type: !2049, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2058)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2025, !2051, !2055, !1104}
!2051 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2052)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2054)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2022, line: 34, baseType: !1104)
!2055 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2058 = !{!2059, !2060, !2061}
!2059 = !DILocalVariable(name: "nptr", arg: 1, scope: !2048, file: !2022, line: 348, type: !2051)
!2060 = !DILocalVariable(name: "endptr", arg: 2, scope: !2048, file: !2022, line: 348, type: !2055)
!2061 = !DILocalVariable(name: "base", arg: 3, scope: !2048, file: !2022, line: 348, type: !1104)
!2062 = !DILocation(line: 0, scope: !2048)
!2063 = !DILocation(line: 351, column: 10, scope: !2048)
!2064 = !DILocation(line: 351, column: 3, scope: !2048)
!2065 = distinct !DISubprogram(name: "wcstoumax", scope: !2022, file: !2022, line: 362, type: !2066, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!2039, !2051, !2055, !1104}
!2068 = !{!2069, !2070, !2071}
!2069 = !DILocalVariable(name: "nptr", arg: 1, scope: !2065, file: !2022, line: 362, type: !2051)
!2070 = !DILocalVariable(name: "endptr", arg: 2, scope: !2065, file: !2022, line: 362, type: !2055)
!2071 = !DILocalVariable(name: "base", arg: 3, scope: !2065, file: !2022, line: 362, type: !1104)
!2072 = !DILocation(line: 0, scope: !2065)
!2073 = !DILocation(line: 365, column: 10, scope: !2065)
!2074 = !DILocation(line: 365, column: 3, scope: !2065)
!2075 = distinct !DISubprogram(name: "stat", scope: !2076, file: !2076, line: 453, type: !2077, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2114)
!2076 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!1104, !1109, !2079}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2081, line: 46, size: 1152, elements: !2082)
!2081 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2082 = !{!2083, !2085, !2087, !2089, !2091, !2093, !2095, !2096, !2097, !2098, !2100, !2102, !2110, !2111, !2112}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2080, file: !2081, line: 48, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1828, line: 145, baseType: !1167)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2080, file: !2081, line: 53, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1828, line: 148, baseType: !1167)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2080, file: !2081, line: 61, baseType: !2088, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1828, line: 151, baseType: !1167)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2080, file: !2081, line: 62, baseType: !2090, size: 32, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1828, line: 150, baseType: !5)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2080, file: !2081, line: 64, baseType: !2092, size: 32, offset: 224)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1828, line: 146, baseType: !5)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2080, file: !2081, line: 65, baseType: !2094, size: 32, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1828, line: 147, baseType: !5)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2080, file: !2081, line: 67, baseType: !1104, size: 32, offset: 288)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2080, file: !2081, line: 69, baseType: !2084, size: 64, offset: 320)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2080, file: !2081, line: 74, baseType: !1827, size: 64, offset: 384)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2080, file: !2081, line: 78, baseType: !2099, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1828, line: 174, baseType: !1169)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2080, file: !2081, line: 80, baseType: !2101, size: 64, offset: 512)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1828, line: 179, baseType: !1169)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2080, file: !2081, line: 91, baseType: !2103, size: 128, offset: 576)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2104, line: 10, size: 128, elements: !2105)
!2104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2105 = !{!2106, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2103, file: !2104, line: 12, baseType: !2107, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1828, line: 160, baseType: !1169)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2103, file: !2104, line: 16, baseType: !2109, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1828, line: 196, baseType: !1169)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2080, file: !2081, line: 92, baseType: !2103, size: 128, offset: 704)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2080, file: !2081, line: 93, baseType: !2103, size: 128, offset: 832)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2080, file: !2081, line: 106, baseType: !2113, size: 192, offset: 960)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2109, size: 192, elements: !1187)
!2114 = !{!2115, !2116}
!2115 = !DILocalVariable(name: "__path", arg: 1, scope: !2075, file: !2076, line: 453, type: !1109)
!2116 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2075, file: !2076, line: 453, type: !2079)
!2117 = !DILocation(line: 0, scope: !2075)
!2118 = !DILocation(line: 455, column: 10, scope: !2075)
!2119 = !DILocation(line: 455, column: 3, scope: !2075)
!2120 = distinct !DISubprogram(name: "lstat", scope: !2076, file: !2076, line: 460, type: !2077, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2121)
!2121 = !{!2122, !2123}
!2122 = !DILocalVariable(name: "__path", arg: 1, scope: !2120, file: !2076, line: 460, type: !1109)
!2123 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2120, file: !2076, line: 460, type: !2079)
!2124 = !DILocation(line: 0, scope: !2120)
!2125 = !DILocation(line: 462, column: 10, scope: !2120)
!2126 = !DILocation(line: 462, column: 3, scope: !2120)
!2127 = distinct !DISubprogram(name: "fstat", scope: !2076, file: !2076, line: 467, type: !2128, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2130)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!1104, !1104, !2079}
!2130 = !{!2131, !2132}
!2131 = !DILocalVariable(name: "__fd", arg: 1, scope: !2127, file: !2076, line: 467, type: !1104)
!2132 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2127, file: !2076, line: 467, type: !2079)
!2133 = !DILocation(line: 0, scope: !2127)
!2134 = !DILocation(line: 469, column: 10, scope: !2127)
!2135 = !DILocation(line: 469, column: 3, scope: !2127)
!2136 = distinct !DISubprogram(name: "fstatat", scope: !2076, file: !2076, line: 474, type: !2137, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!1104, !1104, !1109, !2079, !1104}
!2139 = !{!2140, !2141, !2142, !2143}
!2140 = !DILocalVariable(name: "__fd", arg: 1, scope: !2136, file: !2076, line: 474, type: !1104)
!2141 = !DILocalVariable(name: "__filename", arg: 2, scope: !2136, file: !2076, line: 474, type: !1109)
!2142 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2136, file: !2076, line: 474, type: !2079)
!2143 = !DILocalVariable(name: "__flag", arg: 4, scope: !2136, file: !2076, line: 474, type: !1104)
!2144 = !DILocation(line: 0, scope: !2136)
!2145 = !DILocation(line: 477, column: 10, scope: !2136)
!2146 = !DILocation(line: 477, column: 3, scope: !2136)
!2147 = distinct !DISubprogram(name: "mknod", scope: !2076, file: !2076, line: 483, type: !2148, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!1104, !1109, !2090, !2084}
!2150 = !{!2151, !2152, !2153}
!2151 = !DILocalVariable(name: "__path", arg: 1, scope: !2147, file: !2076, line: 483, type: !1109)
!2152 = !DILocalVariable(name: "__mode", arg: 2, scope: !2147, file: !2076, line: 483, type: !2090)
!2153 = !DILocalVariable(name: "__dev", arg: 3, scope: !2147, file: !2076, line: 483, type: !2084)
!2154 = !DILocation(line: 0, scope: !2147)
!2155 = !DILocation(line: 485, column: 10, scope: !2147)
!2156 = !DILocation(line: 485, column: 3, scope: !2147)
!2157 = distinct !DISubprogram(name: "mknodat", scope: !2076, file: !2076, line: 491, type: !2158, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!1104, !1104, !1109, !2090, !2084}
!2160 = !{!2161, !2162, !2163, !2164}
!2161 = !DILocalVariable(name: "__fd", arg: 1, scope: !2157, file: !2076, line: 491, type: !1104)
!2162 = !DILocalVariable(name: "__path", arg: 2, scope: !2157, file: !2076, line: 491, type: !1109)
!2163 = !DILocalVariable(name: "__mode", arg: 3, scope: !2157, file: !2076, line: 491, type: !2090)
!2164 = !DILocalVariable(name: "__dev", arg: 4, scope: !2157, file: !2076, line: 491, type: !2084)
!2165 = !DILocation(line: 0, scope: !2157)
!2166 = !DILocation(line: 494, column: 10, scope: !2157)
!2167 = !DILocation(line: 494, column: 3, scope: !2157)
!2168 = distinct !DISubprogram(name: "stat64", scope: !2076, file: !2076, line: 502, type: !2169, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2191)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!1104, !1109, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2081, line: 119, size: 1152, elements: !2173)
!2173 = !{!2174, !2175, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2187, !2188, !2189, !2190}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2172, file: !2081, line: 121, baseType: !2084, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2172, file: !2081, line: 123, baseType: !2176, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1828, line: 149, baseType: !1167)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2172, file: !2081, line: 124, baseType: !2088, size: 64, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2172, file: !2081, line: 125, baseType: !2090, size: 32, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2172, file: !2081, line: 132, baseType: !2092, size: 32, offset: 224)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2172, file: !2081, line: 133, baseType: !2094, size: 32, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2172, file: !2081, line: 135, baseType: !1104, size: 32, offset: 288)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2172, file: !2081, line: 136, baseType: !2084, size: 64, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2172, file: !2081, line: 137, baseType: !1827, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2172, file: !2081, line: 143, baseType: !2099, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2172, file: !2081, line: 144, baseType: !2186, size: 64, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1828, line: 180, baseType: !1169)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2172, file: !2081, line: 152, baseType: !2103, size: 128, offset: 576)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2172, file: !2081, line: 153, baseType: !2103, size: 128, offset: 704)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2172, file: !2081, line: 154, baseType: !2103, size: 128, offset: 832)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2172, file: !2081, line: 164, baseType: !2113, size: 192, offset: 960)
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "__path", arg: 1, scope: !2168, file: !2076, line: 502, type: !1109)
!2193 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2168, file: !2076, line: 502, type: !2171)
!2194 = !DILocation(line: 0, scope: !2168)
!2195 = !DILocation(line: 504, column: 10, scope: !2168)
!2196 = !DILocation(line: 504, column: 3, scope: !2168)
!2197 = distinct !DISubprogram(name: "lstat64", scope: !2076, file: !2076, line: 509, type: !2169, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2198)
!2198 = !{!2199, !2200}
!2199 = !DILocalVariable(name: "__path", arg: 1, scope: !2197, file: !2076, line: 509, type: !1109)
!2200 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2197, file: !2076, line: 509, type: !2171)
!2201 = !DILocation(line: 0, scope: !2197)
!2202 = !DILocation(line: 511, column: 10, scope: !2197)
!2203 = !DILocation(line: 511, column: 3, scope: !2197)
!2204 = distinct !DISubprogram(name: "fstat64", scope: !2076, file: !2076, line: 516, type: !2205, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!1104, !1104, !2171}
!2207 = !{!2208, !2209}
!2208 = !DILocalVariable(name: "__fd", arg: 1, scope: !2204, file: !2076, line: 516, type: !1104)
!2209 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2204, file: !2076, line: 516, type: !2171)
!2210 = !DILocation(line: 0, scope: !2204)
!2211 = !DILocation(line: 518, column: 10, scope: !2204)
!2212 = !DILocation(line: 518, column: 3, scope: !2204)
!2213 = distinct !DISubprogram(name: "fstatat64", scope: !2076, file: !2076, line: 523, type: !2214, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2216)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!1104, !1104, !1109, !2171, !1104}
!2216 = !{!2217, !2218, !2219, !2220}
!2217 = !DILocalVariable(name: "__fd", arg: 1, scope: !2213, file: !2076, line: 523, type: !1104)
!2218 = !DILocalVariable(name: "__filename", arg: 2, scope: !2213, file: !2076, line: 523, type: !1109)
!2219 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2213, file: !2076, line: 523, type: !2171)
!2220 = !DILocalVariable(name: "__flag", arg: 4, scope: !2213, file: !2076, line: 523, type: !1104)
!2221 = !DILocation(line: 0, scope: !2213)
!2222 = !DILocation(line: 526, column: 10, scope: !2213)
!2223 = !DILocation(line: 526, column: 3, scope: !2213)
!2224 = distinct !DISubprogram(name: "convert_to_pointer", scope: !1, file: !1, line: 43, type: !2225, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!1113, !1113, !1113}
!2227 = !{!2228, !2229, !2230, !2231, !2235, !2236, !2238}
!2228 = !DILocalVariable(name: "type", arg: 1, scope: !2224, file: !1, line: 43, type: !1113)
!2229 = !DILocalVariable(name: "expr", arg: 2, scope: !2224, file: !1, line: 43, type: !1113)
!2230 = !DILocalVariable(name: "loc", scope: !2224, file: !1, line: 45, type: !1238)
!2231 = !DILocalVariable(name: "to_as", scope: !2232, file: !1, line: 60, type: !2234)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 57, column: 7)
!2233 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 54, column: 5)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_space_t", file: !1114, line: 73, baseType: !1103)
!2235 = !DILocalVariable(name: "from_as", scope: !2232, file: !1, line: 61, type: !2234)
!2236 = !DILocalVariable(name: "pprec", scope: !2237, file: !1, line: 77, type: !5)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 72, column: 7)
!2238 = !DILocalVariable(name: "eprec", scope: !2237, file: !1, line: 78, type: !5)
!2239 = !DILocation(line: 90, column: 14, scope: !2233)
!2240 = !DILocation(line: 0, scope: !2224)
!2241 = !DILocation(line: 45, column: 20, scope: !2224)
!2242 = !DILocation(line: 46, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 46, column: 7)
!2244 = !DILocation(line: 46, column: 24, scope: !2243)
!2245 = !DILocation(line: 46, column: 7, scope: !2224)
!2246 = !DILocation(line: 50, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 50, column: 7)
!2248 = !DILocation(line: 50, column: 7, scope: !2224)
!2249 = !DILocation(line: 51, column: 50, scope: !2247)
!2250 = !DILocation(line: 51, column: 12, scope: !2247)
!2251 = !DILocation(line: 51, column: 5, scope: !2247)
!2252 = !DILocation(line: 53, column: 11, scope: !2224)
!2253 = !DILocation(line: 53, column: 3, scope: !2224)
!2254 = !DILocation(line: 60, column: 23, scope: !2232)
!2255 = !DILocation(line: 61, column: 25, scope: !2232)
!2256 = !DILocation(line: 0, scope: !2232)
!2257 = !DILocation(line: 63, column: 12, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2232, file: !1, line: 63, column: 6)
!2259 = !DILocation(line: 63, column: 6, scope: !2232)
!2260 = !DILocation(line: 64, column: 11, scope: !2258)
!2261 = !DILocation(line: 64, column: 4, scope: !2258)
!2262 = !DILocation(line: 66, column: 11, scope: !2258)
!2263 = !DILocation(line: 66, column: 4, scope: !2258)
!2264 = !DILocation(line: 77, column: 23, scope: !2237)
!2265 = !DILocation(line: 0, scope: !2237)
!2266 = !DILocation(line: 78, column: 23, scope: !2237)
!2267 = !DILocation(line: 80, column: 13, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2237, file: !1, line: 80, column: 7)
!2269 = !DILocation(line: 80, column: 7, scope: !2237)
!2270 = !DILocation(line: 81, column: 11, scope: !2268)
!2271 = !DILocation(line: 81, column: 4, scope: !2268)
!2272 = !DILocation(line: 86, column: 14, scope: !2233)
!2273 = !DILocation(line: 86, column: 7, scope: !2233)
!2274 = !DILocation(line: 89, column: 7, scope: !2233)
!2275 = !DILocation(line: 90, column: 40, scope: !2233)
!2276 = !DILocation(line: 92, column: 1, scope: !2224)
!2277 = distinct !DISubprogram(name: "strip_float_extensions", scope: !1, file: !1, line: 96, type: !2278, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!1113, !1113}
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2288}
!2281 = !DILocalVariable(name: "exp", arg: 1, scope: !2277, file: !1, line: 96, type: !1113)
!2282 = !DILocalVariable(name: "sub", scope: !2277, file: !1, line: 98, type: !1113)
!2283 = !DILocalVariable(name: "expt", scope: !2277, file: !1, line: 98, type: !1113)
!2284 = !DILocalVariable(name: "subt", scope: !2277, file: !1, line: 98, type: !1113)
!2285 = !DILocalVariable(name: "orig", scope: !2286, file: !1, line: 106, type: !1176)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !1, line: 105, column: 5)
!2287 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 104, column: 7)
!2288 = !DILocalVariable(name: "type", scope: !2286, file: !1, line: 107, type: !1113)
!2289 = !DILocation(line: 0, scope: !2277)
!2290 = !DILocation(line: 104, column: 7, scope: !2287)
!2291 = !DILocation(line: 104, column: 23, scope: !2287)
!2292 = !DILocation(line: 104, column: 35, scope: !2287)
!2293 = !DILocation(line: 104, column: 39, scope: !2287)
!2294 = !DILocation(line: 0, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 110, column: 11)
!2296 = !DILocation(line: 110, column: 11, scope: !2295)
!2297 = !DILocation(line: 104, column: 7, scope: !2277)
!2298 = !DILocation(line: 106, column: 7, scope: !2286)
!2299 = !DILocation(line: 0, scope: !2286)
!2300 = !DILocation(line: 109, column: 14, scope: !2286)
!2301 = !DILocation(line: 110, column: 46, scope: !2295)
!2302 = !DILocation(line: 110, column: 44, scope: !2295)
!2303 = !DILocation(line: 111, column: 4, scope: !2295)
!2304 = !DILocation(line: 111, column: 28, scope: !2295)
!2305 = !DILocation(line: 111, column: 7, scope: !2295)
!2306 = !DILocation(line: 110, column: 11, scope: !2286)
!2307 = !DILocation(line: 113, column: 16, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2295, file: !1, line: 113, column: 16)
!2309 = !DILocation(line: 0, scope: !2308)
!2310 = !DILocation(line: 112, column: 9, scope: !2295)
!2311 = !DILocation(line: 112, column: 2, scope: !2295)
!2312 = !DILocation(line: 114, column: 11, scope: !2308)
!2313 = !DILocation(line: 114, column: 9, scope: !2308)
!2314 = !DILocation(line: 115, column: 9, scope: !2308)
!2315 = !DILocation(line: 115, column: 33, scope: !2308)
!2316 = !DILocation(line: 115, column: 12, scope: !2308)
!2317 = !DILocation(line: 116, column: 9, scope: !2308)
!2318 = !DILocation(line: 113, column: 16, scope: !2295)
!2319 = !DILocation(line: 117, column: 11, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 117, column: 11)
!2321 = !DILocation(line: 117, column: 11, scope: !2286)
!2322 = !DILocation(line: 118, column: 48, scope: !2320)
!2323 = !DILocation(line: 118, column: 27, scope: !2320)
!2324 = !DILocation(line: 118, column: 9, scope: !2320)
!2325 = !DILocation(line: 118, column: 2, scope: !2320)
!2326 = !DILocation(line: 119, column: 5, scope: !2287)
!2327 = !DILocation(line: 121, column: 8, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 121, column: 7)
!2329 = !DILocation(line: 121, column: 7, scope: !2277)
!2330 = !DILocation(line: 124, column: 9, scope: !2277)
!2331 = !DILocation(line: 125, column: 10, scope: !2277)
!2332 = !DILocation(line: 126, column: 10, scope: !2277)
!2333 = !DILocation(line: 128, column: 8, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 128, column: 7)
!2335 = !DILocation(line: 128, column: 7, scope: !2277)
!2336 = !DILocation(line: 131, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 131, column: 7)
!2338 = !DILocation(line: 131, column: 38, scope: !2337)
!2339 = !DILocation(line: 131, column: 35, scope: !2337)
!2340 = !DILocation(line: 131, column: 7, scope: !2277)
!2341 = !DILocation(line: 134, column: 7, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 134, column: 7)
!2343 = !DILocation(line: 134, column: 31, scope: !2342)
!2344 = !DILocation(line: 134, column: 29, scope: !2342)
!2345 = !DILocation(line: 134, column: 7, scope: !2277)
!2346 = !DILocation(line: 137, column: 10, scope: !2277)
!2347 = !DILocation(line: 137, column: 3, scope: !2277)
!2348 = !DILocation(line: 138, column: 1, scope: !2277)
!2349 = distinct !DISubprogram(name: "convert_to_real", scope: !1, file: !1, line: 147, type: !2225, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2360, !2361, !2364, !2367, !2370, !2373, !2377, !2378}
!2351 = !DILocalVariable(name: "type", arg: 1, scope: !2349, file: !1, line: 147, type: !1113)
!2352 = !DILocalVariable(name: "expr", arg: 2, scope: !2349, file: !1, line: 147, type: !1113)
!2353 = !DILocalVariable(name: "fcode", scope: !2349, file: !1, line: 149, type: !381)
!2354 = !DILocalVariable(name: "itype", scope: !2349, file: !1, line: 150, type: !1113)
!2355 = !DILocalVariable(name: "arg0", scope: !2356, file: !1, line: 203, type: !1113)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !1, line: 202, column: 6)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 160, column: 9)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !1, line: 158, column: 5)
!2359 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 155, column: 7)
!2360 = !DILocalVariable(name: "newtype", scope: !2356, file: !1, line: 204, type: !1113)
!2361 = !DILocalVariable(name: "fn", scope: !2362, file: !1, line: 218, type: !1113)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !1, line: 217, column: 10)
!2363 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 213, column: 12)
!2364 = !DILocalVariable(name: "arg", scope: !2365, file: !1, line: 222, type: !1113)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !1, line: 221, column: 5)
!2366 = distinct !DILexicalBlock(scope: !2362, file: !1, line: 220, column: 9)
!2367 = !DILocalVariable(name: "fn", scope: !2368, file: !1, line: 250, type: !1113)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !1, line: 249, column: 5)
!2369 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 233, column: 7)
!2370 = !DILocalVariable(name: "arg", scope: !2371, file: !1, line: 254, type: !1113)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !1, line: 253, column: 2)
!2372 = distinct !DILexicalBlock(scope: !2368, file: !1, line: 252, column: 11)
!2373 = !DILocalVariable(name: "arg0", scope: !2374, file: !1, line: 287, type: !1113)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 286, column: 5)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !1, line: 268, column: 7)
!2376 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 266, column: 7)
!2377 = !DILocalVariable(name: "arg1", scope: !2374, file: !1, line: 288, type: !1113)
!2378 = !DILocalVariable(name: "newtype", scope: !2379, file: !1, line: 294, type: !1113)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !1, line: 293, column: 9)
!2380 = distinct !DILexicalBlock(scope: !2374, file: !1, line: 290, column: 11)
!2381 = !DILocation(line: 0, scope: !2359)
!2382 = !DILocation(line: 0, scope: !2376)
!2383 = !DILocation(line: 391, column: 14, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 366, column: 5)
!2385 = !DILocation(line: 0, scope: !2349)
!2386 = !DILocation(line: 149, column: 34, scope: !2349)
!2387 = !DILocation(line: 150, column: 16, scope: !2349)
!2388 = !DILocation(line: 155, column: 7, scope: !2359)
!2389 = !DILocation(line: 156, column: 7, scope: !2359)
!2390 = !DILocation(line: 156, column: 11, scope: !2359)
!2391 = !DILocation(line: 156, column: 31, scope: !2359)
!2392 = !DILocation(line: 156, column: 28, scope: !2359)
!2393 = !DILocation(line: 157, column: 11, scope: !2359)
!2394 = !DILocation(line: 157, column: 14, scope: !2359)
!2395 = !DILocation(line: 157, column: 34, scope: !2359)
!2396 = !DILocation(line: 157, column: 31, scope: !2359)
!2397 = !DILocation(line: 155, column: 7, scope: !2349)
!2398 = !DILocation(line: 159, column: 7, scope: !2358)
!2399 = !DILocation(line: 179, column: 10, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2357, file: !1, line: 179, column: 10)
!2401 = !DILocation(line: 179, column: 10, scope: !2357)
!2402 = !DILocation(line: 203, column: 44, scope: !2356)
!2403 = !DILocation(line: 203, column: 20, scope: !2356)
!2404 = !DILocation(line: 0, scope: !2356)
!2405 = !DILocation(line: 208, column: 12, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 208, column: 12)
!2407 = !DILocation(line: 208, column: 48, scope: !2406)
!2408 = !DILocation(line: 208, column: 46, scope: !2406)
!2409 = !DILocation(line: 208, column: 12, scope: !2356)
!2410 = !DILocation(line: 209, column: 3, scope: !2406)
!2411 = !DILocation(line: 213, column: 12, scope: !2363)
!2412 = !DILocation(line: 214, column: 5, scope: !2363)
!2413 = !DILocation(line: 214, column: 8, scope: !2363)
!2414 = !DILocation(line: 214, column: 35, scope: !2363)
!2415 = !DILocation(line: 214, column: 33, scope: !2363)
!2416 = !DILocation(line: 215, column: 5, scope: !2363)
!2417 = !DILocation(line: 215, column: 9, scope: !2363)
!2418 = !DILocation(line: 215, column: 32, scope: !2363)
!2419 = !DILocation(line: 215, column: 29, scope: !2363)
!2420 = !DILocation(line: 216, column: 9, scope: !2363)
!2421 = !DILocation(line: 216, column: 12, scope: !2363)
!2422 = !DILocation(line: 216, column: 35, scope: !2363)
!2423 = !DILocation(line: 216, column: 32, scope: !2363)
!2424 = !DILocation(line: 213, column: 12, scope: !2356)
!2425 = !DILocation(line: 218, column: 15, scope: !2362)
!2426 = !DILocation(line: 0, scope: !2362)
!2427 = !DILocation(line: 220, column: 9, scope: !2366)
!2428 = !DILocation(line: 220, column: 9, scope: !2362)
!2429 = !DILocation(line: 222, column: 24, scope: !2365)
!2430 = !DILocation(line: 222, column: 18, scope: !2365)
!2431 = !DILocation(line: 0, scope: !2365)
!2432 = !DILocation(line: 223, column: 14, scope: !2365)
!2433 = !DILocation(line: 224, column: 19, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2365, file: !1, line: 224, column: 11)
!2435 = !DILocation(line: 0, scope: !2366)
!2436 = !DILocation(line: 227, column: 3, scope: !2363)
!2437 = !DILocation(line: 223, column: 12, scope: !2365)
!2438 = !DILocation(line: 225, column: 9, scope: !2434)
!2439 = !DILocation(line: 228, column: 6, scope: !2357)
!2440 = !DILocation(line: 233, column: 7, scope: !2369)
!2441 = !DILocation(line: 234, column: 7, scope: !2369)
!2442 = !DILocation(line: 235, column: 5, scope: !2369)
!2443 = !DILocation(line: 240, column: 8, scope: !2369)
!2444 = !DILocation(line: 240, column: 28, scope: !2369)
!2445 = !DILocation(line: 240, column: 25, scope: !2369)
!2446 = !DILocation(line: 241, column: 8, scope: !2369)
!2447 = !DILocation(line: 241, column: 11, scope: !2369)
!2448 = !DILocation(line: 241, column: 31, scope: !2369)
!2449 = !DILocation(line: 241, column: 28, scope: !2369)
!2450 = !DILocation(line: 242, column: 4, scope: !2369)
!2451 = !DILocation(line: 243, column: 9, scope: !2369)
!2452 = !DILocation(line: 248, column: 12, scope: !2369)
!2453 = !DILocation(line: 248, column: 32, scope: !2369)
!2454 = !DILocation(line: 248, column: 29, scope: !2369)
!2455 = !DILocation(line: 233, column: 7, scope: !2349)
!2456 = !DILocation(line: 250, column: 17, scope: !2368)
!2457 = !DILocation(line: 0, scope: !2368)
!2458 = !DILocation(line: 252, column: 11, scope: !2372)
!2459 = !DILocation(line: 252, column: 11, scope: !2368)
!2460 = !DILocation(line: 254, column: 39, scope: !2371)
!2461 = !DILocation(line: 254, column: 15, scope: !2371)
!2462 = !DILocation(line: 0, scope: !2371)
!2463 = !DILocation(line: 260, column: 8, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2371, file: !1, line: 260, column: 8)
!2465 = !DILocation(line: 260, column: 33, scope: !2464)
!2466 = !DILocation(line: 260, column: 30, scope: !2464)
!2467 = !DILocation(line: 260, column: 8, scope: !2371)
!2468 = !DILocation(line: 261, column: 13, scope: !2464)
!2469 = !DILocation(line: 261, column: 6, scope: !2464)
!2470 = !DILocation(line: 263, column: 5, scope: !2369)
!2471 = !DILocation(line: 266, column: 13, scope: !2376)
!2472 = !DILocation(line: 266, column: 21, scope: !2376)
!2473 = !DILocation(line: 266, column: 24, scope: !2376)
!2474 = !DILocation(line: 266, column: 7, scope: !2349)
!2475 = !DILocation(line: 267, column: 13, scope: !2376)
!2476 = !DILocation(line: 267, column: 5, scope: !2376)
!2477 = !DILocation(line: 273, column: 9, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 273, column: 8)
!2479 = !DILocation(line: 274, column: 8, scope: !2478)
!2480 = !DILocation(line: 274, column: 11, scope: !2478)
!2481 = !DILocation(line: 274, column: 35, scope: !2478)
!2482 = !DILocation(line: 274, column: 33, scope: !2478)
!2483 = !DILocation(line: 273, column: 8, scope: !2375)
!2484 = !DILocation(line: 275, column: 13, scope: !2478)
!2485 = !DILocation(line: 397, column: 1, scope: !2349)
!2486 = !DILocation(line: 287, column: 43, scope: !2374)
!2487 = !DILocation(line: 287, column: 19, scope: !2374)
!2488 = !DILocation(line: 0, scope: !2374)
!2489 = !DILocation(line: 288, column: 43, scope: !2374)
!2490 = !DILocation(line: 288, column: 19, scope: !2374)
!2491 = !DILocation(line: 290, column: 11, scope: !2380)
!2492 = !DILocation(line: 291, column: 4, scope: !2380)
!2493 = !DILocation(line: 291, column: 7, scope: !2380)
!2494 = !DILocation(line: 292, column: 4, scope: !2380)
!2495 = !DILocation(line: 292, column: 7, scope: !2380)
!2496 = !DILocation(line: 0, scope: !2380)
!2497 = !DILocation(line: 292, column: 39, scope: !2380)
!2498 = !DILocation(line: 292, column: 36, scope: !2380)
!2499 = !DILocation(line: 290, column: 11, scope: !2374)
!2500 = !DILocation(line: 0, scope: !2379)
!2501 = !DILocation(line: 296, column: 9, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 296, column: 9)
!2503 = !DILocation(line: 296, column: 38, scope: !2502)
!2504 = !DILocation(line: 297, column: 9, scope: !2502)
!2505 = !DILocation(line: 297, column: 12, scope: !2502)
!2506 = !DILocation(line: 297, column: 41, scope: !2502)
!2507 = !DILocation(line: 298, column: 9, scope: !2502)
!2508 = !DILocation(line: 298, column: 12, scope: !2502)
!2509 = !DILocation(line: 298, column: 29, scope: !2502)
!2510 = !DILocation(line: 296, column: 9, scope: !2379)
!2511 = !DILocation(line: 299, column: 17, scope: !2502)
!2512 = !DILocation(line: 299, column: 7, scope: !2502)
!2513 = !DILocation(line: 300, column: 9, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 300, column: 9)
!2515 = !DILocation(line: 300, column: 38, scope: !2514)
!2516 = !DILocation(line: 301, column: 9, scope: !2514)
!2517 = !DILocation(line: 301, column: 12, scope: !2514)
!2518 = !DILocation(line: 301, column: 41, scope: !2514)
!2519 = !DILocation(line: 302, column: 9, scope: !2514)
!2520 = !DILocation(line: 302, column: 12, scope: !2514)
!2521 = !DILocation(line: 302, column: 29, scope: !2514)
!2522 = !DILocation(line: 300, column: 9, scope: !2379)
!2523 = !DILocation(line: 303, column: 17, scope: !2514)
!2524 = !DILocation(line: 303, column: 7, scope: !2514)
!2525 = !DILocation(line: 304, column: 9, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 304, column: 9)
!2527 = !DILocation(line: 304, column: 38, scope: !2526)
!2528 = !DILocation(line: 305, column: 9, scope: !2526)
!2529 = !DILocation(line: 305, column: 12, scope: !2526)
!2530 = !DILocation(line: 305, column: 41, scope: !2526)
!2531 = !DILocation(line: 306, column: 9, scope: !2526)
!2532 = !DILocation(line: 306, column: 12, scope: !2526)
!2533 = !DILocation(line: 306, column: 29, scope: !2526)
!2534 = !DILocation(line: 304, column: 9, scope: !2379)
!2535 = !DILocation(line: 310, column: 23, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 308, column: 9)
!2537 = !DILocation(line: 307, column: 31, scope: !2526)
!2538 = !DILocation(line: 307, column: 21, scope: !2526)
!2539 = !DILocation(line: 308, column: 20, scope: !2536)
!2540 = !DILocation(line: 308, column: 17, scope: !2536)
!2541 = !DILocation(line: 309, column: 23, scope: !2536)
!2542 = !DILocation(line: 309, column: 20, scope: !2536)
!2543 = !DILocation(line: 309, column: 9, scope: !2536)
!2544 = !DILocation(line: 310, column: 20, scope: !2536)
!2545 = !DILocation(line: 312, column: 16, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 311, column: 7)
!2547 = !DILocation(line: 315, column: 21, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2546, file: !1, line: 315, column: 13)
!2549 = !DILocation(line: 0, scope: !2546)
!2550 = !DILocation(line: 320, column: 9, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 320, column: 9)
!2552 = !DILocation(line: 320, column: 45, scope: !2551)
!2553 = !DILocation(line: 320, column: 43, scope: !2551)
!2554 = !DILocation(line: 320, column: 9, scope: !2379)
!2555 = !DILocation(line: 321, column: 7, scope: !2551)
!2556 = !DILocation(line: 322, column: 45, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 322, column: 9)
!2558 = !DILocation(line: 322, column: 9, scope: !2557)
!2559 = !DILocation(line: 322, column: 43, scope: !2557)
!2560 = !DILocation(line: 322, column: 9, scope: !2379)
!2561 = !DILocation(line: 323, column: 7, scope: !2557)
!2562 = !DILocation(line: 345, column: 9, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 345, column: 9)
!2564 = !DILocation(line: 345, column: 36, scope: !2563)
!2565 = !DILocation(line: 345, column: 34, scope: !2563)
!2566 = !DILocation(line: 346, column: 9, scope: !2563)
!2567 = !DILocation(line: 346, column: 13, scope: !2563)
!2568 = !DILocation(line: 347, column: 6, scope: !2563)
!2569 = !DILocation(line: 347, column: 38, scope: !2563)
!2570 = !DILocation(line: 347, column: 35, scope: !2563)
!2571 = !DILocation(line: 348, column: 10, scope: !2563)
!2572 = !DILocation(line: 348, column: 42, scope: !2563)
!2573 = !DILocation(line: 349, column: 14, scope: !2563)
!2574 = !DILocation(line: 348, column: 13, scope: !2563)
!2575 = !DILocation(line: 350, column: 10, scope: !2563)
!2576 = !DILocation(line: 350, column: 14, scope: !2563)
!2577 = !DILocation(line: 345, column: 9, scope: !2379)
!2578 = !DILocation(line: 352, column: 16, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2563, file: !1, line: 351, column: 7)
!2580 = !DILocation(line: 355, column: 21, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2579, file: !1, line: 355, column: 13)
!2582 = !DILocation(line: 355, column: 13, scope: !2579)
!2583 = !DILocation(line: 358, column: 9, scope: !2380)
!2584 = !DILocation(line: 359, column: 5, scope: !2375)
!2585 = !DILocation(line: 312, column: 14, scope: !2546)
!2586 = !DILocation(line: 316, column: 4, scope: !2548)
!2587 = !DILocation(line: 365, column: 11, scope: !2349)
!2588 = !DILocation(line: 365, column: 3, scope: !2349)
!2589 = !DILocation(line: 370, column: 14, scope: !2384)
!2590 = !DILocation(line: 370, column: 7, scope: !2384)
!2591 = !DILocation(line: 378, column: 14, scope: !2384)
!2592 = !DILocation(line: 378, column: 7, scope: !2384)
!2593 = !DILocation(line: 381, column: 14, scope: !2384)
!2594 = !DILocation(line: 381, column: 7, scope: !2384)
!2595 = !DILocation(line: 385, column: 9, scope: !2384)
!2596 = !DILocation(line: 384, column: 14, scope: !2384)
!2597 = !DILocation(line: 384, column: 7, scope: !2384)
!2598 = !DILocation(line: 390, column: 7, scope: !2384)
!2599 = !DILocation(line: 0, scope: !2384)
!2600 = !DILocation(line: 394, column: 7, scope: !2384)
!2601 = !DILocation(line: 395, column: 14, scope: !2384)
!2602 = distinct !DISubprogram(name: "convert_to_integer", scope: !1, file: !1, line: 408, type: !2225, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2613, !2614, !2616, !2617, !2620, !2623, !2624, !2625, !2626, !2629, !2634, !2635, !2641, !2643, !2644, !2646, !2647, !2649, !2650, !2653, !2655}
!2604 = !DILocalVariable(name: "type", arg: 1, scope: !2602, file: !1, line: 408, type: !1113)
!2605 = !DILocalVariable(name: "expr", arg: 2, scope: !2602, file: !1, line: 408, type: !1113)
!2606 = !DILocalVariable(name: "ex_form", scope: !2602, file: !1, line: 410, type: !165)
!2607 = !DILocalVariable(name: "intype", scope: !2602, file: !1, line: 411, type: !1113)
!2608 = !DILocalVariable(name: "inprec", scope: !2602, file: !1, line: 412, type: !5)
!2609 = !DILocalVariable(name: "outprec", scope: !2602, file: !1, line: 413, type: !5)
!2610 = !DILocalVariable(name: "s_expr", scope: !2611, file: !1, line: 433, type: !1113)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !1, line: 432, column: 5)
!2612 = distinct !DILexicalBlock(scope: !2602, file: !1, line: 428, column: 7)
!2613 = !DILocalVariable(name: "s_intype", scope: !2611, file: !1, line: 434, type: !1113)
!2614 = !DILocalVariable(name: "fcode", scope: !2611, file: !1, line: 435, type: !2615)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!2616 = !DILocalVariable(name: "fn", scope: !2611, file: !1, line: 436, type: !1113)
!2617 = !DILocalVariable(name: "newexpr", scope: !2618, file: !1, line: 500, type: !1113)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !1, line: 499, column: 9)
!2619 = distinct !DILexicalBlock(scope: !2611, file: !1, line: 498, column: 11)
!2620 = !DILocalVariable(name: "s_expr", scope: !2621, file: !1, line: 514, type: !1113)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 513, column: 5)
!2622 = distinct !DILexicalBlock(scope: !2602, file: !1, line: 506, column: 7)
!2623 = !DILocalVariable(name: "s_intype", scope: !2621, file: !1, line: 515, type: !1113)
!2624 = !DILocalVariable(name: "fcode", scope: !2621, file: !1, line: 516, type: !2615)
!2625 = !DILocalVariable(name: "fn", scope: !2621, file: !1, line: 517, type: !1113)
!2626 = !DILocalVariable(name: "newexpr", scope: !2627, file: !1, line: 531, type: !1113)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 530, column: 9)
!2628 = distinct !DILexicalBlock(scope: !2621, file: !1, line: 529, column: 11)
!2629 = !DILocalVariable(name: "code", scope: !2630, file: !1, line: 573, type: !165)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !1, line: 572, column: 2)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !1, line: 571, column: 16)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !1, line: 560, column: 11)
!2633 = distinct !DILexicalBlock(scope: !2602, file: !1, line: 537, column: 5)
!2634 = !DILocalVariable(name: "tem", scope: !2630, file: !1, line: 574, type: !1113)
!2635 = !DILocalVariable(name: "t", scope: !2636, file: !1, line: 664, type: !1113)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 657, column: 3)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !1, line: 653, column: 12)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 650, column: 6)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 646, column: 8)
!2640 = distinct !DILexicalBlock(scope: !2633, file: !1, line: 633, column: 2)
!2641 = !DILocalVariable(name: "arg0", scope: !2642, file: !1, line: 678, type: !1113)
!2642 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 677, column: 4)
!2643 = !DILocalVariable(name: "arg1", scope: !2642, file: !1, line: 679, type: !1113)
!2644 = !DILocalVariable(name: "arg0", scope: !2645, file: !1, line: 705, type: !1113)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 704, column: 4)
!2646 = !DILocalVariable(name: "arg1", scope: !2645, file: !1, line: 706, type: !1113)
!2647 = !DILocalVariable(name: "arg0", scope: !2648, file: !1, line: 728, type: !1113)
!2648 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 727, column: 4)
!2649 = !DILocalVariable(name: "arg1", scope: !2648, file: !1, line: 729, type: !1113)
!2650 = !DILocalVariable(name: "typex", scope: !2651, file: !1, line: 738, type: !1113)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !1, line: 735, column: 8)
!2652 = distinct !DILexicalBlock(scope: !2648, file: !1, line: 731, column: 10)
!2653 = !DILocalVariable(name: "typex", scope: !2654, file: !1, line: 796, type: !1113)
!2654 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 795, column: 4)
!2655 = !DILabel(scope: !2640, name: "trunc1", file: !1, line: 726)
!2656 = !DILocation(line: 0, scope: !2602)
!2657 = !DILocation(line: 410, column: 28, scope: !2602)
!2658 = !DILocation(line: 411, column: 17, scope: !2602)
!2659 = !DILocation(line: 412, column: 25, scope: !2602)
!2660 = !DILocation(line: 413, column: 26, scope: !2602)
!2661 = !DILocation(line: 417, column: 8, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2602, file: !1, line: 417, column: 7)
!2663 = !DILocation(line: 417, column: 7, scope: !2602)
!2664 = !DILocation(line: 419, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !1, line: 418, column: 5)
!2666 = !DILocation(line: 420, column: 14, scope: !2665)
!2667 = !DILocation(line: 420, column: 7, scope: !2665)
!2668 = !DILocation(line: 428, column: 7, scope: !2612)
!2669 = !DILocation(line: 429, column: 7, scope: !2612)
!2670 = !DILocation(line: 429, column: 11, scope: !2612)
!2671 = !DILocation(line: 430, column: 4, scope: !2612)
!2672 = !DILocation(line: 430, column: 8, scope: !2612)
!2673 = !DILocation(line: 431, column: 8, scope: !2612)
!2674 = !DILocation(line: 431, column: 22, scope: !2612)
!2675 = !DILocation(line: 431, column: 19, scope: !2612)
!2676 = !DILocation(line: 428, column: 7, scope: !2602)
!2677 = !DILocation(line: 433, column: 21, scope: !2611)
!2678 = !DILocation(line: 0, scope: !2611)
!2679 = !DILocation(line: 434, column: 23, scope: !2611)
!2680 = !DILocation(line: 435, column: 44, scope: !2611)
!2681 = !DILocation(line: 438, column: 7, scope: !2611)
!2682 = !DILocation(line: 442, column: 9, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 442, column: 8)
!2684 = distinct !DILexicalBlock(scope: !2611, file: !1, line: 439, column: 9)
!2685 = !DILocation(line: 442, column: 8, scope: !2684)
!2686 = !DILocation(line: 444, column: 18, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 444, column: 8)
!2688 = !DILocation(line: 444, column: 16, scope: !2687)
!2689 = !DILocation(line: 445, column: 8, scope: !2687)
!2690 = !DILocation(line: 445, column: 20, scope: !2687)
!2691 = !DILocation(line: 446, column: 5, scope: !2687)
!2692 = !DILocation(line: 446, column: 9, scope: !2687)
!2693 = !DILocation(line: 444, column: 8, scope: !2684)
!2694 = !DILocation(line: 447, column: 11, scope: !2687)
!2695 = !DILocation(line: 447, column: 6, scope: !2687)
!2696 = !DILocation(line: 448, column: 24, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2687, file: !1, line: 448, column: 13)
!2698 = !DILocation(line: 448, column: 21, scope: !2697)
!2699 = !DILocation(line: 449, column: 6, scope: !2697)
!2700 = !DILocation(line: 449, column: 10, scope: !2697)
!2701 = !DILocation(line: 448, column: 13, scope: !2687)
!2702 = !DILocation(line: 450, column: 11, scope: !2697)
!2703 = !DILocation(line: 450, column: 6, scope: !2697)
!2704 = !DILocation(line: 455, column: 9, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 455, column: 8)
!2706 = !DILocation(line: 455, column: 8, scope: !2684)
!2707 = !DILocation(line: 457, column: 18, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 457, column: 8)
!2709 = !DILocation(line: 457, column: 16, scope: !2708)
!2710 = !DILocation(line: 458, column: 8, scope: !2708)
!2711 = !DILocation(line: 458, column: 20, scope: !2708)
!2712 = !DILocation(line: 459, column: 5, scope: !2708)
!2713 = !DILocation(line: 459, column: 9, scope: !2708)
!2714 = !DILocation(line: 457, column: 8, scope: !2684)
!2715 = !DILocation(line: 460, column: 11, scope: !2708)
!2716 = !DILocation(line: 460, column: 6, scope: !2708)
!2717 = !DILocation(line: 461, column: 24, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2708, file: !1, line: 461, column: 13)
!2719 = !DILocation(line: 461, column: 21, scope: !2718)
!2720 = !DILocation(line: 462, column: 6, scope: !2718)
!2721 = !DILocation(line: 462, column: 10, scope: !2718)
!2722 = !DILocation(line: 461, column: 13, scope: !2708)
!2723 = !DILocation(line: 463, column: 11, scope: !2718)
!2724 = !DILocation(line: 463, column: 6, scope: !2718)
!2725 = !DILocation(line: 467, column: 18, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 467, column: 8)
!2727 = !DILocation(line: 467, column: 16, scope: !2726)
!2728 = !DILocation(line: 468, column: 8, scope: !2726)
!2729 = !DILocation(line: 468, column: 20, scope: !2726)
!2730 = !DILocation(line: 469, column: 5, scope: !2726)
!2731 = !DILocation(line: 469, column: 9, scope: !2726)
!2732 = !DILocation(line: 467, column: 8, scope: !2684)
!2733 = !DILocation(line: 470, column: 11, scope: !2726)
!2734 = !DILocation(line: 470, column: 6, scope: !2726)
!2735 = !DILocation(line: 471, column: 24, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2726, file: !1, line: 471, column: 13)
!2737 = !DILocation(line: 471, column: 21, scope: !2736)
!2738 = !DILocation(line: 472, column: 6, scope: !2736)
!2739 = !DILocation(line: 472, column: 10, scope: !2736)
!2740 = !DILocation(line: 471, column: 13, scope: !2726)
!2741 = !DILocation(line: 473, column: 11, scope: !2736)
!2742 = !DILocation(line: 473, column: 6, scope: !2736)
!2743 = !DILocation(line: 478, column: 8, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 478, column: 8)
!2745 = !DILocation(line: 478, column: 8, scope: !2684)
!2746 = !DILocation(line: 482, column: 18, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 482, column: 8)
!2748 = !DILocation(line: 482, column: 16, scope: !2747)
!2749 = !DILocation(line: 483, column: 8, scope: !2747)
!2750 = !DILocation(line: 483, column: 20, scope: !2747)
!2751 = !DILocation(line: 484, column: 5, scope: !2747)
!2752 = !DILocation(line: 484, column: 9, scope: !2747)
!2753 = !DILocation(line: 482, column: 8, scope: !2684)
!2754 = !DILocation(line: 485, column: 11, scope: !2747)
!2755 = !DILocation(line: 485, column: 6, scope: !2747)
!2756 = !DILocation(line: 486, column: 24, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2747, file: !1, line: 486, column: 13)
!2758 = !DILocation(line: 486, column: 21, scope: !2757)
!2759 = !DILocation(line: 487, column: 6, scope: !2757)
!2760 = !DILocation(line: 487, column: 10, scope: !2757)
!2761 = !DILocation(line: 486, column: 13, scope: !2747)
!2762 = !DILocation(line: 488, column: 11, scope: !2757)
!2763 = !DILocation(line: 488, column: 6, scope: !2757)
!2764 = !DILocation(line: 492, column: 37, scope: !2684)
!2765 = !DILocation(line: 492, column: 11, scope: !2684)
!2766 = !DILocation(line: 492, column: 4, scope: !2684)
!2767 = !DILocation(line: 498, column: 11, scope: !2619)
!2768 = !DILocation(line: 498, column: 11, scope: !2611)
!2769 = !DILocation(line: 500, column: 19, scope: !2618)
!2770 = !DILocation(line: 0, scope: !2618)
!2771 = !DILocation(line: 501, column: 11, scope: !2618)
!2772 = !DILocation(line: 506, column: 7, scope: !2622)
!2773 = !DILocation(line: 507, column: 10, scope: !2622)
!2774 = !DILocation(line: 507, column: 7, scope: !2622)
!2775 = !DILocation(line: 508, column: 11, scope: !2622)
!2776 = !DILocation(line: 508, column: 34, scope: !2622)
!2777 = !DILocation(line: 508, column: 53, scope: !2622)
!2778 = !DILocation(line: 509, column: 10, scope: !2622)
!2779 = !DILocation(line: 510, column: 21, scope: !2622)
!2780 = !DILocation(line: 510, column: 19, scope: !2622)
!2781 = !DILocation(line: 511, column: 4, scope: !2622)
!2782 = !DILocation(line: 511, column: 16, scope: !2622)
!2783 = !DILocation(line: 512, column: 8, scope: !2622)
!2784 = !DILocation(line: 512, column: 12, scope: !2622)
!2785 = !DILocation(line: 506, column: 7, scope: !2602)
!2786 = !DILocation(line: 514, column: 21, scope: !2621)
!2787 = !DILocation(line: 0, scope: !2621)
!2788 = !DILocation(line: 515, column: 23, scope: !2621)
!2789 = !DILocation(line: 516, column: 44, scope: !2621)
!2790 = !DILocation(line: 519, column: 7, scope: !2621)
!2791 = !DILocation(line: 522, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2621, file: !1, line: 520, column: 2)
!2793 = !DILocation(line: 523, column: 4, scope: !2792)
!2794 = !DILocation(line: 529, column: 11, scope: !2628)
!2795 = !DILocation(line: 529, column: 11, scope: !2621)
!2796 = !DILocation(line: 531, column: 19, scope: !2627)
!2797 = !DILocation(line: 0, scope: !2627)
!2798 = !DILocation(line: 532, column: 11, scope: !2627)
!2799 = !DILocation(line: 536, column: 11, scope: !2602)
!2800 = !DILocation(line: 536, column: 3, scope: !2602)
!2801 = !DILocation(line: 540, column: 11, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2633, file: !1, line: 540, column: 11)
!2803 = !DILocation(line: 540, column: 11, scope: !2633)
!2804 = !DILocation(line: 541, column: 9, scope: !2802)
!2805 = !DILocation(line: 541, column: 2, scope: !2802)
!2806 = !DILocation(line: 547, column: 14, scope: !2633)
!2807 = !DILocation(line: 551, column: 14, scope: !2633)
!2808 = !DILocation(line: 551, column: 7, scope: !2633)
!2809 = !DILocation(line: 560, column: 11, scope: !2632)
!2810 = !DILocation(line: 560, column: 37, scope: !2632)
!2811 = !DILocation(line: 560, column: 11, scope: !2633)
!2812 = !DILocation(line: 562, column: 11, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2632, file: !1, line: 561, column: 2)
!2814 = !DILocation(line: 563, column: 4, scope: !2813)
!2815 = !DILocation(line: 563, column: 21, scope: !2813)
!2816 = !DILocation(line: 564, column: 4, scope: !2813)
!2817 = !DILocation(line: 571, column: 24, scope: !2631)
!2818 = !DILocation(line: 0, scope: !2631)
!2819 = !DILocation(line: 571, column: 16, scope: !2632)
!2820 = !DILocation(line: 585, column: 32, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2630, file: !1, line: 585, column: 8)
!2822 = !DILocation(line: 585, column: 29, scope: !2821)
!2823 = !DILocation(line: 586, column: 8, scope: !2821)
!2824 = !DILocation(line: 586, column: 12, scope: !2821)
!2825 = !DILocation(line: 587, column: 8, scope: !2821)
!2826 = !DILocation(line: 587, column: 5, scope: !2821)
!2827 = !DILocation(line: 585, column: 8, scope: !2630)
!2828 = !DILocation(line: 0, scope: !2630)
!2829 = !DILocation(line: 0, scope: !2821)
!2830 = !DILocation(line: 592, column: 10, scope: !2630)
!2831 = !DILocation(line: 593, column: 8, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2630, file: !1, line: 593, column: 8)
!2833 = !DILocation(line: 593, column: 8, scope: !2630)
!2834 = !DILocation(line: 596, column: 10, scope: !2630)
!2835 = !DILocation(line: 597, column: 4, scope: !2630)
!2836 = !DILocation(line: 597, column: 26, scope: !2630)
!2837 = !DILocation(line: 598, column: 4, scope: !2630)
!2838 = !DILocation(line: 605, column: 33, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2631, file: !1, line: 605, column: 16)
!2840 = !DILocation(line: 606, column: 9, scope: !2839)
!2841 = !DILocation(line: 606, column: 23, scope: !2839)
!2842 = !DILocation(line: 606, column: 20, scope: !2839)
!2843 = !DILocation(line: 605, column: 16, scope: !2631)
!2844 = !DILocation(line: 607, column: 9, scope: !2839)
!2845 = !DILocation(line: 607, column: 2, scope: !2839)
!2846 = !DILocation(line: 632, column: 7, scope: !2633)
!2847 = !DILocation(line: 637, column: 8, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 637, column: 8)
!2849 = !DILocation(line: 637, column: 43, scope: !2848)
!2850 = !DILocation(line: 638, column: 8, scope: !2848)
!2851 = !DILocation(line: 638, column: 11, scope: !2848)
!2852 = !DILocation(line: 638, column: 53, scope: !2848)
!2853 = !DILocation(line: 637, column: 8, scope: !2640)
!2854 = !DILocation(line: 646, column: 8, scope: !2639)
!2855 = !DILocation(line: 646, column: 43, scope: !2639)
!2856 = !DILocation(line: 647, column: 8, scope: !2639)
!2857 = !DILocation(line: 647, column: 11, scope: !2639)
!2858 = !DILocation(line: 647, column: 53, scope: !2639)
!2859 = !DILocation(line: 648, column: 8, scope: !2639)
!2860 = !DILocation(line: 648, column: 11, scope: !2639)
!2861 = !DILocation(line: 649, column: 8, scope: !2639)
!2862 = !DILocation(line: 649, column: 11, scope: !2639)
!2863 = !DILocation(line: 649, column: 40, scope: !2639)
!2864 = !DILocation(line: 646, column: 8, scope: !2640)
!2865 = !DILocation(line: 653, column: 29, scope: !2637)
!2866 = !DILocation(line: 653, column: 12, scope: !2637)
!2867 = !DILocation(line: 653, column: 12, scope: !2638)
!2868 = !DILocation(line: 664, column: 14, scope: !2636)
!2869 = !DILocation(line: 0, scope: !2636)
!2870 = !DILocation(line: 668, column: 9, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 668, column: 9)
!2872 = !DILocation(line: 668, column: 9, scope: !2636)
!2873 = !DILocation(line: 669, column: 14, scope: !2871)
!2874 = !DILocation(line: 669, column: 7, scope: !2871)
!2875 = !DILocation(line: 678, column: 33, scope: !2642)
!2876 = !DILocation(line: 678, column: 18, scope: !2642)
!2877 = !DILocation(line: 0, scope: !2642)
!2878 = !DILocation(line: 679, column: 33, scope: !2642)
!2879 = !DILocation(line: 679, column: 18, scope: !2642)
!2880 = !DILocation(line: 683, column: 21, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2642, file: !1, line: 683, column: 10)
!2882 = !DILocation(line: 683, column: 18, scope: !2881)
!2883 = !DILocation(line: 684, column: 3, scope: !2881)
!2884 = !DILocation(line: 684, column: 17, scope: !2881)
!2885 = !DILocation(line: 684, column: 14, scope: !2881)
!2886 = !DILocation(line: 687, column: 3, scope: !2881)
!2887 = !DILocation(line: 687, column: 7, scope: !2881)
!2888 = !DILocation(line: 688, column: 10, scope: !2881)
!2889 = !DILocation(line: 688, column: 7, scope: !2881)
!2890 = !DILocation(line: 690, column: 3, scope: !2881)
!2891 = !DILocation(line: 690, column: 7, scope: !2881)
!2892 = !DILocation(line: 691, column: 7, scope: !2881)
!2893 = !DILocation(line: 694, column: 3, scope: !2881)
!2894 = !DILocation(line: 694, column: 7, scope: !2881)
!2895 = !DILocation(line: 695, column: 7, scope: !2881)
!2896 = !DILocation(line: 695, column: 11, scope: !2881)
!2897 = !DILocation(line: 695, column: 28, scope: !2881)
!2898 = !DILocation(line: 696, column: 4, scope: !2881)
!2899 = !DILocation(line: 696, column: 8, scope: !2881)
!2900 = !DILocation(line: 683, column: 10, scope: !2642)
!2901 = !DILocation(line: 698, column: 6, scope: !2642)
!2902 = !DILocation(line: 705, column: 33, scope: !2645)
!2903 = !DILocation(line: 705, column: 18, scope: !2645)
!2904 = !DILocation(line: 0, scope: !2645)
!2905 = !DILocation(line: 706, column: 33, scope: !2645)
!2906 = !DILocation(line: 706, column: 18, scope: !2645)
!2907 = !DILocation(line: 711, column: 21, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 711, column: 10)
!2909 = !DILocation(line: 711, column: 18, scope: !2908)
!2910 = !DILocation(line: 712, column: 3, scope: !2908)
!2911 = !DILocation(line: 712, column: 17, scope: !2908)
!2912 = !DILocation(line: 712, column: 14, scope: !2908)
!2913 = !DILocation(line: 715, column: 3, scope: !2908)
!2914 = !DILocation(line: 715, column: 7, scope: !2908)
!2915 = !DILocation(line: 716, column: 10, scope: !2908)
!2916 = !DILocation(line: 716, column: 7, scope: !2908)
!2917 = !DILocation(line: 711, column: 10, scope: !2645)
!2918 = !DILocation(line: 718, column: 6, scope: !2645)
!2919 = !DILocation(line: 726, column: 2, scope: !2640)
!2920 = !DILocation(line: 728, column: 33, scope: !2648)
!2921 = !DILocation(line: 728, column: 18, scope: !2648)
!2922 = !DILocation(line: 0, scope: !2648)
!2923 = !DILocation(line: 729, column: 33, scope: !2648)
!2924 = !DILocation(line: 729, column: 18, scope: !2648)
!2925 = !DILocation(line: 0, scope: !2651)
!2926 = !DILocation(line: 742, column: 7, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2651, file: !1, line: 742, column: 7)
!2928 = !DILocation(line: 742, column: 25, scope: !2927)
!2929 = !DILocation(line: 742, column: 7, scope: !2651)
!2930 = !DILocation(line: 743, column: 30, scope: !2927)
!2931 = !DILocation(line: 744, column: 8, scope: !2927)
!2932 = !DILocation(line: 744, column: 32, scope: !2927)
!2933 = !DILocation(line: 743, column: 13, scope: !2927)
!2934 = !DILocation(line: 749, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2651, file: !1, line: 749, column: 7)
!2936 = !DILocation(line: 743, column: 5, scope: !2927)
!2937 = !DILocation(line: 749, column: 30, scope: !2935)
!2938 = !DILocation(line: 749, column: 7, scope: !2651)
!2939 = !DILocation(line: 762, column: 11, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !1, line: 762, column: 11)
!2941 = distinct !DILexicalBlock(scope: !2935, file: !1, line: 750, column: 5)
!2942 = !DILocation(line: 763, column: 4, scope: !2940)
!2943 = !DILocation(line: 763, column: 8, scope: !2940)
!2944 = !DILocation(line: 764, column: 8, scope: !2940)
!2945 = !DILocation(line: 764, column: 12, scope: !2940)
!2946 = !DILocation(line: 765, column: 5, scope: !2940)
!2947 = !DILocation(line: 769, column: 15, scope: !2940)
!2948 = !DILocation(line: 775, column: 4, scope: !2940)
!2949 = !DILocation(line: 775, column: 10, scope: !2940)
!2950 = !DILocation(line: 776, column: 13, scope: !2940)
!2951 = !DILocation(line: 778, column: 5, scope: !2940)
!2952 = !DILocation(line: 779, column: 17, scope: !2940)
!2953 = !DILocation(line: 779, column: 9, scope: !2940)
!2954 = !DILocation(line: 781, column: 17, scope: !2940)
!2955 = !DILocation(line: 0, scope: !2940)
!2956 = !DILocation(line: 783, column: 9, scope: !2941)
!2957 = !DILocation(line: 782, column: 14, scope: !2941)
!2958 = !DILocation(line: 782, column: 7, scope: !2941)
!2959 = !DILocation(line: 800, column: 10, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2654, file: !1, line: 800, column: 10)
!2961 = !DILocation(line: 800, column: 10, scope: !2654)
!2962 = !DILocation(line: 801, column: 16, scope: !2960)
!2963 = !DILocation(line: 0, scope: !2654)
!2964 = !DILocation(line: 801, column: 8, scope: !2960)
!2965 = !DILocation(line: 803, column: 16, scope: !2960)
!2966 = !DILocation(line: 0, scope: !2960)
!2967 = !DILocation(line: 805, column: 8, scope: !2654)
!2968 = !DILocation(line: 804, column: 13, scope: !2654)
!2969 = !DILocation(line: 813, column: 8, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 813, column: 8)
!2971 = !DILocation(line: 813, column: 55, scope: !2970)
!2972 = !DILocation(line: 814, column: 8, scope: !2970)
!2973 = !DILocation(line: 814, column: 12, scope: !2970)
!2974 = !DILocation(line: 815, column: 8, scope: !2970)
!2975 = !DILocation(line: 815, column: 5, scope: !2970)
!2976 = !DILocation(line: 813, column: 8, scope: !2640)
!2977 = !DILocation(line: 819, column: 41, scope: !2640)
!2978 = !DILocation(line: 819, column: 26, scope: !2640)
!2979 = !DILocation(line: 819, column: 11, scope: !2640)
!2980 = !DILocation(line: 819, column: 4, scope: !2640)
!2981 = !DILocation(line: 826, column: 11, scope: !2640)
!2982 = !DILocation(line: 826, column: 4, scope: !2640)
!2983 = !DILocation(line: 838, column: 14, scope: !2633)
!2984 = !DILocation(line: 838, column: 7, scope: !2633)
!2985 = !DILocation(line: 841, column: 14, scope: !2633)
!2986 = !DILocation(line: 841, column: 7, scope: !2633)
!2987 = !DILocation(line: 844, column: 14, scope: !2633)
!2988 = !DILocation(line: 844, column: 7, scope: !2633)
!2989 = !DILocation(line: 848, column: 9, scope: !2633)
!2990 = !DILocation(line: 847, column: 14, scope: !2633)
!2991 = !DILocation(line: 847, column: 7, scope: !2633)
!2992 = !DILocation(line: 852, column: 32, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2633, file: !1, line: 852, column: 11)
!2994 = !DILocation(line: 852, column: 50, scope: !2993)
!2995 = !DILocation(line: 852, column: 12, scope: !2993)
!2996 = !DILocation(line: 852, column: 11, scope: !2633)
!2997 = !DILocation(line: 854, column: 4, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2993, file: !1, line: 853, column: 2)
!2999 = !DILocation(line: 855, column: 11, scope: !2998)
!3000 = !DILocation(line: 855, column: 4, scope: !2998)
!3001 = !DILocation(line: 857, column: 14, scope: !2633)
!3002 = !DILocation(line: 857, column: 7, scope: !2633)
!3003 = !DILocation(line: 860, column: 7, scope: !2633)
!3004 = !DILocation(line: 861, column: 29, scope: !2633)
!3005 = !DILocation(line: 861, column: 14, scope: !2633)
!3006 = !DILocation(line: 861, column: 7, scope: !2633)
!3007 = !DILocation(line: 863, column: 1, scope: !2602)
!3008 = distinct !DISubprogram(name: "convert_to_complex", scope: !1, file: !1, line: 868, type: !2225, scopeLine: 869, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3009)
!3009 = !{!3010, !3011, !3012, !3013}
!3010 = !DILocalVariable(name: "type", arg: 1, scope: !3008, file: !1, line: 868, type: !1113)
!3011 = !DILocalVariable(name: "expr", arg: 2, scope: !3008, file: !1, line: 868, type: !1113)
!3012 = !DILocalVariable(name: "subtype", scope: !3008, file: !1, line: 870, type: !1113)
!3013 = !DILocalVariable(name: "elt_type", scope: !3014, file: !1, line: 884, type: !1113)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !1, line: 883, column: 7)
!3015 = distinct !DILexicalBlock(scope: !3008, file: !1, line: 873, column: 5)
!3016 = !DILocation(line: 0, scope: !3008)
!3017 = !DILocation(line: 911, column: 14, scope: !3015)
!3018 = !DILocation(line: 870, column: 18, scope: !3008)
!3019 = !DILocation(line: 872, column: 11, scope: !3008)
!3020 = !DILocation(line: 872, column: 3, scope: !3008)
!3021 = !DILocation(line: 879, column: 14, scope: !3015)
!3022 = !DILocation(line: 879, column: 7, scope: !3015)
!3023 = !DILocation(line: 884, column: 18, scope: !3014)
!3024 = !DILocation(line: 886, column: 6, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3014, file: !1, line: 886, column: 6)
!3026 = !DILocation(line: 886, column: 38, scope: !3025)
!3027 = !DILocation(line: 886, column: 35, scope: !3025)
!3028 = !DILocation(line: 886, column: 6, scope: !3014)
!3029 = !DILocation(line: 888, column: 11, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3025, file: !1, line: 888, column: 11)
!3031 = !DILocation(line: 888, column: 28, scope: !3030)
!3032 = !DILocation(line: 888, column: 11, scope: !3025)
!3033 = !DILocation(line: 889, column: 11, scope: !3030)
!3034 = !DILocation(line: 889, column: 4, scope: !3030)
!3035 = !DILocation(line: 894, column: 13, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 893, column: 4)
!3037 = !DILocation(line: 896, column: 8, scope: !3036)
!3038 = !DILocation(line: 895, column: 6, scope: !3036)
!3039 = !DILocation(line: 910, column: 7, scope: !3015)
!3040 = !DILocation(line: 0, scope: !3015)
!3041 = !DILocation(line: 914, column: 7, scope: !3015)
!3042 = !DILocation(line: 915, column: 14, scope: !3015)
!3043 = !DILocation(line: 917, column: 1, scope: !3008)
!3044 = distinct !DISubprogram(name: "convert_to_vector", scope: !1, file: !1, line: 922, type: !2225, scopeLine: 923, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3045)
!3045 = !{!3046, !3047}
!3046 = !DILocalVariable(name: "type", arg: 1, scope: !3044, file: !1, line: 922, type: !1113)
!3047 = !DILocalVariable(name: "expr", arg: 2, scope: !3044, file: !1, line: 922, type: !1113)
!3048 = !DILocation(line: 0, scope: !3044)
!3049 = !DILocation(line: 924, column: 11, scope: !3044)
!3050 = !DILocation(line: 924, column: 3, scope: !3044)
!3051 = !DILocation(line: 928, column: 32, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !1, line: 928, column: 11)
!3053 = distinct !DILexicalBlock(scope: !3044, file: !1, line: 925, column: 5)
!3054 = !DILocation(line: 928, column: 50, scope: !3052)
!3055 = !DILocation(line: 928, column: 12, scope: !3052)
!3056 = !DILocation(line: 928, column: 11, scope: !3053)
!3057 = !DILocation(line: 930, column: 4, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3052, file: !1, line: 929, column: 2)
!3059 = !DILocation(line: 931, column: 11, scope: !3058)
!3060 = !DILocation(line: 931, column: 4, scope: !3058)
!3061 = !DILocation(line: 933, column: 14, scope: !3053)
!3062 = !DILocation(line: 933, column: 7, scope: !3053)
!3063 = !DILocation(line: 936, column: 7, scope: !3053)
!3064 = !DILocation(line: 937, column: 14, scope: !3053)
!3065 = !DILocation(line: 937, column: 7, scope: !3053)
!3066 = !DILocation(line: 0, scope: !3053)
!3067 = !DILocation(line: 939, column: 1, scope: !3044)
!3068 = distinct !DISubprogram(name: "convert_to_fixed", scope: !1, file: !1, line: 947, type: !2225, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3069)
!3069 = !{!3070, !3071, !3072, !3075}
!3070 = !DILocalVariable(name: "type", arg: 1, scope: !3068, file: !1, line: 947, type: !1113)
!3071 = !DILocalVariable(name: "expr", arg: 2, scope: !3068, file: !1, line: 947, type: !1113)
!3072 = !DILocalVariable(name: "fixed_zero_node", scope: !3073, file: !1, line: 951, type: !1113)
!3073 = distinct !DILexicalBlock(scope: !3074, file: !1, line: 950, column: 5)
!3074 = distinct !DILexicalBlock(scope: !3068, file: !1, line: 949, column: 7)
!3075 = !DILocalVariable(name: "fixed_one_node", scope: !3076, file: !1, line: 956, type: !1113)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !1, line: 955, column: 5)
!3077 = distinct !DILexicalBlock(scope: !3074, file: !1, line: 954, column: 12)
!3078 = !DILocation(line: 0, scope: !3068)
!3079 = !DILocation(line: 949, column: 7, scope: !3074)
!3080 = !DILocation(line: 949, column: 7, scope: !3068)
!3081 = !DILocation(line: 951, column: 49, scope: !3073)
!3082 = !DILocation(line: 951, column: 30, scope: !3073)
!3083 = !DILocation(line: 0, scope: !3073)
!3084 = !DILocation(line: 954, column: 12, scope: !3077)
!3085 = !DILocation(line: 954, column: 32, scope: !3077)
!3086 = !DILocation(line: 954, column: 35, scope: !3077)
!3087 = !DILocation(line: 954, column: 12, scope: !3074)
!3088 = !DILocation(line: 956, column: 48, scope: !3076)
!3089 = !DILocation(line: 956, column: 29, scope: !3076)
!3090 = !DILocation(line: 0, scope: !3076)
!3091 = !DILocation(line: 960, column: 11, scope: !3068)
!3092 = !DILocation(line: 960, column: 3, scope: !3068)
!3093 = !DILocation(line: 967, column: 14, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3068, file: !1, line: 961, column: 5)
!3095 = !DILocation(line: 967, column: 7, scope: !3094)
!3096 = !DILocation(line: 971, column: 9, scope: !3094)
!3097 = !DILocation(line: 970, column: 14, scope: !3094)
!3098 = !DILocation(line: 970, column: 7, scope: !3094)
!3099 = !DILocation(line: 975, column: 7, scope: !3094)
!3100 = !DILocation(line: 976, column: 14, scope: !3094)
!3101 = !DILocation(line: 976, column: 7, scope: !3094)
!3102 = !DILocation(line: 978, column: 1, scope: !3068)
