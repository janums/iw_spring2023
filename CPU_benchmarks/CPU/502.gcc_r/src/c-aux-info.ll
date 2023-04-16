; ModuleID = 'c-aux-info.bc'
source_filename = "c-aux-info.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_gen_aux_info = external dso_local local_unnamed_addr global i32, align 4
@gen_aux_info_record.compiled_from_record = internal unnamed_addr global i32 0, align 4, !dbg !0
@aux_info_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"/* compiled from: . */\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"/* %s:%d:%c%c */ %s;\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" /*%s %s*/\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@data_type = internal unnamed_addr global i8* null, align 8, !dbg !892
@.str.7 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"[0]\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"enum \00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"[ERROR]\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"c-aux-info.c\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"restrict \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.31 = private unnamed_addr constant [10 x i8] c"/* ??? */\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c", ...\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@libiberty_optr = external dso_local local_unnamed_addr global i8*, align 8
@libiberty_len = external dso_local local_unnamed_addr global i64, align 8
@libiberty_nptr = external dso_local local_unnamed_addr global i8*, align 8
@.str.34 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !913 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !927, metadata !DIExpression()), !dbg !928
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !929
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !930
  ret i32 %call, !dbg !931
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !932 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !936
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !937
  ret i32 %call, !dbg !938
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !939 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !996, metadata !DIExpression()), !dbg !997
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !998
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !998
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !998
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !998
  %cmp = icmp uge i8* %0, %1, !dbg !998
  %conv1 = zext i1 %cmp to i64, !dbg !998
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !998
  %tobool = icmp eq i64 %expval, 0, !dbg !998
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !998

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !998
  br label %cond.end, !dbg !998

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !998
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !998
  %2 = load i8, i8* %0, align 1, !dbg !998
  %conv3 = zext i8 %2 to i32, !dbg !998
  br label %cond.end, !dbg !998

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !998
  ret i32 %cond, !dbg !999
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1000 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1002, metadata !DIExpression()), !dbg !1003
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1004
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1004
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1004
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1004
  %cmp = icmp uge i8* %0, %1, !dbg !1004
  %conv1 = zext i1 %cmp to i64, !dbg !1004
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1004
  %tobool = icmp eq i64 %expval, 0, !dbg !1004
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1004

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1004
  br label %cond.end, !dbg !1004

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1004
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1004
  %2 = load i8, i8* %0, align 1, !dbg !1004
  %conv3 = zext i8 %2 to i32, !dbg !1004
  br label %cond.end, !dbg !1004

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1004
  ret i32 %cond, !dbg !1005
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1006 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1007
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1007
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1007
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1007
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1007
  %cmp = icmp uge i8* %1, %2, !dbg !1007
  %conv1 = zext i1 %cmp to i64, !dbg !1007
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1007
  %tobool = icmp eq i64 %expval, 0, !dbg !1007
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1007

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1007
  br label %cond.end, !dbg !1007

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1007
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1007
  %3 = load i8, i8* %1, align 1, !dbg !1007
  %conv3 = zext i8 %3 to i32, !dbg !1007
  br label %cond.end, !dbg !1007

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1007
  ret i32 %cond, !dbg !1008
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1009 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1013, metadata !DIExpression()), !dbg !1014
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1015
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1016
  ret i32 %call, !dbg !1017
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1018 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1022, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1023, metadata !DIExpression()), !dbg !1024
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1025
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1025
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1025
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1025
  %cmp = icmp uge i8* %0, %1, !dbg !1025
  %conv1 = zext i1 %cmp to i64, !dbg !1025
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1025
  %tobool = icmp eq i64 %expval, 0, !dbg !1025
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1025

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1025
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1025
  br label %cond.end, !dbg !1025

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1025
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1025
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1025
  store i8 %conv2, i8* %0, align 1, !dbg !1025
  %conv6 = and i32 %__c, 255, !dbg !1025
  br label %cond.end, !dbg !1025

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1025
  ret i32 %cond, !dbg !1026
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1027 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1029, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1030, metadata !DIExpression()), !dbg !1031
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1032
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1032
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1032
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1032
  %cmp = icmp uge i8* %0, %1, !dbg !1032
  %conv1 = zext i1 %cmp to i64, !dbg !1032
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1032
  %tobool = icmp eq i64 %expval, 0, !dbg !1032
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1032

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1032
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1032
  br label %cond.end, !dbg !1032

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1032
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1032
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1032
  store i8 %conv2, i8* %0, align 1, !dbg !1032
  %conv6 = and i32 %__c, 255, !dbg !1032
  br label %cond.end, !dbg !1032

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1032
  ret i32 %cond, !dbg !1033
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1034 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1036, metadata !DIExpression()), !dbg !1037
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1038
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1038
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1038
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1038
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1038
  %cmp = icmp uge i8* %1, %2, !dbg !1038
  %conv1 = zext i1 %cmp to i64, !dbg !1038
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1038
  %tobool = icmp eq i64 %expval, 0, !dbg !1038
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1038

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1038
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1038
  br label %cond.end, !dbg !1038

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1038
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1038
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1038
  store i8 %conv4, i8* %1, align 1, !dbg !1038
  %conv6 = and i32 %__c, 255, !dbg !1038
  br label %cond.end, !dbg !1038

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1038
  ret i32 %cond, !dbg !1039
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1040 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1046, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1047, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1048, metadata !DIExpression()), !dbg !1049
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1050
  ret i64 %call, !dbg !1051
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1052 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1054, metadata !DIExpression()), !dbg !1055
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1056
  %0 = load i32, i32* %_flags, align 8, !dbg !1056
  %and = lshr i32 %0, 4, !dbg !1056
  %and.lobit = and i32 %and, 1, !dbg !1056
  ret i32 %and.lobit, !dbg !1057
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1058 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1060, metadata !DIExpression()), !dbg !1061
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1062
  %0 = load i32, i32* %_flags, align 8, !dbg !1062
  %and = lshr i32 %0, 5, !dbg !1062
  %and.lobit = and i32 %and, 1, !dbg !1062
  ret i32 %and.lobit, !dbg !1063
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1064 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1067, metadata !DIExpression()), !dbg !1068
  %__c.off = add i32 %__c, 128, !dbg !1069
  %0 = icmp ult i32 %__c.off, 384, !dbg !1069
  br i1 %0, label %cond.true, label %cond.end, !dbg !1069

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1070
  %1 = load i32*, i32** %call, align 8, !dbg !1071
  %idxprom = sext i32 %__c to i64, !dbg !1072
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1072
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1072
  br label %cond.end, !dbg !1073

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1073
  ret i32 %cond, !dbg !1074
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1075 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1077, metadata !DIExpression()), !dbg !1078
  %__c.off = add i32 %__c, 128, !dbg !1079
  %0 = icmp ult i32 %__c.off, 384, !dbg !1079
  br i1 %0, label %cond.true, label %cond.end, !dbg !1079

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1080
  %1 = load i32*, i32** %call, align 8, !dbg !1081
  %idxprom = sext i32 %__c to i64, !dbg !1082
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1082
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1082
  br label %cond.end, !dbg !1083

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1083
  ret i32 %cond, !dbg !1084
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1085 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1090, metadata !DIExpression()), !dbg !1091
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1092
  %conv = trunc i64 %call to i32, !dbg !1093
  ret i32 %conv, !dbg !1094
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1095 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1099, metadata !DIExpression()), !dbg !1100
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1101
  ret i64 %call, !dbg !1102
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1103 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1108, metadata !DIExpression()), !dbg !1109
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1110
  ret i64 %call, !dbg !1111
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1112 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1123, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1124, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1125, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1126, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1127, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i64 0, metadata !1128, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1129, metadata !DIExpression()), !dbg !1133
  br label %while.cond, !dbg !1134

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1135
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1133
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1129, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1128, metadata !DIExpression()), !dbg !1133
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1136
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1134

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1137
  %div = lshr i64 %add, 1, !dbg !1139
  call void @llvm.dbg.value(metadata i64 %div, metadata !1130, metadata !DIExpression()), !dbg !1133
  %mul = mul i64 %div, %__size, !dbg !1140
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1131, metadata !DIExpression()), !dbg !1133
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %call, metadata !1132, metadata !DIExpression()), !dbg !1133
  %cmp1 = icmp slt i32 %call, 0, !dbg !1143
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1145

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1146
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1148

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1128, metadata !DIExpression()), !dbg !1133
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1133
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1133
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1129, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1128, metadata !DIExpression()), !dbg !1133
  br label %while.cond, !dbg !1134, !llvm.loop !1150

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1133
  ret i8* %retval.0, !dbg !1152
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1153 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1159, metadata !DIExpression()), !dbg !1160
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1161
  ret double %call, !dbg !1162
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1163 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1172, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1173, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 %base, metadata !1174, metadata !DIExpression()), !dbg !1175
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1176
  ret i64 %call, !dbg !1177
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1178 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1184, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1185, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i32 %base, metadata !1186, metadata !DIExpression()), !dbg !1187
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1188
  ret i64 %call, !dbg !1189
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1190 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1202, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 %base, metadata !1203, metadata !DIExpression()), !dbg !1204
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1205
  ret i64 %call, !dbg !1206
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1207 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1211, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1212, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i32 %base, metadata !1213, metadata !DIExpression()), !dbg !1214
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1215
  ret i64 %call, !dbg !1216
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1217 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1260, metadata !DIExpression()), !dbg !1261
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1262
  ret i32 %call, !dbg !1263
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1264 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1266, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1267, metadata !DIExpression()), !dbg !1268
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1269
  ret i32 %call, !dbg !1270
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1271 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1276, metadata !DIExpression()), !dbg !1277
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1278
  ret i32 %call, !dbg !1279
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1280 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1284, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1285, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1286, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1287, metadata !DIExpression()), !dbg !1288
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1289
  ret i32 %call, !dbg !1290
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1291 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1295, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1296, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1297, metadata !DIExpression()), !dbg !1298
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1297, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1299
  ret i32 %call, !dbg !1300
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1301 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1305, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1306, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1307, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1308, metadata !DIExpression()), !dbg !1309
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1308, metadata !DIExpression(DW_OP_deref)), !dbg !1309
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1310
  ret i32 %call, !dbg !1311
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1312 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1336, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1337, metadata !DIExpression()), !dbg !1338
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1339
  ret i32 %call, !dbg !1340
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1341 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1343, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1344, metadata !DIExpression()), !dbg !1345
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1346
  ret i32 %call, !dbg !1347
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1348 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1352, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1353, metadata !DIExpression()), !dbg !1354
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1355
  ret i32 %call, !dbg !1356
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1357 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1361, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1362, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1363, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1364, metadata !DIExpression()), !dbg !1365
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1366
  ret i32 %call, !dbg !1367
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gen_aux_info_record(%union.tree_node* %fndecl, i32 %is_definition, i32 %is_implicit, i32 %is_prototyped) local_unnamed_addr #5 !dbg !2 {
entry:
  %xloc = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !895, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %is_definition, metadata !896, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %is_implicit, metadata !897, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %is_prototyped, metadata !898, metadata !DIExpression()), !dbg !1368
  %0 = load i32, i32* @flag_gen_aux_info, align 4, !dbg !1369
  %tobool = icmp eq i32 %0, 0, !dbg !1369
  br i1 %tobool, label %if.end17, label %if.then, !dbg !1370

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.expanded_location* %xloc to i8*, !dbg !1371
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !1371
  %locus = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1372
  %2 = load i32, i32* %locus, align 8, !dbg !1372
  call void @llvm.dbg.value(metadata %struct.expanded_location* %xloc, metadata !899, metadata !DIExpression(DW_OP_deref)), !dbg !1373
  call void @expand_location(%struct.expanded_location* nonnull sret %xloc, i32 %2) #6, !dbg !1374
  %3 = load i32, i32* @gen_aux_info_record.compiled_from_record, align 4, !dbg !1375
  %inc = add nsw i32 %3, 1, !dbg !1375
  store i32 %inc, i32* @gen_aux_info_record.compiled_from_record, align 4, !dbg !1375
  %tobool1 = icmp eq i32 %3, 0, !dbg !1375
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1377

if.then2:                                         ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8, !dbg !1378
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1380
  br label %if.end, !dbg !1381

if.end:                                           ; preds = %if.then, %if.then2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8, !dbg !1382
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 0, !dbg !1383
  %6 = load i8*, i8** %file, align 8, !dbg !1383
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 1, !dbg !1384
  %7 = load i32, i32* %line, align 8, !dbg !1384
  %tobool3 = icmp eq i32 %is_implicit, 0, !dbg !1385
  br i1 %tobool3, label %cond.false, label %cond.end, !dbg !1385

cond.false:                                       ; preds = %if.end
  %tobool4 = icmp eq i32 %is_prototyped, 0, !dbg !1386
  %cond = select i1 %tobool4, i32 79, i32 78, !dbg !1386
  br label %cond.end, !dbg !1385

cond.end:                                         ; preds = %if.end, %cond.false
  %cond5 = phi i32 [ %cond, %cond.false ], [ 73, %if.end ], !dbg !1385
  %tobool6 = icmp eq i32 %is_definition, 0, !dbg !1387
  %cond7 = select i1 %tobool6, i32 67, i32 70, !dbg !1387
  %call8 = call fastcc i8* @gen_decl(%union.tree_node* %fndecl, i32 %is_definition, i32 0) #8, !dbg !1388
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %6, i32 %7, i32 %cond5, i32 %cond7, i8* %call8) #6, !dbg !1389
  br i1 %tobool6, label %if.end15, label %if.then11, !dbg !1390

if.then11:                                        ; preds = %cond.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8, !dbg !1391
  %call12 = call fastcc i8* @gen_formal_list_for_func_def(%union.tree_node* %fndecl, i32 1) #8, !dbg !1394
  %call13 = call fastcc i8* @gen_formal_list_for_func_def(%union.tree_node* %fndecl, i32 2) #8, !dbg !1395
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %call12, i8* %call13) #6, !dbg !1396
  br label %if.end15, !dbg !1397

if.end15:                                         ; preds = %cond.end, %if.then11
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @aux_info_file, align 8, !dbg !1398
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !1399
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !1400
  br label %if.end17, !dbg !1401

if.end17:                                         ; preds = %entry, %if.end15
  ret void, !dbg !1402
}

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i8* @gen_decl(%union.tree_node* %decl, i32 %is_func_definition, i32 %style) unnamed_addr #5 !dbg !1403 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !1408, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %is_func_definition, metadata !1409, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %style, metadata !1410, metadata !DIExpression()), !dbg !1412
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1413
  %0 = load %union.tree_node*, %union.tree_node** %name, align 8, !dbg !1413
  %tobool = icmp eq %union.tree_node* %0, null, !dbg !1413
  br i1 %tobool, label %if.end, label %if.then, !dbg !1415

if.then:                                          ; preds = %entry
  %str = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1416
  %1 = bitcast i32* %str to i8**, !dbg !1416
  %2 = load i8*, i8** %1, align 8, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %2, metadata !1411, metadata !DIExpression()), !dbg !1412
  br label %if.end, !dbg !1417

if.end:                                           ; preds = %entry, %if.then
  %ret_val.0 = phi i8* [ %2, %if.then ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %entry ], !dbg !1418
  call void @llvm.dbg.value(metadata i8* %ret_val.0, metadata !1411, metadata !DIExpression()), !dbg !1412
  %cmp = icmp eq i32 %style, 1, !dbg !1419
  br i1 %cmp, label %cleanup, label %if.end4, !dbg !1421

if.end4:                                          ; preds = %if.end
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1422
  %bf.load = load i64, i64* %3, align 8, !dbg !1422
  %bf.cast1 = and i64 %bf.load, 524288, !dbg !1422
  %tobool5 = icmp eq i64 %bf.cast1, 0, !dbg !1422
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1424

if.then6:                                         ; preds = %if.end4
  %call = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %ret_val.0, i8* null) #6, !dbg !1425
  call void @llvm.dbg.value(metadata i8* %call, metadata !1411, metadata !DIExpression()), !dbg !1412
  %bf.load9.pre = load i64, i64* %3, align 8, !dbg !1426
  br label %if.end7, !dbg !1428

if.end7:                                          ; preds = %if.end4, %if.then6
  %bf.load9 = phi i64 [ %bf.load9.pre, %if.then6 ], [ %bf.load, %if.end4 ], !dbg !1426
  %ret_val.1 = phi i8* [ %call, %if.then6 ], [ %ret_val.0, %if.end4 ], !dbg !1412
  call void @llvm.dbg.value(metadata i8* %ret_val.1, metadata !1411, metadata !DIExpression()), !dbg !1412
  %bf.cast122 = and i64 %bf.load9, 1048576, !dbg !1426
  %tobool13 = icmp eq i64 %bf.cast122, 0, !dbg !1426
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !1429

if.then14:                                        ; preds = %if.end7
  %call15 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %ret_val.1, i8* null) #6, !dbg !1430
  call void @llvm.dbg.value(metadata i8* %call15, metadata !1411, metadata !DIExpression()), !dbg !1412
  br label %if.end16, !dbg !1431

if.end16:                                         ; preds = %if.end7, %if.then14
  %ret_val.2 = phi i8* [ %call15, %if.then14 ], [ %ret_val.1, %if.end7 ], !dbg !1412
  call void @llvm.dbg.value(metadata i8* %ret_val.2, metadata !1411, metadata !DIExpression()), !dbg !1412
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** @data_type, align 8, !dbg !1432
  %bf.load18 = load i64, i64* %3, align 8, !dbg !1433
  %bf.cast203 = and i64 %bf.load18, 65535, !dbg !1435
  %cmp21 = icmp eq i64 %bf.cast203, 29, !dbg !1435
  %tobool22 = icmp ne i32 %is_func_definition, 0, !dbg !1436
  %or.cond = and i1 %cmp21, %tobool22, !dbg !1437
  br i1 %or.cond, label %if.then23, label %if.else29, !dbg !1437

if.then23:                                        ; preds = %if.end16
  %call24 = tail call fastcc i8* @gen_formal_list_for_func_def(%union.tree_node* %decl, i32 0) #8, !dbg !1438
  %call25 = tail call i8* (i8*, ...) @concat(i8* %ret_val.2, i8* %call24, i8* null) #6, !dbg !1440
  call void @llvm.dbg.value(metadata i8* %call25, metadata !1411, metadata !DIExpression()), !dbg !1412
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1441
  %4 = bitcast %union.tree_node** %type to %struct.tree_common**, !dbg !1441
  %5 = load %struct.tree_common*, %struct.tree_common** %4, align 8, !dbg !1441
  %type27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %5, i64 0, i32 2, !dbg !1441
  %6 = load %union.tree_node*, %union.tree_node** %type27, align 8, !dbg !1441
  %call28 = tail call fastcc i8* @gen_type(i8* %call25, %union.tree_node* %6, i32 %style) #8, !dbg !1442
  call void @llvm.dbg.value(metadata i8* %call28, metadata !1411, metadata !DIExpression()), !dbg !1412
  br label %if.end33, !dbg !1443

if.else29:                                        ; preds = %if.end16
  %type31 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1444
  %7 = load %union.tree_node*, %union.tree_node** %type31, align 8, !dbg !1444
  %call32 = tail call fastcc i8* @gen_type(i8* %ret_val.2, %union.tree_node* %7, i32 %style) #8, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %call32, metadata !1411, metadata !DIExpression()), !dbg !1412
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then23
  %ret_val.3 = phi i8* [ %call28, %if.then23 ], [ %call32, %if.else29 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8* %ret_val.3, metadata !1411, metadata !DIExpression()), !dbg !1412
  %call34 = tail call fastcc i8* @affix_data_type(i8* %ret_val.3) #8, !dbg !1447
  call void @llvm.dbg.value(metadata i8* %call34, metadata !1411, metadata !DIExpression()), !dbg !1412
  %bf.load36 = load i64, i64* %3, align 8, !dbg !1448
  %bf.cast384 = and i64 %bf.load36, 65535, !dbg !1450
  %cmp39 = icmp eq i64 %bf.cast384, 29, !dbg !1450
  br i1 %cmp39, label %if.end48, label %land.lhs.true40, !dbg !1451

land.lhs.true40:                                  ; preds = %if.end33
  %lang_flag_4 = getelementptr inbounds %union.tree_node, %union.tree_node* %decl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1452
  %8 = bitcast i40* %lang_flag_4 to i64*, !dbg !1452
  %bf.load41 = load i64, i64* %8, align 8, !dbg !1452
  %bf.cast448 = and i64 %bf.load41, 524288, !dbg !1452
  %tobool45 = icmp eq i64 %bf.cast448, 0, !dbg !1452
  br i1 %tobool45, label %if.end48, label %if.then46, !dbg !1453

if.then46:                                        ; preds = %land.lhs.true40
  %call47 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %call34, i8* null) #6, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %call47, metadata !1411, metadata !DIExpression()), !dbg !1412
  %bf.load50.pre = load i64, i64* %3, align 8, !dbg !1455
  br label %if.end48, !dbg !1457

if.end48:                                         ; preds = %land.lhs.true40, %if.end33, %if.then46
  %bf.load50 = phi i64 [ %bf.load50.pre, %if.then46 ], [ %bf.load36, %land.lhs.true40 ], [ %bf.load36, %if.end33 ], !dbg !1455
  %ret_val.4 = phi i8* [ %call47, %if.then46 ], [ %call34, %land.lhs.true40 ], [ %call34, %if.end33 ], !dbg !1412
  call void @llvm.dbg.value(metadata i8* %ret_val.4, metadata !1411, metadata !DIExpression()), !dbg !1412
  %bf.cast535 = and i64 %bf.load50, 134217728, !dbg !1455
  %tobool54 = icmp eq i64 %bf.cast535, 0, !dbg !1455
  br i1 %tobool54, label %if.end57, label %if.then55, !dbg !1458

if.then55:                                        ; preds = %if.end48
  %call56 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %ret_val.4, i8* null) #6, !dbg !1459
  call void @llvm.dbg.value(metadata i8* %call56, metadata !1411, metadata !DIExpression()), !dbg !1412
  %bf.load59.pre = load i64, i64* %3, align 8, !dbg !1460
  br label %if.end57, !dbg !1462

if.end57:                                         ; preds = %if.end48, %if.then55
  %bf.load65 = phi i64 [ %bf.load59.pre, %if.then55 ], [ %bf.load50, %if.end48 ], !dbg !1460
  %ret_val.5 = phi i8* [ %call56, %if.then55 ], [ %ret_val.4, %if.end48 ], !dbg !1412
  call void @llvm.dbg.value(metadata i8* %ret_val.5, metadata !1411, metadata !DIExpression()), !dbg !1412
  %bf.cast616 = and i64 %bf.load65, 65535, !dbg !1463
  %cmp62 = icmp eq i64 %bf.cast616, 29, !dbg !1463
  br i1 %cmp62, label %land.lhs.true63, label %cleanup, !dbg !1464

land.lhs.true63:                                  ; preds = %if.end57
  %bf.cast687 = and i64 %bf.load65, 134217728, !dbg !1465
  %tobool69 = icmp eq i64 %bf.cast687, 0, !dbg !1465
  br i1 %tobool69, label %if.then70, label %cleanup, !dbg !1466

if.then70:                                        ; preds = %land.lhs.true63
  %call71 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %ret_val.5, i8* null) #6, !dbg !1467
  call void @llvm.dbg.value(metadata i8* %call71, metadata !1411, metadata !DIExpression()), !dbg !1412
  br label %cleanup, !dbg !1468

cleanup:                                          ; preds = %land.lhs.true63, %if.end57, %if.then70, %if.end
  %retval.0 = phi i8* [ %ret_val.0, %if.end ], [ %ret_val.5, %land.lhs.true63 ], [ %call71, %if.then70 ], [ %ret_val.5, %if.end57 ], !dbg !1412
  ret i8* %retval.0, !dbg !1469
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @gen_formal_list_for_func_def(%union.tree_node* %fndecl, i32 %style) unnamed_addr #5 !dbg !1470 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !1474, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %style, metadata !1475, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), metadata !1476, metadata !DIExpression()), !dbg !1480
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 2, !dbg !1481
  %switch = icmp ult i32 %style, 2, !dbg !1482
  %cmp6 = icmp eq i32 %style, 2, !dbg !1484
  br i1 %switch, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !1486

entry.entry.split_crit_edge:                      ; preds = %entry
  br i1 %cmp6, label %entry.split.split.us, label %entry.split.entry.split.split_crit_edge, !dbg !1486

entry.split.us:                                   ; preds = %entry
  br i1 %cmp6, label %entry.split.us.split.us, label %entry.split.us.entry.split.us.split_crit_edge, !dbg !1486

entry.split.us.entry.split.us.split_crit_edge:    ; preds = %entry.split.us
  br label %while.cond.us, !dbg !1486

entry.split.us.split.us:                          ; preds = %entry.split.us
  br label %while.cond.us.us, !dbg !1486

while.cond.us.us:                                 ; preds = %if.end.us.us, %entry.split.us.split.us
  %formal_list.0.us.us = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %entry.split.us.split.us ], [ %call9.us.us, %if.end.us.us ], !dbg !1480
  %formal_decl.0.in.us.us = phi %union.tree_node** [ %arguments, %entry.split.us.split.us ], [ %chain.us.us, %if.end.us.us ]
  %formal_decl.0.us.us = load %union.tree_node*, %union.tree_node** %formal_decl.0.in.us.us, align 8, !dbg !1480
  call void @llvm.dbg.value(metadata %union.tree_node* %formal_decl.0.us.us, metadata !1477, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  %tobool.us.us = icmp eq %union.tree_node* %formal_decl.0.us.us, null, !dbg !1486
  br i1 %tobool.us.us, label %while.end.us-lcssa.us.us-lcssa.us, label %while.body.us.us, !dbg !1486

while.body.us.us:                                 ; preds = %while.cond.us.us
  %0 = load i8, i8* %formal_list.0.us.us, align 1, !dbg !1487
  %tobool1.us.us = icmp eq i8 %0, 0, !dbg !1487
  br i1 %tobool1.us.us, label %if.end.us.us, label %if.then.us.us, !dbg !1488

if.then.us.us:                                    ; preds = %while.body.us.us
  %call.us.us = tail call i8* (i8*, ...) @concat(i8* %formal_list.0.us.us, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* null) #6, !dbg !1489
  call void @llvm.dbg.value(metadata i8* %call.us.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  br label %if.end.us.us, !dbg !1490

if.end.us.us:                                     ; preds = %while.body.us.us, %if.then.us.us
  %formal_list.1.us.us = phi i8* [ %call.us.us, %if.then.us.us ], [ %formal_list.0.us.us, %while.body.us.us ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.1.us.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  %call5.us.us = tail call fastcc i8* @gen_decl(%union.tree_node* nonnull %formal_decl.0.us.us, i32 0, i32 2) #8, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %call5.us.us, metadata !1478, metadata !DIExpression()), !dbg !1492
  %call9.us.us = tail call i8* (i8*, ...) @concat(i8* %formal_list.1.us.us, i8* %call5.us.us, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* null) #6, !dbg !1493
  call void @llvm.dbg.value(metadata i8* %call9.us.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %call9.us.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  %chain.us.us = getelementptr inbounds %union.tree_node, %union.tree_node* %formal_decl.0.us.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1494
  br label %while.cond.us.us, !dbg !1486, !llvm.loop !1495

while.end.us-lcssa.us.us-lcssa.us:                ; preds = %while.cond.us.us
  %formal_list.0.us.us.lcssa = phi i8* [ %formal_list.0.us.us, %while.cond.us.us ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us.us.lcssa, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us.us.lcssa, metadata !1476, metadata !DIExpression()), !dbg !1480
  br label %while.end.us-lcssa.us, !dbg !1497

while.cond.us:                                    ; preds = %if.end.us, %entry.split.us.entry.split.us.split_crit_edge
  %formal_list.0.us = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %entry.split.us.entry.split.us.split_crit_edge ], [ %call10.us, %if.end.us ], !dbg !1480
  %formal_decl.0.in.us = phi %union.tree_node** [ %arguments, %entry.split.us.entry.split.us.split_crit_edge ], [ %chain.us, %if.end.us ]
  %formal_decl.0.us = load %union.tree_node*, %union.tree_node** %formal_decl.0.in.us, align 8, !dbg !1480
  call void @llvm.dbg.value(metadata %union.tree_node* %formal_decl.0.us, metadata !1477, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  %tobool.us = icmp eq %union.tree_node* %formal_decl.0.us, null, !dbg !1486
  br i1 %tobool.us, label %while.end.us-lcssa.us.us-lcssa, label %while.body.us, !dbg !1486

while.body.us:                                    ; preds = %while.cond.us
  %1 = load i8, i8* %formal_list.0.us, align 1, !dbg !1487
  %tobool1.us = icmp eq i8 %1, 0, !dbg !1487
  br i1 %tobool1.us, label %if.end.us, label %if.then.us, !dbg !1488

if.then.us:                                       ; preds = %while.body.us
  %call.us = tail call i8* (i8*, ...) @concat(i8* %formal_list.0.us, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* null) #6, !dbg !1489
  call void @llvm.dbg.value(metadata i8* %call.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  br label %if.end.us, !dbg !1490

if.end.us:                                        ; preds = %while.body.us, %if.then.us
  %formal_list.1.us = phi i8* [ %call.us, %if.then.us ], [ %formal_list.0.us, %while.body.us ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.1.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  %call5.us = tail call fastcc i8* @gen_decl(%union.tree_node* nonnull %formal_decl.0.us, i32 0, i32 %style) #8, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %call5.us, metadata !1478, metadata !DIExpression()), !dbg !1492
  %call10.us = tail call i8* (i8*, ...) @concat(i8* %formal_list.1.us, i8* %call5.us, i8* null) #6, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %call10.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %call10.us, metadata !1476, metadata !DIExpression()), !dbg !1480
  %chain.us = getelementptr inbounds %union.tree_node, %union.tree_node* %formal_decl.0.us, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1494
  br label %while.cond.us, !dbg !1486, !llvm.loop !1495

while.end.us-lcssa.us.us-lcssa:                   ; preds = %while.cond.us
  %formal_list.0.us.lcssa = phi i8* [ %formal_list.0.us, %while.cond.us ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us.lcssa, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us.lcssa, metadata !1476, metadata !DIExpression()), !dbg !1480
  br label %while.end.us-lcssa.us, !dbg !1497

while.end.us-lcssa.us:                            ; preds = %while.end.us-lcssa.us.us-lcssa.us, %while.end.us-lcssa.us.us-lcssa
  %formal_list.0.lcssa.ph.us = phi i8* [ %formal_list.0.us.lcssa, %while.end.us-lcssa.us.us-lcssa ], [ %formal_list.0.us.us.lcssa, %while.end.us-lcssa.us.us-lcssa.us ]
  br label %while.end, !dbg !1497

entry.split.entry.split.split_crit_edge:          ; preds = %entry.entry.split_crit_edge
  br label %while.cond, !dbg !1486

entry.split.split.us:                             ; preds = %entry.entry.split_crit_edge
  br label %while.cond.us2, !dbg !1486

while.cond.us2:                                   ; preds = %while.body.us7, %entry.split.split.us
  %formal_list.0.us3 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %entry.split.split.us ], [ %call9.us16, %while.body.us7 ], !dbg !1480
  %formal_decl.0.in.us4 = phi %union.tree_node** [ %arguments, %entry.split.split.us ], [ %chain.us19, %while.body.us7 ]
  %formal_decl.0.us5 = load %union.tree_node*, %union.tree_node** %formal_decl.0.in.us4, align 8, !dbg !1480
  call void @llvm.dbg.value(metadata %union.tree_node* %formal_decl.0.us5, metadata !1477, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us3, metadata !1476, metadata !DIExpression()), !dbg !1480
  %tobool.us6 = icmp eq %union.tree_node* %formal_decl.0.us5, null, !dbg !1486
  br i1 %tobool.us6, label %while.end.us-lcssa.us-lcssa.us, label %while.body.us7, !dbg !1486

while.body.us7:                                   ; preds = %while.cond.us2
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us3, metadata !1476, metadata !DIExpression()), !dbg !1480
  %call5.us12 = tail call fastcc i8* @gen_decl(%union.tree_node* nonnull %formal_decl.0.us5, i32 0, i32 2) #8, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %call5.us12, metadata !1478, metadata !DIExpression()), !dbg !1492
  %call9.us16 = tail call i8* (i8*, ...) @concat(i8* %formal_list.0.us3, i8* %call5.us12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* null) #6, !dbg !1493
  call void @llvm.dbg.value(metadata i8* %call9.us16, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %call9.us16, metadata !1476, metadata !DIExpression()), !dbg !1480
  %chain.us19 = getelementptr inbounds %union.tree_node, %union.tree_node* %formal_decl.0.us5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1494
  br label %while.cond.us2, !dbg !1486, !llvm.loop !1495

while.end.us-lcssa.us-lcssa.us:                   ; preds = %while.cond.us2
  %formal_list.0.us3.lcssa = phi i8* [ %formal_list.0.us3, %while.cond.us2 ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us3.lcssa, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.us3.lcssa, metadata !1476, metadata !DIExpression()), !dbg !1480
  br label %while.end.us-lcssa, !dbg !1497

while.cond:                                       ; preds = %while.body, %entry.split.entry.split.split_crit_edge
  %formal_list.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %entry.split.entry.split.split_crit_edge ], [ %call10, %while.body ], !dbg !1480
  %formal_decl.0.in = phi %union.tree_node** [ %arguments, %entry.split.entry.split.split_crit_edge ], [ %chain, %while.body ]
  %formal_decl.0 = load %union.tree_node*, %union.tree_node** %formal_decl.0.in, align 8, !dbg !1480
  call void @llvm.dbg.value(metadata %union.tree_node* %formal_decl.0, metadata !1477, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0, metadata !1476, metadata !DIExpression()), !dbg !1480
  %tobool = icmp eq %union.tree_node* %formal_decl.0, null, !dbg !1486
  br i1 %tobool, label %while.end.us-lcssa.us-lcssa, label %while.body, !dbg !1486

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8* %formal_list.0, metadata !1476, metadata !DIExpression()), !dbg !1480
  %call5 = tail call fastcc i8* @gen_decl(%union.tree_node* nonnull %formal_decl.0, i32 0, i32 %style) #8, !dbg !1491
  call void @llvm.dbg.value(metadata i8* %call5, metadata !1478, metadata !DIExpression()), !dbg !1492
  %call10 = tail call i8* (i8*, ...) @concat(i8* %formal_list.0, i8* %call5, i8* null) #6, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %call10, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %call10, metadata !1476, metadata !DIExpression()), !dbg !1480
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %formal_decl.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1494
  br label %while.cond, !dbg !1486, !llvm.loop !1495

while.end.us-lcssa.us-lcssa:                      ; preds = %while.cond
  %formal_list.0.lcssa21 = phi i8* [ %formal_list.0, %while.cond ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.lcssa21, metadata !1476, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.lcssa21, metadata !1476, metadata !DIExpression()), !dbg !1480
  br label %while.end.us-lcssa, !dbg !1497

while.end.us-lcssa:                               ; preds = %while.end.us-lcssa.us-lcssa.us, %while.end.us-lcssa.us-lcssa
  %formal_list.0.lcssa.ph = phi i8* [ %formal_list.0.lcssa21, %while.end.us-lcssa.us-lcssa ], [ %formal_list.0.us3.lcssa, %while.end.us-lcssa.us-lcssa.us ]
  br label %while.end, !dbg !1497

while.end:                                        ; preds = %while.end.us-lcssa.us, %while.end.us-lcssa
  %formal_list.0.lcssa = phi i8* [ %formal_list.0.lcssa.ph, %while.end.us-lcssa ], [ %formal_list.0.lcssa.ph.us, %while.end.us-lcssa.us ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.0.lcssa, metadata !1476, metadata !DIExpression()), !dbg !1480
  %cmp12 = icmp eq i32 %style, 0, !dbg !1497
  br i1 %cmp12, label %if.then14, label %if.end27, !dbg !1500

if.then14:                                        ; preds = %while.end
  %2 = load %union.tree_node*, %union.tree_node** %arguments, align 8, !dbg !1501
  %tobool17 = icmp eq %union.tree_node* %2, null, !dbg !1501
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !1504

if.then18:                                        ; preds = %if.then14
  %call19 = tail call i8* (i8*, ...) @concat(i8* %formal_list.0.lcssa, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* null) #6, !dbg !1505
  call void @llvm.dbg.value(metadata i8* %call19, metadata !1476, metadata !DIExpression()), !dbg !1480
  br label %if.end20, !dbg !1506

if.end20:                                         ; preds = %if.then14, %if.then18
  %formal_list.3 = phi i8* [ %formal_list.0.lcssa, %if.then14 ], [ %call19, %if.then18 ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.3, metadata !1476, metadata !DIExpression()), !dbg !1480
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %fndecl, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1507
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !1507
  %call22 = tail call fastcc i32 @deserves_ellipsis(%union.tree_node* %3) #8, !dbg !1509
  %tobool23 = icmp eq i32 %call22, 0, !dbg !1509
  br i1 %tobool23, label %if.end27, label %if.then24, !dbg !1510

if.then24:                                        ; preds = %if.end20
  %call25 = tail call i8* (i8*, ...) @concat(i8* %formal_list.3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* null) #6, !dbg !1511
  call void @llvm.dbg.value(metadata i8* %call25, metadata !1476, metadata !DIExpression()), !dbg !1480
  br label %if.end27, !dbg !1512

if.end27:                                         ; preds = %if.end20, %if.then24, %while.end
  %formal_list.5 = phi i8* [ %formal_list.0.lcssa, %while.end ], [ %call25, %if.then24 ], [ %formal_list.3, %if.end20 ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.5, metadata !1476, metadata !DIExpression()), !dbg !1480
  br i1 %switch, label %if.then33, label %if.end35, !dbg !1513

if.then33:                                        ; preds = %if.end27
  %call34 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %formal_list.5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* null) #6, !dbg !1515
  call void @llvm.dbg.value(metadata i8* %call34, metadata !1476, metadata !DIExpression()), !dbg !1480
  br label %if.end35, !dbg !1516

if.end35:                                         ; preds = %if.end27, %if.then33
  %formal_list.6 = phi i8* [ %call34, %if.then33 ], [ %formal_list.5, %if.end27 ], !dbg !1480
  call void @llvm.dbg.value(metadata i8* %formal_list.6, metadata !1476, metadata !DIExpression()), !dbg !1480
  ret i8* %formal_list.6, !dbg !1517
}

declare dso_local i8* @concat(i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i8* @gen_type(i8* %ret_val, %union.tree_node* %t, i32 %style) unnamed_addr #5 !dbg !1518 {
entry:
  %buff = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %ret_val, metadata !1522, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1523, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %style, metadata !1524, metadata !DIExpression()), !dbg !1537
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, !dbg !1538
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !1538
  %tobool = icmp eq %union.tree_node* %1, null, !dbg !1538
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !1539

land.lhs.true:                                    ; preds = %entry
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1539
  %bf.load = load i64, i64* %2, align 8, !dbg !1540
  %bf.cast14 = and i64 %bf.load, 65535, !dbg !1541
  %cmp = icmp eq i64 %bf.cast14, 35, !dbg !1541
  br i1 %cmp, label %if.then, label %if.else, !dbg !1542

if.then:                                          ; preds = %land.lhs.true
  %name5 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1543
  %3 = bitcast %union.tree_node** %name5 to %struct.tree_identifier**, !dbg !1543
  %4 = load %struct.tree_identifier*, %struct.tree_identifier** %3, align 8, !dbg !1543
  %str = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %4, i64 0, i32 1, i32 0, !dbg !1543
  %5 = bitcast i8** %str to i64*, !dbg !1543
  %6 = load i64, i64* %5, align 8, !dbg !1543
  store i64 %6, i64* bitcast (i8** @data_type to i64*), align 8, !dbg !1544
  br label %if.end225, !dbg !1545

if.else:                                          ; preds = %entry, %land.lhs.true
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1546
  %bf.load7 = load i64, i64* %7, align 8, !dbg !1546
  %8 = trunc i64 %bf.load7 to i16, !dbg !1546
  switch i16 %8, label %sw.default [
    i16 10, label %sw.bb
    i16 15, label %sw.bb45
    i16 20, label %sw.bb83
    i16 1, label %sw.bb89
    i16 16, label %sw.bb93
    i16 17, label %sw.bb113
    i16 6, label %sw.bb138
    i16 35, label %sw.bb168
    i16 8, label %sw.bb174
    i16 11, label %sw.bb174
    i16 9, label %sw.bb215
    i16 19, label %sw.bb223
    i16 0, label %sw.bb224
  ], !dbg !1547

sw.bb:                                            ; preds = %if.else
  %bf.cast1310 = and i64 %bf.load7, 1048576, !dbg !1548
  %tobool14 = icmp eq i64 %bf.cast1310, 0, !dbg !1548
  br i1 %tobool14, label %if.end, label %if.then15, !dbg !1550

if.then15:                                        ; preds = %sw.bb
  %call = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %ret_val, i8* null) #6, !dbg !1551
  call void @llvm.dbg.value(metadata i8* %call, metadata !1522, metadata !DIExpression()), !dbg !1537
  %bf.load17.pre = load i64, i64* %7, align 8, !dbg !1552
  br label %if.end, !dbg !1554

if.end:                                           ; preds = %sw.bb, %if.then15
  %bf.load17 = phi i64 [ %bf.load17.pre, %if.then15 ], [ %bf.load7, %sw.bb ], !dbg !1552
  %ret_val.addr.0 = phi i8* [ %call, %if.then15 ], [ %ret_val, %sw.bb ]
  call void @llvm.dbg.value(metadata i8* %ret_val.addr.0, metadata !1522, metadata !DIExpression()), !dbg !1537
  %bf.cast2011 = and i64 %bf.load17, 524288, !dbg !1552
  %tobool21 = icmp eq i64 %bf.cast2011, 0, !dbg !1552
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !1555

if.then22:                                        ; preds = %if.end
  %call23 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %ret_val.addr.0, i8* null) #6, !dbg !1556
  call void @llvm.dbg.value(metadata i8* %call23, metadata !1522, metadata !DIExpression()), !dbg !1537
  br label %if.end24, !dbg !1557

if.end24:                                         ; preds = %if.end, %if.then22
  %ret_val.addr.1 = phi i8* [ %call23, %if.then22 ], [ %ret_val.addr.0, %if.end ], !dbg !1558
  call void @llvm.dbg.value(metadata i8* %ret_val.addr.1, metadata !1522, metadata !DIExpression()), !dbg !1537
  %call25 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* %ret_val.addr.1, i8* null) #6, !dbg !1559
  call void @llvm.dbg.value(metadata i8* %call25, metadata !1522, metadata !DIExpression()), !dbg !1537
  %type26 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1560
  %9 = bitcast %union.tree_node** %type26 to i64**, !dbg !1560
  %10 = load i64*, i64** %9, align 8, !dbg !1560
  %bf.load28 = load i64, i64* %10, align 8, !dbg !1560
  %bf.cast3012 = and i64 %bf.load28, 65535, !dbg !1562
  %cmp31 = icmp eq i64 %bf.cast3012, 15, !dbg !1562
  br i1 %cmp31, label %if.then39, label %lor.lhs.false, !dbg !1563

lor.lhs.false:                                    ; preds = %if.end24
  %11 = bitcast i64* %10 to %union.tree_node*, !dbg !1563
  %cmp38 = icmp eq i64 %bf.cast3012, 20, !dbg !1564
  br i1 %cmp38, label %if.then39, label %if.end41, !dbg !1565

if.then39:                                        ; preds = %lor.lhs.false, %if.end24
  %call40 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* %call25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* null) #6, !dbg !1566
  call void @llvm.dbg.value(metadata i8* %call40, metadata !1522, metadata !DIExpression()), !dbg !1537
  %.pre = load %union.tree_node*, %union.tree_node** %type26, align 8, !dbg !1567
  br label %if.end41, !dbg !1568

if.end41:                                         ; preds = %if.then39, %lor.lhs.false
  %12 = phi %union.tree_node* [ %.pre, %if.then39 ], [ %11, %lor.lhs.false ], !dbg !1567
  %ret_val.addr.2 = phi i8* [ %call40, %if.then39 ], [ %call25, %lor.lhs.false ], !dbg !1558
  call void @llvm.dbg.value(metadata i8* %ret_val.addr.2, metadata !1522, metadata !DIExpression()), !dbg !1537
  %call44 = tail call fastcc i8* @gen_type(i8* %ret_val.addr.2, %union.tree_node* %12, i32 %style) #8, !dbg !1569
  call void @llvm.dbg.value(metadata i8* %call44, metadata !1522, metadata !DIExpression()), !dbg !1537
  br label %cleanup, !dbg !1570

sw.bb45:                                          ; preds = %if.else
  %13 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1571
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8, !dbg !1571
  %cmp47 = icmp eq %union.tree_node* %14, null, !dbg !1571
  br i1 %cmp47, label %if.then56, label %lor.lhs.false48, !dbg !1572

lor.lhs.false48:                                  ; preds = %sw.bb45
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1572
  %bf.load52 = load i64, i64* %15, align 8, !dbg !1573
  %bf.cast549 = and i64 %bf.load52, 65535, !dbg !1574
  %cmp55 = icmp eq i64 %bf.cast549, 23, !dbg !1574
  br i1 %cmp55, label %if.else61, label %if.then56, !dbg !1575

if.then56:                                        ; preds = %lor.lhs.false48, %sw.bb45
  %call57 = tail call i8* (i8*, ...) @concat(i8* %ret_val, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* null) #6, !dbg !1576
  %type59 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1577
  %16 = load %union.tree_node*, %union.tree_node** %type59, align 8, !dbg !1577
  %call60 = tail call fastcc i8* @gen_type(i8* %call57, %union.tree_node* %16, i32 %style) #8, !dbg !1578
  call void @llvm.dbg.value(metadata i8* %call60, metadata !1522, metadata !DIExpression()), !dbg !1537
  br label %if.end225, !dbg !1579

if.else61:                                        ; preds = %lor.lhs.false48
  %call62 = tail call i64 @int_size_in_bytes(%union.tree_node* %t) #6, !dbg !1580
  %cmp63 = icmp eq i64 %call62, 0, !dbg !1581
  br i1 %cmp63, label %if.then64, label %if.else69, !dbg !1582

if.then64:                                        ; preds = %if.else61
  %call65 = tail call i8* (i8*, ...) @concat(i8* %ret_val, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* null) #6, !dbg !1583
  %type67 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1584
  %17 = load %union.tree_node*, %union.tree_node** %type67, align 8, !dbg !1584
  %call68 = tail call fastcc i8* @gen_type(i8* %call65, %union.tree_node* %17, i32 %style) #8, !dbg !1585
  call void @llvm.dbg.value(metadata i8* %call68, metadata !1522, metadata !DIExpression()), !dbg !1537
  br label %if.end225, !dbg !1586

if.else69:                                        ; preds = %if.else61
  %call71 = tail call i64 @int_size_in_bytes(%union.tree_node* %t) #6, !dbg !1587
  %type73 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1588
  %18 = load %union.tree_node*, %union.tree_node** %type73, align 8, !dbg !1588
  %call74 = tail call i64 @int_size_in_bytes(%union.tree_node* %18) #6, !dbg !1589
  %div = sdiv i64 %call71, %call74, !dbg !1590
  %conv = trunc i64 %div to i32, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1526, metadata !DIExpression()), !dbg !1592
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %buff, i64 0, i64 0, !dbg !1593
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %19) #7, !dbg !1593
  call void @llvm.dbg.declare(metadata [10 x i8]* %buff, metadata !1533, metadata !DIExpression()), !dbg !1594
  %call75 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %conv) #6, !dbg !1595
  %call77 = call i8* (i8*, ...) @concat(i8* %ret_val, i8* nonnull %19, i8* null) #6, !dbg !1596
  %20 = load %union.tree_node*, %union.tree_node** %type73, align 8, !dbg !1597
  %call80 = call fastcc i8* @gen_type(i8* %call77, %union.tree_node* %20, i32 %style) #8, !dbg !1598
  call void @llvm.dbg.value(metadata i8* %call80, metadata !1522, metadata !DIExpression()), !dbg !1537
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %19) #7, !dbg !1599
  br label %if.end225

sw.bb83:                                          ; preds = %if.else
  %call84 = tail call fastcc i8* @gen_formal_list_for_type(%union.tree_node* %t, i32 %style) #8, !dbg !1600
  %call85 = tail call i8* (i8*, ...) @concat(i8* %ret_val, i8* %call84, i8* null) #6, !dbg !1601
  %type87 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1602
  %21 = load %union.tree_node*, %union.tree_node** %type87, align 8, !dbg !1602
  %call88 = tail call fastcc i8* @gen_type(i8* %call85, %union.tree_node* %21, i32 %style) #8, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %call88, metadata !1522, metadata !DIExpression()), !dbg !1537
  br label %if.end225, !dbg !1604

sw.bb89:                                          ; preds = %if.else
  %id91 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1605
  %22 = bitcast i32* %id91 to i64*, !dbg !1605
  %23 = load i64, i64* %22, align 8, !dbg !1605
  store i64 %23, i64* bitcast (i8** @data_type to i64*), align 8, !dbg !1606
  br label %if.end225, !dbg !1607

sw.bb93:                                          ; preds = %if.else
  br i1 %tobool, label %if.else103, label %if.then97, !dbg !1608

if.then97:                                        ; preds = %sw.bb93
  %str102 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1609
  %24 = bitcast i32* %str102 to i8**, !dbg !1609
  %25 = load i8*, i8** %24, align 8, !dbg !1609
  br label %if.end111, !dbg !1611

if.else103:                                       ; preds = %sw.bb93
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** @data_type, align 8, !dbg !1612
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1614
  %26 = bitcast i32* %values to %union.tree_node**, !dbg !1614
  %27 = load %union.tree_node*, %union.tree_node** %26, align 8, !dbg !1614
  call void @llvm.dbg.value(metadata %union.tree_node* %27, metadata !1525, metadata !DIExpression()), !dbg !1537
  br label %while.cond, !dbg !1615

while.cond:                                       ; preds = %while.body, %if.else103
  %28 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %if.else103 ], [ %call109, %while.body ], !dbg !1616
  %chain_p.0 = phi %union.tree_node* [ %27, %if.else103 ], [ %29, %while.body ], !dbg !1616
  call void @llvm.dbg.value(metadata %union.tree_node* %chain_p.0, metadata !1525, metadata !DIExpression()), !dbg !1537
  %tobool105 = icmp eq %union.tree_node* %chain_p.0, null, !dbg !1615
  br i1 %tobool105, label %while.end, label %while.body, !dbg !1615

while.body:                                       ; preds = %while.cond
  %call106 = tail call fastcc i8* @gen_decl(%union.tree_node* nonnull %chain_p.0, i32 0, i32 0) #8, !dbg !1617
  %call107 = tail call i8* (i8*, ...) @concat(i8* %28, i8* %call106, i8* null) #6, !dbg !1619
  store i8* %call107, i8** @data_type, align 8, !dbg !1620
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %chain_p.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1621
  %29 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !1621
  call void @llvm.dbg.value(metadata %union.tree_node* %29, metadata !1525, metadata !DIExpression()), !dbg !1537
  %call109 = tail call i8* (i8*, ...) @concat(i8* %call107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* null) #6, !dbg !1622
  store i8* %call109, i8** @data_type, align 8, !dbg !1623
  br label %while.cond, !dbg !1615, !llvm.loop !1624

while.end:                                        ; preds = %while.cond
  %.lcssa = phi i8* [ %28, %while.cond ], !dbg !1616
  %call110 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %.lcssa, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* null) #6, !dbg !1626
  br label %if.end111

if.end111:                                        ; preds = %while.end, %if.then97
  %storemerge8 = phi i8* [ %call110, %while.end ], [ %25, %if.then97 ], !dbg !1627
  store i8* %storemerge8, i8** @data_type, align 8, !dbg !1627
  %call112 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* %storemerge8, i8* null) #6, !dbg !1628
  store i8* %call112, i8** @data_type, align 8, !dbg !1629
  br label %if.end225, !dbg !1630

sw.bb113:                                         ; preds = %if.else
  br i1 %tobool, label %if.else123, label %if.then117, !dbg !1631

if.then117:                                       ; preds = %sw.bb113
  %str122 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1632
  %30 = bitcast i32* %str122 to i8**, !dbg !1632
  %31 = load i8*, i8** %30, align 8, !dbg !1632
  br label %if.end136, !dbg !1634

if.else123:                                       ; preds = %sw.bb113
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** @data_type, align 8, !dbg !1635
  %values125 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1637
  %32 = bitcast i32* %values125 to %union.tree_node**, !dbg !1637
  %33 = load %union.tree_node*, %union.tree_node** %32, align 8, !dbg !1637
  call void @llvm.dbg.value(metadata %union.tree_node* %33, metadata !1525, metadata !DIExpression()), !dbg !1537
  br label %while.cond126, !dbg !1638

while.cond126:                                    ; preds = %while.body128, %if.else123
  %34 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %if.else123 ], [ %call133, %while.body128 ], !dbg !1639
  %chain_p.1 = phi %union.tree_node* [ %33, %if.else123 ], [ %35, %while.body128 ], !dbg !1639
  call void @llvm.dbg.value(metadata %union.tree_node* %chain_p.1, metadata !1525, metadata !DIExpression()), !dbg !1537
  %tobool127 = icmp eq %union.tree_node* %chain_p.1, null, !dbg !1638
  br i1 %tobool127, label %while.end134, label %while.body128, !dbg !1638

while.body128:                                    ; preds = %while.cond126
  %call129 = tail call fastcc i8* @gen_decl(%union.tree_node* nonnull %chain_p.1, i32 0, i32 0) #8, !dbg !1640
  %call130 = tail call i8* (i8*, ...) @concat(i8* %34, i8* %call129, i8* null) #6, !dbg !1642
  store i8* %call130, i8** @data_type, align 8, !dbg !1643
  %chain132 = getelementptr inbounds %union.tree_node, %union.tree_node* %chain_p.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1644
  %35 = load %union.tree_node*, %union.tree_node** %chain132, align 8, !dbg !1644
  call void @llvm.dbg.value(metadata %union.tree_node* %35, metadata !1525, metadata !DIExpression()), !dbg !1537
  %call133 = tail call i8* (i8*, ...) @concat(i8* %call130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* null) #6, !dbg !1645
  store i8* %call133, i8** @data_type, align 8, !dbg !1646
  br label %while.cond126, !dbg !1638, !llvm.loop !1647

while.end134:                                     ; preds = %while.cond126
  %.lcssa21 = phi i8* [ %34, %while.cond126 ], !dbg !1639
  %call135 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %.lcssa21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* null) #6, !dbg !1649
  br label %if.end136

if.end136:                                        ; preds = %while.end134, %if.then117
  %storemerge7 = phi i8* [ %call135, %while.end134 ], [ %31, %if.then117 ], !dbg !1650
  store i8* %storemerge7, i8** @data_type, align 8, !dbg !1650
  %call137 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %storemerge7, i8* null) #6, !dbg !1651
  store i8* %call137, i8** @data_type, align 8, !dbg !1652
  br label %if.end225, !dbg !1653

sw.bb138:                                         ; preds = %if.else
  br i1 %tobool, label %if.else148, label %if.then142, !dbg !1654

if.then142:                                       ; preds = %sw.bb138
  %str147 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1655
  %36 = bitcast i32* %str147 to i8**, !dbg !1655
  %37 = load i8*, i8** %36, align 8, !dbg !1655
  br label %if.end166, !dbg !1657

if.else148:                                       ; preds = %sw.bb138
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** @data_type, align 8, !dbg !1658
  %values150 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1660
  %38 = bitcast i32* %values150 to %union.tree_node**, !dbg !1660
  %39 = load %union.tree_node*, %union.tree_node** %38, align 8, !dbg !1660
  call void @llvm.dbg.value(metadata %union.tree_node* %39, metadata !1525, metadata !DIExpression()), !dbg !1537
  br label %while.cond151, !dbg !1661

while.cond151:                                    ; preds = %if.end163, %if.else148
  %40 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %if.else148 ], [ %45, %if.end163 ], !dbg !1662
  %chain_p.2 = phi %union.tree_node* [ %39, %if.else148 ], [ %44, %if.end163 ], !dbg !1662
  call void @llvm.dbg.value(metadata %union.tree_node* %chain_p.2, metadata !1525, metadata !DIExpression()), !dbg !1537
  %tobool152 = icmp eq %union.tree_node* %chain_p.2, null, !dbg !1661
  br i1 %tobool152, label %while.end164, label %while.body153, !dbg !1661

while.body153:                                    ; preds = %while.cond151
  %purpose = getelementptr inbounds %union.tree_node, %union.tree_node* %chain_p.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1663
  %41 = bitcast i32* %purpose to %struct.tree_identifier**, !dbg !1663
  %42 = load %struct.tree_identifier*, %struct.tree_identifier** %41, align 8, !dbg !1663
  %str156 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %42, i64 0, i32 1, i32 0, !dbg !1663
  %43 = load i8*, i8** %str156, align 8, !dbg !1663
  %call157 = tail call i8* (i8*, ...) @concat(i8* %40, i8* %43, i8* null) #6, !dbg !1665
  store i8* %call157, i8** @data_type, align 8, !dbg !1666
  %chain159 = getelementptr inbounds %union.tree_node, %union.tree_node* %chain_p.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1667
  %44 = load %union.tree_node*, %union.tree_node** %chain159, align 8, !dbg !1667
  call void @llvm.dbg.value(metadata %union.tree_node* %44, metadata !1525, metadata !DIExpression()), !dbg !1537
  %tobool160 = icmp eq %union.tree_node* %44, null, !dbg !1668
  br i1 %tobool160, label %if.end163, label %if.then161, !dbg !1670

if.then161:                                       ; preds = %while.body153
  %call162 = tail call i8* (i8*, ...) @concat(i8* %call157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* null) #6, !dbg !1671
  store i8* %call162, i8** @data_type, align 8, !dbg !1672
  br label %if.end163, !dbg !1673

if.end163:                                        ; preds = %while.body153, %if.then161
  %45 = phi i8* [ %call157, %while.body153 ], [ %call162, %if.then161 ]
  br label %while.cond151, !dbg !1661, !llvm.loop !1674

while.end164:                                     ; preds = %while.cond151
  %.lcssa22 = phi i8* [ %40, %while.cond151 ], !dbg !1662
  %call165 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %.lcssa22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* null) #6, !dbg !1676
  br label %if.end166

if.end166:                                        ; preds = %while.end164, %if.then142
  %storemerge = phi i8* [ %call165, %while.end164 ], [ %37, %if.then142 ], !dbg !1677
  store i8* %storemerge, i8** @data_type, align 8, !dbg !1677
  %call167 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* %storemerge, i8* null) #6, !dbg !1678
  store i8* %call167, i8** @data_type, align 8, !dbg !1679
  br label %if.end225, !dbg !1680

sw.bb168:                                         ; preds = %if.else
  %name170 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1681
  %46 = bitcast %union.tree_node** %name170 to %struct.tree_identifier**, !dbg !1681
  %47 = load %struct.tree_identifier*, %struct.tree_identifier** %46, align 8, !dbg !1681
  %str173 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %47, i64 0, i32 1, i32 0, !dbg !1681
  %48 = bitcast i8** %str173 to i64*, !dbg !1681
  %49 = load i64, i64* %48, align 8, !dbg !1681
  store i64 %49, i64* bitcast (i8** @data_type to i64*), align 8, !dbg !1682
  br label %if.end225, !dbg !1683

sw.bb174:                                         ; preds = %if.else, %if.else
  %name178 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1684
  %50 = bitcast %union.tree_node** %name178 to %struct.tree_identifier**, !dbg !1684
  %51 = load %struct.tree_identifier*, %struct.tree_identifier** %50, align 8, !dbg !1684
  %str181 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %51, i64 0, i32 1, i32 0, !dbg !1684
  %52 = bitcast i8** %str181 to i64*, !dbg !1684
  %53 = load i64, i64* %52, align 8, !dbg !1684
  store i64 %53, i64* bitcast (i8** @data_type to i64*), align 8, !dbg !1685
  %bf.load183 = load i64, i64* %7, align 8, !dbg !1686
  %bf.cast1863 = and i64 %bf.load183, 2097152, !dbg !1686
  %tobool187 = icmp eq i64 %bf.cast1863, 0, !dbg !1686
  %54 = inttoptr i64 %53 to i8*, !dbg !1688
  br i1 %tobool187, label %if.end225, label %land.lhs.true188, !dbg !1688

land.lhs.true188:                                 ; preds = %sw.bb174
  %bf.lshr191 = lshr i64 %bf.load183, 20, !dbg !1689
  %55 = trunc i64 %bf.lshr191 to i32, !dbg !1689
  %bf.cast193 = and i32 %55, 1, !dbg !1689
  %56 = lshr i64 %bf.load183, 18, !dbg !1689
  %57 = trunc i64 %56 to i32, !dbg !1689
  %mul199 = and i32 %57, 2, !dbg !1689
  %or = or i32 %bf.cast193, %mul199, !dbg !1689
  %type200 = bitcast %union.tree_node* %t to %struct.tree_type*, !dbg !1689
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type200, i64 0, i32 6, !dbg !1689
  %bf.load201 = load i32, i32* %restrict_flag, align 4, !dbg !1689
  %58 = lshr i32 %bf.load201, 11, !dbg !1689
  %mul204 = and i32 %58, 4, !dbg !1689
  %or205 = or i32 %or, %mul204, !dbg !1689
  %59 = lshr i64 %bf.load183, 48, !dbg !1689
  %60 = trunc i64 %59 to i32, !dbg !1689
  %shl = and i32 %60, 65280, !dbg !1689
  %or210 = or i32 %or205, %shl, !dbg !1689
  %tobool211 = icmp eq i32 %or210, 0, !dbg !1689
  br i1 %tobool211, label %if.end225, label %if.then212, !dbg !1690

if.then212:                                       ; preds = %land.lhs.true188
  %call213 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* %54, i8* null) #6, !dbg !1691
  store i8* %call213, i8** @data_type, align 8, !dbg !1692
  br label %if.end225, !dbg !1693

sw.bb215:                                         ; preds = %if.else
  %name219 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1694
  %61 = bitcast %union.tree_node** %name219 to %struct.tree_identifier**, !dbg !1694
  %62 = load %struct.tree_identifier*, %struct.tree_identifier** %61, align 8, !dbg !1694
  %str222 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %62, i64 0, i32 1, i32 0, !dbg !1694
  %63 = bitcast i8** %str222 to i64*, !dbg !1694
  %64 = load i64, i64* %63, align 8, !dbg !1694
  store i64 %64, i64* bitcast (i8** @data_type to i64*), align 8, !dbg !1695
  br label %if.end225, !dbg !1696

sw.bb223:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** @data_type, align 8, !dbg !1697
  br label %if.end225, !dbg !1698

sw.bb224:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** @data_type, align 8, !dbg !1699
  br label %if.end225, !dbg !1700

sw.default:                                       ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32 450, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !1701
  br label %if.end225, !dbg !1702

if.end225:                                        ; preds = %land.lhs.true188, %sw.bb174, %sw.bb83, %sw.bb89, %if.end111, %if.end136, %if.end166, %sw.bb168, %sw.bb215, %sw.bb223, %sw.bb224, %sw.default, %if.then64, %if.else69, %if.then56, %if.then212, %if.then
  %ret_val.addr.6 = phi i8* [ %ret_val, %if.then ], [ %ret_val, %sw.default ], [ %ret_val, %sw.bb224 ], [ %ret_val, %sw.bb223 ], [ %ret_val, %sw.bb215 ], [ %ret_val, %sw.bb168 ], [ %ret_val, %if.end166 ], [ %ret_val, %if.end136 ], [ %ret_val, %if.end111 ], [ %ret_val, %sw.bb89 ], [ %call88, %sw.bb83 ], [ %call60, %if.then56 ], [ %call68, %if.then64 ], [ %call80, %if.else69 ], [ %ret_val, %if.then212 ], [ %ret_val, %land.lhs.true188 ], [ %ret_val, %sw.bb174 ]
  call void @llvm.dbg.value(metadata i8* %ret_val.addr.6, metadata !1522, metadata !DIExpression()), !dbg !1537
  %65 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1703
  %bf.load227 = load i64, i64* %65, align 8, !dbg !1703
  %bf.cast2301 = and i64 %bf.load227, 1048576, !dbg !1703
  %tobool231 = icmp eq i64 %bf.cast2301, 0, !dbg !1703
  br i1 %tobool231, label %if.end234, label %if.then232, !dbg !1705

if.then232:                                       ; preds = %if.end225
  %call233 = call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %ret_val.addr.6, i8* null) #6, !dbg !1706
  call void @llvm.dbg.value(metadata i8* %call233, metadata !1522, metadata !DIExpression()), !dbg !1537
  %bf.load236.pre = load i64, i64* %65, align 8, !dbg !1707
  br label %if.end234, !dbg !1709

if.end234:                                        ; preds = %if.end225, %if.then232
  %bf.load236 = phi i64 [ %bf.load236.pre, %if.then232 ], [ %bf.load227, %if.end225 ], !dbg !1707
  %ret_val.addr.7 = phi i8* [ %call233, %if.then232 ], [ %ret_val.addr.6, %if.end225 ]
  call void @llvm.dbg.value(metadata i8* %ret_val.addr.7, metadata !1522, metadata !DIExpression()), !dbg !1537
  %bf.cast2392 = and i64 %bf.load236, 524288, !dbg !1707
  %tobool240 = icmp eq i64 %bf.cast2392, 0, !dbg !1707
  br i1 %tobool240, label %if.end243, label %if.then241, !dbg !1710

if.then241:                                       ; preds = %if.end234
  %call242 = call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %ret_val.addr.7, i8* null) #6, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %call242, metadata !1522, metadata !DIExpression()), !dbg !1537
  br label %if.end243, !dbg !1712

if.end243:                                        ; preds = %if.end234, %if.then241
  %ret_val.addr.8 = phi i8* [ %call242, %if.then241 ], [ %ret_val.addr.7, %if.end234 ], !dbg !1537
  call void @llvm.dbg.value(metadata i8* %ret_val.addr.8, metadata !1522, metadata !DIExpression()), !dbg !1537
  %type244 = bitcast %union.tree_node* %t to %struct.tree_type*, !dbg !1713
  %restrict_flag245 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type244, i64 0, i32 6, !dbg !1713
  %bf.load246 = load i32, i32* %restrict_flag245, align 4, !dbg !1713
  %bf.clear248 = and i32 %bf.load246, 8192, !dbg !1713
  %tobool249 = icmp eq i32 %bf.clear248, 0, !dbg !1713
  br i1 %tobool249, label %cleanup, label %if.then250, !dbg !1715

if.then250:                                       ; preds = %if.end243
  %call251 = call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* %ret_val.addr.8, i8* null) #6, !dbg !1716
  call void @llvm.dbg.value(metadata i8* %call251, metadata !1522, metadata !DIExpression()), !dbg !1537
  br label %cleanup, !dbg !1717

cleanup:                                          ; preds = %if.end243, %if.then250, %if.end41
  %retval.0 = phi i8* [ %call44, %if.end41 ], [ %call251, %if.then250 ], [ %ret_val.addr.8, %if.end243 ], !dbg !1537
  ret i8* %retval.0, !dbg !1718
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @affix_data_type(i8* %param) unnamed_addr #5 !dbg !1719 {
entry:
  call void @llvm.dbg.value(metadata i8* %param, metadata !1723, metadata !DIExpression()), !dbg !1729
  store i8* %param, i8** @libiberty_optr, align 8, !dbg !1730
  %call = tail call i64 @strlen(i8* %param) #6, !dbg !1730
  %add = add i64 %call, 1, !dbg !1730
  store i64 %add, i64* @libiberty_len, align 8, !dbg !1730
  %0 = alloca i8, i64 %add, align 16, !dbg !1730
  store i8* %0, i8** @libiberty_nptr, align 8, !dbg !1730
  %1 = load i8*, i8** @libiberty_optr, align 8, !dbg !1730
  %call1 = call i8* @memcpy(i8* nonnull %0, i8* %1, i64 %add) #6, !dbg !1730
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1724, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1726, metadata !DIExpression()), !dbg !1729
  br label %for.cond, !dbg !1731

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %p.0 = phi i8* [ %call1, %entry ], [ %p.0.be, %for.cond.backedge ], !dbg !1729
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1726, metadata !DIExpression()), !dbg !1729
  %call2 = call i32 @strncmp(i8* %p.0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 9) #6, !dbg !1732
  %tobool = icmp eq i32 %call2, 0, !dbg !1732
  br i1 %tobool, label %if.then, label %if.end, !dbg !1737

if.then:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 9, !dbg !1738
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1726, metadata !DIExpression()), !dbg !1729
  br label %for.cond.backedge, !dbg !1740

for.cond.backedge:                                ; preds = %if.then, %if.then5
  %p.0.be = phi i8* [ %add.ptr6, %if.then5 ], [ %add.ptr, %if.then ]
  br label %for.cond, !dbg !1729, !llvm.loop !1741

if.end:                                           ; preds = %for.cond
  %call3 = call i32 @strncmp(i8* %p.0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 6) #6, !dbg !1744
  %tobool4 = icmp eq i32 %call3, 0, !dbg !1744
  br i1 %tobool4, label %if.then5, label %for.end, !dbg !1746

if.then5:                                         ; preds = %if.end
  %add.ptr6 = getelementptr inbounds i8, i8* %p.0, i64 6, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %add.ptr6, metadata !1726, metadata !DIExpression()), !dbg !1729
  br label %for.cond.backedge, !dbg !1749

for.end:                                          ; preds = %if.end
  %p.0.lcssa = phi i8* [ %p.0, %if.end ], !dbg !1729
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1726, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1726, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1726, metadata !DIExpression()), !dbg !1729
  %cmp = icmp eq i8* %p.0.lcssa, %call1, !dbg !1750
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !1752

if.then8:                                         ; preds = %for.end
  %2 = load i8*, i8** @data_type, align 8, !dbg !1753
  %call9 = call i8* (i8*, ...) @concat(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* %call1, i8* null) #6, !dbg !1754
  br label %cleanup, !dbg !1755

if.end10:                                         ; preds = %for.end
  %3 = load i8, i8* %p.0.lcssa, align 1, !dbg !1756
  call void @llvm.dbg.value(metadata i8 %3, metadata !1728, metadata !DIExpression()), !dbg !1729
  store i8 0, i8* %p.0.lcssa, align 1, !dbg !1757
  %4 = load i8*, i8** @data_type, align 8, !dbg !1758
  %call11 = call i8* (i8*, ...) @concat(i8* %call1, i8* %4, i8* null) #6, !dbg !1759
  call void @llvm.dbg.value(metadata i8* %call11, metadata !1727, metadata !DIExpression()), !dbg !1729
  store i8 %3, i8* %p.0.lcssa, align 1, !dbg !1760
  %call12 = call i8* (i8*, i8*, ...) @reconcat(i8* %call11, i8* %call11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* %p.0.lcssa, i8* null) #6, !dbg !1761
  br label %cleanup, !dbg !1762

cleanup:                                          ; preds = %if.end10, %if.then8
  %retval.0 = phi i8* [ %call9, %if.then8 ], [ %call12, %if.end10 ], !dbg !1729
  ret i8* %retval.0, !dbg !1763
}

declare dso_local i64 @int_size_in_bytes(%union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i8* @gen_formal_list_for_type(%union.tree_node* %fntype, i32 %style) unnamed_addr #5 !dbg !1764 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fntype, metadata !1766, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i32 %style, metadata !1767, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), metadata !1768, metadata !DIExpression()), !dbg !1772
  %cmp = icmp eq i32 %style, 0, !dbg !1773
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1775

if.end:                                           ; preds = %entry
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %fntype, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1776
  %0 = bitcast i32* %values to %union.tree_node**, !dbg !1776
  br label %while.cond, !dbg !1777

while.cond:                                       ; preds = %cond.end, %if.end
  %formal_list.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %if.end ], [ %cond, %cond.end ], !dbg !1772
  %formal_type.0.in = phi %union.tree_node** [ %0, %if.end ], [ %chain, %cond.end ]
  %formal_type.0 = load %union.tree_node*, %union.tree_node** %formal_type.0.in, align 8, !dbg !1772
  call void @llvm.dbg.value(metadata %union.tree_node* %formal_type.0, metadata !1769, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* %formal_list.0, metadata !1768, metadata !DIExpression()), !dbg !1772
  %tobool = icmp eq %union.tree_node* %formal_type.0, null, !dbg !1778
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !1779

land.rhs:                                         ; preds = %while.cond
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %formal_type.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1780
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8, !dbg !1780
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !1781
  %cmp1 = icmp ne %union.tree_node* %2, %3, !dbg !1782
  br label %land.end

land.end:                                         ; preds = %while.cond, %land.rhs
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !1772
  %5 = load i8, i8* %formal_list.0, align 1, !dbg !1772
  %tobool2 = icmp ne i8 %5, 0, !dbg !1772
  br i1 %4, label %while.body, label %while.end, !dbg !1777

while.body:                                       ; preds = %land.end
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1783

if.then3:                                         ; preds = %while.body
  %call = tail call i8* (i8*, ...) @concat(i8* %formal_list.0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* null) #6, !dbg !1784
  call void @llvm.dbg.value(metadata i8* %call, metadata !1768, metadata !DIExpression()), !dbg !1772
  br label %if.end4, !dbg !1786

if.end4:                                          ; preds = %if.then3, %while.body
  %formal_list.1 = phi i8* [ %call, %if.then3 ], [ %formal_list.0, %while.body ], !dbg !1772
  call void @llvm.dbg.value(metadata i8* %formal_list.1, metadata !1768, metadata !DIExpression()), !dbg !1772
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %formal_type.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1787
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !1787
  %call7 = tail call fastcc i8* @gen_type(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %union.tree_node* %7, i32 0) #8, !dbg !1788
  call void @llvm.dbg.value(metadata i8* %call7, metadata !1770, metadata !DIExpression()), !dbg !1789
  %call8 = tail call i64 @strlen(i8* %call7) #6, !dbg !1790
  %tobool9 = icmp eq i64 %call8, 0, !dbg !1790
  br i1 %tobool9, label %cond.false, label %cond.true, !dbg !1791

cond.true:                                        ; preds = %if.end4
  %call10 = tail call fastcc i8* @affix_data_type(i8* %call7) #8, !dbg !1792
  %call11 = tail call i8* (i8*, ...) @concat(i8* %formal_list.1, i8* %call10, i8* null) #6, !dbg !1793
  br label %cond.end, !dbg !1791

cond.false:                                       ; preds = %if.end4
  %8 = load i8*, i8** @data_type, align 8, !dbg !1794
  %call12 = tail call i8* (i8*, ...) @concat(i8* %formal_list.1, i8* %8, i8* null) #6, !dbg !1795
  br label %cond.end, !dbg !1791

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call11, %cond.true ], [ %call12, %cond.false ], !dbg !1791
  call void @llvm.dbg.value(metadata i8* %cond, metadata !1768, metadata !DIExpression()), !dbg !1772
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %formal_type.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1796
  br label %while.cond, !dbg !1777, !llvm.loop !1797

while.end:                                        ; preds = %land.end
  %tobool2.lcssa = phi i1 [ %tobool2, %land.end ], !dbg !1772
  %formal_list.0.lcssa = phi i8* [ %formal_list.0, %land.end ], !dbg !1772
  %tobool.lcssa = phi i1 [ %tobool, %land.end ], !dbg !1778
  call void @llvm.dbg.value(metadata i8* %formal_list.0.lcssa, metadata !1768, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* %formal_list.0.lcssa, metadata !1768, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8* %formal_list.0.lcssa, metadata !1768, metadata !DIExpression()), !dbg !1772
  br i1 %tobool2.lcssa, label %if.else20, label %if.then14, !dbg !1799

if.then14:                                        ; preds = %while.end
  %9 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !1800
  %tobool17 = icmp eq %union.tree_node* %9, null, !dbg !1800
  %. = select i1 %tobool17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)
  call void @llvm.dbg.value(metadata i8* %., metadata !1768, metadata !DIExpression()), !dbg !1772
  br label %if.end25, !dbg !1804

if.else20:                                        ; preds = %while.end
  br i1 %tobool.lcssa, label %if.then22, label %if.end25, !dbg !1805

if.then22:                                        ; preds = %if.else20
  %call23 = tail call i8* (i8*, ...) @concat(i8* %formal_list.0.lcssa, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* null) #6, !dbg !1807
  call void @llvm.dbg.value(metadata i8* %call23, metadata !1768, metadata !DIExpression()), !dbg !1772
  br label %if.end25, !dbg !1809

if.end25:                                         ; preds = %if.else20, %if.then22, %if.then14
  %formal_list.4 = phi i8* [ %., %if.then14 ], [ %formal_list.0.lcssa, %if.else20 ], [ %call23, %if.then22 ], !dbg !1772
  call void @llvm.dbg.value(metadata i8* %formal_list.4, metadata !1768, metadata !DIExpression()), !dbg !1772
  %call26 = tail call i8* (i8*, ...) @concat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* %formal_list.4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* null) #6, !dbg !1810
  br label %cleanup, !dbg !1811

cleanup:                                          ; preds = %entry, %if.end25
  %retval.0 = phi i8* [ %call26, %if.end25 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), %entry ], !dbg !1772
  ret i8* %retval.0, !dbg !1812
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i8* @reconcat(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @deserves_ellipsis(%union.tree_node* %fntype) unnamed_addr #5 !dbg !1813 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fntype, metadata !1817, metadata !DIExpression()), !dbg !1819
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %fntype, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1820
  %0 = bitcast i32* %values to %union.tree_node**, !dbg !1820
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !1819
  br label %while.cond, !dbg !1821

while.cond:                                       ; preds = %while.body, %entry
  %formal_type.0.in = phi %union.tree_node** [ %0, %entry ], [ %chain, %while.body ]
  %formal_type.0 = load %union.tree_node*, %union.tree_node** %formal_type.0.in, align 8, !dbg !1819
  call void @llvm.dbg.value(metadata %union.tree_node* %formal_type.0, metadata !1818, metadata !DIExpression()), !dbg !1819
  %cond = icmp eq %union.tree_node* %formal_type.0, null, !dbg !1822
  br i1 %cond, label %land.rhs2.loopexit, label %land.rhs, !dbg !1822

land.rhs:                                         ; preds = %while.cond
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %formal_type.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1823
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !1823
  %cmp = icmp eq %union.tree_node* %3, %1, !dbg !1824
  br i1 %cmp, label %while.end, label %while.body, !dbg !1821

while.body:                                       ; preds = %land.rhs
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %formal_type.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1825
  br label %while.cond, !dbg !1821, !llvm.loop !1826

while.end:                                        ; preds = %land.rhs
  br label %land.end6, !dbg !1827

land.rhs2.loopexit:                               ; preds = %while.cond
  %4 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !1828
  %tobool5 = icmp ne %union.tree_node* %4, null, !dbg !1827
  %phitmp = zext i1 %tobool5 to i32
  br label %land.end6

land.end6:                                        ; preds = %while.end, %land.rhs2.loopexit
  %5 = phi i32 [ 0, %while.end ], [ %phitmp, %land.rhs2.loopexit ]
  ret i32 %5, !dbg !1829
}

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

!llvm.dbg.cu = !{!879}
!llvm.module.flags = !{!909, !910, !911}
!llvm.ident = !{!912}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "compiled_from_record", scope: !2, file: !3, line: 556, type: !89, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "gen_aux_info_record", scope: !3, file: !3, line: 551, type: !4, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !894)
!3 = !DIFile(filename: "c-aux-info.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !89, !89, !89}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !7, line: 56, baseType: !8)
!7 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !10, line: 3371, size: 1792, elements: !11)
!10 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!11 = !{!12, !46, !52, !65, !72, !79, !84, !95, !101, !115, !127, !165, !173, !201, !209, !210, !215, !224, !230, !235, !239, !243, !272, !323, !329, !336, !343, !369, !394, !411, !423, !445, !689, !861}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !9, file: !10, line: 3372, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !10, line: 360, size: 64, elements: !14)
!14 = !{!15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !13, file: !10, line: 361, baseType: !16, size: 16, flags: DIFlagBitField, extraData: i64 0)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !13, file: !10, line: 363, baseType: !16, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !13, file: !10, line: 364, baseType: !16, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !13, file: !10, line: 365, baseType: !16, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !13, file: !10, line: 366, baseType: !16, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !13, file: !10, line: 367, baseType: !16, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !13, file: !10, line: 368, baseType: !16, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !13, file: !10, line: 369, baseType: !16, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !13, file: !10, line: 370, baseType: !16, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !13, file: !10, line: 372, baseType: !16, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !13, file: !10, line: 373, baseType: !16, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !13, file: !10, line: 374, baseType: !16, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !13, file: !10, line: 375, baseType: !16, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !13, file: !10, line: 376, baseType: !16, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !13, file: !10, line: 377, baseType: !16, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !13, file: !10, line: 378, baseType: !16, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !13, file: !10, line: 379, baseType: !16, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !13, file: !10, line: 381, baseType: !16, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !13, file: !10, line: 382, baseType: !16, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !13, file: !10, line: 383, baseType: !16, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !13, file: !10, line: 384, baseType: !16, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !13, file: !10, line: 385, baseType: !16, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !13, file: !10, line: 386, baseType: !16, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !13, file: !10, line: 387, baseType: !16, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !13, file: !10, line: 388, baseType: !16, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !13, file: !10, line: 390, baseType: !16, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !13, file: !10, line: 391, baseType: !16, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !13, file: !10, line: 392, baseType: !16, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !13, file: !10, line: 394, baseType: !16, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !13, file: !10, line: 399, baseType: !16, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !9, file: !10, line: 3373, baseType: !47, size: 192)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !10, line: 402, size: 192, elements: !48)
!48 = !{!49, !50, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !47, file: !10, line: 403, baseType: !13, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !47, file: !10, line: 404, baseType: !6, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !10, line: 405, baseType: !6, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !9, file: !10, line: 3374, baseType: !53, size: 320)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !10, line: 1384, size: 320, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !53, file: !10, line: 1385, baseType: !47, size: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !53, file: !10, line: 1386, baseType: !57, size: 128, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !58, line: 58, baseType: !59)
!58 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 54, size: 128, elements: !60)
!60 = !{!61, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !59, file: !58, line: 56, baseType: !62, size: 64)
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !59, file: !58, line: 57, baseType: !64, size: 64, offset: 64)
!64 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !9, file: !10, line: 3375, baseType: !66, size: 256)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !10, line: 1397, size: 256, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !66, file: !10, line: 1398, baseType: !47, size: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !66, file: !10, line: 1399, baseType: !70, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !10, line: 1392, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !9, file: !10, line: 3376, baseType: !73, size: 256)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !10, line: 1408, size: 256, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !73, file: !10, line: 1409, baseType: !47, size: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !73, file: !10, line: 1410, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !10, line: 1403, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !9, file: !10, line: 3377, baseType: !80, size: 256)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !10, line: 1437, size: 256, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !80, file: !10, line: 1438, baseType: !47, size: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !80, file: !10, line: 1439, baseType: !6, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !9, file: !10, line: 3378, baseType: !85, size: 256)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !10, line: 1418, size: 256, elements: !86)
!86 = !{!87, !88, !90}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !85, file: !10, line: 1419, baseType: !47, size: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !85, file: !10, line: 1420, baseType: !89, size: 32, offset: 192)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !85, file: !10, line: 1421, baseType: !91, size: 8, offset: 224)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 8, elements: !93)
!92 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !9, file: !10, line: 3379, baseType: !96, size: 320)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !10, line: 1428, size: 320, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !96, file: !10, line: 1429, baseType: !47, size: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !96, file: !10, line: 1430, baseType: !6, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !96, file: !10, line: 1431, baseType: !6, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !9, file: !10, line: 3380, baseType: !102, size: 320)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !10, line: 1460, size: 320, elements: !103)
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !102, file: !10, line: 1461, baseType: !47, size: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !102, file: !10, line: 1462, baseType: !106, size: 128, offset: 192)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !107, line: 31, size: 128, elements: !108)
!107 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!108 = !{!109, !113, !114}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !106, file: !107, line: 32, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !106, file: !107, line: 33, baseType: !16, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !106, file: !107, line: 34, baseType: !16, size: 32, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !9, file: !10, line: 3381, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !10, line: 2507, size: 384, elements: !117)
!117 = !{!118, !119, !124, !125, !126}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !116, file: !10, line: 2508, baseType: !47, size: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !116, file: !10, line: 2509, baseType: !120, size: 32, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !121, line: 58, baseType: !122)
!121 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !123, line: 44, baseType: !16)
!123 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !116, file: !10, line: 2510, baseType: !16, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !10, line: 2511, baseType: !6, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !116, file: !10, line: 2512, baseType: !6, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !9, file: !10, line: 3382, baseType: !128, size: 896)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !10, line: 2652, size: 896, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !128, file: !10, line: 2653, baseType: !116, size: 384)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !128, file: !10, line: 2654, baseType: !6, size: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !128, file: !10, line: 2656, baseType: !16, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !128, file: !10, line: 2658, baseType: !16, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !128, file: !10, line: 2659, baseType: !16, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !128, file: !10, line: 2660, baseType: !16, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !128, file: !10, line: 2661, baseType: !16, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !128, file: !10, line: 2662, baseType: !16, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !128, file: !10, line: 2663, baseType: !16, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !128, file: !10, line: 2664, baseType: !16, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !128, file: !10, line: 2666, baseType: !16, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !128, file: !10, line: 2667, baseType: !16, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !128, file: !10, line: 2668, baseType: !16, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !128, file: !10, line: 2669, baseType: !16, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !128, file: !10, line: 2670, baseType: !16, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !128, file: !10, line: 2671, baseType: !16, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !128, file: !10, line: 2672, baseType: !16, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !128, file: !10, line: 2673, baseType: !16, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !128, file: !10, line: 2674, baseType: !16, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !128, file: !10, line: 2678, baseType: !16, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !128, file: !10, line: 2682, baseType: !16, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !128, file: !10, line: 2685, baseType: !16, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !128, file: !10, line: 2688, baseType: !16, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !128, file: !10, line: 2690, baseType: !16, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !128, file: !10, line: 2692, baseType: !16, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !128, file: !10, line: 2695, baseType: !16, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !128, file: !10, line: 2698, baseType: !16, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !128, file: !10, line: 2703, baseType: !16, size: 32, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !128, file: !10, line: 2705, baseType: !6, size: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !128, file: !10, line: 2706, baseType: !6, size: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !128, file: !10, line: 2707, baseType: !6, size: 64, offset: 704)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !128, file: !10, line: 2708, baseType: !6, size: 64, offset: 768)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !128, file: !10, line: 2711, baseType: !163, size: 64, offset: 832)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !10, line: 2711, flags: DIFlagFwdDecl)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !9, file: !10, line: 3383, baseType: !166, size: 960)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !10, line: 2756, size: 960, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !166, file: !10, line: 2757, baseType: !128, size: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !166, file: !10, line: 2758, baseType: !170, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !7, line: 50, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !7, line: 49, flags: DIFlagFwdDecl)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !9, file: !10, line: 3384, baseType: !174, size: 1472)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !10, line: 3114, size: 1472, elements: !175)
!175 = !{!176, !197, !198, !199, !200}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !174, file: !10, line: 3115, baseType: !177, size: 1216)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !10, line: 2984, size: 1216, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !177, file: !10, line: 2985, baseType: !166, size: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !177, file: !10, line: 2986, baseType: !6, size: 64, offset: 960)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !177, file: !10, line: 2987, baseType: !6, size: 64, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !177, file: !10, line: 2988, baseType: !6, size: 64, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !177, file: !10, line: 2991, baseType: !16, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !177, file: !10, line: 2992, baseType: !16, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !177, file: !10, line: 2993, baseType: !16, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !177, file: !10, line: 2994, baseType: !16, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !177, file: !10, line: 2995, baseType: !16, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !177, file: !10, line: 2996, baseType: !16, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !177, file: !10, line: 2998, baseType: !16, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !177, file: !10, line: 3000, baseType: !16, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !177, file: !10, line: 3002, baseType: !16, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !177, file: !10, line: 3003, baseType: !16, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !177, file: !10, line: 3004, baseType: !16, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !177, file: !10, line: 3005, baseType: !16, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !177, file: !10, line: 3007, baseType: !16, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !177, file: !10, line: 3010, baseType: !16, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !174, file: !10, line: 3117, baseType: !6, size: 64, offset: 1216)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !174, file: !10, line: 3119, baseType: !6, size: 64, offset: 1280)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !174, file: !10, line: 3121, baseType: !6, size: 64, offset: 1344)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !174, file: !10, line: 3123, baseType: !6, size: 64, offset: 1408)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !9, file: !10, line: 3385, baseType: !202, size: 1088)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !10, line: 2874, size: 1088, elements: !203)
!203 = !{!204, !205, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !202, file: !10, line: 2875, baseType: !166, size: 960)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !202, file: !10, line: 2876, baseType: !170, size: 64, offset: 960)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !202, file: !10, line: 2877, baseType: !207, size: 64, offset: 1024)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !10, line: 2856, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !9, file: !10, line: 3386, baseType: !177, size: 1216)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !9, file: !10, line: 3387, baseType: !211, size: 1280)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !10, line: 3093, size: 1280, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !211, file: !10, line: 3094, baseType: !177, size: 1216)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !211, file: !10, line: 3095, baseType: !207, size: 64, offset: 1216)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !9, file: !10, line: 3388, baseType: !216, size: 1216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !10, line: 2824, size: 1216, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !216, file: !10, line: 2825, baseType: !128, size: 896)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !216, file: !10, line: 2827, baseType: !6, size: 64, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !216, file: !10, line: 2828, baseType: !6, size: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !216, file: !10, line: 2829, baseType: !6, size: 64, offset: 1024)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !216, file: !10, line: 2830, baseType: !6, size: 64, offset: 1088)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !216, file: !10, line: 2831, baseType: !6, size: 64, offset: 1152)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !9, file: !10, line: 3389, baseType: !225, size: 1024)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !10, line: 2850, size: 1024, elements: !226)
!226 = !{!227, !228, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !225, file: !10, line: 2851, baseType: !166, size: 960)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !225, file: !10, line: 2852, baseType: !89, size: 32, offset: 960)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !225, file: !10, line: 2853, baseType: !89, size: 32, offset: 992)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !9, file: !10, line: 3390, baseType: !231, size: 1024)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !10, line: 2857, size: 1024, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !231, file: !10, line: 2858, baseType: !166, size: 960)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !231, file: !10, line: 2859, baseType: !207, size: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !9, file: !10, line: 3391, baseType: !236, size: 960)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !10, line: 2862, size: 960, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !236, file: !10, line: 2863, baseType: !166, size: 960)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !9, file: !10, line: 3392, baseType: !240, size: 1472)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !10, line: 3304, size: 1472, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !240, file: !10, line: 3305, baseType: !174, size: 1472)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !9, file: !10, line: 3393, baseType: !244, size: 1792)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !10, line: 3248, size: 1792, elements: !245)
!245 = !{!246, !247, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !244, file: !10, line: 3249, baseType: !174, size: 1472)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !244, file: !10, line: 3251, baseType: !248, size: 64, offset: 1472)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !250, line: 41, flags: DIFlagFwdDecl)
!250 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!251 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !244, file: !10, line: 3254, baseType: !6, size: 64, offset: 1536)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !244, file: !10, line: 3257, baseType: !6, size: 64, offset: 1600)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !244, file: !10, line: 3258, baseType: !6, size: 64, offset: 1664)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !244, file: !10, line: 3264, baseType: !16, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !244, file: !10, line: 3265, baseType: !16, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !244, file: !10, line: 3267, baseType: !16, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !244, file: !10, line: 3268, baseType: !16, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !244, file: !10, line: 3269, baseType: !16, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !244, file: !10, line: 3271, baseType: !16, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !244, file: !10, line: 3272, baseType: !16, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !244, file: !10, line: 3273, baseType: !16, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !244, file: !10, line: 3274, baseType: !16, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !244, file: !10, line: 3275, baseType: !16, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !244, file: !10, line: 3276, baseType: !16, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !244, file: !10, line: 3277, baseType: !16, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !244, file: !10, line: 3279, baseType: !16, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !244, file: !10, line: 3280, baseType: !16, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !244, file: !10, line: 3281, baseType: !16, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !244, file: !10, line: 3282, baseType: !16, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !244, file: !10, line: 3283, baseType: !16, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !244, file: !10, line: 3284, baseType: !16, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !10, line: 3394, baseType: !273, size: 1344)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !10, line: 2279, size: 1344, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !300, !301, !302, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !273, file: !10, line: 2280, baseType: !47, size: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !273, file: !10, line: 2281, baseType: !6, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !273, file: !10, line: 2282, baseType: !6, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !273, file: !10, line: 2283, baseType: !6, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !273, file: !10, line: 2284, baseType: !6, size: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !273, file: !10, line: 2285, baseType: !16, size: 32, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !273, file: !10, line: 2287, baseType: !16, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !273, file: !10, line: 2288, baseType: !16, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !273, file: !10, line: 2289, baseType: !16, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !273, file: !10, line: 2290, baseType: !16, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !273, file: !10, line: 2291, baseType: !16, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !273, file: !10, line: 2292, baseType: !16, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !273, file: !10, line: 2294, baseType: !16, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !273, file: !10, line: 2296, baseType: !16, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !273, file: !10, line: 2297, baseType: !16, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !273, file: !10, line: 2298, baseType: !16, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !273, file: !10, line: 2299, baseType: !16, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !273, file: !10, line: 2300, baseType: !16, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !273, file: !10, line: 2301, baseType: !16, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !273, file: !10, line: 2302, baseType: !16, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !273, file: !10, line: 2303, baseType: !16, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !273, file: !10, line: 2305, baseType: !16, size: 32, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !273, file: !10, line: 2306, baseType: !298, size: 32, offset: 544)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !299, line: 31, baseType: !89)
!299 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !273, file: !10, line: 2307, baseType: !6, size: 64, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !273, file: !10, line: 2308, baseType: !6, size: 64, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !273, file: !10, line: 2314, baseType: !303, size: 64, offset: 704)
!303 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !10, line: 2309, size: 64, elements: !304)
!304 = !{!305, !306, !309}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !303, file: !10, line: 2310, baseType: !89, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !303, file: !10, line: 2311, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !303, file: !10, line: 2312, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !10, line: 2277, flags: DIFlagFwdDecl)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !273, file: !10, line: 2315, baseType: !6, size: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !273, file: !10, line: 2316, baseType: !6, size: 64, offset: 832)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !273, file: !10, line: 2317, baseType: !6, size: 64, offset: 896)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !273, file: !10, line: 2318, baseType: !6, size: 64, offset: 960)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !273, file: !10, line: 2319, baseType: !6, size: 64, offset: 1024)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !273, file: !10, line: 2320, baseType: !6, size: 64, offset: 1088)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !273, file: !10, line: 2321, baseType: !6, size: 64, offset: 1152)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !273, file: !10, line: 2322, baseType: !6, size: 64, offset: 1216)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !273, file: !10, line: 2324, baseType: !321, size: 64, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !10, line: 2324, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !9, file: !10, line: 3395, baseType: !324, size: 320)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !10, line: 1469, size: 320, elements: !325)
!325 = !{!326, !327, !328}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !324, file: !10, line: 1470, baseType: !47, size: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !324, file: !10, line: 1471, baseType: !6, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !324, file: !10, line: 1472, baseType: !6, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !9, file: !10, line: 3396, baseType: !330, size: 320)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !10, line: 1482, size: 320, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !330, file: !10, line: 1483, baseType: !47, size: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !330, file: !10, line: 1484, baseType: !89, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !330, file: !10, line: 1485, baseType: !335, size: 64, offset: 256)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !93)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !9, file: !10, line: 3397, baseType: !337, size: 384)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !10, line: 1829, size: 384, elements: !338)
!338 = !{!339, !340, !341, !342}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !337, file: !10, line: 1830, baseType: !47, size: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !337, file: !10, line: 1831, baseType: !120, size: 32, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !337, file: !10, line: 1832, baseType: !6, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !337, file: !10, line: 1835, baseType: !335, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !9, file: !10, line: 3398, baseType: !344, size: 704)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !10, line: 1898, size: 704, elements: !345)
!345 = !{!346, !347, !348, !352, !353, !356}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !344, file: !10, line: 1899, baseType: !47, size: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !344, file: !10, line: 1902, baseType: !6, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !344, file: !10, line: 1905, baseType: !349, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !7, line: 58, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !7, line: 57, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !344, file: !10, line: 1908, baseType: !16, size: 32, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !344, file: !10, line: 1911, baseType: !354, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !10, line: 1876, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !344, file: !10, line: 1914, baseType: !357, size: 256, offset: 448)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !10, line: 1883, size: 256, elements: !358)
!358 = !{!359, !361, !362, !367}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !357, file: !10, line: 1884, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !10, line: 1885, baseType: !360, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !357, file: !10, line: 1891, baseType: !363, size: 64, offset: 128)
!363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !10, line: 1891, size: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !363, file: !10, line: 1891, baseType: !349, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !363, file: !10, line: 1891, baseType: !6, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !357, file: !10, line: 1892, baseType: !368, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !9, file: !10, line: 3399, baseType: !370, size: 704)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !10, line: 2008, size: 704, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !389, !390, !391, !392, !393}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !370, file: !10, line: 2009, baseType: !47, size: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !370, file: !10, line: 2011, baseType: !16, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !370, file: !10, line: 2012, baseType: !16, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !370, file: !10, line: 2014, baseType: !120, size: 32, offset: 224)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !370, file: !10, line: 2016, baseType: !6, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !370, file: !10, line: 2017, baseType: !378, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !10, line: 183, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !10, line: 183, size: 128, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !380, file: !10, line: 183, baseType: !383, size: 128)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !10, line: 182, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !10, line: 182, size: 128, elements: !385)
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !384, file: !10, line: 182, baseType: !16, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !384, file: !10, line: 182, baseType: !16, size: 32, offset: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !384, file: !10, line: 182, baseType: !335, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !370, file: !10, line: 2019, baseType: !6, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !370, file: !10, line: 2020, baseType: !6, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !370, file: !10, line: 2021, baseType: !6, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !370, file: !10, line: 2022, baseType: !6, size: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !370, file: !10, line: 2023, baseType: !6, size: 64, offset: 640)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !9, file: !10, line: 3400, baseType: !395, size: 832)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !10, line: 2430, size: 832, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !395, file: !10, line: 2431, baseType: !47, size: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !395, file: !10, line: 2433, baseType: !6, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !395, file: !10, line: 2434, baseType: !6, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !395, file: !10, line: 2435, baseType: !6, size: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !395, file: !10, line: 2436, baseType: !6, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !395, file: !10, line: 2437, baseType: !378, size: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !395, file: !10, line: 2438, baseType: !6, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !395, file: !10, line: 2440, baseType: !6, size: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !395, file: !10, line: 2441, baseType: !6, size: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !395, file: !10, line: 2443, baseType: !407, size: 128, offset: 704)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !10, line: 182, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !10, line: 182, size: 128, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !408, file: !10, line: 182, baseType: !383, size: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !9, file: !10, line: 3401, baseType: !412, size: 320)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !10, line: 3327, size: 320, elements: !413)
!413 = !{!414, !415, !422}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !412, file: !10, line: 3329, baseType: !47, size: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !412, file: !10, line: 3330, baseType: !416, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !10, line: 3320, size: 192, elements: !418)
!418 = !{!419, !420, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !417, file: !10, line: 3322, baseType: !416, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !10, line: 3323, baseType: !416, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !417, file: !10, line: 3324, baseType: !6, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !412, file: !10, line: 3331, baseType: !416, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !9, file: !10, line: 3402, baseType: !424, size: 256)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !10, line: 1540, size: 256, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !424, file: !10, line: 1541, baseType: !47, size: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !424, file: !10, line: 1542, baseType: !428, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !10, line: 1538, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !10, line: 1538, size: 192, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !430, file: !10, line: 1538, baseType: !433, size: 192)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !10, line: 1537, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !10, line: 1537, size: 192, elements: !435)
!435 = !{!436, !437, !438}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !434, file: !10, line: 1537, baseType: !16, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !434, file: !10, line: 1537, baseType: !16, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !434, file: !10, line: 1537, baseType: !439, size: 128, offset: 64)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 128, elements: !93)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !10, line: 1535, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !10, line: 1532, size: 128, elements: !442)
!442 = !{!443, !444}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !441, file: !10, line: 1533, baseType: !6, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !441, file: !10, line: 1534, baseType: !6, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !9, file: !10, line: 3403, baseType: !446, size: 512)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !10, line: 1938, size: 512, elements: !447)
!447 = !{!448, !449, !450, !469, !683, !687, !688}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !446, file: !10, line: 1939, baseType: !47, size: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !446, file: !10, line: 1940, baseType: !120, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !446, file: !10, line: 1941, baseType: !451, size: 32, offset: 224)
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !10, line: 280, baseType: !16, size: 32, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!453 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!454 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!455 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!456 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!457 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!458 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!459 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!460 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!461 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!462 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!463 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!464 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!465 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!466 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!467 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!468 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !446, file: !10, line: 1946, baseType: !470, size: 32, offset: 256)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !10, line: 1942, size: 32, elements: !471)
!471 = !{!472, !480, !488}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !470, file: !10, line: 1943, baseType: !473, size: 32)
!473 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !10, line: 1817, baseType: !16, size: 32, elements: !474)
!474 = !{!475, !476, !477, !478, !479}
!475 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!476 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!477 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!478 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!479 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !470, file: !10, line: 1944, baseType: !481, size: 32)
!481 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !10, line: 1805, baseType: !16, size: 32, elements: !482)
!482 = !{!483, !484, !485, !486, !487}
!483 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!484 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!485 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!486 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!487 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !470, file: !10, line: 1945, baseType: !489, size: 32)
!489 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !10, line: 39, baseType: !16, size: 32, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!491 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!492 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!493 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!494 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!495 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!496 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!497 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!498 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!499 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!500 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!501 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!502 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!503 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!504 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!505 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!506 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!507 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!508 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!509 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!510 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!511 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!512 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!513 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!514 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!515 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!516 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!517 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!518 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!519 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!520 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!521 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!522 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!523 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!524 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!525 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!526 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!527 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!528 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!529 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!530 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!531 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!532 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!533 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!534 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!535 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!536 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!537 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!538 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!539 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!540 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!541 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!542 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!543 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!544 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!545 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!546 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!547 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!549 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!550 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!551 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!552 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!553 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!554 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!555 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!556 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!557 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!558 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!559 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!560 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!561 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!562 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!563 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!564 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!565 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!566 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!567 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!568 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!569 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!570 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!571 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!572 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!573 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!574 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!575 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!576 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!577 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!578 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!579 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!580 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!581 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!582 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!583 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!584 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!585 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!586 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!587 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!588 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!589 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!590 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!591 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!592 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!593 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!594 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!595 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!596 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!597 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!598 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!599 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!600 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!601 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!602 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!603 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!604 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!605 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!606 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!607 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!608 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!609 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!610 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!611 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!612 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!613 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!614 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!615 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!616 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!617 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!618 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!619 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!620 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!621 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!622 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!623 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!624 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!625 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!626 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!627 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!628 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!629 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!630 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!631 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!632 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!633 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!634 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!635 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!636 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!637 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!638 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!639 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!640 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!641 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!642 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!643 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!644 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!645 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!646 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!647 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!648 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!649 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!650 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!651 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!652 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!653 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!654 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!655 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!656 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!657 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!658 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!659 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!660 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!661 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!662 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!663 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!664 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!665 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!666 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!667 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!668 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!669 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!670 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!671 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!672 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!673 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!674 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!675 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!676 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!677 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!678 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!679 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!680 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!681 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!682 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !446, file: !10, line: 1950, baseType: !684, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !7, line: 66, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !7, line: 65, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !446, file: !10, line: 1951, baseType: !684, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !446, file: !10, line: 1953, baseType: !335, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !9, file: !10, line: 3404, baseType: !690, size: 1664)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !10, line: 3337, size: 1664, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !690, file: !10, line: 3338, baseType: !47, size: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !690, file: !10, line: 3341, baseType: !694, size: 1472, offset: 192)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !695, line: 410, size: 1472, elements: !696)
!695 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !694, file: !695, line: 412, baseType: !89, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !694, file: !695, line: 413, baseType: !89, size: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !694, file: !695, line: 414, baseType: !89, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !694, file: !695, line: 415, baseType: !89, size: 32, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !694, file: !695, line: 416, baseType: !89, size: 32, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !694, file: !695, line: 417, baseType: !89, size: 32, offset: 160)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !694, file: !695, line: 418, baseType: !112, size: 8, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !694, file: !695, line: 419, baseType: !112, size: 8, offset: 200)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !694, file: !695, line: 420, baseType: !706, size: 8, offset: 208)
!706 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !694, file: !695, line: 421, baseType: !706, size: 8, offset: 216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !694, file: !695, line: 422, baseType: !706, size: 8, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !694, file: !695, line: 423, baseType: !706, size: 8, offset: 232)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !694, file: !695, line: 424, baseType: !706, size: 8, offset: 240)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !694, file: !695, line: 425, baseType: !706, size: 8, offset: 248)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !694, file: !695, line: 426, baseType: !706, size: 8, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !694, file: !695, line: 427, baseType: !706, size: 8, offset: 264)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !694, file: !695, line: 428, baseType: !706, size: 8, offset: 272)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !694, file: !695, line: 429, baseType: !706, size: 8, offset: 280)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !694, file: !695, line: 430, baseType: !706, size: 8, offset: 288)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !694, file: !695, line: 431, baseType: !706, size: 8, offset: 296)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !694, file: !695, line: 432, baseType: !706, size: 8, offset: 304)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !694, file: !695, line: 433, baseType: !706, size: 8, offset: 312)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !694, file: !695, line: 434, baseType: !706, size: 8, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !694, file: !695, line: 435, baseType: !706, size: 8, offset: 328)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !694, file: !695, line: 436, baseType: !706, size: 8, offset: 336)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !694, file: !695, line: 437, baseType: !706, size: 8, offset: 344)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !694, file: !695, line: 438, baseType: !706, size: 8, offset: 352)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !694, file: !695, line: 439, baseType: !706, size: 8, offset: 360)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !694, file: !695, line: 440, baseType: !706, size: 8, offset: 368)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !694, file: !695, line: 441, baseType: !706, size: 8, offset: 376)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !694, file: !695, line: 442, baseType: !706, size: 8, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !694, file: !695, line: 443, baseType: !706, size: 8, offset: 392)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !694, file: !695, line: 444, baseType: !706, size: 8, offset: 400)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !694, file: !695, line: 445, baseType: !706, size: 8, offset: 408)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !694, file: !695, line: 446, baseType: !706, size: 8, offset: 416)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !694, file: !695, line: 447, baseType: !706, size: 8, offset: 424)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !694, file: !695, line: 448, baseType: !706, size: 8, offset: 432)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !694, file: !695, line: 449, baseType: !706, size: 8, offset: 440)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !694, file: !695, line: 450, baseType: !706, size: 8, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !694, file: !695, line: 451, baseType: !706, size: 8, offset: 456)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !694, file: !695, line: 452, baseType: !706, size: 8, offset: 464)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !694, file: !695, line: 453, baseType: !706, size: 8, offset: 472)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !694, file: !695, line: 454, baseType: !706, size: 8, offset: 480)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !694, file: !695, line: 455, baseType: !706, size: 8, offset: 488)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !694, file: !695, line: 456, baseType: !706, size: 8, offset: 496)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !694, file: !695, line: 457, baseType: !706, size: 8, offset: 504)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !694, file: !695, line: 458, baseType: !706, size: 8, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !694, file: !695, line: 459, baseType: !706, size: 8, offset: 520)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !694, file: !695, line: 460, baseType: !706, size: 8, offset: 528)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !694, file: !695, line: 461, baseType: !706, size: 8, offset: 536)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !694, file: !695, line: 462, baseType: !706, size: 8, offset: 544)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !694, file: !695, line: 463, baseType: !706, size: 8, offset: 552)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !694, file: !695, line: 464, baseType: !706, size: 8, offset: 560)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !694, file: !695, line: 465, baseType: !706, size: 8, offset: 568)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !694, file: !695, line: 466, baseType: !706, size: 8, offset: 576)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !694, file: !695, line: 467, baseType: !706, size: 8, offset: 584)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !694, file: !695, line: 468, baseType: !706, size: 8, offset: 592)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !694, file: !695, line: 469, baseType: !706, size: 8, offset: 600)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !694, file: !695, line: 470, baseType: !706, size: 8, offset: 608)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !694, file: !695, line: 471, baseType: !706, size: 8, offset: 616)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !694, file: !695, line: 472, baseType: !706, size: 8, offset: 624)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !694, file: !695, line: 473, baseType: !706, size: 8, offset: 632)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !694, file: !695, line: 474, baseType: !706, size: 8, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !694, file: !695, line: 475, baseType: !706, size: 8, offset: 648)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !694, file: !695, line: 476, baseType: !706, size: 8, offset: 656)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !694, file: !695, line: 477, baseType: !706, size: 8, offset: 664)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !694, file: !695, line: 478, baseType: !706, size: 8, offset: 672)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !694, file: !695, line: 479, baseType: !706, size: 8, offset: 680)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !694, file: !695, line: 480, baseType: !706, size: 8, offset: 688)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !694, file: !695, line: 481, baseType: !706, size: 8, offset: 696)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !694, file: !695, line: 482, baseType: !706, size: 8, offset: 704)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !694, file: !695, line: 483, baseType: !706, size: 8, offset: 712)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !694, file: !695, line: 484, baseType: !706, size: 8, offset: 720)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !694, file: !695, line: 485, baseType: !706, size: 8, offset: 728)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !694, file: !695, line: 486, baseType: !706, size: 8, offset: 736)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !694, file: !695, line: 487, baseType: !706, size: 8, offset: 744)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !694, file: !695, line: 488, baseType: !706, size: 8, offset: 752)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !694, file: !695, line: 489, baseType: !706, size: 8, offset: 760)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !694, file: !695, line: 490, baseType: !706, size: 8, offset: 768)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !694, file: !695, line: 491, baseType: !706, size: 8, offset: 776)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !694, file: !695, line: 492, baseType: !706, size: 8, offset: 784)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !694, file: !695, line: 493, baseType: !706, size: 8, offset: 792)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !694, file: !695, line: 494, baseType: !706, size: 8, offset: 800)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !694, file: !695, line: 495, baseType: !706, size: 8, offset: 808)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !694, file: !695, line: 496, baseType: !706, size: 8, offset: 816)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !694, file: !695, line: 497, baseType: !706, size: 8, offset: 824)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !694, file: !695, line: 498, baseType: !706, size: 8, offset: 832)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !694, file: !695, line: 499, baseType: !706, size: 8, offset: 840)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !694, file: !695, line: 500, baseType: !706, size: 8, offset: 848)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !694, file: !695, line: 501, baseType: !706, size: 8, offset: 856)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !694, file: !695, line: 502, baseType: !706, size: 8, offset: 864)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !694, file: !695, line: 503, baseType: !706, size: 8, offset: 872)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !694, file: !695, line: 504, baseType: !706, size: 8, offset: 880)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !694, file: !695, line: 505, baseType: !706, size: 8, offset: 888)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !694, file: !695, line: 506, baseType: !706, size: 8, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !694, file: !695, line: 507, baseType: !706, size: 8, offset: 904)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !694, file: !695, line: 508, baseType: !706, size: 8, offset: 912)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !694, file: !695, line: 509, baseType: !706, size: 8, offset: 920)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !694, file: !695, line: 510, baseType: !706, size: 8, offset: 928)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !694, file: !695, line: 511, baseType: !706, size: 8, offset: 936)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !694, file: !695, line: 512, baseType: !706, size: 8, offset: 944)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !694, file: !695, line: 513, baseType: !706, size: 8, offset: 952)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !694, file: !695, line: 514, baseType: !706, size: 8, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !694, file: !695, line: 515, baseType: !706, size: 8, offset: 968)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !694, file: !695, line: 516, baseType: !706, size: 8, offset: 976)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !694, file: !695, line: 517, baseType: !706, size: 8, offset: 984)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !694, file: !695, line: 518, baseType: !706, size: 8, offset: 992)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !694, file: !695, line: 519, baseType: !706, size: 8, offset: 1000)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !694, file: !695, line: 520, baseType: !706, size: 8, offset: 1008)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !694, file: !695, line: 521, baseType: !706, size: 8, offset: 1016)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !694, file: !695, line: 522, baseType: !706, size: 8, offset: 1024)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !694, file: !695, line: 523, baseType: !706, size: 8, offset: 1032)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !694, file: !695, line: 524, baseType: !706, size: 8, offset: 1040)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !694, file: !695, line: 525, baseType: !706, size: 8, offset: 1048)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !694, file: !695, line: 526, baseType: !706, size: 8, offset: 1056)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !694, file: !695, line: 527, baseType: !706, size: 8, offset: 1064)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !694, file: !695, line: 528, baseType: !706, size: 8, offset: 1072)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !694, file: !695, line: 529, baseType: !706, size: 8, offset: 1080)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !694, file: !695, line: 530, baseType: !706, size: 8, offset: 1088)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !694, file: !695, line: 531, baseType: !706, size: 8, offset: 1096)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !694, file: !695, line: 532, baseType: !706, size: 8, offset: 1104)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !694, file: !695, line: 533, baseType: !706, size: 8, offset: 1112)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !694, file: !695, line: 534, baseType: !706, size: 8, offset: 1120)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !694, file: !695, line: 535, baseType: !706, size: 8, offset: 1128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !694, file: !695, line: 536, baseType: !706, size: 8, offset: 1136)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !694, file: !695, line: 537, baseType: !706, size: 8, offset: 1144)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !694, file: !695, line: 538, baseType: !706, size: 8, offset: 1152)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !694, file: !695, line: 539, baseType: !706, size: 8, offset: 1160)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !694, file: !695, line: 540, baseType: !706, size: 8, offset: 1168)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !694, file: !695, line: 541, baseType: !706, size: 8, offset: 1176)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !694, file: !695, line: 542, baseType: !706, size: 8, offset: 1184)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !694, file: !695, line: 543, baseType: !706, size: 8, offset: 1192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !694, file: !695, line: 544, baseType: !706, size: 8, offset: 1200)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !694, file: !695, line: 545, baseType: !706, size: 8, offset: 1208)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !694, file: !695, line: 546, baseType: !706, size: 8, offset: 1216)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !694, file: !695, line: 547, baseType: !706, size: 8, offset: 1224)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !694, file: !695, line: 548, baseType: !706, size: 8, offset: 1232)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !694, file: !695, line: 549, baseType: !706, size: 8, offset: 1240)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !694, file: !695, line: 550, baseType: !706, size: 8, offset: 1248)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !694, file: !695, line: 551, baseType: !706, size: 8, offset: 1256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !694, file: !695, line: 552, baseType: !706, size: 8, offset: 1264)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !694, file: !695, line: 553, baseType: !706, size: 8, offset: 1272)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !694, file: !695, line: 554, baseType: !706, size: 8, offset: 1280)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !694, file: !695, line: 555, baseType: !706, size: 8, offset: 1288)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !694, file: !695, line: 556, baseType: !706, size: 8, offset: 1296)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !694, file: !695, line: 557, baseType: !706, size: 8, offset: 1304)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !694, file: !695, line: 558, baseType: !706, size: 8, offset: 1312)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !694, file: !695, line: 559, baseType: !706, size: 8, offset: 1320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !694, file: !695, line: 560, baseType: !706, size: 8, offset: 1328)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !694, file: !695, line: 561, baseType: !706, size: 8, offset: 1336)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !694, file: !695, line: 562, baseType: !706, size: 8, offset: 1344)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !694, file: !695, line: 563, baseType: !706, size: 8, offset: 1352)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !694, file: !695, line: 564, baseType: !706, size: 8, offset: 1360)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !694, file: !695, line: 565, baseType: !706, size: 8, offset: 1368)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !694, file: !695, line: 566, baseType: !706, size: 8, offset: 1376)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !694, file: !695, line: 567, baseType: !706, size: 8, offset: 1384)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !694, file: !695, line: 568, baseType: !706, size: 8, offset: 1392)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !694, file: !695, line: 569, baseType: !706, size: 8, offset: 1400)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !694, file: !695, line: 570, baseType: !706, size: 8, offset: 1408)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !694, file: !695, line: 571, baseType: !706, size: 8, offset: 1416)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !694, file: !695, line: 572, baseType: !706, size: 8, offset: 1424)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !694, file: !695, line: 573, baseType: !706, size: 8, offset: 1432)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !694, file: !695, line: 574, baseType: !706, size: 8, offset: 1440)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !9, file: !10, line: 3405, baseType: !862, size: 384)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !10, line: 3352, size: 384, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !862, file: !10, line: 3353, baseType: !47, size: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !862, file: !10, line: 3356, baseType: !866, size: 192, offset: 192)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !695, line: 578, size: 192, elements: !867)
!867 = !{!868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !866, file: !695, line: 580, baseType: !89, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !866, file: !695, line: 581, baseType: !89, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !866, file: !695, line: 582, baseType: !89, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !866, file: !695, line: 583, baseType: !89, size: 32, offset: 96)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !866, file: !695, line: 584, baseType: !112, size: 8, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !866, file: !695, line: 585, baseType: !112, size: 8, offset: 136)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !866, file: !695, line: 586, baseType: !112, size: 8, offset: 144)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !866, file: !695, line: 587, baseType: !112, size: 8, offset: 152)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !866, file: !695, line: 588, baseType: !112, size: 8, offset: 160)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !866, file: !695, line: 589, baseType: !112, size: 8, offset: 168)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !866, file: !695, line: 590, baseType: !112, size: 8, offset: 176)
!879 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !880, retainedTypes: !886, globals: !891, nameTableKind: None)
!880 = !{!451, !473, !481, !489, !881}
!881 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "formals_style_enum", file: !3, line: 33, baseType: !16, size: 32, elements: !882)
!882 = !{!883, !884, !885}
!883 = !DIEnumerator(name: "ansi", value: 0, isUnsigned: true)
!884 = !DIEnumerator(name: "k_and_r_names", value: 1, isUnsigned: true)
!885 = !DIEnumerator(name: "k_and_r_decls", value: 2, isUnsigned: true)
!886 = !{!887, !112, !89, !888, !890, !307, !489, !6, !889}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!891 = !{!0, !892}
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(name: "data_type", scope: !879, file: !3, line: 41, type: !307, isLocal: true, isDefinition: true)
!894 = !{!895, !896, !897, !898, !899}
!895 = !DILocalVariable(name: "fndecl", arg: 1, scope: !2, file: !3, line: 551, type: !6)
!896 = !DILocalVariable(name: "is_definition", arg: 2, scope: !2, file: !3, line: 551, type: !89)
!897 = !DILocalVariable(name: "is_implicit", arg: 3, scope: !2, file: !3, line: 551, type: !89)
!898 = !DILocalVariable(name: "is_prototyped", arg: 4, scope: !2, file: !3, line: 552, type: !89)
!899 = !DILocalVariable(name: "xloc", scope: !900, file: !3, line: 557, type: !902)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 555, column: 5)
!901 = distinct !DILexicalBlock(scope: !2, file: !3, line: 554, column: 7)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !121, line: 52, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !121, line: 40, size: 192, elements: !904)
!904 = !{!905, !906, !907, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !903, file: !121, line: 43, baseType: !307, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !903, file: !121, line: 46, baseType: !89, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !903, file: !121, line: 48, baseType: !89, size: 32, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !903, file: !121, line: 51, baseType: !112, size: 8, offset: 128)
!909 = !{i32 2, !"Dwarf Version", i32 4}
!910 = !{i32 2, !"Debug Info Version", i32 3}
!911 = !{i32 1, !"wchar_size", i32 4}
!912 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!913 = distinct !DISubprogram(name: "vprintf", scope: !914, file: !914, line: 39, type: !915, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !925)
!914 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!915 = !DISubroutineType(types: !916)
!916 = !{!89, !917, !918}
!917 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !307)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !920)
!920 = !{!921, !922, !923, !924}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !919, file: !3, baseType: !16, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !919, file: !3, baseType: !16, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !919, file: !3, baseType: !890, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !919, file: !3, baseType: !890, size: 64, offset: 128)
!925 = !{!926, !927}
!926 = !DILocalVariable(name: "__fmt", arg: 1, scope: !913, file: !914, line: 39, type: !917)
!927 = !DILocalVariable(name: "__arg", arg: 2, scope: !913, file: !914, line: 39, type: !918)
!928 = !DILocation(line: 0, scope: !913)
!929 = !DILocation(line: 41, column: 20, scope: !913)
!930 = !DILocation(line: 41, column: 10, scope: !913)
!931 = !DILocation(line: 41, column: 3, scope: !913)
!932 = distinct !DISubprogram(name: "getchar", scope: !914, file: !914, line: 47, type: !933, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !935)
!933 = !DISubroutineType(types: !934)
!934 = !{!89}
!935 = !{}
!936 = !DILocation(line: 49, column: 16, scope: !932)
!937 = !DILocation(line: 49, column: 10, scope: !932)
!938 = !DILocation(line: 49, column: 3, scope: !932)
!939 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !914, file: !914, line: 56, type: !940, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !995)
!940 = !DISubroutineType(types: !941)
!941 = !{!89, !942}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !944, line: 7, baseType: !945)
!944 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !946, line: 49, size: 1728, elements: !947)
!946 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !963, !965, !966, !967, !970, !972, !973, !974, !977, !979, !982, !985, !986, !987, !990, !991}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !945, file: !946, line: 51, baseType: !89, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !945, file: !946, line: 54, baseType: !889, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !945, file: !946, line: 55, baseType: !889, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !945, file: !946, line: 56, baseType: !889, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !945, file: !946, line: 57, baseType: !889, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !945, file: !946, line: 58, baseType: !889, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !945, file: !946, line: 59, baseType: !889, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !945, file: !946, line: 60, baseType: !889, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !945, file: !946, line: 61, baseType: !889, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !945, file: !946, line: 64, baseType: !889, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !945, file: !946, line: 65, baseType: !889, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !945, file: !946, line: 66, baseType: !889, size: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !945, file: !946, line: 68, baseType: !961, size: 64, offset: 768)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !946, line: 36, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !945, file: !946, line: 70, baseType: !964, size: 64, offset: 832)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !945, file: !946, line: 72, baseType: !89, size: 32, offset: 896)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !945, file: !946, line: 73, baseType: !89, size: 32, offset: 928)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !945, file: !946, line: 74, baseType: !968, size: 64, offset: 960)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !969, line: 152, baseType: !64)
!969 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !945, file: !946, line: 77, baseType: !971, size: 16, offset: 1024)
!971 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !945, file: !946, line: 78, baseType: !706, size: 8, offset: 1040)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !945, file: !946, line: 79, baseType: !91, size: 8, offset: 1048)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !945, file: !946, line: 81, baseType: !975, size: 64, offset: 1088)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !946, line: 43, baseType: null)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !945, file: !946, line: 89, baseType: !978, size: 64, offset: 1152)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !969, line: 153, baseType: !64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !945, file: !946, line: 91, baseType: !980, size: 64, offset: 1216)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !946, line: 37, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !945, file: !946, line: 92, baseType: !983, size: 64, offset: 1280)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !946, line: 38, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !945, file: !946, line: 93, baseType: !964, size: 64, offset: 1344)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !945, file: !946, line: 94, baseType: !890, size: 64, offset: 1408)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !945, file: !946, line: 95, baseType: !988, size: 64, offset: 1472)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !989, line: 46, baseType: !62)
!989 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !945, file: !946, line: 96, baseType: !89, size: 32, offset: 1536)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !945, file: !946, line: 98, baseType: !992, size: 160, offset: 1568)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 160, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 20)
!995 = !{!996}
!996 = !DILocalVariable(name: "__fp", arg: 1, scope: !939, file: !914, line: 56, type: !942)
!997 = !DILocation(line: 0, scope: !939)
!998 = !DILocation(line: 58, column: 10, scope: !939)
!999 = !DILocation(line: 58, column: 3, scope: !939)
!1000 = distinct !DISubprogram(name: "getc_unlocked", scope: !914, file: !914, line: 66, type: !940, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1001)
!1001 = !{!1002}
!1002 = !DILocalVariable(name: "__fp", arg: 1, scope: !1000, file: !914, line: 66, type: !942)
!1003 = !DILocation(line: 0, scope: !1000)
!1004 = !DILocation(line: 68, column: 10, scope: !1000)
!1005 = !DILocation(line: 68, column: 3, scope: !1000)
!1006 = distinct !DISubprogram(name: "getchar_unlocked", scope: !914, file: !914, line: 73, type: !933, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !935)
!1007 = !DILocation(line: 75, column: 10, scope: !1006)
!1008 = !DILocation(line: 75, column: 3, scope: !1006)
!1009 = distinct !DISubprogram(name: "putchar", scope: !914, file: !914, line: 82, type: !1010, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!89, !89}
!1012 = !{!1013}
!1013 = !DILocalVariable(name: "__c", arg: 1, scope: !1009, file: !914, line: 82, type: !89)
!1014 = !DILocation(line: 0, scope: !1009)
!1015 = !DILocation(line: 84, column: 21, scope: !1009)
!1016 = !DILocation(line: 84, column: 10, scope: !1009)
!1017 = !DILocation(line: 84, column: 3, scope: !1009)
!1018 = distinct !DISubprogram(name: "fputc_unlocked", scope: !914, file: !914, line: 91, type: !1019, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!89, !89, !942}
!1021 = !{!1022, !1023}
!1022 = !DILocalVariable(name: "__c", arg: 1, scope: !1018, file: !914, line: 91, type: !89)
!1023 = !DILocalVariable(name: "__stream", arg: 2, scope: !1018, file: !914, line: 91, type: !942)
!1024 = !DILocation(line: 0, scope: !1018)
!1025 = !DILocation(line: 93, column: 10, scope: !1018)
!1026 = !DILocation(line: 93, column: 3, scope: !1018)
!1027 = distinct !DISubprogram(name: "putc_unlocked", scope: !914, file: !914, line: 101, type: !1019, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1028)
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(name: "__c", arg: 1, scope: !1027, file: !914, line: 101, type: !89)
!1030 = !DILocalVariable(name: "__stream", arg: 2, scope: !1027, file: !914, line: 101, type: !942)
!1031 = !DILocation(line: 0, scope: !1027)
!1032 = !DILocation(line: 103, column: 10, scope: !1027)
!1033 = !DILocation(line: 103, column: 3, scope: !1027)
!1034 = distinct !DISubprogram(name: "putchar_unlocked", scope: !914, file: !914, line: 108, type: !1010, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1035)
!1035 = !{!1036}
!1036 = !DILocalVariable(name: "__c", arg: 1, scope: !1034, file: !914, line: 108, type: !89)
!1037 = !DILocation(line: 0, scope: !1034)
!1038 = !DILocation(line: 110, column: 10, scope: !1034)
!1039 = !DILocation(line: 110, column: 3, scope: !1034)
!1040 = distinct !DISubprogram(name: "getline", scope: !914, file: !914, line: 118, type: !1041, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1045)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!1043, !888, !1044, !942}
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !969, line: 193, baseType: !64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1045 = !{!1046, !1047, !1048}
!1046 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1040, file: !914, line: 118, type: !888)
!1047 = !DILocalVariable(name: "__n", arg: 2, scope: !1040, file: !914, line: 118, type: !1044)
!1048 = !DILocalVariable(name: "__stream", arg: 3, scope: !1040, file: !914, line: 118, type: !942)
!1049 = !DILocation(line: 0, scope: !1040)
!1050 = !DILocation(line: 120, column: 10, scope: !1040)
!1051 = !DILocation(line: 120, column: 3, scope: !1040)
!1052 = distinct !DISubprogram(name: "feof_unlocked", scope: !914, file: !914, line: 128, type: !940, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1053)
!1053 = !{!1054}
!1054 = !DILocalVariable(name: "__stream", arg: 1, scope: !1052, file: !914, line: 128, type: !942)
!1055 = !DILocation(line: 0, scope: !1052)
!1056 = !DILocation(line: 130, column: 10, scope: !1052)
!1057 = !DILocation(line: 130, column: 3, scope: !1052)
!1058 = distinct !DISubprogram(name: "ferror_unlocked", scope: !914, file: !914, line: 135, type: !940, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1059)
!1059 = !{!1060}
!1060 = !DILocalVariable(name: "__stream", arg: 1, scope: !1058, file: !914, line: 135, type: !942)
!1061 = !DILocation(line: 0, scope: !1058)
!1062 = !DILocation(line: 137, column: 10, scope: !1058)
!1063 = !DILocation(line: 137, column: 3, scope: !1058)
!1064 = distinct !DISubprogram(name: "tolower", scope: !1065, file: !1065, line: 207, type: !1010, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1066)
!1065 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1066 = !{!1067}
!1067 = !DILocalVariable(name: "__c", arg: 1, scope: !1064, file: !1065, line: 207, type: !89)
!1068 = !DILocation(line: 0, scope: !1064)
!1069 = !DILocation(line: 209, column: 22, scope: !1064)
!1070 = !DILocation(line: 209, column: 39, scope: !1064)
!1071 = !DILocation(line: 209, column: 38, scope: !1064)
!1072 = !DILocation(line: 209, column: 37, scope: !1064)
!1073 = !DILocation(line: 209, column: 10, scope: !1064)
!1074 = !DILocation(line: 209, column: 3, scope: !1064)
!1075 = distinct !DISubprogram(name: "toupper", scope: !1065, file: !1065, line: 213, type: !1010, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1076)
!1076 = !{!1077}
!1077 = !DILocalVariable(name: "__c", arg: 1, scope: !1075, file: !1065, line: 213, type: !89)
!1078 = !DILocation(line: 0, scope: !1075)
!1079 = !DILocation(line: 215, column: 22, scope: !1075)
!1080 = !DILocation(line: 215, column: 39, scope: !1075)
!1081 = !DILocation(line: 215, column: 38, scope: !1075)
!1082 = !DILocation(line: 215, column: 37, scope: !1075)
!1083 = !DILocation(line: 215, column: 10, scope: !1075)
!1084 = !DILocation(line: 215, column: 3, scope: !1075)
!1085 = distinct !DISubprogram(name: "atoi", scope: !1086, file: !1086, line: 361, type: !1087, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1089)
!1086 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!89, !307}
!1089 = !{!1090}
!1090 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1085, file: !1086, line: 361, type: !307)
!1091 = !DILocation(line: 0, scope: !1085)
!1092 = !DILocation(line: 363, column: 16, scope: !1085)
!1093 = !DILocation(line: 363, column: 10, scope: !1085)
!1094 = !DILocation(line: 363, column: 3, scope: !1085)
!1095 = distinct !DISubprogram(name: "atol", scope: !1086, file: !1086, line: 366, type: !1096, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!64, !307}
!1098 = !{!1099}
!1099 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1095, file: !1086, line: 366, type: !307)
!1100 = !DILocation(line: 0, scope: !1095)
!1101 = !DILocation(line: 368, column: 10, scope: !1095)
!1102 = !DILocation(line: 368, column: 3, scope: !1095)
!1103 = distinct !DISubprogram(name: "atoll", scope: !1086, file: !1086, line: 373, type: !1104, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1107)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!1106, !307}
!1106 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1107 = !{!1108}
!1108 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1103, file: !1086, line: 373, type: !307)
!1109 = !DILocation(line: 0, scope: !1103)
!1110 = !DILocation(line: 375, column: 10, scope: !1103)
!1111 = !DILocation(line: 375, column: 3, scope: !1103)
!1112 = distinct !DISubprogram(name: "bsearch", scope: !1113, file: !1113, line: 20, type: !1114, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1122)
!1113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!890, !1116, !1116, !988, !988, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1086, line: 808, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!89, !1116, !1116}
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1123 = !DILocalVariable(name: "__key", arg: 1, scope: !1112, file: !1113, line: 20, type: !1116)
!1124 = !DILocalVariable(name: "__base", arg: 2, scope: !1112, file: !1113, line: 20, type: !1116)
!1125 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1112, file: !1113, line: 20, type: !988)
!1126 = !DILocalVariable(name: "__size", arg: 4, scope: !1112, file: !1113, line: 20, type: !988)
!1127 = !DILocalVariable(name: "__compar", arg: 5, scope: !1112, file: !1113, line: 21, type: !1118)
!1128 = !DILocalVariable(name: "__l", scope: !1112, file: !1113, line: 23, type: !988)
!1129 = !DILocalVariable(name: "__u", scope: !1112, file: !1113, line: 23, type: !988)
!1130 = !DILocalVariable(name: "__idx", scope: !1112, file: !1113, line: 23, type: !988)
!1131 = !DILocalVariable(name: "__p", scope: !1112, file: !1113, line: 24, type: !1116)
!1132 = !DILocalVariable(name: "__comparison", scope: !1112, file: !1113, line: 25, type: !89)
!1133 = !DILocation(line: 0, scope: !1112)
!1134 = !DILocation(line: 29, column: 3, scope: !1112)
!1135 = !DILocation(line: 27, column: 7, scope: !1112)
!1136 = !DILocation(line: 29, column: 14, scope: !1112)
!1137 = !DILocation(line: 31, column: 20, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1112, file: !1113, line: 30, column: 5)
!1139 = !DILocation(line: 31, column: 27, scope: !1138)
!1140 = !DILocation(line: 32, column: 56, scope: !1138)
!1141 = !DILocation(line: 32, column: 47, scope: !1138)
!1142 = !DILocation(line: 33, column: 22, scope: !1138)
!1143 = !DILocation(line: 34, column: 24, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1138, file: !1113, line: 34, column: 11)
!1145 = !DILocation(line: 34, column: 11, scope: !1138)
!1146 = !DILocation(line: 36, column: 29, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !1113, line: 36, column: 16)
!1148 = !DILocation(line: 36, column: 16, scope: !1144)
!1149 = !DILocation(line: 37, column: 14, scope: !1147)
!1150 = distinct !{!1150, !1134, !1151}
!1151 = !DILocation(line: 40, column: 5, scope: !1112)
!1152 = !DILocation(line: 43, column: 1, scope: !1112)
!1153 = distinct !DISubprogram(name: "atof", scope: !1154, file: !1154, line: 25, type: !1155, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1158)
!1154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1157, !307}
!1157 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1158 = !{!1159}
!1159 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1153, file: !1154, line: 25, type: !307)
!1160 = !DILocation(line: 0, scope: !1153)
!1161 = !DILocation(line: 27, column: 10, scope: !1153)
!1162 = !DILocation(line: 27, column: 3, scope: !1153)
!1163 = distinct !DISubprogram(name: "strtoimax", scope: !1164, file: !1164, line: 324, type: !1165, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1171)
!1164 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1167, !917, !1170, !89}
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1168, line: 101, baseType: !1169)
!1168 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !969, line: 72, baseType: !64)
!1170 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !888)
!1171 = !{!1172, !1173, !1174}
!1172 = !DILocalVariable(name: "nptr", arg: 1, scope: !1163, file: !1164, line: 324, type: !917)
!1173 = !DILocalVariable(name: "endptr", arg: 2, scope: !1163, file: !1164, line: 324, type: !1170)
!1174 = !DILocalVariable(name: "base", arg: 3, scope: !1163, file: !1164, line: 324, type: !89)
!1175 = !DILocation(line: 0, scope: !1163)
!1176 = !DILocation(line: 327, column: 10, scope: !1163)
!1177 = !DILocation(line: 327, column: 3, scope: !1163)
!1178 = distinct !DISubprogram(name: "strtoumax", scope: !1164, file: !1164, line: 336, type: !1179, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1183)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1181, !917, !1170, !89}
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1168, line: 102, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !969, line: 73, baseType: !62)
!1183 = !{!1184, !1185, !1186}
!1184 = !DILocalVariable(name: "nptr", arg: 1, scope: !1178, file: !1164, line: 336, type: !917)
!1185 = !DILocalVariable(name: "endptr", arg: 2, scope: !1178, file: !1164, line: 336, type: !1170)
!1186 = !DILocalVariable(name: "base", arg: 3, scope: !1178, file: !1164, line: 336, type: !89)
!1187 = !DILocation(line: 0, scope: !1178)
!1188 = !DILocation(line: 339, column: 10, scope: !1178)
!1189 = !DILocation(line: 339, column: 3, scope: !1178)
!1190 = distinct !DISubprogram(name: "wcstoimax", scope: !1164, file: !1164, line: 348, type: !1191, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1200)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1167, !1193, !1197, !89}
!1193 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1164, line: 34, baseType: !89)
!1197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1200 = !{!1201, !1202, !1203}
!1201 = !DILocalVariable(name: "nptr", arg: 1, scope: !1190, file: !1164, line: 348, type: !1193)
!1202 = !DILocalVariable(name: "endptr", arg: 2, scope: !1190, file: !1164, line: 348, type: !1197)
!1203 = !DILocalVariable(name: "base", arg: 3, scope: !1190, file: !1164, line: 348, type: !89)
!1204 = !DILocation(line: 0, scope: !1190)
!1205 = !DILocation(line: 351, column: 10, scope: !1190)
!1206 = !DILocation(line: 351, column: 3, scope: !1190)
!1207 = distinct !DISubprogram(name: "wcstoumax", scope: !1164, file: !1164, line: 362, type: !1208, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1210)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!1181, !1193, !1197, !89}
!1210 = !{!1211, !1212, !1213}
!1211 = !DILocalVariable(name: "nptr", arg: 1, scope: !1207, file: !1164, line: 362, type: !1193)
!1212 = !DILocalVariable(name: "endptr", arg: 2, scope: !1207, file: !1164, line: 362, type: !1197)
!1213 = !DILocalVariable(name: "base", arg: 3, scope: !1207, file: !1164, line: 362, type: !89)
!1214 = !DILocation(line: 0, scope: !1207)
!1215 = !DILocation(line: 365, column: 10, scope: !1207)
!1216 = !DILocation(line: 365, column: 3, scope: !1207)
!1217 = distinct !DISubprogram(name: "stat", scope: !1218, file: !1218, line: 453, type: !1219, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1258)
!1218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!89, !307, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1223, line: 46, size: 1152, elements: !1224)
!1223 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1224 = !{!1225, !1227, !1229, !1231, !1233, !1235, !1237, !1238, !1239, !1240, !1242, !1244, !1252, !1253, !1254}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1222, file: !1223, line: 48, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !969, line: 145, baseType: !62)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1222, file: !1223, line: 53, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !969, line: 148, baseType: !62)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1222, file: !1223, line: 61, baseType: !1230, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !969, line: 151, baseType: !62)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1222, file: !1223, line: 62, baseType: !1232, size: 32, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !969, line: 150, baseType: !16)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1222, file: !1223, line: 64, baseType: !1234, size: 32, offset: 224)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !969, line: 146, baseType: !16)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1222, file: !1223, line: 65, baseType: !1236, size: 32, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !969, line: 147, baseType: !16)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1222, file: !1223, line: 67, baseType: !89, size: 32, offset: 288)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1222, file: !1223, line: 69, baseType: !1226, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1222, file: !1223, line: 74, baseType: !968, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1222, file: !1223, line: 78, baseType: !1241, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !969, line: 174, baseType: !64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1222, file: !1223, line: 80, baseType: !1243, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !969, line: 179, baseType: !64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1222, file: !1223, line: 91, baseType: !1245, size: 128, offset: 576)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1246, line: 10, size: 128, elements: !1247)
!1246 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1247 = !{!1248, !1250}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1245, file: !1246, line: 12, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !969, line: 160, baseType: !64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1245, file: !1246, line: 16, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !969, line: 196, baseType: !64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1222, file: !1223, line: 92, baseType: !1245, size: 128, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1222, file: !1223, line: 93, baseType: !1245, size: 128, offset: 832)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1222, file: !1223, line: 106, baseType: !1255, size: 192, offset: 960)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 192, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 3)
!1258 = !{!1259, !1260}
!1259 = !DILocalVariable(name: "__path", arg: 1, scope: !1217, file: !1218, line: 453, type: !307)
!1260 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1217, file: !1218, line: 453, type: !1221)
!1261 = !DILocation(line: 0, scope: !1217)
!1262 = !DILocation(line: 455, column: 10, scope: !1217)
!1263 = !DILocation(line: 455, column: 3, scope: !1217)
!1264 = distinct !DISubprogram(name: "lstat", scope: !1218, file: !1218, line: 460, type: !1219, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1265)
!1265 = !{!1266, !1267}
!1266 = !DILocalVariable(name: "__path", arg: 1, scope: !1264, file: !1218, line: 460, type: !307)
!1267 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1264, file: !1218, line: 460, type: !1221)
!1268 = !DILocation(line: 0, scope: !1264)
!1269 = !DILocation(line: 462, column: 10, scope: !1264)
!1270 = !DILocation(line: 462, column: 3, scope: !1264)
!1271 = distinct !DISubprogram(name: "fstat", scope: !1218, file: !1218, line: 467, type: !1272, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!89, !89, !1221}
!1274 = !{!1275, !1276}
!1275 = !DILocalVariable(name: "__fd", arg: 1, scope: !1271, file: !1218, line: 467, type: !89)
!1276 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1271, file: !1218, line: 467, type: !1221)
!1277 = !DILocation(line: 0, scope: !1271)
!1278 = !DILocation(line: 469, column: 10, scope: !1271)
!1279 = !DILocation(line: 469, column: 3, scope: !1271)
!1280 = distinct !DISubprogram(name: "fstatat", scope: !1218, file: !1218, line: 474, type: !1281, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!89, !89, !307, !1221, !89}
!1283 = !{!1284, !1285, !1286, !1287}
!1284 = !DILocalVariable(name: "__fd", arg: 1, scope: !1280, file: !1218, line: 474, type: !89)
!1285 = !DILocalVariable(name: "__filename", arg: 2, scope: !1280, file: !1218, line: 474, type: !307)
!1286 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1280, file: !1218, line: 474, type: !1221)
!1287 = !DILocalVariable(name: "__flag", arg: 4, scope: !1280, file: !1218, line: 474, type: !89)
!1288 = !DILocation(line: 0, scope: !1280)
!1289 = !DILocation(line: 477, column: 10, scope: !1280)
!1290 = !DILocation(line: 477, column: 3, scope: !1280)
!1291 = distinct !DISubprogram(name: "mknod", scope: !1218, file: !1218, line: 483, type: !1292, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!89, !307, !1232, !1226}
!1294 = !{!1295, !1296, !1297}
!1295 = !DILocalVariable(name: "__path", arg: 1, scope: !1291, file: !1218, line: 483, type: !307)
!1296 = !DILocalVariable(name: "__mode", arg: 2, scope: !1291, file: !1218, line: 483, type: !1232)
!1297 = !DILocalVariable(name: "__dev", arg: 3, scope: !1291, file: !1218, line: 483, type: !1226)
!1298 = !DILocation(line: 0, scope: !1291)
!1299 = !DILocation(line: 485, column: 10, scope: !1291)
!1300 = !DILocation(line: 485, column: 3, scope: !1291)
!1301 = distinct !DISubprogram(name: "mknodat", scope: !1218, file: !1218, line: 491, type: !1302, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!89, !89, !307, !1232, !1226}
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DILocalVariable(name: "__fd", arg: 1, scope: !1301, file: !1218, line: 491, type: !89)
!1306 = !DILocalVariable(name: "__path", arg: 2, scope: !1301, file: !1218, line: 491, type: !307)
!1307 = !DILocalVariable(name: "__mode", arg: 3, scope: !1301, file: !1218, line: 491, type: !1232)
!1308 = !DILocalVariable(name: "__dev", arg: 4, scope: !1301, file: !1218, line: 491, type: !1226)
!1309 = !DILocation(line: 0, scope: !1301)
!1310 = !DILocation(line: 494, column: 10, scope: !1301)
!1311 = !DILocation(line: 494, column: 3, scope: !1301)
!1312 = distinct !DISubprogram(name: "stat64", scope: !1218, file: !1218, line: 502, type: !1313, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1335)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!89, !307, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1223, line: 119, size: 1152, elements: !1317)
!1317 = !{!1318, !1319, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1331, !1332, !1333, !1334}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1316, file: !1223, line: 121, baseType: !1226, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1316, file: !1223, line: 123, baseType: !1320, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !969, line: 149, baseType: !62)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1316, file: !1223, line: 124, baseType: !1230, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1316, file: !1223, line: 125, baseType: !1232, size: 32, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1316, file: !1223, line: 132, baseType: !1234, size: 32, offset: 224)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1316, file: !1223, line: 133, baseType: !1236, size: 32, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1316, file: !1223, line: 135, baseType: !89, size: 32, offset: 288)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1316, file: !1223, line: 136, baseType: !1226, size: 64, offset: 320)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1316, file: !1223, line: 137, baseType: !968, size: 64, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1316, file: !1223, line: 143, baseType: !1241, size: 64, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1316, file: !1223, line: 144, baseType: !1330, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !969, line: 180, baseType: !64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1316, file: !1223, line: 152, baseType: !1245, size: 128, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1316, file: !1223, line: 153, baseType: !1245, size: 128, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1316, file: !1223, line: 154, baseType: !1245, size: 128, offset: 832)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1316, file: !1223, line: 164, baseType: !1255, size: 192, offset: 960)
!1335 = !{!1336, !1337}
!1336 = !DILocalVariable(name: "__path", arg: 1, scope: !1312, file: !1218, line: 502, type: !307)
!1337 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1312, file: !1218, line: 502, type: !1315)
!1338 = !DILocation(line: 0, scope: !1312)
!1339 = !DILocation(line: 504, column: 10, scope: !1312)
!1340 = !DILocation(line: 504, column: 3, scope: !1312)
!1341 = distinct !DISubprogram(name: "lstat64", scope: !1218, file: !1218, line: 509, type: !1313, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1342)
!1342 = !{!1343, !1344}
!1343 = !DILocalVariable(name: "__path", arg: 1, scope: !1341, file: !1218, line: 509, type: !307)
!1344 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1341, file: !1218, line: 509, type: !1315)
!1345 = !DILocation(line: 0, scope: !1341)
!1346 = !DILocation(line: 511, column: 10, scope: !1341)
!1347 = !DILocation(line: 511, column: 3, scope: !1341)
!1348 = distinct !DISubprogram(name: "fstat64", scope: !1218, file: !1218, line: 516, type: !1349, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!89, !89, !1315}
!1351 = !{!1352, !1353}
!1352 = !DILocalVariable(name: "__fd", arg: 1, scope: !1348, file: !1218, line: 516, type: !89)
!1353 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1348, file: !1218, line: 516, type: !1315)
!1354 = !DILocation(line: 0, scope: !1348)
!1355 = !DILocation(line: 518, column: 10, scope: !1348)
!1356 = !DILocation(line: 518, column: 3, scope: !1348)
!1357 = distinct !DISubprogram(name: "fstatat64", scope: !1218, file: !1218, line: 523, type: !1358, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!89, !89, !307, !1315, !89}
!1360 = !{!1361, !1362, !1363, !1364}
!1361 = !DILocalVariable(name: "__fd", arg: 1, scope: !1357, file: !1218, line: 523, type: !89)
!1362 = !DILocalVariable(name: "__filename", arg: 2, scope: !1357, file: !1218, line: 523, type: !307)
!1363 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1357, file: !1218, line: 523, type: !1315)
!1364 = !DILocalVariable(name: "__flag", arg: 4, scope: !1357, file: !1218, line: 523, type: !89)
!1365 = !DILocation(line: 0, scope: !1357)
!1366 = !DILocation(line: 526, column: 10, scope: !1357)
!1367 = !DILocation(line: 526, column: 3, scope: !1357)
!1368 = !DILocation(line: 0, scope: !2)
!1369 = !DILocation(line: 554, column: 7, scope: !901)
!1370 = !DILocation(line: 554, column: 7, scope: !2)
!1371 = !DILocation(line: 557, column: 7, scope: !900)
!1372 = !DILocation(line: 557, column: 49, scope: !900)
!1373 = !DILocation(line: 0, scope: !900)
!1374 = !DILocation(line: 557, column: 32, scope: !900)
!1375 = !DILocation(line: 562, column: 32, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !900, file: !3, line: 562, column: 11)
!1377 = !DILocation(line: 562, column: 11, scope: !900)
!1378 = !DILocation(line: 567, column: 13, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 563, column: 2)
!1380 = !DILocation(line: 567, column: 4, scope: !1379)
!1381 = !DILocation(line: 568, column: 2, scope: !1379)
!1382 = !DILocation(line: 572, column: 16, scope: !900)
!1383 = !DILocation(line: 573, column: 14, scope: !900)
!1384 = !DILocation(line: 573, column: 25, scope: !900)
!1385 = !DILocation(line: 574, column: 9, scope: !900)
!1386 = !DILocation(line: 574, column: 31, scope: !900)
!1387 = !DILocation(line: 575, column: 9, scope: !900)
!1388 = !DILocation(line: 576, column: 9, scope: !900)
!1389 = !DILocation(line: 572, column: 7, scope: !900)
!1390 = !DILocation(line: 582, column: 11, scope: !900)
!1391 = !DILocation(line: 584, column: 13, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 583, column: 2)
!1393 = distinct !DILexicalBlock(scope: !900, file: !3, line: 582, column: 11)
!1394 = !DILocation(line: 585, column: 6, scope: !1392)
!1395 = !DILocation(line: 586, column: 6, scope: !1392)
!1396 = !DILocation(line: 584, column: 4, scope: !1392)
!1397 = !DILocation(line: 587, column: 2, scope: !1392)
!1398 = !DILocation(line: 589, column: 16, scope: !900)
!1399 = !DILocation(line: 589, column: 7, scope: !900)
!1400 = !DILocation(line: 590, column: 5, scope: !901)
!1401 = !DILocation(line: 590, column: 5, scope: !900)
!1402 = !DILocation(line: 591, column: 1, scope: !2)
!1403 = distinct !DISubprogram(name: "gen_decl", scope: !3, file: !3, line: 473, type: !1404, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1407)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!307, !6, !89, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "formals_style", file: !3, line: 38, baseType: !881)
!1407 = !{!1408, !1409, !1410, !1411}
!1408 = !DILocalVariable(name: "decl", arg: 1, scope: !1403, file: !3, line: 473, type: !6)
!1409 = !DILocalVariable(name: "is_func_definition", arg: 2, scope: !1403, file: !3, line: 473, type: !89)
!1410 = !DILocalVariable(name: "style", arg: 3, scope: !1403, file: !3, line: 473, type: !1406)
!1411 = !DILocalVariable(name: "ret_val", scope: !1403, file: !3, line: 475, type: !307)
!1412 = !DILocation(line: 0, scope: !1403)
!1413 = !DILocation(line: 477, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 477, column: 7)
!1415 = !DILocation(line: 477, column: 7, scope: !1403)
!1416 = !DILocation(line: 478, column: 15, scope: !1414)
!1417 = !DILocation(line: 478, column: 5, scope: !1414)
!1418 = !DILocation(line: 0, scope: !1414)
!1419 = !DILocation(line: 486, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 486, column: 7)
!1421 = !DILocation(line: 486, column: 7, scope: !1403)
!1422 = !DILocation(line: 496, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 496, column: 7)
!1424 = !DILocation(line: 496, column: 7, scope: !1403)
!1425 = !DILocation(line: 497, column: 15, scope: !1423)
!1426 = !DILocation(line: 498, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 498, column: 7)
!1428 = !DILocation(line: 497, column: 5, scope: !1423)
!1429 = !DILocation(line: 498, column: 7, scope: !1403)
!1430 = !DILocation(line: 499, column: 15, scope: !1427)
!1431 = !DILocation(line: 499, column: 5, scope: !1427)
!1432 = !DILocation(line: 501, column: 13, scope: !1403)
!1433 = !DILocation(line: 515, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 515, column: 7)
!1435 = !DILocation(line: 515, column: 24, scope: !1434)
!1436 = !DILocation(line: 515, column: 44, scope: !1434)
!1437 = !DILocation(line: 515, column: 41, scope: !1434)
!1438 = !DILocation(line: 517, column: 34, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 516, column: 5)
!1440 = !DILocation(line: 517, column: 17, scope: !1439)
!1441 = !DILocation(line: 527, column: 36, scope: !1439)
!1442 = !DILocation(line: 527, column: 17, scope: !1439)
!1443 = !DILocation(line: 528, column: 5, scope: !1439)
!1444 = !DILocation(line: 530, column: 34, scope: !1434)
!1445 = !DILocation(line: 530, column: 15, scope: !1434)
!1446 = !DILocation(line: 0, scope: !1434)
!1447 = !DILocation(line: 532, column: 13, scope: !1403)
!1448 = !DILocation(line: 534, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 534, column: 7)
!1450 = !DILocation(line: 534, column: 24, scope: !1449)
!1451 = !DILocation(line: 534, column: 41, scope: !1449)
!1452 = !DILocation(line: 534, column: 44, scope: !1449)
!1453 = !DILocation(line: 534, column: 7, scope: !1403)
!1454 = !DILocation(line: 535, column: 15, scope: !1449)
!1455 = !DILocation(line: 536, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 536, column: 7)
!1457 = !DILocation(line: 535, column: 5, scope: !1449)
!1458 = !DILocation(line: 536, column: 7, scope: !1403)
!1459 = !DILocation(line: 537, column: 15, scope: !1456)
!1460 = !DILocation(line: 538, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 538, column: 7)
!1462 = !DILocation(line: 537, column: 5, scope: !1456)
!1463 = !DILocation(line: 538, column: 24, scope: !1461)
!1464 = !DILocation(line: 538, column: 41, scope: !1461)
!1465 = !DILocation(line: 538, column: 45, scope: !1461)
!1466 = !DILocation(line: 538, column: 7, scope: !1403)
!1467 = !DILocation(line: 539, column: 15, scope: !1461)
!1468 = !DILocation(line: 539, column: 5, scope: !1461)
!1469 = !DILocation(line: 542, column: 1, scope: !1403)
!1470 = distinct !DISubprogram(name: "gen_formal_list_for_func_def", scope: !3, file: !3, line: 228, type: !1471, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1473)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!307, !6, !1406}
!1473 = !{!1474, !1475, !1476, !1477, !1478}
!1474 = !DILocalVariable(name: "fndecl", arg: 1, scope: !1470, file: !3, line: 228, type: !6)
!1475 = !DILocalVariable(name: "style", arg: 2, scope: !1470, file: !3, line: 228, type: !1406)
!1476 = !DILocalVariable(name: "formal_list", scope: !1470, file: !3, line: 230, type: !307)
!1477 = !DILocalVariable(name: "formal_decl", scope: !1470, file: !3, line: 231, type: !6)
!1478 = !DILocalVariable(name: "this_formal", scope: !1479, file: !3, line: 236, type: !307)
!1479 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 235, column: 5)
!1480 = !DILocation(line: 0, scope: !1470)
!1481 = !DILocation(line: 233, column: 17, scope: !1470)
!1482 = !DILocation(line: 0, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 238, column: 11)
!1484 = !DILocation(line: 0, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 241, column: 11)
!1486 = !DILocation(line: 234, column: 3, scope: !1470)
!1487 = !DILocation(line: 238, column: 11, scope: !1483)
!1488 = !DILocation(line: 238, column: 24, scope: !1483)
!1489 = !DILocation(line: 239, column: 16, scope: !1483)
!1490 = !DILocation(line: 239, column: 2, scope: !1483)
!1491 = !DILocation(line: 240, column: 21, scope: !1479)
!1492 = !DILocation(line: 0, scope: !1479)
!1493 = !DILocation(line: 242, column: 16, scope: !1485)
!1494 = !DILocation(line: 245, column: 21, scope: !1479)
!1495 = distinct !{!1495, !1486, !1496}
!1496 = !DILocation(line: 246, column: 5, scope: !1470)
!1497 = !DILocation(line: 247, column: 13, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 247, column: 7)
!1499 = !DILocation(line: 244, column: 16, scope: !1485)
!1500 = !DILocation(line: 247, column: 7, scope: !1470)
!1501 = !DILocation(line: 249, column: 12, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 249, column: 11)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 248, column: 5)
!1504 = !DILocation(line: 249, column: 11, scope: !1503)
!1505 = !DILocation(line: 250, column: 16, scope: !1502)
!1506 = !DILocation(line: 250, column: 2, scope: !1502)
!1507 = !DILocation(line: 251, column: 30, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 251, column: 11)
!1509 = !DILocation(line: 251, column: 11, scope: !1508)
!1510 = !DILocation(line: 251, column: 11, scope: !1503)
!1511 = !DILocation(line: 252, column: 16, scope: !1508)
!1512 = !DILocation(line: 252, column: 2, scope: !1508)
!1513 = !DILocation(line: 254, column: 23, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 254, column: 7)
!1515 = !DILocation(line: 255, column: 19, scope: !1514)
!1516 = !DILocation(line: 255, column: 5, scope: !1514)
!1517 = !DILocation(line: 256, column: 3, scope: !1470)
!1518 = distinct !DISubprogram(name: "gen_type", scope: !3, file: !3, line: 301, type: !1519, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!307, !307, !6, !1406}
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1533}
!1522 = !DILocalVariable(name: "ret_val", arg: 1, scope: !1518, file: !3, line: 301, type: !307)
!1523 = !DILocalVariable(name: "t", arg: 2, scope: !1518, file: !3, line: 301, type: !6)
!1524 = !DILocalVariable(name: "style", arg: 3, scope: !1518, file: !3, line: 301, type: !1406)
!1525 = !DILocalVariable(name: "chain_p", scope: !1518, file: !3, line: 303, type: !6)
!1526 = !DILocalVariable(name: "size", scope: !1527, file: !3, line: 336, type: !89)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 335, column: 6)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 331, column: 13)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 328, column: 8)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 311, column: 2)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 309, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 306, column: 7)
!1533 = !DILocalVariable(name: "buff", scope: !1527, file: !3, line: 337, type: !1534)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 80, elements: !1535)
!1535 = !{!1536}
!1536 = !DISubrange(count: 10)
!1537 = !DILocation(line: 0, scope: !1518)
!1538 = !DILocation(line: 306, column: 7, scope: !1532)
!1539 = !DILocation(line: 306, column: 21, scope: !1532)
!1540 = !DILocation(line: 306, column: 24, scope: !1532)
!1541 = !DILocation(line: 306, column: 50, scope: !1532)
!1542 = !DILocation(line: 306, column: 7, scope: !1518)
!1543 = !DILocation(line: 307, column: 17, scope: !1532)
!1544 = !DILocation(line: 307, column: 15, scope: !1532)
!1545 = !DILocation(line: 307, column: 5, scope: !1532)
!1546 = !DILocation(line: 310, column: 15, scope: !1531)
!1547 = !DILocation(line: 310, column: 7, scope: !1531)
!1548 = !DILocation(line: 313, column: 8, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 313, column: 8)
!1550 = !DILocation(line: 313, column: 8, scope: !1530)
!1551 = !DILocation(line: 314, column: 16, scope: !1549)
!1552 = !DILocation(line: 315, column: 8, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 315, column: 8)
!1554 = !DILocation(line: 314, column: 6, scope: !1549)
!1555 = !DILocation(line: 315, column: 8, scope: !1530)
!1556 = !DILocation(line: 316, column: 16, scope: !1553)
!1557 = !DILocation(line: 316, column: 6, scope: !1553)
!1558 = !DILocation(line: 0, scope: !1530)
!1559 = !DILocation(line: 318, column: 14, scope: !1530)
!1560 = !DILocation(line: 320, column: 8, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 320, column: 8)
!1562 = !DILocation(line: 320, column: 34, scope: !1561)
!1563 = !DILocation(line: 320, column: 48, scope: !1561)
!1564 = !DILocation(line: 320, column: 77, scope: !1561)
!1565 = !DILocation(line: 320, column: 8, scope: !1530)
!1566 = !DILocation(line: 321, column: 16, scope: !1561)
!1567 = !DILocation(line: 323, column: 33, scope: !1530)
!1568 = !DILocation(line: 321, column: 6, scope: !1561)
!1569 = !DILocation(line: 323, column: 14, scope: !1530)
!1570 = !DILocation(line: 325, column: 4, scope: !1530)
!1571 = !DILocation(line: 328, column: 9, scope: !1529)
!1572 = !DILocation(line: 328, column: 29, scope: !1529)
!1573 = !DILocation(line: 328, column: 32, scope: !1529)
!1574 = !DILocation(line: 328, column: 58, scope: !1529)
!1575 = !DILocation(line: 328, column: 8, scope: !1530)
!1576 = !DILocation(line: 329, column: 26, scope: !1529)
!1577 = !DILocation(line: 330, column: 5, scope: !1529)
!1578 = !DILocation(line: 329, column: 16, scope: !1529)
!1579 = !DILocation(line: 329, column: 6, scope: !1529)
!1580 = !DILocation(line: 331, column: 13, scope: !1528)
!1581 = !DILocation(line: 331, column: 35, scope: !1528)
!1582 = !DILocation(line: 331, column: 13, scope: !1529)
!1583 = !DILocation(line: 332, column: 26, scope: !1528)
!1584 = !DILocation(line: 333, column: 5, scope: !1528)
!1585 = !DILocation(line: 332, column: 16, scope: !1528)
!1586 = !DILocation(line: 332, column: 6, scope: !1528)
!1587 = !DILocation(line: 336, column: 20, scope: !1527)
!1588 = !DILocation(line: 336, column: 63, scope: !1527)
!1589 = !DILocation(line: 336, column: 44, scope: !1527)
!1590 = !DILocation(line: 336, column: 42, scope: !1527)
!1591 = !DILocation(line: 336, column: 19, scope: !1527)
!1592 = !DILocation(line: 0, scope: !1527)
!1593 = !DILocation(line: 337, column: 8, scope: !1527)
!1594 = !DILocation(line: 337, column: 13, scope: !1527)
!1595 = !DILocation(line: 338, column: 8, scope: !1527)
!1596 = !DILocation(line: 339, column: 28, scope: !1527)
!1597 = !DILocation(line: 340, column: 7, scope: !1527)
!1598 = !DILocation(line: 339, column: 18, scope: !1527)
!1599 = !DILocation(line: 341, column: 6, scope: !1528)
!1600 = !DILocation(line: 346, column: 11, scope: !1530)
!1601 = !DILocation(line: 345, column: 24, scope: !1530)
!1602 = !DILocation(line: 348, column: 10, scope: !1530)
!1603 = !DILocation(line: 345, column: 14, scope: !1530)
!1604 = !DILocation(line: 349, column: 4, scope: !1530)
!1605 = !DILocation(line: 352, column: 16, scope: !1530)
!1606 = !DILocation(line: 352, column: 14, scope: !1530)
!1607 = !DILocation(line: 353, column: 4, scope: !1530)
!1608 = !DILocation(line: 367, column: 8, scope: !1530)
!1609 = !DILocation(line: 368, column: 18, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 367, column: 8)
!1611 = !DILocation(line: 368, column: 6, scope: !1610)
!1612 = !DILocation(line: 371, column: 18, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 370, column: 6)
!1614 = !DILocation(line: 372, column: 18, scope: !1613)
!1615 = !DILocation(line: 373, column: 8, scope: !1613)
!1616 = !DILocation(line: 0, scope: !1613)
!1617 = !DILocation(line: 375, column: 36, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 374, column: 3)
!1619 = !DILocation(line: 375, column: 17, scope: !1618)
!1620 = !DILocation(line: 375, column: 15, scope: !1618)
!1621 = !DILocation(line: 377, column: 15, scope: !1618)
!1622 = !DILocation(line: 378, column: 17, scope: !1618)
!1623 = !DILocation(line: 378, column: 15, scope: !1618)
!1624 = distinct !{!1624, !1615, !1625}
!1625 = !DILocation(line: 379, column: 3, scope: !1613)
!1626 = !DILocation(line: 380, column: 20, scope: !1613)
!1627 = !DILocation(line: 0, scope: !1610)
!1628 = !DILocation(line: 382, column: 16, scope: !1530)
!1629 = !DILocation(line: 382, column: 14, scope: !1530)
!1630 = !DILocation(line: 383, column: 4, scope: !1530)
!1631 = !DILocation(line: 386, column: 8, scope: !1530)
!1632 = !DILocation(line: 387, column: 18, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 386, column: 8)
!1634 = !DILocation(line: 387, column: 6, scope: !1633)
!1635 = !DILocation(line: 390, column: 18, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 389, column: 6)
!1637 = !DILocation(line: 391, column: 18, scope: !1636)
!1638 = !DILocation(line: 392, column: 8, scope: !1636)
!1639 = !DILocation(line: 0, scope: !1636)
!1640 = !DILocation(line: 394, column: 36, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 393, column: 3)
!1642 = !DILocation(line: 394, column: 17, scope: !1641)
!1643 = !DILocation(line: 394, column: 15, scope: !1641)
!1644 = !DILocation(line: 396, column: 15, scope: !1641)
!1645 = !DILocation(line: 397, column: 17, scope: !1641)
!1646 = !DILocation(line: 397, column: 15, scope: !1641)
!1647 = distinct !{!1647, !1638, !1648}
!1648 = !DILocation(line: 398, column: 3, scope: !1636)
!1649 = !DILocation(line: 399, column: 20, scope: !1636)
!1650 = !DILocation(line: 0, scope: !1633)
!1651 = !DILocation(line: 401, column: 16, scope: !1530)
!1652 = !DILocation(line: 401, column: 14, scope: !1530)
!1653 = !DILocation(line: 402, column: 4, scope: !1530)
!1654 = !DILocation(line: 405, column: 8, scope: !1530)
!1655 = !DILocation(line: 406, column: 18, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 405, column: 8)
!1657 = !DILocation(line: 406, column: 6, scope: !1656)
!1658 = !DILocation(line: 409, column: 18, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 408, column: 6)
!1660 = !DILocation(line: 410, column: 18, scope: !1659)
!1661 = !DILocation(line: 411, column: 8, scope: !1659)
!1662 = !DILocation(line: 0, scope: !1659)
!1663 = !DILocation(line: 414, column: 4, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 412, column: 3)
!1665 = !DILocation(line: 413, column: 17, scope: !1664)
!1666 = !DILocation(line: 413, column: 15, scope: !1664)
!1667 = !DILocation(line: 415, column: 15, scope: !1664)
!1668 = !DILocation(line: 416, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 416, column: 9)
!1670 = !DILocation(line: 416, column: 9, scope: !1664)
!1671 = !DILocation(line: 417, column: 19, scope: !1669)
!1672 = !DILocation(line: 417, column: 17, scope: !1669)
!1673 = !DILocation(line: 417, column: 7, scope: !1669)
!1674 = distinct !{!1674, !1661, !1675}
!1675 = !DILocation(line: 418, column: 3, scope: !1659)
!1676 = !DILocation(line: 419, column: 20, scope: !1659)
!1677 = !DILocation(line: 0, scope: !1656)
!1678 = !DILocation(line: 421, column: 16, scope: !1530)
!1679 = !DILocation(line: 421, column: 14, scope: !1530)
!1680 = !DILocation(line: 422, column: 4, scope: !1530)
!1681 = !DILocation(line: 425, column: 16, scope: !1530)
!1682 = !DILocation(line: 425, column: 14, scope: !1530)
!1683 = !DILocation(line: 426, column: 4, scope: !1530)
!1684 = !DILocation(line: 430, column: 16, scope: !1530)
!1685 = !DILocation(line: 430, column: 14, scope: !1530)
!1686 = !DILocation(line: 433, column: 8, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 433, column: 8)
!1688 = !DILocation(line: 433, column: 26, scope: !1687)
!1689 = !DILocation(line: 433, column: 29, scope: !1687)
!1690 = !DILocation(line: 433, column: 8, scope: !1530)
!1691 = !DILocation(line: 434, column: 18, scope: !1687)
!1692 = !DILocation(line: 434, column: 16, scope: !1687)
!1693 = !DILocation(line: 434, column: 6, scope: !1687)
!1694 = !DILocation(line: 438, column: 16, scope: !1530)
!1695 = !DILocation(line: 438, column: 14, scope: !1530)
!1696 = !DILocation(line: 439, column: 4, scope: !1530)
!1697 = !DILocation(line: 442, column: 14, scope: !1530)
!1698 = !DILocation(line: 443, column: 4, scope: !1530)
!1699 = !DILocation(line: 446, column: 14, scope: !1530)
!1700 = !DILocation(line: 447, column: 4, scope: !1530)
!1701 = !DILocation(line: 450, column: 4, scope: !1530)
!1702 = !DILocation(line: 451, column: 2, scope: !1530)
!1703 = !DILocation(line: 453, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 453, column: 7)
!1705 = !DILocation(line: 453, column: 7, scope: !1518)
!1706 = !DILocation(line: 454, column: 15, scope: !1704)
!1707 = !DILocation(line: 455, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 455, column: 7)
!1709 = !DILocation(line: 454, column: 5, scope: !1704)
!1710 = !DILocation(line: 455, column: 7, scope: !1518)
!1711 = !DILocation(line: 456, column: 15, scope: !1708)
!1712 = !DILocation(line: 456, column: 5, scope: !1708)
!1713 = !DILocation(line: 457, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 457, column: 7)
!1715 = !DILocation(line: 457, column: 7, scope: !1518)
!1716 = !DILocation(line: 458, column: 15, scope: !1714)
!1717 = !DILocation(line: 458, column: 5, scope: !1714)
!1718 = !DILocation(line: 460, column: 1, scope: !1518)
!1719 = distinct !DISubprogram(name: "affix_data_type", scope: !3, file: !3, line: 65, type: !1720, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!889, !307}
!1722 = !{!1723, !1724, !1726, !1727, !1728}
!1723 = !DILocalVariable(name: "param", arg: 1, scope: !1719, file: !3, line: 65, type: !307)
!1724 = !DILocalVariable(name: "type_or_decl", scope: !1719, file: !3, line: 67, type: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!1726 = !DILocalVariable(name: "p", scope: !1719, file: !3, line: 68, type: !889)
!1727 = !DILocalVariable(name: "qualifiers_then_data_type", scope: !1719, file: !3, line: 69, type: !889)
!1728 = !DILocalVariable(name: "saved", scope: !1719, file: !3, line: 70, type: !92)
!1729 = !DILocation(line: 0, scope: !1719)
!1730 = !DILocation(line: 67, column: 30, scope: !1719)
!1731 = !DILocation(line: 74, column: 3, scope: !1719)
!1732 = !DILocation(line: 76, column: 12, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 76, column: 11)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 75, column: 5)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 74, column: 3)
!1736 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 74, column: 3)
!1737 = !DILocation(line: 76, column: 11, scope: !1734)
!1738 = !DILocation(line: 78, column: 6, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 77, column: 2)
!1740 = !DILocation(line: 79, column: 4, scope: !1739)
!1741 = distinct !{!1741, !1742, !1743}
!1742 = !DILocation(line: 74, column: 3, scope: !1736)
!1743 = !DILocation(line: 87, column: 5, scope: !1736)
!1744 = !DILocation(line: 81, column: 12, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 81, column: 11)
!1746 = !DILocation(line: 81, column: 11, scope: !1734)
!1747 = !DILocation(line: 83, column: 6, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !3, line: 82, column: 2)
!1749 = !DILocation(line: 84, column: 4, scope: !1748)
!1750 = !DILocation(line: 92, column: 9, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 92, column: 7)
!1752 = !DILocation(line: 92, column: 7, scope: !1719)
!1753 = !DILocation(line: 93, column: 20, scope: !1751)
!1754 = !DILocation(line: 93, column: 12, scope: !1751)
!1755 = !DILocation(line: 93, column: 5, scope: !1751)
!1756 = !DILocation(line: 95, column: 11, scope: !1719)
!1757 = !DILocation(line: 96, column: 6, scope: !1719)
!1758 = !DILocation(line: 97, column: 53, scope: !1719)
!1759 = !DILocation(line: 97, column: 31, scope: !1719)
!1760 = !DILocation(line: 98, column: 6, scope: !1719)
!1761 = !DILocation(line: 99, column: 10, scope: !1719)
!1762 = !DILocation(line: 99, column: 3, scope: !1719)
!1763 = !DILocation(line: 101, column: 1, scope: !1719)
!1764 = distinct !DISubprogram(name: "gen_formal_list_for_type", scope: !3, file: !3, line: 111, type: !1471, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770}
!1766 = !DILocalVariable(name: "fntype", arg: 1, scope: !1764, file: !3, line: 111, type: !6)
!1767 = !DILocalVariable(name: "style", arg: 2, scope: !1764, file: !3, line: 111, type: !1406)
!1768 = !DILocalVariable(name: "formal_list", scope: !1764, file: !3, line: 113, type: !307)
!1769 = !DILocalVariable(name: "formal_type", scope: !1764, file: !3, line: 114, type: !6)
!1770 = !DILocalVariable(name: "this_type", scope: !1771, file: !3, line: 122, type: !307)
!1771 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 121, column: 5)
!1772 = !DILocation(line: 0, scope: !1764)
!1773 = !DILocation(line: 116, column: 13, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 116, column: 7)
!1775 = !DILocation(line: 116, column: 7, scope: !1764)
!1776 = !DILocation(line: 119, column: 17, scope: !1764)
!1777 = !DILocation(line: 120, column: 3, scope: !1764)
!1778 = !DILocation(line: 120, column: 10, scope: !1764)
!1779 = !DILocation(line: 120, column: 22, scope: !1764)
!1780 = !DILocation(line: 120, column: 25, scope: !1764)
!1781 = !DILocation(line: 120, column: 53, scope: !1764)
!1782 = !DILocation(line: 120, column: 50, scope: !1764)
!1783 = !DILocation(line: 124, column: 11, scope: !1771)
!1784 = !DILocation(line: 125, column: 16, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 124, column: 11)
!1786 = !DILocation(line: 125, column: 2, scope: !1785)
!1787 = !DILocation(line: 127, column: 33, scope: !1771)
!1788 = !DILocation(line: 127, column: 19, scope: !1771)
!1789 = !DILocation(line: 0, scope: !1771)
!1790 = !DILocation(line: 129, column: 6, scope: !1771)
!1791 = !DILocation(line: 129, column: 5, scope: !1771)
!1792 = !DILocation(line: 130, column: 28, scope: !1771)
!1793 = !DILocation(line: 130, column: 7, scope: !1771)
!1794 = !DILocation(line: 131, column: 28, scope: !1771)
!1795 = !DILocation(line: 131, column: 7, scope: !1771)
!1796 = !DILocation(line: 133, column: 21, scope: !1771)
!1797 = distinct !{!1797, !1777, !1798}
!1798 = !DILocation(line: 134, column: 5, scope: !1764)
!1799 = !DILocation(line: 166, column: 7, scope: !1764)
!1800 = !DILocation(line: 168, column: 11, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 168, column: 11)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 167, column: 5)
!1803 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 166, column: 7)
!1804 = !DILocation(line: 173, column: 5, scope: !1802)
!1805 = !DILocation(line: 179, column: 11, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 175, column: 5)
!1807 = !DILocation(line: 180, column: 16, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 179, column: 11)
!1809 = !DILocation(line: 180, column: 2, scope: !1808)
!1810 = !DILocation(line: 183, column: 10, scope: !1764)
!1811 = !DILocation(line: 183, column: 3, scope: !1764)
!1812 = !DILocation(line: 184, column: 1, scope: !1764)
!1813 = distinct !DISubprogram(name: "deserves_ellipsis", scope: !3, file: !3, line: 193, type: !1814, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !879, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!89, !6}
!1816 = !{!1817, !1818}
!1817 = !DILocalVariable(name: "fntype", arg: 1, scope: !1813, file: !3, line: 193, type: !6)
!1818 = !DILocalVariable(name: "formal_type", scope: !1813, file: !3, line: 195, type: !6)
!1819 = !DILocation(line: 0, scope: !1813)
!1820 = !DILocation(line: 197, column: 17, scope: !1813)
!1821 = !DILocation(line: 198, column: 3, scope: !1813)
!1822 = !DILocation(line: 198, column: 22, scope: !1813)
!1823 = !DILocation(line: 198, column: 25, scope: !1813)
!1824 = !DILocation(line: 198, column: 50, scope: !1813)
!1825 = !DILocation(line: 199, column: 19, scope: !1813)
!1826 = distinct !{!1826, !1821, !1825}
!1827 = !DILocation(line: 205, column: 24, scope: !1813)
!1828 = !DILocation(line: 205, column: 27, scope: !1813)
!1829 = !DILocation(line: 205, column: 3, scope: !1813)
