; ModuleID = 'stringpool.bc'
source_filename = "stringpool.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i8* (i64)*, i32, i32, %struct.cpp_reader*, i32, i32, i8 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.cpp_reader = type opaque
%struct.string_pool_data = type { %struct.ht_identifier**, i32, i32 }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
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

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@empty_string = dso_local constant [1 x i8] zeroinitializer, align 1, !dbg !0
@digit_vector = dso_local constant [20 x i8] c"0\001\002\003\004\005\006\007\008\009\00", align 16, !dbg !898
@ident_hash = common dso_local local_unnamed_addr global %struct.ht* null, align 8, !dbg !922
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@spd = internal global %struct.string_pool_data* null, align 8, !dbg !980
@gt_ggc_r_gt_stringpool_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.string_pool_data** @spd to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_string_pool_data, void (i8*)* @gt_pch_nx_string_pool_data }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !903

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !987 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1000, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1001, metadata !DIExpression()), !dbg !1002
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1003
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1004
  ret i32 %call, !dbg !1005
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1006 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1010
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1011
  ret i32 %call, !dbg !1012
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1013 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1065, metadata !DIExpression()), !dbg !1066
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1067
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1067
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1067
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1067
  %cmp = icmp uge i8* %0, %1, !dbg !1067
  %conv1 = zext i1 %cmp to i64, !dbg !1067
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1067
  %tobool = icmp eq i64 %expval, 0, !dbg !1067
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1067

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1067
  br label %cond.end, !dbg !1067

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1067
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1067
  %2 = load i8, i8* %0, align 1, !dbg !1067
  %conv3 = zext i8 %2 to i32, !dbg !1067
  br label %cond.end, !dbg !1067

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1067
  ret i32 %cond, !dbg !1068
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1069 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1071, metadata !DIExpression()), !dbg !1072
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1073
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1073
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1073
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1073
  %cmp = icmp uge i8* %0, %1, !dbg !1073
  %conv1 = zext i1 %cmp to i64, !dbg !1073
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1073
  %tobool = icmp eq i64 %expval, 0, !dbg !1073
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1073

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1073
  br label %cond.end, !dbg !1073

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1073
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1073
  %2 = load i8, i8* %0, align 1, !dbg !1073
  %conv3 = zext i8 %2 to i32, !dbg !1073
  br label %cond.end, !dbg !1073

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1073
  ret i32 %cond, !dbg !1074
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1075 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1076
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1076
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1076
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1076
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1076
  %cmp = icmp uge i8* %1, %2, !dbg !1076
  %conv1 = zext i1 %cmp to i64, !dbg !1076
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1076
  %tobool = icmp eq i64 %expval, 0, !dbg !1076
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1076

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1076
  br label %cond.end, !dbg !1076

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1076
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1076
  %3 = load i8, i8* %1, align 1, !dbg !1076
  %conv3 = zext i8 %3 to i32, !dbg !1076
  br label %cond.end, !dbg !1076

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1076
  ret i32 %cond, !dbg !1077
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1078 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1082, metadata !DIExpression()), !dbg !1083
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1084
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1085
  ret i32 %call, !dbg !1086
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1087 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1091, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1092, metadata !DIExpression()), !dbg !1093
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1094
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1094
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1094
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1094
  %cmp = icmp uge i8* %0, %1, !dbg !1094
  %conv1 = zext i1 %cmp to i64, !dbg !1094
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1094
  %tobool = icmp eq i64 %expval, 0, !dbg !1094
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1094

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1094
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1094
  br label %cond.end, !dbg !1094

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1094
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1094
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1094
  store i8 %conv2, i8* %0, align 1, !dbg !1094
  %conv6 = and i32 %__c, 255, !dbg !1094
  br label %cond.end, !dbg !1094

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1094
  ret i32 %cond, !dbg !1095
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1096 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1098, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1099, metadata !DIExpression()), !dbg !1100
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1101
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1101
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1101
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1101
  %cmp = icmp uge i8* %0, %1, !dbg !1101
  %conv1 = zext i1 %cmp to i64, !dbg !1101
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1101
  %tobool = icmp eq i64 %expval, 0, !dbg !1101
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1101

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1101
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1101
  br label %cond.end, !dbg !1101

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1101
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1101
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1101
  store i8 %conv2, i8* %0, align 1, !dbg !1101
  %conv6 = and i32 %__c, 255, !dbg !1101
  br label %cond.end, !dbg !1101

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1101
  ret i32 %cond, !dbg !1102
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1103 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1105, metadata !DIExpression()), !dbg !1106
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1107
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1107
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1107
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1107
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1107
  %cmp = icmp uge i8* %1, %2, !dbg !1107
  %conv1 = zext i1 %cmp to i64, !dbg !1107
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1107
  %tobool = icmp eq i64 %expval, 0, !dbg !1107
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1107

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1107
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1107
  br label %cond.end, !dbg !1107

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1107
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1107
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1107
  store i8 %conv4, i8* %1, align 1, !dbg !1107
  %conv6 = and i32 %__c, 255, !dbg !1107
  br label %cond.end, !dbg !1107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1107
  ret i32 %cond, !dbg !1108
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1109 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1115, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1116, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1117, metadata !DIExpression()), !dbg !1118
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1119
  ret i64 %call, !dbg !1120
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1121 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1123, metadata !DIExpression()), !dbg !1124
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1125
  %0 = load i32, i32* %_flags, align 8, !dbg !1125
  %and = lshr i32 %0, 4, !dbg !1125
  %and.lobit = and i32 %and, 1, !dbg !1125
  ret i32 %and.lobit, !dbg !1126
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1127 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1129, metadata !DIExpression()), !dbg !1130
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1131
  %0 = load i32, i32* %_flags, align 8, !dbg !1131
  %and = lshr i32 %0, 5, !dbg !1131
  %and.lobit = and i32 %and, 1, !dbg !1131
  ret i32 %and.lobit, !dbg !1132
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1133 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1136, metadata !DIExpression()), !dbg !1137
  %__c.off = add i32 %__c, 128, !dbg !1138
  %0 = icmp ult i32 %__c.off, 384, !dbg !1138
  br i1 %0, label %cond.true, label %cond.end, !dbg !1138

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1139
  %1 = load i32*, i32** %call, align 8, !dbg !1140
  %idxprom = sext i32 %__c to i64, !dbg !1141
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1141
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1141
  br label %cond.end, !dbg !1142

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1142
  ret i32 %cond, !dbg !1143
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1144 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1146, metadata !DIExpression()), !dbg !1147
  %__c.off = add i32 %__c, 128, !dbg !1148
  %0 = icmp ult i32 %__c.off, 384, !dbg !1148
  br i1 %0, label %cond.true, label %cond.end, !dbg !1148

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1149
  %1 = load i32*, i32** %call, align 8, !dbg !1150
  %idxprom = sext i32 %__c to i64, !dbg !1151
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1151
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1151
  br label %cond.end, !dbg !1152

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1152
  ret i32 %cond, !dbg !1153
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1154 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1159, metadata !DIExpression()), !dbg !1160
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1161
  %conv = trunc i64 %call to i32, !dbg !1162
  ret i32 %conv, !dbg !1163
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1164 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1168, metadata !DIExpression()), !dbg !1169
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1170
  ret i64 %call, !dbg !1171
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1172 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1177, metadata !DIExpression()), !dbg !1178
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1179
  ret i64 %call, !dbg !1180
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1181 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1190, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1191, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1192, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1193, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1194, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 0, metadata !1195, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1196, metadata !DIExpression()), !dbg !1200
  br label %while.cond, !dbg !1201

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1202
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1200
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1196, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1195, metadata !DIExpression()), !dbg !1200
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1203
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1201

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1204
  %div = lshr i64 %add, 1, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %div, metadata !1197, metadata !DIExpression()), !dbg !1200
  %mul = mul i64 %div, %__size, !dbg !1207
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1208
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1198, metadata !DIExpression()), !dbg !1200
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %call, metadata !1199, metadata !DIExpression()), !dbg !1200
  %cmp1 = icmp slt i32 %call, 0, !dbg !1210
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1212

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1213
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1215

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1195, metadata !DIExpression()), !dbg !1200
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1200
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1200
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1196, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1195, metadata !DIExpression()), !dbg !1200
  br label %while.cond, !dbg !1201, !llvm.loop !1217

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1200
  ret i8* %retval.0, !dbg !1219
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1220 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1226, metadata !DIExpression()), !dbg !1227
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1228
  ret double %call, !dbg !1229
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1230 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1239, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1240, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %base, metadata !1241, metadata !DIExpression()), !dbg !1242
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1243
  ret i64 %call, !dbg !1244
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1245 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1251, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1252, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i32 %base, metadata !1253, metadata !DIExpression()), !dbg !1254
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1255
  ret i64 %call, !dbg !1256
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1257 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1268, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1269, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 %base, metadata !1270, metadata !DIExpression()), !dbg !1271
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1272
  ret i64 %call, !dbg !1273
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1274 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1278, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1279, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata i32 %base, metadata !1280, metadata !DIExpression()), !dbg !1281
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1282
  ret i64 %call, !dbg !1283
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1284 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1326, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1327, metadata !DIExpression()), !dbg !1328
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1329
  ret i32 %call, !dbg !1330
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1331 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1333, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1334, metadata !DIExpression()), !dbg !1335
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1336
  ret i32 %call, !dbg !1337
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1338 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1342, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1343, metadata !DIExpression()), !dbg !1344
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1345
  ret i32 %call, !dbg !1346
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1347 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1351, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1352, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1354, metadata !DIExpression()), !dbg !1355
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1356
  ret i32 %call, !dbg !1357
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1358 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1362, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1363, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1364, metadata !DIExpression()), !dbg !1365
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1364, metadata !DIExpression(DW_OP_deref)), !dbg !1365
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1366
  ret i32 %call, !dbg !1367
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1368 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1372, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1373, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1374, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1375, metadata !DIExpression()), !dbg !1376
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1375, metadata !DIExpression(DW_OP_deref)), !dbg !1376
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1377
  ret i32 %call, !dbg !1378
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1379 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1403, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1404, metadata !DIExpression()), !dbg !1405
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1406
  ret i32 %call, !dbg !1407
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1408 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1410, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1411, metadata !DIExpression()), !dbg !1412
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1413
  ret i32 %call, !dbg !1414
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1415 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1419, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1420, metadata !DIExpression()), !dbg !1421
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1422
  ret i32 %call, !dbg !1423
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1424 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1428, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1429, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1430, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1431, metadata !DIExpression()), !dbg !1432
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !1433
  ret i32 %call, !dbg !1434
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_stringpool() local_unnamed_addr #4 !dbg !1435 {
entry:
  %call = tail call %struct.ht* @ht_create(i32 14) #6, !dbg !1438
  store %struct.ht* %call, %struct.ht** @ident_hash, align 8, !dbg !1439
  %alloc_node = getelementptr inbounds %struct.ht, %struct.ht* %call, i64 0, i32 2, !dbg !1440
  store %struct.ht_identifier* (%struct.ht*)* @alloc_node, %struct.ht_identifier* (%struct.ht*)** %alloc_node, align 8, !dbg !1441
  %alloc_subobject = getelementptr inbounds %struct.ht, %struct.ht* %call, i64 0, i32 3, !dbg !1442
  store i8* (i64)* @stringpool_ggc_alloc, i8* (i64)** %alloc_subobject, align 8, !dbg !1443
  ret void, !dbg !1444
}

declare dso_local %struct.ht* @ht_create(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal %struct.ht_identifier* @alloc_node(%struct.ht* %table) #4 !dbg !1445 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !1447, metadata !DIExpression()), !dbg !1448
  %call = tail call %union.tree_node* @make_node_stat(i32 1) #6, !dbg !1449
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1449
  %0 = bitcast i32* %id to %struct.ht_identifier*, !dbg !1449
  ret %struct.ht_identifier* %0, !dbg !1450
}

; Function Attrs: nounwind uwtable
define internal i8* @stringpool_ggc_alloc(i64 %x) #4 !dbg !1451 {
entry:
  call void @llvm.dbg.value(metadata i64 %x, metadata !1453, metadata !DIExpression()), !dbg !1454
  %call = tail call i8* @ggc_alloc_stat(i64 %x) #6, !dbg !1455
  ret i8* %call, !dbg !1456
}

; Function Attrs: nounwind uwtable
define dso_local i8* @ggc_alloc_string(i8* %contents, i32 %length) local_unnamed_addr #4 !dbg !1457 {
entry:
  call void @llvm.dbg.value(metadata i8* %contents, metadata !1461, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %length, metadata !1462, metadata !DIExpression()), !dbg !1464
  %cmp = icmp eq i32 %length, -1, !dbg !1465
  br i1 %cmp, label %if.then, label %if.end, !dbg !1467

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %contents) #6, !dbg !1468
  %conv = trunc i64 %call to i32, !dbg !1468
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1462, metadata !DIExpression()), !dbg !1464
  br label %if.end, !dbg !1469

if.end:                                           ; preds = %if.then, %entry
  %length.addr.0 = phi i32 [ %conv, %if.then ], [ %length, %entry ]
  call void @llvm.dbg.value(metadata i32 %length.addr.0, metadata !1462, metadata !DIExpression()), !dbg !1464
  switch i32 %length.addr.0, label %if.end14 [
    i32 0, label %cleanup
    i32 1, label %land.lhs.true
  ], !dbg !1470

land.lhs.true:                                    ; preds = %if.end
  %0 = load i8, i8* %contents, align 1, !dbg !1471
  %idxprom = zext i8 %0 to i64, !dbg !1471
  %arrayidx8 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1471
  %1 = load i16, i16* %arrayidx8, align 2, !dbg !1471
  %2 = and i16 %1, 4, !dbg !1471
  %tobool = icmp eq i16 %2, 0, !dbg !1471
  br i1 %tobool, label %if.end14, label %if.then11, !dbg !1473

if.then11:                                        ; preds = %land.lhs.true
  %conv13 = sext i8 %0 to i32, !dbg !1474
  %sub = shl nsw i32 %conv13, 1, !dbg !1474
  %mul = add nsw i32 %sub, -96, !dbg !1474
  %idx.ext = sext i32 %mul to i64, !dbg !1474
  %add.ptr = getelementptr inbounds [20 x i8], [20 x i8]* @digit_vector, i64 0, i64 %idx.ext, !dbg !1474
  br label %cleanup, !dbg !1475

if.end14:                                         ; preds = %land.lhs.true, %if.end
  %add = add nsw i32 %length.addr.0, 1, !dbg !1476
  %conv15 = sext i32 %add to i64, !dbg !1476
  %call16 = tail call i8* @ggc_alloc_stat(i64 %conv15) #6, !dbg !1476
  call void @llvm.dbg.value(metadata i8* %call16, metadata !1463, metadata !DIExpression()), !dbg !1464
  %conv17 = sext i32 %length.addr.0 to i64, !dbg !1477
  %call18 = tail call i8* @memcpy(i8* %call16, i8* %contents, i64 %conv17) #6, !dbg !1478
  %arrayidx20 = getelementptr inbounds i8, i8* %call16, i64 %conv17, !dbg !1479
  store i8 0, i8* %arrayidx20, align 1, !dbg !1480
  br label %cleanup, !dbg !1481

cleanup:                                          ; preds = %if.end, %if.end14, %if.then11
  %retval.0 = phi i8* [ %add.ptr, %if.then11 ], [ %call16, %if.end14 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @empty_string, i64 0, i64 0), %if.end ], !dbg !1464
  ret i8* %retval.0, !dbg !1482
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @get_identifier(i8* %text) local_unnamed_addr #4 !dbg !1483 {
entry:
  call void @llvm.dbg.value(metadata i8* %text, metadata !1487, metadata !DIExpression()), !dbg !1489
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1490
  %call = tail call i64 @strlen(i8* %text) #6, !dbg !1491
  %call1 = tail call %struct.ht_identifier* @ht_lookup(%struct.ht* %0, i8* %text, i64 %call, i32 1) #6, !dbg !1492
  call void @llvm.dbg.value(metadata %struct.ht_identifier* %call1, metadata !1488, metadata !DIExpression()), !dbg !1489
  %add.ptr = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %call1, i64 -2, i32 1, !dbg !1493
  %1 = bitcast i32* %add.ptr to %union.tree_node*, !dbg !1493
  ret %union.tree_node* %1, !dbg !1494
}

declare dso_local %struct.ht_identifier* @ht_lookup(%struct.ht*, i8*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @get_identifier_with_length(i8* %text, i64 %length) local_unnamed_addr #4 !dbg !1495 {
entry:
  call void @llvm.dbg.value(metadata i8* %text, metadata !1499, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %length, metadata !1500, metadata !DIExpression()), !dbg !1502
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1503
  %call = tail call %struct.ht_identifier* @ht_lookup(%struct.ht* %0, i8* %text, i64 %length, i32 1) #6, !dbg !1504
  call void @llvm.dbg.value(metadata %struct.ht_identifier* %call, metadata !1501, metadata !DIExpression()), !dbg !1502
  %add.ptr = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %call, i64 -2, i32 1, !dbg !1505
  %1 = bitcast i32* %add.ptr to %union.tree_node*, !dbg !1505
  ret %union.tree_node* %1, !dbg !1506
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @maybe_get_identifier(i8* %text) local_unnamed_addr #4 !dbg !1507 {
entry:
  call void @llvm.dbg.value(metadata i8* %text, metadata !1509, metadata !DIExpression()), !dbg !1511
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1512
  %call = tail call i64 @strlen(i8* %text) #6, !dbg !1513
  %call1 = tail call %struct.ht_identifier* @ht_lookup(%struct.ht* %0, i8* %text, i64 %call, i32 0) #6, !dbg !1514
  call void @llvm.dbg.value(metadata %struct.ht_identifier* %call1, metadata !1510, metadata !DIExpression()), !dbg !1511
  %tobool = icmp eq %struct.ht_identifier* %call1, null, !dbg !1515
  %add.ptr = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %call1, i64 -2, i32 1, !dbg !1517
  %1 = bitcast i32* %add.ptr to %union.tree_node*, !dbg !1517
  %retval.0 = select i1 %tobool, %union.tree_node* null, %union.tree_node* %1, !dbg !1517
  ret %union.tree_node* %retval.0, !dbg !1518
}

; Function Attrs: nounwind uwtable
define dso_local void @stringpool_statistics() local_unnamed_addr #4 !dbg !1519 {
entry:
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1520
  tail call void @ht_dump_statistics(%struct.ht* %0) #6, !dbg !1521
  ret void, !dbg !1522
}

declare dso_local void @ht_dump_statistics(%struct.ht*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ggc_mark_stringpool() local_unnamed_addr #4 !dbg !1523 {
entry:
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1524
  tail call void @ht_forall(%struct.ht* %0, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* nonnull @mark_ident, i8* null) #6, !dbg !1525
  ret void, !dbg !1526
}

declare dso_local void @ht_forall(%struct.ht*, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @mark_ident(%struct.cpp_reader* %pfile, %struct.ht_identifier* %h, i8* %v) #4 !dbg !1527 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1531, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata %struct.ht_identifier* %h, metadata !1532, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata i8* %v, metadata !1533, metadata !DIExpression()), !dbg !1534
  %add.ptr1 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %h, i64 -2, i32 1, !dbg !1535
  %0 = bitcast i32* %add.ptr1 to i8*, !dbg !1535
  tail call void @gt_ggc_mx_lang_tree_node(i8* nonnull %0) #6, !dbg !1535
  ret i32 1, !dbg !1538
}

; Function Attrs: nounwind uwtable
define dso_local void @ggc_purge_stringpool() local_unnamed_addr #4 !dbg !1539 {
entry:
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1540
  tail call void @ht_purge(%struct.ht* %0, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* nonnull @maybe_delete_ident, i8* null) #6, !dbg !1541
  ret void, !dbg !1542
}

declare dso_local void @ht_purge(%struct.ht*, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @maybe_delete_ident(%struct.cpp_reader* %pfile, %struct.ht_identifier* %h, i8* %v) #4 !dbg !1543 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1545, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata %struct.ht_identifier* %h, metadata !1546, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %v, metadata !1547, metadata !DIExpression()), !dbg !1548
  %add.ptr = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %h, i64 -2, i32 1, !dbg !1549
  %0 = bitcast i32* %add.ptr to i8*, !dbg !1549
  %call = tail call i32 @ggc_marked_p(i8* nonnull %0) #6, !dbg !1550
  %tobool = icmp eq i32 %call, 0, !dbg !1551
  %lnot.ext = zext i1 %tobool to i32, !dbg !1551
  ret i32 %lnot.ext, !dbg !1552
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_p_S(i8* %obj, i8* %x, void (i8*, i8*)* %op, i8* %cookie) #4 !dbg !1553 {
entry:
  call void @llvm.dbg.value(metadata i8* %obj, metadata !1561, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8* %x, metadata !1562, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !1563, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !1564, metadata !DIExpression()), !dbg !1565
  ret void, !dbg !1566
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_n_S(i8* %x) local_unnamed_addr #4 !dbg !1567 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, metadata !1571, metadata !DIExpression()), !dbg !1572
  %call = tail call i32 @gt_pch_note_object(i8* %x, i8* %x, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_S, i32 217) #6, !dbg !1573
  ret void, !dbg !1574
}

declare dso_local i32 @gt_pch_note_object(i8*, i8*, void (i8*, i8*, void (i8*, i8*)*, i8*)*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_save_stringpool() local_unnamed_addr #4 !dbg !1575 {
entry:
  %call = tail call i8* @ggc_alloc_stat(i64 16) #6, !dbg !1576
  store i8* %call, i8** bitcast (%struct.string_pool_data** @spd to i8**), align 8, !dbg !1577
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1578
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %0, i64 0, i32 4, !dbg !1579
  %1 = load i32, i32* %nslots, align 8, !dbg !1579
  %nslots1 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1580
  %2 = bitcast i8* %nslots1 to i32*, !dbg !1580
  store i32 %1, i32* %2, align 8, !dbg !1581
  %nelements = getelementptr inbounds %struct.ht, %struct.ht* %0, i64 0, i32 5, !dbg !1582
  %3 = load i32, i32* %nelements, align 4, !dbg !1582
  %nelements2 = getelementptr inbounds i8, i8* %call, i64 12, !dbg !1583
  %4 = bitcast i8* %nelements2 to i32*, !dbg !1583
  store i32 %3, i32* %4, align 4, !dbg !1584
  %conv = zext i32 %1 to i64, !dbg !1585
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1585
  %call4 = tail call i8* @ggc_alloc_stat(i64 %mul) #6, !dbg !1585
  %5 = load i8**, i8*** bitcast (%struct.string_pool_data** @spd to i8***), align 8, !dbg !1586
  store i8* %call4, i8** %5, align 8, !dbg !1587
  %6 = load i8**, i8*** bitcast (%struct.string_pool_data** @spd to i8***), align 8, !dbg !1588
  %7 = load i8*, i8** %6, align 8, !dbg !1589
  %8 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1590
  %entries6 = getelementptr inbounds %struct.ht, %struct.ht* %8, i64 0, i32 1, !dbg !1591
  %9 = bitcast %struct.ht_identifier*** %entries6 to i8**, !dbg !1591
  %10 = load i8*, i8** %9, align 8, !dbg !1591
  %nslots7 = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !1592
  %11 = bitcast i8** %nslots7 to i32*, !dbg !1592
  %12 = load i32, i32* %11, align 8, !dbg !1592
  %conv8 = zext i32 %12 to i64, !dbg !1593
  %mul9 = shl nuw nsw i64 %conv8, 3, !dbg !1594
  %call10 = tail call i8* @memcpy(i8* %7, i8* %10, i64 %mul9) #6, !dbg !1595
  ret void, !dbg !1596
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_fixup_stringpool() local_unnamed_addr #4 !dbg !1597 {
entry:
  ret void, !dbg !1598
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_restore_stringpool() local_unnamed_addr #4 !dbg !1599 {
entry:
  %0 = load %struct.ht*, %struct.ht** @ident_hash, align 8, !dbg !1600
  %1 = load %struct.string_pool_data*, %struct.string_pool_data** @spd, align 8, !dbg !1601
  %entries = getelementptr inbounds %struct.string_pool_data, %struct.string_pool_data* %1, i64 0, i32 0, !dbg !1602
  %2 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !1602
  %nslots = getelementptr inbounds %struct.string_pool_data, %struct.string_pool_data* %1, i64 0, i32 1, !dbg !1603
  %3 = load i32, i32* %nslots, align 8, !dbg !1603
  %nelements = getelementptr inbounds %struct.string_pool_data, %struct.string_pool_data* %1, i64 0, i32 2, !dbg !1604
  %4 = load i32, i32* %nelements, align 4, !dbg !1604
  tail call void @ht_load(%struct.ht* %0, %struct.ht_identifier** %2, i32 %3, i32 %4, i8 zeroext 0) #6, !dbg !1605
  store %struct.string_pool_data* null, %struct.string_pool_data** @spd, align 8, !dbg !1606
  ret void, !dbg !1607
}

declare dso_local void @ht_load(%struct.ht*, %struct.ht_identifier**, i32, i32, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_ggc_mx_string_pool_data(i8* %x_p) #4 !dbg !1608 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !1610, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !1611, metadata !DIExpression()), !dbg !1627
  %cmp = icmp ne i8* %x_p, null, !dbg !1628
  %cmp1 = icmp ne i8* %x_p, inttoptr (i64 1 to i8*), !dbg !1628
  %or.cond = and i1 %cmp, %cmp1, !dbg !1628
  br i1 %or.cond, label %land.lhs.true2, label %if.end27, !dbg !1628

land.lhs.true2:                                   ; preds = %entry
  %call = tail call i32 @ggc_set_mark(i8* nonnull %x_p) #6, !dbg !1628
  %tobool = icmp eq i32 %call, 0, !dbg !1628
  br i1 %tobool, label %if.then, label %if.end27, !dbg !1629

if.then:                                          ; preds = %land.lhs.true2
  %entries = bitcast i8* %x_p to %struct.ht_identifier***, !dbg !1630
  %0 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !1630
  %cmp3 = icmp eq %struct.ht_identifier** %0, null, !dbg !1631
  br i1 %cmp3, label %if.end27, label %for.cond.preheader, !dbg !1632

for.cond.preheader:                               ; preds = %if.then
  %nslots = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !1633
  %1 = bitcast i8* %nslots to i32*, !dbg !1633
  br label %for.cond, !dbg !1634

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %.pre1 = phi %struct.ht_identifier** [ %.pre, %for.inc ], [ %0, %for.cond.preheader ]
  %2 = phi %struct.ht_identifier** [ %.pre, %for.inc ], [ %0, %for.cond.preheader ], !dbg !1635
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !1636
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !1613, metadata !DIExpression()), !dbg !1635
  %3 = load i32, i32* %1, align 8, !dbg !1637
  %conv = zext i32 %3 to i64, !dbg !1638
  %cmp5 = icmp eq i64 %i0.0, %conv, !dbg !1639
  br i1 %cmp5, label %do.body14, label %for.body, !dbg !1634

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %2, i64 %i0.0, !dbg !1640
  %4 = load %struct.ht_identifier*, %struct.ht_identifier** %arrayidx, align 8, !dbg !1640
  %tobool8 = icmp eq %struct.ht_identifier* %4, null, !dbg !1641
  br i1 %tobool8, label %do.body, label %cond.true, !dbg !1641

cond.true:                                        ; preds = %for.body
  %add.ptr = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %4, i64 -2, i32 1, !dbg !1642
  %5 = bitcast i32* %add.ptr to i8*, !dbg !1642
  %6 = bitcast i32* %add.ptr to %union.tree_node*, !dbg !1642
  br label %do.body, !dbg !1641

do.body:                                          ; preds = %for.body, %cond.true
  %7 = phi i8* [ %5, %cond.true ], [ null, %for.body ], !dbg !1641
  %cond = phi %union.tree_node* [ %6, %cond.true ], [ null, %for.body ], !dbg !1641
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !1618, metadata !DIExpression()), !dbg !1643
  %cmp11 = icmp eq %union.tree_node* %cond, null, !dbg !1644
  br i1 %cmp11, label %for.inc, label %if.then13, !dbg !1647

if.then13:                                        ; preds = %do.body
  tail call void @gt_ggc_mx_lang_tree_node(i8* %7) #6, !dbg !1644
  %.pre.pre = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !1635
  br label %for.inc, !dbg !1644

for.inc:                                          ; preds = %do.body, %if.then13
  %.pre = phi %struct.ht_identifier** [ %.pre1, %do.body ], [ %.pre.pre, %if.then13 ], !dbg !1635
  %inc = add i64 %i0.0, 1, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1613, metadata !DIExpression()), !dbg !1635
  br label %for.cond, !dbg !1649, !llvm.loop !1650

do.body14:                                        ; preds = %for.cond
  %.lcssa = phi %struct.ht_identifier** [ %2, %for.cond ], !dbg !1635
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %.lcssa, metadata !1624, metadata !DIExpression()), !dbg !1652
  %switch = icmp ult %struct.ht_identifier** %.lcssa, inttoptr (i64 2 to %struct.ht_identifier**), !dbg !1653
  br i1 %switch, label %if.end27, label %if.then21, !dbg !1653

if.then21:                                        ; preds = %do.body14
  %8 = bitcast %struct.ht_identifier** %.lcssa to i8*, !dbg !1655
  call void @llvm.dbg.value(metadata i8* %8, metadata !1624, metadata !DIExpression()), !dbg !1652
  %call22 = tail call i32 @ggc_set_mark(i8* %8) #6, !dbg !1653
  br label %if.end27, !dbg !1653

if.end27:                                         ; preds = %if.then, %land.lhs.true2, %do.body14, %if.then21, %entry
  ret void, !dbg !1656
}

declare dso_local i32 @ggc_set_mark(i8*) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_nx_string_pool_data(i8* %x_p) #4 !dbg !1657 {
entry:
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !1659, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !1660, metadata !DIExpression()), !dbg !1671
  %call = tail call i32 @gt_pch_note_object(i8* %x_p, i8* %x_p, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_16string_pool_data, i32 61) #6, !dbg !1672
  %tobool = icmp eq i32 %call, 0, !dbg !1672
  br i1 %tobool, label %if.end14, label %if.then, !dbg !1673

if.then:                                          ; preds = %entry
  %entries = bitcast i8* %x_p to %struct.ht_identifier***, !dbg !1674
  %0 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !1674
  %cmp = icmp eq %struct.ht_identifier** %0, null, !dbg !1675
  br i1 %cmp, label %if.end14, label %for.cond.preheader, !dbg !1676

for.cond.preheader:                               ; preds = %if.then
  %nslots = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !1677
  %1 = bitcast i8* %nslots to i32*, !dbg !1677
  br label %for.cond, !dbg !1678

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %.pre1 = phi %struct.ht_identifier** [ %.pre, %for.inc ], [ %0, %for.cond.preheader ]
  %2 = phi %struct.ht_identifier** [ %.pre, %for.inc ], [ %0, %for.cond.preheader ], !dbg !1679
  %i0.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !1680
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !1661, metadata !DIExpression()), !dbg !1679
  %3 = load i32, i32* %1, align 8, !dbg !1681
  %conv = zext i32 %3 to i64, !dbg !1682
  %cmp2 = icmp eq i64 %i0.0, %conv, !dbg !1683
  br i1 %cmp2, label %for.end, label %for.body, !dbg !1678

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %2, i64 %i0.0, !dbg !1684
  %4 = load %struct.ht_identifier*, %struct.ht_identifier** %arrayidx, align 8, !dbg !1684
  %tobool5 = icmp eq %struct.ht_identifier* %4, null, !dbg !1685
  br i1 %tobool5, label %do.body, label %cond.true, !dbg !1685

cond.true:                                        ; preds = %for.body
  %add.ptr = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %4, i64 -2, i32 1, !dbg !1686
  %5 = bitcast i32* %add.ptr to i8*, !dbg !1686
  %6 = bitcast i32* %add.ptr to %union.tree_node*, !dbg !1686
  br label %do.body, !dbg !1685

do.body:                                          ; preds = %for.body, %cond.true
  %7 = phi i8* [ %5, %cond.true ], [ null, %for.body ], !dbg !1685
  %cond = phi %union.tree_node* [ %6, %cond.true ], [ null, %for.body ], !dbg !1685
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !1666, metadata !DIExpression()), !dbg !1687
  %cmp8 = icmp eq %union.tree_node* %cond, null, !dbg !1688
  br i1 %cmp8, label %for.inc, label %if.then10, !dbg !1691

if.then10:                                        ; preds = %do.body
  tail call void @gt_pch_nx_lang_tree_node(i8* %7) #6, !dbg !1688
  %.pre.pre = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !1679
  br label %for.inc, !dbg !1688

for.inc:                                          ; preds = %do.body, %if.then10
  %.pre = phi %struct.ht_identifier** [ %.pre1, %do.body ], [ %.pre.pre, %if.then10 ], !dbg !1679
  %inc = add i64 %i0.0, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1661, metadata !DIExpression()), !dbg !1679
  br label %for.cond, !dbg !1693, !llvm.loop !1694

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.ht_identifier** [ %2, %for.cond ], !dbg !1679
  %8 = bitcast %struct.ht_identifier** %.lcssa to i8*, !dbg !1696
  %call12 = tail call i32 @gt_pch_note_object(i8* %8, i8* %x_p, void (i8*, i8*, void (i8*, i8*)*, i8*)* nonnull @gt_pch_p_16string_pool_data, i32 217) #6, !dbg !1697
  br label %if.end14, !dbg !1698

if.end14:                                         ; preds = %if.then, %entry, %for.end
  ret void, !dbg !1699
}

; Function Attrs: nounwind uwtable
define dso_local void @gt_pch_p_16string_pool_data(i8* %this_obj, i8* %x_p, void (i8*, i8*)* %op, i8* %cookie) #4 !dbg !1700 {
entry:
  %x1 = alloca %union.tree_node*, align 8
  call void @llvm.dbg.value(metadata i8* %this_obj, metadata !1702, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !1703, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %op, metadata !1704, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8* %cookie, metadata !1705, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8* %x_p, metadata !1706, metadata !DIExpression()), !dbg !1715
  %entries = bitcast i8* %x_p to %struct.ht_identifier***, !dbg !1716
  %0 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !1716
  %cmp = icmp eq %struct.ht_identifier** %0, null, !dbg !1717
  br i1 %cmp, label %if.end22, label %for.cond.preheader, !dbg !1718

for.cond.preheader:                               ; preds = %entry
  %nslots = getelementptr inbounds i8, i8* %x_p, i64 8, !dbg !1719
  %1 = bitcast i8* %nslots to i32*, !dbg !1719
  %2 = bitcast %union.tree_node** %x1 to i8*, !dbg !1720
  br label %for.cond, !dbg !1721

for.cond:                                         ; preds = %for.cond.preheader, %if.end
  %i0.0 = phi i64 [ %inc, %if.end ], [ 0, %for.cond.preheader ], !dbg !1722
  call void @llvm.dbg.value(metadata i64 %i0.0, metadata !1707, metadata !DIExpression()), !dbg !1723
  %3 = load i32, i32* %1, align 8, !dbg !1724
  %conv = zext i32 %3 to i64, !dbg !1725
  %cmp1 = icmp eq i64 %i0.0, %conv, !dbg !1726
  br i1 %cmp1, label %for.end, label %for.body, !dbg !1721

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !1727
  %4 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !1728
  %arrayidx = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %4, i64 %i0.0, !dbg !1729
  %5 = load %struct.ht_identifier*, %struct.ht_identifier** %arrayidx, align 8, !dbg !1729
  %tobool = icmp eq %struct.ht_identifier* %5, null, !dbg !1730
  %6 = bitcast %struct.ht_identifier** %4 to i8*, !dbg !1730
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1730

cond.true:                                        ; preds = %for.body
  %add.ptr = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %5, i64 -2, i32 1, !dbg !1731
  %7 = bitcast i32* %add.ptr to %union.tree_node*, !dbg !1731
  br label %cond.end, !dbg !1730

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %union.tree_node* [ %7, %cond.true ], [ null, %for.body ], !dbg !1730
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !1710, metadata !DIExpression()), !dbg !1720
  store %union.tree_node* %cond, %union.tree_node** %x1, align 8, !dbg !1732
  %cmp7 = icmp eq i8* %6, %this_obj, !dbg !1733
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !1735

if.then9:                                         ; preds = %cond.end
  call void %op(i8* nonnull %2, i8* %cookie) #6, !dbg !1736
  %.pre = load %union.tree_node*, %union.tree_node** %x1, align 8, !dbg !1737
  %.pre1 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !1738
  br label %if.end, !dbg !1736

if.end:                                           ; preds = %if.then9, %cond.end
  %8 = phi %struct.ht_identifier** [ %.pre1, %if.then9 ], [ %4, %cond.end ], !dbg !1738
  %9 = phi %union.tree_node* [ %.pre, %if.then9 ], [ %cond, %cond.end ], !dbg !1737
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !1710, metadata !DIExpression()), !dbg !1720
  %tobool10 = icmp eq %union.tree_node* %9, null, !dbg !1739
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1739
  %10 = bitcast i32* %id to %struct.ht_identifier*, !dbg !1739
  %cond14 = select i1 %tobool10, %struct.ht_identifier* null, %struct.ht_identifier* %10, !dbg !1739
  %arrayidx16 = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %8, i64 %i0.0, !dbg !1740
  store %struct.ht_identifier* %cond14, %struct.ht_identifier** %arrayidx16, align 8, !dbg !1741
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !1742
  %inc = add i64 %i0.0, 1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1707, metadata !DIExpression()), !dbg !1723
  br label %for.cond, !dbg !1744, !llvm.loop !1745

for.end:                                          ; preds = %for.cond
  %cmp17 = icmp eq i8* %x_p, %this_obj, !dbg !1747
  br i1 %cmp17, label %if.then19, label %if.end22, !dbg !1749

if.then19:                                        ; preds = %for.end
  call void %op(i8* %x_p, i8* %cookie) #6, !dbg !1750
  br label %if.end22, !dbg !1750

if.end22:                                         ; preds = %entry, %for.end, %if.then19
  ret void, !dbg !1751
}

declare dso_local void @gt_pch_nx_lang_tree_node(i8*) local_unnamed_addr #1

declare dso_local %union.tree_node* @make_node_stat(i32) local_unnamed_addr #1

declare dso_local i32 @ggc_marked_p(i8*) local_unnamed_addr #1

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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!983, !984, !985}
!llvm.ident = !{!986}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "empty_string", scope: !2, file: !3, line: 39, type: !982, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !233, globals: !897, nameTableKind: None)
!3 = !DIFile(filename: "stringpool.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !25, !32, !39}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !6, line: 280, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!9 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !6, line: 1817, baseType: !7, size: 32, elements: !26)
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!31 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !6, line: 1805, baseType: !7, size: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38}
!34 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!37 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!38 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !6, line: 39, baseType: !7, size: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!41 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!47 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!48 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!49 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!50 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!51 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!52 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!53 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!54 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!55 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!56 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!57 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!58 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!59 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!60 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!61 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!62 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!63 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!64 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!65 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!66 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!67 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!68 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!69 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!70 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!71 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!72 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!73 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!74 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!75 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!76 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!77 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!78 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!79 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!80 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!81 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!82 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!83 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!84 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!85 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!86 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!87 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!88 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!89 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!90 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!91 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!92 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!93 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!94 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!95 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!96 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!97 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!98 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!99 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!100 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!101 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!102 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!103 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!104 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!105 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!106 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!107 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!108 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!109 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!110 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!111 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!112 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!113 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!114 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!115 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!116 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!117 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!118 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!119 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!120 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!123 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!124 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!125 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!126 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!127 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!128 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!129 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!130 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!131 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!132 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!133 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!134 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!135 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!136 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!137 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!138 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!139 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!140 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!141 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!142 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!143 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!144 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!145 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!146 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!147 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!148 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!149 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!150 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!151 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!152 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!153 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!154 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!155 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!156 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!157 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!158 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!159 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!160 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!161 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!162 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!163 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!164 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!165 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!166 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!167 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!168 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!169 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!170 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!171 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!172 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!173 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!174 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!175 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!176 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!177 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!178 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!179 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!180 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!181 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!182 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!183 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!184 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!185 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!186 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!187 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!188 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!189 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!190 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!191 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!192 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!193 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!196 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!197 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!198 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!201 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!202 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!203 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!204 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!205 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!206 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!207 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!208 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!209 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!210 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!211 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!212 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!213 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!214 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!215 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!216 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!217 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!218 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!219 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!220 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!221 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!222 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!223 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!224 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!225 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!226 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!227 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!228 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!229 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!230 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!231 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!232 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!233 = !{!234, !235, !236, !237, !240, !241, !243, !238, !244, !246, !884, !886, !890, !894, !896}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!236 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!243 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !247, line: 56, baseType: !248)
!247 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !250)
!250 = !{!251, !284, !290, !303, !310, !317, !322, !331, !337, !348, !360, !398, !406, !434, !442, !443, !448, !457, !463, !468, !472, !476, !505, !554, !560, !567, !574, !600, !625, !642, !654, !676, !694, !866}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !249, file: !6, line: 3372, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !252, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !252, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !252, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !252, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !252, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !252, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !252, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !252, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !252, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !252, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !252, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !252, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !252, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !252, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !252, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !252, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !252, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !252, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !252, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !252, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !252, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !252, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !252, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !252, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !252, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !252, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !252, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !252, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !252, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !252, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !249, file: !6, line: 3373, baseType: !285, size: 192)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !286)
!286 = !{!287, !288, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !285, file: !6, line: 403, baseType: !252, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !285, file: !6, line: 404, baseType: !246, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !285, file: !6, line: 405, baseType: !246, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !249, file: !6, line: 3374, baseType: !291, size: 320)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !292)
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !291, file: !6, line: 1385, baseType: !285, size: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !291, file: !6, line: 1386, baseType: !295, size: 128, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !296, line: 58, baseType: !297)
!296 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 54, size: 128, elements: !298)
!298 = !{!299, !301}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !297, file: !296, line: 56, baseType: !300, size: 64)
!300 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !297, file: !296, line: 57, baseType: !302, size: 64, offset: 64)
!302 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !249, file: !6, line: 3375, baseType: !304, size: 256)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !304, file: !6, line: 1398, baseType: !285, size: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !304, file: !6, line: 1399, baseType: !308, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !249, file: !6, line: 3376, baseType: !311, size: 256)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !311, file: !6, line: 1409, baseType: !285, size: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !311, file: !6, line: 1410, baseType: !315, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !249, file: !6, line: 3377, baseType: !318, size: 256)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !318, file: !6, line: 1438, baseType: !285, size: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !318, file: !6, line: 1439, baseType: !246, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !249, file: !6, line: 3378, baseType: !323, size: 256)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !324)
!324 = !{!325, !326, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !323, file: !6, line: 1419, baseType: !285, size: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !323, file: !6, line: 1420, baseType: !236, size: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !323, file: !6, line: 1421, baseType: !328, size: 8, offset: 224)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 8, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 1)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !249, file: !6, line: 3379, baseType: !332, size: 320)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !333)
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !332, file: !6, line: 1429, baseType: !285, size: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !332, file: !6, line: 1430, baseType: !246, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !332, file: !6, line: 1431, baseType: !246, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !249, file: !6, line: 3380, baseType: !338, size: 320)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !338, file: !6, line: 1461, baseType: !285, size: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !338, file: !6, line: 1462, baseType: !342, size: 128, offset: 192)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !343, line: 31, size: 128, elements: !344)
!343 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!344 = !{!345, !346, !347}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !342, file: !343, line: 32, baseType: !244, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !342, file: !343, line: 33, baseType: !7, size: 32, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !342, file: !343, line: 34, baseType: !7, size: 32, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !249, file: !6, line: 3381, baseType: !349, size: 384)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !350)
!350 = !{!351, !352, !357, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !349, file: !6, line: 2508, baseType: !285, size: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !349, file: !6, line: 2509, baseType: !353, size: 32, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !354, line: 58, baseType: !355)
!354 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !356, line: 44, baseType: !7)
!356 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!357 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !349, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !6, line: 2511, baseType: !246, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !349, file: !6, line: 2512, baseType: !246, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !249, file: !6, line: 3382, baseType: !361, size: 896)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !361, file: !6, line: 2653, baseType: !349, size: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !6, line: 2654, baseType: !246, size: 64, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !361, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !361, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !361, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !361, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !361, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !361, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !361, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !361, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !361, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !361, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !361, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !361, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !361, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !361, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !361, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !361, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !361, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !361, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !361, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !361, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !361, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !361, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !361, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !361, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !361, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !361, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !361, file: !6, line: 2705, baseType: !246, size: 64, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !361, file: !6, line: 2706, baseType: !246, size: 64, offset: 640)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !361, file: !6, line: 2707, baseType: !246, size: 64, offset: 704)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !361, file: !6, line: 2708, baseType: !246, size: 64, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !361, file: !6, line: 2711, baseType: !396, size: 64, offset: 832)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !249, file: !6, line: 3383, baseType: !399, size: 960)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !399, file: !6, line: 2757, baseType: !361, size: 896)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !399, file: !6, line: 2758, baseType: !403, size: 64, offset: 896)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !247, line: 50, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !247, line: 49, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !249, file: !6, line: 3384, baseType: !407, size: 1472)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !408)
!408 = !{!409, !430, !431, !432, !433}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !407, file: !6, line: 3115, baseType: !410, size: 1216)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !410, file: !6, line: 2985, baseType: !399, size: 960)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !410, file: !6, line: 2986, baseType: !246, size: 64, offset: 960)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !410, file: !6, line: 2987, baseType: !246, size: 64, offset: 1024)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !410, file: !6, line: 2988, baseType: !246, size: 64, offset: 1088)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !410, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !410, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !410, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !410, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !410, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !410, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !410, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !410, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !410, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !410, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !410, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !410, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !410, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !410, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !407, file: !6, line: 3117, baseType: !246, size: 64, offset: 1216)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !407, file: !6, line: 3119, baseType: !246, size: 64, offset: 1280)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !407, file: !6, line: 3121, baseType: !246, size: 64, offset: 1344)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !407, file: !6, line: 3123, baseType: !246, size: 64, offset: 1408)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !249, file: !6, line: 3385, baseType: !435, size: 1088)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !436)
!436 = !{!437, !438, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !435, file: !6, line: 2875, baseType: !399, size: 960)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !435, file: !6, line: 2876, baseType: !403, size: 64, offset: 960)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !435, file: !6, line: 2877, baseType: !440, size: 64, offset: 1024)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !6, line: 2856, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !249, file: !6, line: 3386, baseType: !410, size: 1216)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !249, file: !6, line: 3387, baseType: !444, size: 1280)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !444, file: !6, line: 3094, baseType: !410, size: 1216)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !444, file: !6, line: 3095, baseType: !440, size: 64, offset: 1216)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !249, file: !6, line: 3388, baseType: !449, size: 1216)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !449, file: !6, line: 2825, baseType: !361, size: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !449, file: !6, line: 2827, baseType: !246, size: 64, offset: 896)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !449, file: !6, line: 2828, baseType: !246, size: 64, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !449, file: !6, line: 2829, baseType: !246, size: 64, offset: 1024)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !449, file: !6, line: 2830, baseType: !246, size: 64, offset: 1088)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !449, file: !6, line: 2831, baseType: !246, size: 64, offset: 1152)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !249, file: !6, line: 3389, baseType: !458, size: 1024)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !459)
!459 = !{!460, !461, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !458, file: !6, line: 2851, baseType: !399, size: 960)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !458, file: !6, line: 2852, baseType: !236, size: 32, offset: 960)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !458, file: !6, line: 2853, baseType: !236, size: 32, offset: 992)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !249, file: !6, line: 3390, baseType: !464, size: 1024)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !464, file: !6, line: 2858, baseType: !399, size: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !464, file: !6, line: 2859, baseType: !440, size: 64, offset: 960)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !249, file: !6, line: 3391, baseType: !469, size: 960)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !470)
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !469, file: !6, line: 2863, baseType: !399, size: 960)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !249, file: !6, line: 3392, baseType: !473, size: 1472)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !473, file: !6, line: 3305, baseType: !407, size: 1472)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !249, file: !6, line: 3393, baseType: !477, size: 1792)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !478)
!478 = !{!479, !480, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !477, file: !6, line: 3249, baseType: !407, size: 1472)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !477, file: !6, line: 3251, baseType: !481, size: 64, offset: 1472)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !483, line: 41, flags: DIFlagFwdDecl)
!483 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!484 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !477, file: !6, line: 3254, baseType: !246, size: 64, offset: 1536)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !477, file: !6, line: 3257, baseType: !246, size: 64, offset: 1600)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !477, file: !6, line: 3258, baseType: !246, size: 64, offset: 1664)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !477, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !477, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !477, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !477, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !477, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !477, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !477, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !477, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !477, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !477, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !477, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !477, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !477, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !477, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !477, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !477, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !477, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !477, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !249, file: !6, line: 3394, baseType: !506, size: 1344)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !533, !534, !535, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !506, file: !6, line: 2280, baseType: !285, size: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !506, file: !6, line: 2281, baseType: !246, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !506, file: !6, line: 2282, baseType: !246, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !506, file: !6, line: 2283, baseType: !246, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !506, file: !6, line: 2284, baseType: !246, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !506, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !506, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !506, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !506, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !506, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !506, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !506, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !506, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !506, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !506, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !506, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !506, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !506, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !506, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !506, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !506, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !506, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !506, file: !6, line: 2306, baseType: !531, size: 32, offset: 544)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !532, line: 31, baseType: !236)
!532 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !506, file: !6, line: 2307, baseType: !246, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !506, file: !6, line: 2308, baseType: !246, size: 64, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !506, file: !6, line: 2314, baseType: !536, size: 64, offset: 704)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !537)
!537 = !{!538, !539, !540}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !536, file: !6, line: 2310, baseType: !236, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !536, file: !6, line: 2311, baseType: !241, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !536, file: !6, line: 2312, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !506, file: !6, line: 2315, baseType: !246, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !506, file: !6, line: 2316, baseType: !246, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !506, file: !6, line: 2317, baseType: !246, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !506, file: !6, line: 2318, baseType: !246, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !506, file: !6, line: 2319, baseType: !246, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !506, file: !6, line: 2320, baseType: !246, size: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !506, file: !6, line: 2321, baseType: !246, size: 64, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !506, file: !6, line: 2322, baseType: !246, size: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !506, file: !6, line: 2324, baseType: !552, size: 64, offset: 1280)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !249, file: !6, line: 3395, baseType: !555, size: 320)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !556)
!556 = !{!557, !558, !559}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !555, file: !6, line: 1470, baseType: !285, size: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !555, file: !6, line: 1471, baseType: !246, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !555, file: !6, line: 1472, baseType: !246, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !249, file: !6, line: 3396, baseType: !561, size: 320)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !562)
!562 = !{!563, !564, !565}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !561, file: !6, line: 1483, baseType: !285, size: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !561, file: !6, line: 1484, baseType: !236, size: 32, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !561, file: !6, line: 1485, baseType: !566, size: 64, offset: 256)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 64, elements: !329)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !249, file: !6, line: 3397, baseType: !568, size: 384)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !569)
!569 = !{!570, !571, !572, !573}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !568, file: !6, line: 1830, baseType: !285, size: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !568, file: !6, line: 1831, baseType: !353, size: 32, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !568, file: !6, line: 1832, baseType: !246, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !568, file: !6, line: 1835, baseType: !566, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !249, file: !6, line: 3398, baseType: !575, size: 704)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !576)
!576 = !{!577, !578, !579, !583, !584, !587}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !575, file: !6, line: 1899, baseType: !285, size: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !575, file: !6, line: 1902, baseType: !246, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !575, file: !6, line: 1905, baseType: !580, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !247, line: 58, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !247, line: 57, flags: DIFlagFwdDecl)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !575, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !575, file: !6, line: 1911, baseType: !585, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !6, line: 1876, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !575, file: !6, line: 1914, baseType: !588, size: 256, offset: 448)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !589)
!589 = !{!590, !592, !593, !598}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !588, file: !6, line: 1884, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !6, line: 1885, baseType: !591, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !588, file: !6, line: 1891, baseType: !594, size: 64, offset: 128)
!594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !6, line: 1891, size: 64, elements: !595)
!595 = !{!596, !597}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !594, file: !6, line: 1891, baseType: !580, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !594, file: !6, line: 1891, baseType: !246, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !588, file: !6, line: 1892, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !249, file: !6, line: 3399, baseType: !601, size: 704)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !620, !621, !622, !623, !624}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !601, file: !6, line: 2009, baseType: !285, size: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !601, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !601, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !601, file: !6, line: 2014, baseType: !353, size: 32, offset: 224)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !601, file: !6, line: 2016, baseType: !246, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !601, file: !6, line: 2017, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !611, file: !6, line: 183, baseType: !614, size: 128)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !616)
!616 = !{!617, !618, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !615, file: !6, line: 182, baseType: !7, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !615, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !615, file: !6, line: 182, baseType: !566, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !601, file: !6, line: 2019, baseType: !246, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !601, file: !6, line: 2020, baseType: !246, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !601, file: !6, line: 2021, baseType: !246, size: 64, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !601, file: !6, line: 2022, baseType: !246, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !601, file: !6, line: 2023, baseType: !246, size: 64, offset: 640)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !249, file: !6, line: 3400, baseType: !626, size: 832)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !626, file: !6, line: 2431, baseType: !285, size: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !626, file: !6, line: 2433, baseType: !246, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !626, file: !6, line: 2434, baseType: !246, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !626, file: !6, line: 2435, baseType: !246, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !626, file: !6, line: 2436, baseType: !246, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !626, file: !6, line: 2437, baseType: !609, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !626, file: !6, line: 2438, baseType: !246, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !626, file: !6, line: 2440, baseType: !246, size: 64, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !626, file: !6, line: 2441, baseType: !246, size: 64, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !626, file: !6, line: 2443, baseType: !638, size: 128, offset: 704)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !639, file: !6, line: 182, baseType: !614, size: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !249, file: !6, line: 3401, baseType: !643, size: 320)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !644)
!644 = !{!645, !646, !653}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !643, file: !6, line: 3329, baseType: !285, size: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !643, file: !6, line: 3330, baseType: !647, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !649)
!649 = !{!650, !651, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !648, file: !6, line: 3322, baseType: !647, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !648, file: !6, line: 3323, baseType: !647, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !648, file: !6, line: 3324, baseType: !246, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !643, file: !6, line: 3331, baseType: !647, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !249, file: !6, line: 3402, baseType: !655, size: 256)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !655, file: !6, line: 1541, baseType: !285, size: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !655, file: !6, line: 1542, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !661, file: !6, line: 1538, baseType: !664, size: 192)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !666)
!666 = !{!667, !668, !669}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !665, file: !6, line: 1537, baseType: !7, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !665, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !665, file: !6, line: 1537, baseType: !670, size: 128, offset: 64)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 128, elements: !329)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !672, file: !6, line: 1533, baseType: !246, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !6, line: 1534, baseType: !246, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !249, file: !6, line: 3403, baseType: !677, size: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !678)
!678 = !{!679, !680, !681, !682, !688, !692, !693}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !677, file: !6, line: 1939, baseType: !285, size: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !677, file: !6, line: 1940, baseType: !353, size: 32, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !677, file: !6, line: 1941, baseType: !5, size: 32, offset: 224)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !677, file: !6, line: 1946, baseType: !683, size: 32, offset: 256)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !684)
!684 = !{!685, !686, !687}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !683, file: !6, line: 1943, baseType: !25, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !683, file: !6, line: 1944, baseType: !32, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !683, file: !6, line: 1945, baseType: !39, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !677, file: !6, line: 1950, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !247, line: 66, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !247, line: 65, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !677, file: !6, line: 1951, baseType: !689, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !677, file: !6, line: 1953, baseType: !566, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !249, file: !6, line: 3404, baseType: !695, size: 1664)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !695, file: !6, line: 3338, baseType: !285, size: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !695, file: !6, line: 3341, baseType: !699, size: 1472, offset: 192)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !700, line: 410, size: 1472, elements: !701)
!700 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !699, file: !700, line: 412, baseType: !236, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !699, file: !700, line: 413, baseType: !236, size: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !699, file: !700, line: 414, baseType: !236, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !699, file: !700, line: 415, baseType: !236, size: 32, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !699, file: !700, line: 416, baseType: !236, size: 32, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !699, file: !700, line: 417, baseType: !236, size: 32, offset: 160)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !699, file: !700, line: 418, baseType: !235, size: 8, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !699, file: !700, line: 419, baseType: !235, size: 8, offset: 200)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !699, file: !700, line: 420, baseType: !711, size: 8, offset: 208)
!711 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !699, file: !700, line: 421, baseType: !711, size: 8, offset: 216)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !699, file: !700, line: 422, baseType: !711, size: 8, offset: 224)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !699, file: !700, line: 423, baseType: !711, size: 8, offset: 232)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !699, file: !700, line: 424, baseType: !711, size: 8, offset: 240)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !699, file: !700, line: 425, baseType: !711, size: 8, offset: 248)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !699, file: !700, line: 426, baseType: !711, size: 8, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !699, file: !700, line: 427, baseType: !711, size: 8, offset: 264)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !699, file: !700, line: 428, baseType: !711, size: 8, offset: 272)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !699, file: !700, line: 429, baseType: !711, size: 8, offset: 280)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !699, file: !700, line: 430, baseType: !711, size: 8, offset: 288)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !699, file: !700, line: 431, baseType: !711, size: 8, offset: 296)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !699, file: !700, line: 432, baseType: !711, size: 8, offset: 304)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !699, file: !700, line: 433, baseType: !711, size: 8, offset: 312)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !699, file: !700, line: 434, baseType: !711, size: 8, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !699, file: !700, line: 435, baseType: !711, size: 8, offset: 328)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !699, file: !700, line: 436, baseType: !711, size: 8, offset: 336)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !699, file: !700, line: 437, baseType: !711, size: 8, offset: 344)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !699, file: !700, line: 438, baseType: !711, size: 8, offset: 352)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !699, file: !700, line: 439, baseType: !711, size: 8, offset: 360)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !699, file: !700, line: 440, baseType: !711, size: 8, offset: 368)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !699, file: !700, line: 441, baseType: !711, size: 8, offset: 376)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !699, file: !700, line: 442, baseType: !711, size: 8, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !699, file: !700, line: 443, baseType: !711, size: 8, offset: 392)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !699, file: !700, line: 444, baseType: !711, size: 8, offset: 400)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !699, file: !700, line: 445, baseType: !711, size: 8, offset: 408)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !699, file: !700, line: 446, baseType: !711, size: 8, offset: 416)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !699, file: !700, line: 447, baseType: !711, size: 8, offset: 424)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !699, file: !700, line: 448, baseType: !711, size: 8, offset: 432)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !699, file: !700, line: 449, baseType: !711, size: 8, offset: 440)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !699, file: !700, line: 450, baseType: !711, size: 8, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !699, file: !700, line: 451, baseType: !711, size: 8, offset: 456)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !699, file: !700, line: 452, baseType: !711, size: 8, offset: 464)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !699, file: !700, line: 453, baseType: !711, size: 8, offset: 472)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !699, file: !700, line: 454, baseType: !711, size: 8, offset: 480)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !699, file: !700, line: 455, baseType: !711, size: 8, offset: 488)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !699, file: !700, line: 456, baseType: !711, size: 8, offset: 496)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !699, file: !700, line: 457, baseType: !711, size: 8, offset: 504)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !699, file: !700, line: 458, baseType: !711, size: 8, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !699, file: !700, line: 459, baseType: !711, size: 8, offset: 520)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !699, file: !700, line: 460, baseType: !711, size: 8, offset: 528)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !699, file: !700, line: 461, baseType: !711, size: 8, offset: 536)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !699, file: !700, line: 462, baseType: !711, size: 8, offset: 544)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !699, file: !700, line: 463, baseType: !711, size: 8, offset: 552)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !699, file: !700, line: 464, baseType: !711, size: 8, offset: 560)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !699, file: !700, line: 465, baseType: !711, size: 8, offset: 568)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !699, file: !700, line: 466, baseType: !711, size: 8, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !699, file: !700, line: 467, baseType: !711, size: 8, offset: 584)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !699, file: !700, line: 468, baseType: !711, size: 8, offset: 592)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !699, file: !700, line: 469, baseType: !711, size: 8, offset: 600)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !699, file: !700, line: 470, baseType: !711, size: 8, offset: 608)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !699, file: !700, line: 471, baseType: !711, size: 8, offset: 616)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !699, file: !700, line: 472, baseType: !711, size: 8, offset: 624)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !699, file: !700, line: 473, baseType: !711, size: 8, offset: 632)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !699, file: !700, line: 474, baseType: !711, size: 8, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !699, file: !700, line: 475, baseType: !711, size: 8, offset: 648)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !699, file: !700, line: 476, baseType: !711, size: 8, offset: 656)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !699, file: !700, line: 477, baseType: !711, size: 8, offset: 664)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !699, file: !700, line: 478, baseType: !711, size: 8, offset: 672)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !699, file: !700, line: 479, baseType: !711, size: 8, offset: 680)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !699, file: !700, line: 480, baseType: !711, size: 8, offset: 688)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !699, file: !700, line: 481, baseType: !711, size: 8, offset: 696)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !699, file: !700, line: 482, baseType: !711, size: 8, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !699, file: !700, line: 483, baseType: !711, size: 8, offset: 712)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !699, file: !700, line: 484, baseType: !711, size: 8, offset: 720)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !699, file: !700, line: 485, baseType: !711, size: 8, offset: 728)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !699, file: !700, line: 486, baseType: !711, size: 8, offset: 736)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !699, file: !700, line: 487, baseType: !711, size: 8, offset: 744)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !699, file: !700, line: 488, baseType: !711, size: 8, offset: 752)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !699, file: !700, line: 489, baseType: !711, size: 8, offset: 760)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !699, file: !700, line: 490, baseType: !711, size: 8, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !699, file: !700, line: 491, baseType: !711, size: 8, offset: 776)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !699, file: !700, line: 492, baseType: !711, size: 8, offset: 784)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !699, file: !700, line: 493, baseType: !711, size: 8, offset: 792)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !699, file: !700, line: 494, baseType: !711, size: 8, offset: 800)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !699, file: !700, line: 495, baseType: !711, size: 8, offset: 808)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !699, file: !700, line: 496, baseType: !711, size: 8, offset: 816)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !699, file: !700, line: 497, baseType: !711, size: 8, offset: 824)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !699, file: !700, line: 498, baseType: !711, size: 8, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !699, file: !700, line: 499, baseType: !711, size: 8, offset: 840)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !699, file: !700, line: 500, baseType: !711, size: 8, offset: 848)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !699, file: !700, line: 501, baseType: !711, size: 8, offset: 856)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !699, file: !700, line: 502, baseType: !711, size: 8, offset: 864)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !699, file: !700, line: 503, baseType: !711, size: 8, offset: 872)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !699, file: !700, line: 504, baseType: !711, size: 8, offset: 880)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !699, file: !700, line: 505, baseType: !711, size: 8, offset: 888)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !699, file: !700, line: 506, baseType: !711, size: 8, offset: 896)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !699, file: !700, line: 507, baseType: !711, size: 8, offset: 904)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !699, file: !700, line: 508, baseType: !711, size: 8, offset: 912)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !699, file: !700, line: 509, baseType: !711, size: 8, offset: 920)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !699, file: !700, line: 510, baseType: !711, size: 8, offset: 928)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !699, file: !700, line: 511, baseType: !711, size: 8, offset: 936)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !699, file: !700, line: 512, baseType: !711, size: 8, offset: 944)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !699, file: !700, line: 513, baseType: !711, size: 8, offset: 952)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !699, file: !700, line: 514, baseType: !711, size: 8, offset: 960)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !699, file: !700, line: 515, baseType: !711, size: 8, offset: 968)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !699, file: !700, line: 516, baseType: !711, size: 8, offset: 976)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !699, file: !700, line: 517, baseType: !711, size: 8, offset: 984)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !699, file: !700, line: 518, baseType: !711, size: 8, offset: 992)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !699, file: !700, line: 519, baseType: !711, size: 8, offset: 1000)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !699, file: !700, line: 520, baseType: !711, size: 8, offset: 1008)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !699, file: !700, line: 521, baseType: !711, size: 8, offset: 1016)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !699, file: !700, line: 522, baseType: !711, size: 8, offset: 1024)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !699, file: !700, line: 523, baseType: !711, size: 8, offset: 1032)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !699, file: !700, line: 524, baseType: !711, size: 8, offset: 1040)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !699, file: !700, line: 525, baseType: !711, size: 8, offset: 1048)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !699, file: !700, line: 526, baseType: !711, size: 8, offset: 1056)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !699, file: !700, line: 527, baseType: !711, size: 8, offset: 1064)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !699, file: !700, line: 528, baseType: !711, size: 8, offset: 1072)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !699, file: !700, line: 529, baseType: !711, size: 8, offset: 1080)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !699, file: !700, line: 530, baseType: !711, size: 8, offset: 1088)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !699, file: !700, line: 531, baseType: !711, size: 8, offset: 1096)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !699, file: !700, line: 532, baseType: !711, size: 8, offset: 1104)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !699, file: !700, line: 533, baseType: !711, size: 8, offset: 1112)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !699, file: !700, line: 534, baseType: !711, size: 8, offset: 1120)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !699, file: !700, line: 535, baseType: !711, size: 8, offset: 1128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !699, file: !700, line: 536, baseType: !711, size: 8, offset: 1136)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !699, file: !700, line: 537, baseType: !711, size: 8, offset: 1144)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !699, file: !700, line: 538, baseType: !711, size: 8, offset: 1152)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !699, file: !700, line: 539, baseType: !711, size: 8, offset: 1160)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !699, file: !700, line: 540, baseType: !711, size: 8, offset: 1168)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !699, file: !700, line: 541, baseType: !711, size: 8, offset: 1176)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !699, file: !700, line: 542, baseType: !711, size: 8, offset: 1184)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !699, file: !700, line: 543, baseType: !711, size: 8, offset: 1192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !699, file: !700, line: 544, baseType: !711, size: 8, offset: 1200)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !699, file: !700, line: 545, baseType: !711, size: 8, offset: 1208)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !699, file: !700, line: 546, baseType: !711, size: 8, offset: 1216)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !699, file: !700, line: 547, baseType: !711, size: 8, offset: 1224)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !699, file: !700, line: 548, baseType: !711, size: 8, offset: 1232)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !699, file: !700, line: 549, baseType: !711, size: 8, offset: 1240)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !699, file: !700, line: 550, baseType: !711, size: 8, offset: 1248)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !699, file: !700, line: 551, baseType: !711, size: 8, offset: 1256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !699, file: !700, line: 552, baseType: !711, size: 8, offset: 1264)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !699, file: !700, line: 553, baseType: !711, size: 8, offset: 1272)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !699, file: !700, line: 554, baseType: !711, size: 8, offset: 1280)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !699, file: !700, line: 555, baseType: !711, size: 8, offset: 1288)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !699, file: !700, line: 556, baseType: !711, size: 8, offset: 1296)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !699, file: !700, line: 557, baseType: !711, size: 8, offset: 1304)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !699, file: !700, line: 558, baseType: !711, size: 8, offset: 1312)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !699, file: !700, line: 559, baseType: !711, size: 8, offset: 1320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !699, file: !700, line: 560, baseType: !711, size: 8, offset: 1328)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !699, file: !700, line: 561, baseType: !711, size: 8, offset: 1336)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !699, file: !700, line: 562, baseType: !711, size: 8, offset: 1344)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !699, file: !700, line: 563, baseType: !711, size: 8, offset: 1352)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !699, file: !700, line: 564, baseType: !711, size: 8, offset: 1360)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !699, file: !700, line: 565, baseType: !711, size: 8, offset: 1368)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !699, file: !700, line: 566, baseType: !711, size: 8, offset: 1376)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !699, file: !700, line: 567, baseType: !711, size: 8, offset: 1384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !699, file: !700, line: 568, baseType: !711, size: 8, offset: 1392)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !699, file: !700, line: 569, baseType: !711, size: 8, offset: 1400)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !699, file: !700, line: 570, baseType: !711, size: 8, offset: 1408)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !699, file: !700, line: 571, baseType: !711, size: 8, offset: 1416)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !699, file: !700, line: 572, baseType: !711, size: 8, offset: 1424)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !699, file: !700, line: 573, baseType: !711, size: 8, offset: 1432)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !699, file: !700, line: 574, baseType: !711, size: 8, offset: 1440)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !249, file: !6, line: 3405, baseType: !867, size: 384)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !867, file: !6, line: 3353, baseType: !285, size: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !867, file: !6, line: 3356, baseType: !871, size: 192, offset: 192)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !700, line: 578, size: 192, elements: !872)
!872 = !{!873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !871, file: !700, line: 580, baseType: !236, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !871, file: !700, line: 581, baseType: !236, size: 32, offset: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !871, file: !700, line: 582, baseType: !236, size: 32, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !871, file: !700, line: 583, baseType: !236, size: 32, offset: 96)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !871, file: !700, line: 584, baseType: !235, size: 8, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !871, file: !700, line: 585, baseType: !235, size: 8, offset: 136)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !871, file: !700, line: 586, baseType: !235, size: 8, offset: 144)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !871, file: !700, line: 587, baseType: !235, size: 8, offset: 152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !871, file: !700, line: 588, baseType: !235, size: 8, offset: 160)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !871, file: !700, line: 589, baseType: !235, size: 8, offset: 168)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !871, file: !700, line: 590, baseType: !235, size: 8, offset: 176)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_pool_data", file: !3, line: 217, size: 128, elements: !888)
!888 = !{!889, !892, !893}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !887, file: !3, line: 222, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !887, file: !3, line: 223, baseType: !7, size: 32, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !887, file: !3, line: 224, baseType: !7, size: 32, offset: 96)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !895, line: 46, baseType: !300)
!895 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!897 = !{!0, !898, !903, !922, !980}
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(name: "digit_vector", scope: !2, file: !3, line: 43, type: !900, isLocal: false, isDefinition: true)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 160, elements: !901)
!901 = !{!902}
!902 = !DISubrange(count: 20)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_stringpool_h", scope: !2, file: !905, line: 87, type: !906, isLocal: false, isDefinition: true)
!905 = !DIFile(filename: "./gt-stringpool.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !907, size: 640, elements: !920)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !909, line: 69, size: 320, elements: !910)
!909 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!910 = !{!911, !912, !913, !914, !919}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !908, file: !909, line: 70, baseType: !240, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !908, file: !909, line: 71, baseType: !894, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !908, file: !909, line: 72, baseType: !894, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !908, file: !909, line: 73, baseType: !915, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !909, line: 65, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !240}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !908, file: !909, line: 74, baseType: !915, size: 64, offset: 256)
!920 = !{!921}
!921 = !DISubrange(count: 2)
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(name: "ident_hash", scope: !2, file: !3, line: 48, type: !924, isLocal: false, isDefinition: true)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !343, line: 46, size: 1152, elements: !926)
!926 = !{!927, !959, !962, !968, !972, !973, !974, !977, !978, !979}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !925, file: !343, line: 49, baseType: !928, size: 704)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !929, line: 164, size: 704, elements: !930)
!929 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!930 = !{!931, !932, !942, !943, !944, !945, !946, !947, !951, !955, !956, !957, !958}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !928, file: !929, line: 166, baseType: !302, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !928, file: !929, line: 167, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !929, line: 157, size: 192, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !934, file: !929, line: 159, baseType: !238, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !934, file: !929, line: 160, baseType: !933, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !934, file: !929, line: 161, baseType: !939, size: 32, offset: 128)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 32, elements: !940)
!940 = !{!941}
!941 = !DISubrange(count: 4)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !928, file: !929, line: 168, baseType: !238, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !928, file: !929, line: 169, baseType: !238, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !928, file: !929, line: 170, baseType: !238, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !928, file: !929, line: 171, baseType: !302, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !928, file: !929, line: 172, baseType: !236, size: 32, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !928, file: !929, line: 176, baseType: !948, size: 64, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!933, !240, !302}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !928, file: !929, line: 177, baseType: !952, size: 64, offset: 512)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !240, !933}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !928, file: !929, line: 178, baseType: !240, size: 64, offset: 576)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !928, file: !929, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !928, file: !929, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !928, file: !929, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !925, file: !343, line: 51, baseType: !960, size: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !343, line: 41, baseType: !891)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !925, file: !343, line: 53, baseType: !963, size: 64, offset: 768)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!961, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !343, line: 40, baseType: !925)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !925, file: !343, line: 56, baseType: !969, size: 64, offset: 832)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!240, !894}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !925, file: !343, line: 58, baseType: !7, size: 32, offset: 896)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !925, file: !343, line: 59, baseType: !7, size: 32, offset: 928)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !925, file: !343, line: 62, baseType: !975, size: 64, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !247, line: 91, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !925, file: !343, line: 65, baseType: !7, size: 32, offset: 1024)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !925, file: !343, line: 66, baseType: !7, size: 32, offset: 1056)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !925, file: !343, line: 69, baseType: !235, size: 8, offset: 1088)
!980 = !DIGlobalVariableExpression(var: !981, expr: !DIExpression())
!981 = distinct !DIGlobalVariable(name: "spd", scope: !2, file: !3, line: 227, type: !886, isLocal: true, isDefinition: true)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 8, elements: !329)
!983 = !{i32 2, !"Dwarf Version", i32 4}
!984 = !{i32 2, !"Debug Info Version", i32 3}
!985 = !{i32 1, !"wchar_size", i32 4}
!986 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!987 = distinct !DISubprogram(name: "vprintf", scope: !988, file: !988, line: 39, type: !989, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!988 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!989 = !DISubroutineType(types: !990)
!990 = !{!236, !991, !992}
!991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !241)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !994)
!994 = !{!995, !996, !997, !998}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !993, file: !3, baseType: !7, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !993, file: !3, baseType: !7, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !993, file: !3, baseType: !240, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !993, file: !3, baseType: !240, size: 64, offset: 128)
!999 = !{!1000, !1001}
!1000 = !DILocalVariable(name: "__fmt", arg: 1, scope: !987, file: !988, line: 39, type: !991)
!1001 = !DILocalVariable(name: "__arg", arg: 2, scope: !987, file: !988, line: 39, type: !992)
!1002 = !DILocation(line: 0, scope: !987)
!1003 = !DILocation(line: 41, column: 20, scope: !987)
!1004 = !DILocation(line: 41, column: 10, scope: !987)
!1005 = !DILocation(line: 41, column: 3, scope: !987)
!1006 = distinct !DISubprogram(name: "getchar", scope: !988, file: !988, line: 47, type: !1007, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!236}
!1009 = !{}
!1010 = !DILocation(line: 49, column: 16, scope: !1006)
!1011 = !DILocation(line: 49, column: 10, scope: !1006)
!1012 = !DILocation(line: 49, column: 3, scope: !1006)
!1013 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !988, file: !988, line: 56, type: !1014, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!236, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1018, line: 7, baseType: !1019)
!1018 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1020, line: 49, size: 1728, elements: !1021)
!1020 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1037, !1039, !1040, !1041, !1044, !1045, !1046, !1047, !1050, !1052, !1055, !1058, !1059, !1060, !1061, !1062}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1019, file: !1020, line: 51, baseType: !236, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1019, file: !1020, line: 54, baseType: !238, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1019, file: !1020, line: 55, baseType: !238, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1019, file: !1020, line: 56, baseType: !238, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1019, file: !1020, line: 57, baseType: !238, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1019, file: !1020, line: 58, baseType: !238, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1019, file: !1020, line: 59, baseType: !238, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1019, file: !1020, line: 60, baseType: !238, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1019, file: !1020, line: 61, baseType: !238, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1019, file: !1020, line: 64, baseType: !238, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1019, file: !1020, line: 65, baseType: !238, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1019, file: !1020, line: 66, baseType: !238, size: 64, offset: 704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1019, file: !1020, line: 68, baseType: !1035, size: 64, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1020, line: 36, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1019, file: !1020, line: 70, baseType: !1038, size: 64, offset: 832)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1019, file: !1020, line: 72, baseType: !236, size: 32, offset: 896)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1019, file: !1020, line: 73, baseType: !236, size: 32, offset: 928)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1019, file: !1020, line: 74, baseType: !1042, size: 64, offset: 960)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1043, line: 152, baseType: !302)
!1043 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1019, file: !1020, line: 77, baseType: !243, size: 16, offset: 1024)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1019, file: !1020, line: 78, baseType: !711, size: 8, offset: 1040)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1019, file: !1020, line: 79, baseType: !328, size: 8, offset: 1048)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1019, file: !1020, line: 81, baseType: !1048, size: 64, offset: 1088)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1020, line: 43, baseType: null)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1019, file: !1020, line: 89, baseType: !1051, size: 64, offset: 1152)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1043, line: 153, baseType: !302)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1019, file: !1020, line: 91, baseType: !1053, size: 64, offset: 1216)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1020, line: 37, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1019, file: !1020, line: 92, baseType: !1056, size: 64, offset: 1280)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1020, line: 38, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1019, file: !1020, line: 93, baseType: !1038, size: 64, offset: 1344)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1019, file: !1020, line: 94, baseType: !240, size: 64, offset: 1408)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1019, file: !1020, line: 95, baseType: !894, size: 64, offset: 1472)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1019, file: !1020, line: 96, baseType: !236, size: 32, offset: 1536)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1019, file: !1020, line: 98, baseType: !1063, size: 160, offset: 1568)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 160, elements: !901)
!1064 = !{!1065}
!1065 = !DILocalVariable(name: "__fp", arg: 1, scope: !1013, file: !988, line: 56, type: !1016)
!1066 = !DILocation(line: 0, scope: !1013)
!1067 = !DILocation(line: 58, column: 10, scope: !1013)
!1068 = !DILocation(line: 58, column: 3, scope: !1013)
!1069 = distinct !DISubprogram(name: "getc_unlocked", scope: !988, file: !988, line: 66, type: !1014, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1070)
!1070 = !{!1071}
!1071 = !DILocalVariable(name: "__fp", arg: 1, scope: !1069, file: !988, line: 66, type: !1016)
!1072 = !DILocation(line: 0, scope: !1069)
!1073 = !DILocation(line: 68, column: 10, scope: !1069)
!1074 = !DILocation(line: 68, column: 3, scope: !1069)
!1075 = distinct !DISubprogram(name: "getchar_unlocked", scope: !988, file: !988, line: 73, type: !1007, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1076 = !DILocation(line: 75, column: 10, scope: !1075)
!1077 = !DILocation(line: 75, column: 3, scope: !1075)
!1078 = distinct !DISubprogram(name: "putchar", scope: !988, file: !988, line: 82, type: !1079, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1081)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!236, !236}
!1081 = !{!1082}
!1082 = !DILocalVariable(name: "__c", arg: 1, scope: !1078, file: !988, line: 82, type: !236)
!1083 = !DILocation(line: 0, scope: !1078)
!1084 = !DILocation(line: 84, column: 21, scope: !1078)
!1085 = !DILocation(line: 84, column: 10, scope: !1078)
!1086 = !DILocation(line: 84, column: 3, scope: !1078)
!1087 = distinct !DISubprogram(name: "fputc_unlocked", scope: !988, file: !988, line: 91, type: !1088, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!236, !236, !1016}
!1090 = !{!1091, !1092}
!1091 = !DILocalVariable(name: "__c", arg: 1, scope: !1087, file: !988, line: 91, type: !236)
!1092 = !DILocalVariable(name: "__stream", arg: 2, scope: !1087, file: !988, line: 91, type: !1016)
!1093 = !DILocation(line: 0, scope: !1087)
!1094 = !DILocation(line: 93, column: 10, scope: !1087)
!1095 = !DILocation(line: 93, column: 3, scope: !1087)
!1096 = distinct !DISubprogram(name: "putc_unlocked", scope: !988, file: !988, line: 101, type: !1088, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1097)
!1097 = !{!1098, !1099}
!1098 = !DILocalVariable(name: "__c", arg: 1, scope: !1096, file: !988, line: 101, type: !236)
!1099 = !DILocalVariable(name: "__stream", arg: 2, scope: !1096, file: !988, line: 101, type: !1016)
!1100 = !DILocation(line: 0, scope: !1096)
!1101 = !DILocation(line: 103, column: 10, scope: !1096)
!1102 = !DILocation(line: 103, column: 3, scope: !1096)
!1103 = distinct !DISubprogram(name: "putchar_unlocked", scope: !988, file: !988, line: 108, type: !1079, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1104)
!1104 = !{!1105}
!1105 = !DILocalVariable(name: "__c", arg: 1, scope: !1103, file: !988, line: 108, type: !236)
!1106 = !DILocation(line: 0, scope: !1103)
!1107 = !DILocation(line: 110, column: 10, scope: !1103)
!1108 = !DILocation(line: 110, column: 3, scope: !1103)
!1109 = distinct !DISubprogram(name: "getline", scope: !988, file: !988, line: 118, type: !1110, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1114)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!1112, !237, !1113, !1016}
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1043, line: 193, baseType: !302)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!1114 = !{!1115, !1116, !1117}
!1115 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1109, file: !988, line: 118, type: !237)
!1116 = !DILocalVariable(name: "__n", arg: 2, scope: !1109, file: !988, line: 118, type: !1113)
!1117 = !DILocalVariable(name: "__stream", arg: 3, scope: !1109, file: !988, line: 118, type: !1016)
!1118 = !DILocation(line: 0, scope: !1109)
!1119 = !DILocation(line: 120, column: 10, scope: !1109)
!1120 = !DILocation(line: 120, column: 3, scope: !1109)
!1121 = distinct !DISubprogram(name: "feof_unlocked", scope: !988, file: !988, line: 128, type: !1014, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1122 = !{!1123}
!1123 = !DILocalVariable(name: "__stream", arg: 1, scope: !1121, file: !988, line: 128, type: !1016)
!1124 = !DILocation(line: 0, scope: !1121)
!1125 = !DILocation(line: 130, column: 10, scope: !1121)
!1126 = !DILocation(line: 130, column: 3, scope: !1121)
!1127 = distinct !DISubprogram(name: "ferror_unlocked", scope: !988, file: !988, line: 135, type: !1014, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1128)
!1128 = !{!1129}
!1129 = !DILocalVariable(name: "__stream", arg: 1, scope: !1127, file: !988, line: 135, type: !1016)
!1130 = !DILocation(line: 0, scope: !1127)
!1131 = !DILocation(line: 137, column: 10, scope: !1127)
!1132 = !DILocation(line: 137, column: 3, scope: !1127)
!1133 = distinct !DISubprogram(name: "tolower", scope: !1134, file: !1134, line: 207, type: !1079, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1134 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1135 = !{!1136}
!1136 = !DILocalVariable(name: "__c", arg: 1, scope: !1133, file: !1134, line: 207, type: !236)
!1137 = !DILocation(line: 0, scope: !1133)
!1138 = !DILocation(line: 209, column: 22, scope: !1133)
!1139 = !DILocation(line: 209, column: 39, scope: !1133)
!1140 = !DILocation(line: 209, column: 38, scope: !1133)
!1141 = !DILocation(line: 209, column: 37, scope: !1133)
!1142 = !DILocation(line: 209, column: 10, scope: !1133)
!1143 = !DILocation(line: 209, column: 3, scope: !1133)
!1144 = distinct !DISubprogram(name: "toupper", scope: !1134, file: !1134, line: 213, type: !1079, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1145)
!1145 = !{!1146}
!1146 = !DILocalVariable(name: "__c", arg: 1, scope: !1144, file: !1134, line: 213, type: !236)
!1147 = !DILocation(line: 0, scope: !1144)
!1148 = !DILocation(line: 215, column: 22, scope: !1144)
!1149 = !DILocation(line: 215, column: 39, scope: !1144)
!1150 = !DILocation(line: 215, column: 38, scope: !1144)
!1151 = !DILocation(line: 215, column: 37, scope: !1144)
!1152 = !DILocation(line: 215, column: 10, scope: !1144)
!1153 = !DILocation(line: 215, column: 3, scope: !1144)
!1154 = distinct !DISubprogram(name: "atoi", scope: !1155, file: !1155, line: 361, type: !1156, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1158)
!1155 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!236, !241}
!1158 = !{!1159}
!1159 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1154, file: !1155, line: 361, type: !241)
!1160 = !DILocation(line: 0, scope: !1154)
!1161 = !DILocation(line: 363, column: 16, scope: !1154)
!1162 = !DILocation(line: 363, column: 10, scope: !1154)
!1163 = !DILocation(line: 363, column: 3, scope: !1154)
!1164 = distinct !DISubprogram(name: "atol", scope: !1155, file: !1155, line: 366, type: !1165, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!302, !241}
!1167 = !{!1168}
!1168 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1164, file: !1155, line: 366, type: !241)
!1169 = !DILocation(line: 0, scope: !1164)
!1170 = !DILocation(line: 368, column: 10, scope: !1164)
!1171 = !DILocation(line: 368, column: 3, scope: !1164)
!1172 = distinct !DISubprogram(name: "atoll", scope: !1155, file: !1155, line: 373, type: !1173, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1176)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1175, !241}
!1175 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1172, file: !1155, line: 373, type: !241)
!1178 = !DILocation(line: 0, scope: !1172)
!1179 = !DILocation(line: 375, column: 10, scope: !1172)
!1180 = !DILocation(line: 375, column: 3, scope: !1172)
!1181 = distinct !DISubprogram(name: "bsearch", scope: !1182, file: !1182, line: 20, type: !1183, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1189)
!1182 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!240, !884, !884, !894, !894, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1155, line: 808, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!236, !884, !884}
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1190 = !DILocalVariable(name: "__key", arg: 1, scope: !1181, file: !1182, line: 20, type: !884)
!1191 = !DILocalVariable(name: "__base", arg: 2, scope: !1181, file: !1182, line: 20, type: !884)
!1192 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1181, file: !1182, line: 20, type: !894)
!1193 = !DILocalVariable(name: "__size", arg: 4, scope: !1181, file: !1182, line: 20, type: !894)
!1194 = !DILocalVariable(name: "__compar", arg: 5, scope: !1181, file: !1182, line: 21, type: !1185)
!1195 = !DILocalVariable(name: "__l", scope: !1181, file: !1182, line: 23, type: !894)
!1196 = !DILocalVariable(name: "__u", scope: !1181, file: !1182, line: 23, type: !894)
!1197 = !DILocalVariable(name: "__idx", scope: !1181, file: !1182, line: 23, type: !894)
!1198 = !DILocalVariable(name: "__p", scope: !1181, file: !1182, line: 24, type: !884)
!1199 = !DILocalVariable(name: "__comparison", scope: !1181, file: !1182, line: 25, type: !236)
!1200 = !DILocation(line: 0, scope: !1181)
!1201 = !DILocation(line: 29, column: 3, scope: !1181)
!1202 = !DILocation(line: 27, column: 7, scope: !1181)
!1203 = !DILocation(line: 29, column: 14, scope: !1181)
!1204 = !DILocation(line: 31, column: 20, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1181, file: !1182, line: 30, column: 5)
!1206 = !DILocation(line: 31, column: 27, scope: !1205)
!1207 = !DILocation(line: 32, column: 56, scope: !1205)
!1208 = !DILocation(line: 32, column: 47, scope: !1205)
!1209 = !DILocation(line: 33, column: 22, scope: !1205)
!1210 = !DILocation(line: 34, column: 24, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !1182, line: 34, column: 11)
!1212 = !DILocation(line: 34, column: 11, scope: !1205)
!1213 = !DILocation(line: 36, column: 29, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !1182, line: 36, column: 16)
!1215 = !DILocation(line: 36, column: 16, scope: !1211)
!1216 = !DILocation(line: 37, column: 14, scope: !1214)
!1217 = distinct !{!1217, !1201, !1218}
!1218 = !DILocation(line: 40, column: 5, scope: !1181)
!1219 = !DILocation(line: 43, column: 1, scope: !1181)
!1220 = distinct !DISubprogram(name: "atof", scope: !1221, file: !1221, line: 25, type: !1222, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1225)
!1221 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1224, !241}
!1224 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1225 = !{!1226}
!1226 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1220, file: !1221, line: 25, type: !241)
!1227 = !DILocation(line: 0, scope: !1220)
!1228 = !DILocation(line: 27, column: 10, scope: !1220)
!1229 = !DILocation(line: 27, column: 3, scope: !1220)
!1230 = distinct !DISubprogram(name: "strtoimax", scope: !1231, file: !1231, line: 324, type: !1232, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1238)
!1231 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1234, !991, !1237, !236}
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1235, line: 101, baseType: !1236)
!1235 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1043, line: 72, baseType: !302)
!1237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !237)
!1238 = !{!1239, !1240, !1241}
!1239 = !DILocalVariable(name: "nptr", arg: 1, scope: !1230, file: !1231, line: 324, type: !991)
!1240 = !DILocalVariable(name: "endptr", arg: 2, scope: !1230, file: !1231, line: 324, type: !1237)
!1241 = !DILocalVariable(name: "base", arg: 3, scope: !1230, file: !1231, line: 324, type: !236)
!1242 = !DILocation(line: 0, scope: !1230)
!1243 = !DILocation(line: 327, column: 10, scope: !1230)
!1244 = !DILocation(line: 327, column: 3, scope: !1230)
!1245 = distinct !DISubprogram(name: "strtoumax", scope: !1231, file: !1231, line: 336, type: !1246, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1250)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1248, !991, !1237, !236}
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1235, line: 102, baseType: !1249)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1043, line: 73, baseType: !300)
!1250 = !{!1251, !1252, !1253}
!1251 = !DILocalVariable(name: "nptr", arg: 1, scope: !1245, file: !1231, line: 336, type: !991)
!1252 = !DILocalVariable(name: "endptr", arg: 2, scope: !1245, file: !1231, line: 336, type: !1237)
!1253 = !DILocalVariable(name: "base", arg: 3, scope: !1245, file: !1231, line: 336, type: !236)
!1254 = !DILocation(line: 0, scope: !1245)
!1255 = !DILocation(line: 339, column: 10, scope: !1245)
!1256 = !DILocation(line: 339, column: 3, scope: !1245)
!1257 = distinct !DISubprogram(name: "wcstoimax", scope: !1231, file: !1231, line: 348, type: !1258, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1267)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1234, !1260, !1264, !236}
!1260 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1231, line: 34, baseType: !236)
!1264 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1267 = !{!1268, !1269, !1270}
!1268 = !DILocalVariable(name: "nptr", arg: 1, scope: !1257, file: !1231, line: 348, type: !1260)
!1269 = !DILocalVariable(name: "endptr", arg: 2, scope: !1257, file: !1231, line: 348, type: !1264)
!1270 = !DILocalVariable(name: "base", arg: 3, scope: !1257, file: !1231, line: 348, type: !236)
!1271 = !DILocation(line: 0, scope: !1257)
!1272 = !DILocation(line: 351, column: 10, scope: !1257)
!1273 = !DILocation(line: 351, column: 3, scope: !1257)
!1274 = distinct !DISubprogram(name: "wcstoumax", scope: !1231, file: !1231, line: 362, type: !1275, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1248, !1260, !1264, !236}
!1277 = !{!1278, !1279, !1280}
!1278 = !DILocalVariable(name: "nptr", arg: 1, scope: !1274, file: !1231, line: 362, type: !1260)
!1279 = !DILocalVariable(name: "endptr", arg: 2, scope: !1274, file: !1231, line: 362, type: !1264)
!1280 = !DILocalVariable(name: "base", arg: 3, scope: !1274, file: !1231, line: 362, type: !236)
!1281 = !DILocation(line: 0, scope: !1274)
!1282 = !DILocation(line: 365, column: 10, scope: !1274)
!1283 = !DILocation(line: 365, column: 3, scope: !1274)
!1284 = distinct !DISubprogram(name: "stat", scope: !1285, file: !1285, line: 453, type: !1286, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1325)
!1285 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!236, !241, !1288}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1290, line: 46, size: 1152, elements: !1291)
!1290 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1291 = !{!1292, !1294, !1296, !1298, !1300, !1302, !1304, !1305, !1306, !1307, !1309, !1311, !1319, !1320, !1321}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1289, file: !1290, line: 48, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1043, line: 145, baseType: !300)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1289, file: !1290, line: 53, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1043, line: 148, baseType: !300)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1289, file: !1290, line: 61, baseType: !1297, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1043, line: 151, baseType: !300)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1289, file: !1290, line: 62, baseType: !1299, size: 32, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1043, line: 150, baseType: !7)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1289, file: !1290, line: 64, baseType: !1301, size: 32, offset: 224)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1043, line: 146, baseType: !7)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1289, file: !1290, line: 65, baseType: !1303, size: 32, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1043, line: 147, baseType: !7)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1289, file: !1290, line: 67, baseType: !236, size: 32, offset: 288)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1289, file: !1290, line: 69, baseType: !1293, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1289, file: !1290, line: 74, baseType: !1042, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1289, file: !1290, line: 78, baseType: !1308, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1043, line: 174, baseType: !302)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1289, file: !1290, line: 80, baseType: !1310, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1043, line: 179, baseType: !302)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1289, file: !1290, line: 91, baseType: !1312, size: 128, offset: 576)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1313, line: 10, size: 128, elements: !1314)
!1313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1314 = !{!1315, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1312, file: !1313, line: 12, baseType: !1316, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1043, line: 160, baseType: !302)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1312, file: !1313, line: 16, baseType: !1318, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1043, line: 196, baseType: !302)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1289, file: !1290, line: 92, baseType: !1312, size: 128, offset: 704)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1289, file: !1290, line: 93, baseType: !1312, size: 128, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1289, file: !1290, line: 106, baseType: !1322, size: 192, offset: 960)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 192, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 3)
!1325 = !{!1326, !1327}
!1326 = !DILocalVariable(name: "__path", arg: 1, scope: !1284, file: !1285, line: 453, type: !241)
!1327 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1284, file: !1285, line: 453, type: !1288)
!1328 = !DILocation(line: 0, scope: !1284)
!1329 = !DILocation(line: 455, column: 10, scope: !1284)
!1330 = !DILocation(line: 455, column: 3, scope: !1284)
!1331 = distinct !DISubprogram(name: "lstat", scope: !1285, file: !1285, line: 460, type: !1286, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1332)
!1332 = !{!1333, !1334}
!1333 = !DILocalVariable(name: "__path", arg: 1, scope: !1331, file: !1285, line: 460, type: !241)
!1334 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1331, file: !1285, line: 460, type: !1288)
!1335 = !DILocation(line: 0, scope: !1331)
!1336 = !DILocation(line: 462, column: 10, scope: !1331)
!1337 = !DILocation(line: 462, column: 3, scope: !1331)
!1338 = distinct !DISubprogram(name: "fstat", scope: !1285, file: !1285, line: 467, type: !1339, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!236, !236, !1288}
!1341 = !{!1342, !1343}
!1342 = !DILocalVariable(name: "__fd", arg: 1, scope: !1338, file: !1285, line: 467, type: !236)
!1343 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1338, file: !1285, line: 467, type: !1288)
!1344 = !DILocation(line: 0, scope: !1338)
!1345 = !DILocation(line: 469, column: 10, scope: !1338)
!1346 = !DILocation(line: 469, column: 3, scope: !1338)
!1347 = distinct !DISubprogram(name: "fstatat", scope: !1285, file: !1285, line: 474, type: !1348, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!236, !236, !241, !1288, !236}
!1350 = !{!1351, !1352, !1353, !1354}
!1351 = !DILocalVariable(name: "__fd", arg: 1, scope: !1347, file: !1285, line: 474, type: !236)
!1352 = !DILocalVariable(name: "__filename", arg: 2, scope: !1347, file: !1285, line: 474, type: !241)
!1353 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1347, file: !1285, line: 474, type: !1288)
!1354 = !DILocalVariable(name: "__flag", arg: 4, scope: !1347, file: !1285, line: 474, type: !236)
!1355 = !DILocation(line: 0, scope: !1347)
!1356 = !DILocation(line: 477, column: 10, scope: !1347)
!1357 = !DILocation(line: 477, column: 3, scope: !1347)
!1358 = distinct !DISubprogram(name: "mknod", scope: !1285, file: !1285, line: 483, type: !1359, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!236, !241, !1299, !1293}
!1361 = !{!1362, !1363, !1364}
!1362 = !DILocalVariable(name: "__path", arg: 1, scope: !1358, file: !1285, line: 483, type: !241)
!1363 = !DILocalVariable(name: "__mode", arg: 2, scope: !1358, file: !1285, line: 483, type: !1299)
!1364 = !DILocalVariable(name: "__dev", arg: 3, scope: !1358, file: !1285, line: 483, type: !1293)
!1365 = !DILocation(line: 0, scope: !1358)
!1366 = !DILocation(line: 485, column: 10, scope: !1358)
!1367 = !DILocation(line: 485, column: 3, scope: !1358)
!1368 = distinct !DISubprogram(name: "mknodat", scope: !1285, file: !1285, line: 491, type: !1369, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!236, !236, !241, !1299, !1293}
!1371 = !{!1372, !1373, !1374, !1375}
!1372 = !DILocalVariable(name: "__fd", arg: 1, scope: !1368, file: !1285, line: 491, type: !236)
!1373 = !DILocalVariable(name: "__path", arg: 2, scope: !1368, file: !1285, line: 491, type: !241)
!1374 = !DILocalVariable(name: "__mode", arg: 3, scope: !1368, file: !1285, line: 491, type: !1299)
!1375 = !DILocalVariable(name: "__dev", arg: 4, scope: !1368, file: !1285, line: 491, type: !1293)
!1376 = !DILocation(line: 0, scope: !1368)
!1377 = !DILocation(line: 494, column: 10, scope: !1368)
!1378 = !DILocation(line: 494, column: 3, scope: !1368)
!1379 = distinct !DISubprogram(name: "stat64", scope: !1285, file: !1285, line: 502, type: !1380, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1402)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!236, !241, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1290, line: 119, size: 1152, elements: !1384)
!1384 = !{!1385, !1386, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1398, !1399, !1400, !1401}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1383, file: !1290, line: 121, baseType: !1293, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1383, file: !1290, line: 123, baseType: !1387, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1043, line: 149, baseType: !300)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1383, file: !1290, line: 124, baseType: !1297, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1383, file: !1290, line: 125, baseType: !1299, size: 32, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1383, file: !1290, line: 132, baseType: !1301, size: 32, offset: 224)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1383, file: !1290, line: 133, baseType: !1303, size: 32, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1383, file: !1290, line: 135, baseType: !236, size: 32, offset: 288)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1383, file: !1290, line: 136, baseType: !1293, size: 64, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1383, file: !1290, line: 137, baseType: !1042, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1383, file: !1290, line: 143, baseType: !1308, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1383, file: !1290, line: 144, baseType: !1397, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1043, line: 180, baseType: !302)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1383, file: !1290, line: 152, baseType: !1312, size: 128, offset: 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1383, file: !1290, line: 153, baseType: !1312, size: 128, offset: 704)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1383, file: !1290, line: 154, baseType: !1312, size: 128, offset: 832)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1383, file: !1290, line: 164, baseType: !1322, size: 192, offset: 960)
!1402 = !{!1403, !1404}
!1403 = !DILocalVariable(name: "__path", arg: 1, scope: !1379, file: !1285, line: 502, type: !241)
!1404 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1379, file: !1285, line: 502, type: !1382)
!1405 = !DILocation(line: 0, scope: !1379)
!1406 = !DILocation(line: 504, column: 10, scope: !1379)
!1407 = !DILocation(line: 504, column: 3, scope: !1379)
!1408 = distinct !DISubprogram(name: "lstat64", scope: !1285, file: !1285, line: 509, type: !1380, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1409 = !{!1410, !1411}
!1410 = !DILocalVariable(name: "__path", arg: 1, scope: !1408, file: !1285, line: 509, type: !241)
!1411 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1408, file: !1285, line: 509, type: !1382)
!1412 = !DILocation(line: 0, scope: !1408)
!1413 = !DILocation(line: 511, column: 10, scope: !1408)
!1414 = !DILocation(line: 511, column: 3, scope: !1408)
!1415 = distinct !DISubprogram(name: "fstat64", scope: !1285, file: !1285, line: 516, type: !1416, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!236, !236, !1382}
!1418 = !{!1419, !1420}
!1419 = !DILocalVariable(name: "__fd", arg: 1, scope: !1415, file: !1285, line: 516, type: !236)
!1420 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1415, file: !1285, line: 516, type: !1382)
!1421 = !DILocation(line: 0, scope: !1415)
!1422 = !DILocation(line: 518, column: 10, scope: !1415)
!1423 = !DILocation(line: 518, column: 3, scope: !1415)
!1424 = distinct !DISubprogram(name: "fstatat64", scope: !1285, file: !1285, line: 523, type: !1425, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!236, !236, !241, !1382, !236}
!1427 = !{!1428, !1429, !1430, !1431}
!1428 = !DILocalVariable(name: "__fd", arg: 1, scope: !1424, file: !1285, line: 523, type: !236)
!1429 = !DILocalVariable(name: "__filename", arg: 2, scope: !1424, file: !1285, line: 523, type: !241)
!1430 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1424, file: !1285, line: 523, type: !1382)
!1431 = !DILocalVariable(name: "__flag", arg: 4, scope: !1424, file: !1285, line: 523, type: !236)
!1432 = !DILocation(line: 0, scope: !1424)
!1433 = !DILocation(line: 526, column: 10, scope: !1424)
!1434 = !DILocation(line: 526, column: 3, scope: !1424)
!1435 = distinct !DISubprogram(name: "init_stringpool", scope: !3, file: !3, line: 61, type: !1436, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null}
!1438 = !DILocation(line: 64, column: 16, scope: !1435)
!1439 = !DILocation(line: 64, column: 14, scope: !1435)
!1440 = !DILocation(line: 65, column: 15, scope: !1435)
!1441 = !DILocation(line: 65, column: 26, scope: !1435)
!1442 = !DILocation(line: 66, column: 15, scope: !1435)
!1443 = !DILocation(line: 66, column: 31, scope: !1435)
!1444 = !DILocation(line: 67, column: 1, scope: !1435)
!1445 = distinct !DISubprogram(name: "alloc_node", scope: !3, file: !3, line: 71, type: !964, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1446)
!1446 = !{!1447}
!1447 = !DILocalVariable(name: "table", arg: 1, scope: !1445, file: !3, line: 71, type: !966)
!1448 = !DILocation(line: 0, scope: !1445)
!1449 = !DILocation(line: 73, column: 10, scope: !1445)
!1450 = !DILocation(line: 73, column: 3, scope: !1445)
!1451 = distinct !DISubprogram(name: "stringpool_ggc_alloc", scope: !3, file: !3, line: 54, type: !970, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1452)
!1452 = !{!1453}
!1453 = !DILocalVariable(name: "x", arg: 1, scope: !1451, file: !3, line: 54, type: !894)
!1454 = !DILocation(line: 0, scope: !1451)
!1455 = !DILocation(line: 56, column: 10, scope: !1451)
!1456 = !DILocation(line: 56, column: 3, scope: !1451)
!1457 = distinct !DISubprogram(name: "ggc_alloc_string", scope: !3, file: !3, line: 81, type: !1458, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!241, !241, !236}
!1460 = !{!1461, !1462, !1463}
!1461 = !DILocalVariable(name: "contents", arg: 1, scope: !1457, file: !3, line: 81, type: !241)
!1462 = !DILocalVariable(name: "length", arg: 2, scope: !1457, file: !3, line: 81, type: !236)
!1463 = !DILocalVariable(name: "result", scope: !1457, file: !3, line: 83, type: !238)
!1464 = !DILocation(line: 0, scope: !1457)
!1465 = !DILocation(line: 85, column: 14, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 85, column: 7)
!1467 = !DILocation(line: 85, column: 7, scope: !1457)
!1468 = !DILocation(line: 86, column: 14, scope: !1466)
!1469 = !DILocation(line: 86, column: 5, scope: !1466)
!1470 = !DILocation(line: 88, column: 7, scope: !1457)
!1471 = !DILocation(line: 90, column: 22, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 90, column: 7)
!1473 = !DILocation(line: 90, column: 7, scope: !1457)
!1474 = !DILocation(line: 91, column: 12, scope: !1472)
!1475 = !DILocation(line: 91, column: 5, scope: !1472)
!1476 = !DILocation(line: 93, column: 12, scope: !1457)
!1477 = !DILocation(line: 94, column: 29, scope: !1457)
!1478 = !DILocation(line: 94, column: 3, scope: !1457)
!1479 = !DILocation(line: 95, column: 3, scope: !1457)
!1480 = !DILocation(line: 95, column: 18, scope: !1457)
!1481 = !DILocation(line: 96, column: 3, scope: !1457)
!1482 = !DILocation(line: 97, column: 1, scope: !1457)
!1483 = distinct !DISubprogram(name: "get_identifier", scope: !3, file: !3, line: 106, type: !1484, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!246, !241}
!1486 = !{!1487, !1488}
!1487 = !DILocalVariable(name: "text", arg: 1, scope: !1483, file: !3, line: 106, type: !241)
!1488 = !DILocalVariable(name: "ht_node", scope: !1483, file: !3, line: 108, type: !961)
!1489 = !DILocation(line: 0, scope: !1483)
!1490 = !DILocation(line: 108, column: 33, scope: !1483)
!1491 = !DILocation(line: 110, column: 5, scope: !1483)
!1492 = !DILocation(line: 108, column: 22, scope: !1483)
!1493 = !DILocation(line: 113, column: 10, scope: !1483)
!1494 = !DILocation(line: 113, column: 3, scope: !1483)
!1495 = distinct !DISubprogram(name: "get_identifier_with_length", scope: !3, file: !3, line: 120, type: !1496, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!246, !241, !894}
!1498 = !{!1499, !1500, !1501}
!1499 = !DILocalVariable(name: "text", arg: 1, scope: !1495, file: !3, line: 120, type: !241)
!1500 = !DILocalVariable(name: "length", arg: 2, scope: !1495, file: !3, line: 120, type: !894)
!1501 = !DILocalVariable(name: "ht_node", scope: !1495, file: !3, line: 122, type: !961)
!1502 = !DILocation(line: 0, scope: !1495)
!1503 = !DILocation(line: 122, column: 33, scope: !1495)
!1504 = !DILocation(line: 122, column: 22, scope: !1495)
!1505 = !DILocation(line: 127, column: 10, scope: !1495)
!1506 = !DILocation(line: 127, column: 3, scope: !1495)
!1507 = distinct !DISubprogram(name: "maybe_get_identifier", scope: !3, file: !3, line: 135, type: !1484, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1508)
!1508 = !{!1509, !1510}
!1509 = !DILocalVariable(name: "text", arg: 1, scope: !1507, file: !3, line: 135, type: !241)
!1510 = !DILocalVariable(name: "ht_node", scope: !1507, file: !3, line: 137, type: !961)
!1511 = !DILocation(line: 0, scope: !1507)
!1512 = !DILocation(line: 139, column: 24, scope: !1507)
!1513 = !DILocation(line: 140, column: 10, scope: !1507)
!1514 = !DILocation(line: 139, column: 13, scope: !1507)
!1515 = !DILocation(line: 141, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 141, column: 7)
!1517 = !DILocation(line: 141, column: 7, scope: !1507)
!1518 = !DILocation(line: 145, column: 1, scope: !1507)
!1519 = distinct !DISubprogram(name: "stringpool_statistics", scope: !3, file: !3, line: 150, type: !1436, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1520 = !DILocation(line: 152, column: 23, scope: !1519)
!1521 = !DILocation(line: 152, column: 3, scope: !1519)
!1522 = !DILocation(line: 153, column: 1, scope: !1519)
!1523 = distinct !DISubprogram(name: "ggc_mark_stringpool", scope: !3, file: !3, line: 179, type: !1436, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1524 = !DILocation(line: 181, column: 14, scope: !1523)
!1525 = !DILocation(line: 181, column: 3, scope: !1523)
!1526 = !DILocation(line: 182, column: 1, scope: !1523)
!1527 = distinct !DISubprogram(name: "mark_ident", scope: !3, file: !3, line: 158, type: !1528, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!236, !975, !961, !884}
!1530 = !{!1531, !1532, !1533}
!1531 = !DILocalVariable(name: "pfile", arg: 1, scope: !1527, file: !3, line: 158, type: !975)
!1532 = !DILocalVariable(name: "h", arg: 2, scope: !1527, file: !3, line: 158, type: !961)
!1533 = !DILocalVariable(name: "v", arg: 3, scope: !1527, file: !3, line: 159, type: !884)
!1534 = !DILocation(line: 0, scope: !1527)
!1535 = !DILocation(line: 161, column: 3, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 161, column: 3)
!1537 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 161, column: 3)
!1538 = !DILocation(line: 162, column: 3, scope: !1527)
!1539 = distinct !DISubprogram(name: "ggc_purge_stringpool", scope: !3, file: !3, line: 188, type: !1436, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1540 = !DILocation(line: 190, column: 13, scope: !1539)
!1541 = !DILocation(line: 190, column: 3, scope: !1539)
!1542 = !DILocation(line: 191, column: 1, scope: !1539)
!1543 = distinct !DISubprogram(name: "maybe_delete_ident", scope: !3, file: !3, line: 168, type: !1528, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1544)
!1544 = !{!1545, !1546, !1547}
!1545 = !DILocalVariable(name: "pfile", arg: 1, scope: !1543, file: !3, line: 168, type: !975)
!1546 = !DILocalVariable(name: "h", arg: 2, scope: !1543, file: !3, line: 168, type: !961)
!1547 = !DILocalVariable(name: "v", arg: 3, scope: !1543, file: !3, line: 169, type: !884)
!1548 = !DILocation(line: 0, scope: !1543)
!1549 = !DILocation(line: 171, column: 25, scope: !1543)
!1550 = !DILocation(line: 171, column: 11, scope: !1543)
!1551 = !DILocation(line: 171, column: 10, scope: !1543)
!1552 = !DILocation(line: 171, column: 3, scope: !1543)
!1553 = distinct !DISubprogram(name: "gt_pch_p_S", scope: !3, file: !3, line: 197, type: !1554, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !240, !240, !1556, !240}
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_operator", file: !909, line: 38, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !240, !240}
!1560 = !{!1561, !1562, !1563, !1564}
!1561 = !DILocalVariable(name: "obj", arg: 1, scope: !1553, file: !3, line: 197, type: !240)
!1562 = !DILocalVariable(name: "x", arg: 2, scope: !1553, file: !3, line: 197, type: !240)
!1563 = !DILocalVariable(name: "op", arg: 3, scope: !1553, file: !3, line: 198, type: !1556)
!1564 = !DILocalVariable(name: "cookie", arg: 4, scope: !1553, file: !3, line: 199, type: !240)
!1565 = !DILocation(line: 0, scope: !1553)
!1566 = !DILocation(line: 201, column: 1, scope: !1553)
!1567 = distinct !DISubprogram(name: "gt_pch_n_S", scope: !3, file: !3, line: 206, type: !1568, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !884}
!1570 = !{!1571}
!1571 = !DILocalVariable(name: "x", arg: 1, scope: !1567, file: !3, line: 206, type: !884)
!1572 = !DILocation(line: 0, scope: !1567)
!1573 = !DILocation(line: 208, column: 3, scope: !1567)
!1574 = !DILocation(line: 210, column: 1, scope: !1567)
!1575 = distinct !DISubprogram(name: "gt_pch_save_stringpool", scope: !3, file: !3, line: 232, type: !1436, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1576 = !DILocation(line: 234, column: 9, scope: !1575)
!1577 = !DILocation(line: 234, column: 7, scope: !1575)
!1578 = !DILocation(line: 235, column: 17, scope: !1575)
!1579 = !DILocation(line: 235, column: 29, scope: !1575)
!1580 = !DILocation(line: 235, column: 8, scope: !1575)
!1581 = !DILocation(line: 235, column: 15, scope: !1575)
!1582 = !DILocation(line: 236, column: 32, scope: !1575)
!1583 = !DILocation(line: 236, column: 8, scope: !1575)
!1584 = !DILocation(line: 236, column: 18, scope: !1575)
!1585 = !DILocation(line: 237, column: 18, scope: !1575)
!1586 = !DILocation(line: 237, column: 3, scope: !1575)
!1587 = !DILocation(line: 237, column: 16, scope: !1575)
!1588 = !DILocation(line: 238, column: 11, scope: !1575)
!1589 = !DILocation(line: 238, column: 16, scope: !1575)
!1590 = !DILocation(line: 238, column: 25, scope: !1575)
!1591 = !DILocation(line: 238, column: 37, scope: !1575)
!1592 = !DILocation(line: 239, column: 9, scope: !1575)
!1593 = !DILocation(line: 239, column: 4, scope: !1575)
!1594 = !DILocation(line: 239, column: 16, scope: !1575)
!1595 = !DILocation(line: 238, column: 3, scope: !1575)
!1596 = !DILocation(line: 240, column: 1, scope: !1575)
!1597 = distinct !DISubprogram(name: "gt_pch_fixup_stringpool", scope: !3, file: !3, line: 246, type: !1436, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1598 = !DILocation(line: 248, column: 1, scope: !1597)
!1599 = distinct !DISubprogram(name: "gt_pch_restore_stringpool", scope: !3, file: !3, line: 254, type: !1436, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1600 = !DILocation(line: 256, column: 12, scope: !1599)
!1601 = !DILocation(line: 256, column: 24, scope: !1599)
!1602 = !DILocation(line: 256, column: 29, scope: !1599)
!1603 = !DILocation(line: 256, column: 43, scope: !1599)
!1604 = !DILocation(line: 256, column: 56, scope: !1599)
!1605 = !DILocation(line: 256, column: 3, scope: !1599)
!1606 = !DILocation(line: 257, column: 7, scope: !1599)
!1607 = !DILocation(line: 258, column: 1, scope: !1599)
!1608 = distinct !DISubprogram(name: "gt_ggc_mx_string_pool_data", scope: !905, file: !905, line: 23, type: !917, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1609)
!1609 = !{!1610, !1611, !1613, !1618, !1624}
!1610 = !DILocalVariable(name: "x_p", arg: 1, scope: !1608, file: !905, line: 23, type: !240)
!1611 = !DILocalVariable(name: "x", scope: !1608, file: !905, line: 25, type: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!1613 = !DILocalVariable(name: "i0", scope: !1614, file: !905, line: 29, type: !894)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !905, line: 28, column: 33)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !905, line: 28, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !905, line: 27, column: 5)
!1617 = distinct !DILexicalBlock(scope: !1608, file: !905, line: 26, column: 7)
!1618 = !DILocalVariable(name: "x1", scope: !1619, file: !905, line: 32, type: !1623)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !905, line: 31, column: 11)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !905, line: 30, column: 59)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !905, line: 30, column: 9)
!1622 = distinct !DILexicalBlock(scope: !1614, file: !905, line: 30, column: 9)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!1624 = !DILocalVariable(name: "a__", scope: !1625, file: !905, line: 37, type: !1626)
!1625 = distinct !DILexicalBlock(scope: !1614, file: !905, line: 37, column: 9)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!1627 = !DILocation(line: 0, scope: !1608)
!1628 = !DILocation(line: 26, column: 7, scope: !1617)
!1629 = !DILocation(line: 26, column: 7, scope: !1608)
!1630 = !DILocation(line: 28, column: 16, scope: !1615)
!1631 = !DILocation(line: 28, column: 24, scope: !1615)
!1632 = !DILocation(line: 28, column: 11, scope: !1616)
!1633 = !DILocation(line: 0, scope: !1621)
!1634 = !DILocation(line: 30, column: 9, scope: !1622)
!1635 = !DILocation(line: 0, scope: !1614)
!1636 = !DILocation(line: 0, scope: !1622)
!1637 = !DILocation(line: 30, column: 44, scope: !1621)
!1638 = !DILocation(line: 30, column: 28, scope: !1621)
!1639 = !DILocation(line: 30, column: 25, scope: !1621)
!1640 = !DILocation(line: 33, column: 16, scope: !1619)
!1641 = !DILocation(line: 33, column: 15, scope: !1619)
!1642 = !DILocation(line: 33, column: 36, scope: !1619)
!1643 = !DILocation(line: 0, scope: !1619)
!1644 = !DILocation(line: 34, column: 13, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !905, line: 34, column: 13)
!1646 = distinct !DILexicalBlock(scope: !1619, file: !905, line: 34, column: 13)
!1647 = !DILocation(line: 34, column: 13, scope: !1646)
!1648 = !DILocation(line: 30, column: 55, scope: !1621)
!1649 = !DILocation(line: 30, column: 9, scope: !1621)
!1650 = distinct !{!1650, !1634, !1651}
!1651 = !DILocation(line: 36, column: 9, scope: !1622)
!1652 = !DILocation(line: 0, scope: !1625)
!1653 = !DILocation(line: 37, column: 9, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1625, file: !905, line: 37, column: 9)
!1655 = !DILocation(line: 37, column: 9, scope: !1625)
!1656 = !DILocation(line: 40, column: 1, scope: !1608)
!1657 = distinct !DISubprogram(name: "gt_pch_nx_string_pool_data", scope: !905, file: !905, line: 43, type: !917, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1658)
!1658 = !{!1659, !1660, !1661, !1666}
!1659 = !DILocalVariable(name: "x_p", arg: 1, scope: !1657, file: !905, line: 43, type: !240)
!1660 = !DILocalVariable(name: "x", scope: !1657, file: !905, line: 45, type: !1612)
!1661 = !DILocalVariable(name: "i0", scope: !1662, file: !905, line: 49, type: !894)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !905, line: 48, column: 33)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !905, line: 48, column: 11)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !905, line: 47, column: 5)
!1665 = distinct !DILexicalBlock(scope: !1657, file: !905, line: 46, column: 7)
!1666 = !DILocalVariable(name: "x1", scope: !1667, file: !905, line: 52, type: !1623)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !905, line: 51, column: 11)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !905, line: 50, column: 59)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !905, line: 50, column: 9)
!1670 = distinct !DILexicalBlock(scope: !1662, file: !905, line: 50, column: 9)
!1671 = !DILocation(line: 0, scope: !1657)
!1672 = !DILocation(line: 46, column: 7, scope: !1665)
!1673 = !DILocation(line: 46, column: 7, scope: !1657)
!1674 = !DILocation(line: 48, column: 16, scope: !1663)
!1675 = !DILocation(line: 48, column: 24, scope: !1663)
!1676 = !DILocation(line: 48, column: 11, scope: !1664)
!1677 = !DILocation(line: 0, scope: !1669)
!1678 = !DILocation(line: 50, column: 9, scope: !1670)
!1679 = !DILocation(line: 0, scope: !1662)
!1680 = !DILocation(line: 0, scope: !1670)
!1681 = !DILocation(line: 50, column: 44, scope: !1669)
!1682 = !DILocation(line: 50, column: 28, scope: !1669)
!1683 = !DILocation(line: 50, column: 25, scope: !1669)
!1684 = !DILocation(line: 53, column: 16, scope: !1667)
!1685 = !DILocation(line: 53, column: 15, scope: !1667)
!1686 = !DILocation(line: 53, column: 36, scope: !1667)
!1687 = !DILocation(line: 0, scope: !1667)
!1688 = !DILocation(line: 54, column: 13, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !905, line: 54, column: 13)
!1690 = distinct !DILexicalBlock(scope: !1667, file: !905, line: 54, column: 13)
!1691 = !DILocation(line: 54, column: 13, scope: !1690)
!1692 = !DILocation(line: 50, column: 55, scope: !1669)
!1693 = !DILocation(line: 50, column: 9, scope: !1669)
!1694 = distinct !{!1694, !1678, !1695}
!1695 = !DILocation(line: 56, column: 9, scope: !1670)
!1696 = !DILocation(line: 57, column: 29, scope: !1662)
!1697 = !DILocation(line: 57, column: 9, scope: !1662)
!1698 = !DILocation(line: 58, column: 7, scope: !1662)
!1699 = !DILocation(line: 60, column: 1, scope: !1657)
!1700 = distinct !DISubprogram(name: "gt_pch_p_16string_pool_data", scope: !905, file: !905, line: 63, type: !1554, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1701)
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1710}
!1702 = !DILocalVariable(name: "this_obj", arg: 1, scope: !1700, file: !905, line: 63, type: !240)
!1703 = !DILocalVariable(name: "x_p", arg: 2, scope: !1700, file: !905, line: 64, type: !240)
!1704 = !DILocalVariable(name: "op", arg: 3, scope: !1700, file: !905, line: 65, type: !1556)
!1705 = !DILocalVariable(name: "cookie", arg: 4, scope: !1700, file: !905, line: 66, type: !240)
!1706 = !DILocalVariable(name: "x", scope: !1700, file: !905, line: 68, type: !1612)
!1707 = !DILocalVariable(name: "i0", scope: !1708, file: !905, line: 70, type: !894)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !905, line: 69, column: 29)
!1709 = distinct !DILexicalBlock(scope: !1700, file: !905, line: 69, column: 7)
!1710 = !DILocalVariable(name: "x1", scope: !1711, file: !905, line: 73, type: !248)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !905, line: 72, column: 7)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !905, line: 71, column: 55)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !905, line: 71, column: 5)
!1714 = distinct !DILexicalBlock(scope: !1708, file: !905, line: 71, column: 5)
!1715 = !DILocation(line: 0, scope: !1700)
!1716 = !DILocation(line: 69, column: 12, scope: !1709)
!1717 = !DILocation(line: 69, column: 20, scope: !1709)
!1718 = !DILocation(line: 69, column: 7, scope: !1700)
!1719 = !DILocation(line: 0, scope: !1713)
!1720 = !DILocation(line: 0, scope: !1711)
!1721 = !DILocation(line: 71, column: 5, scope: !1714)
!1722 = !DILocation(line: 0, scope: !1714)
!1723 = !DILocation(line: 0, scope: !1708)
!1724 = !DILocation(line: 71, column: 40, scope: !1713)
!1725 = !DILocation(line: 71, column: 24, scope: !1713)
!1726 = !DILocation(line: 71, column: 21, scope: !1713)
!1727 = !DILocation(line: 73, column: 9, scope: !1711)
!1728 = !DILocation(line: 74, column: 17, scope: !1711)
!1729 = !DILocation(line: 74, column: 12, scope: !1711)
!1730 = !DILocation(line: 74, column: 11, scope: !1711)
!1731 = !DILocation(line: 74, column: 32, scope: !1711)
!1732 = !DILocation(line: 73, column: 27, scope: !1711)
!1733 = !DILocation(line: 75, column: 36, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1711, file: !905, line: 75, column: 13)
!1735 = !DILocation(line: 75, column: 13, scope: !1711)
!1736 = !DILocation(line: 76, column: 11, scope: !1734)
!1737 = !DILocation(line: 77, column: 29, scope: !1711)
!1738 = !DILocation(line: 77, column: 14, scope: !1711)
!1739 = !DILocation(line: 77, column: 28, scope: !1711)
!1740 = !DILocation(line: 77, column: 9, scope: !1711)
!1741 = !DILocation(line: 77, column: 26, scope: !1711)
!1742 = !DILocation(line: 78, column: 7, scope: !1712)
!1743 = !DILocation(line: 71, column: 51, scope: !1713)
!1744 = !DILocation(line: 71, column: 5, scope: !1713)
!1745 = distinct !{!1745, !1721, !1746}
!1746 = !DILocation(line: 79, column: 5, scope: !1714)
!1747 = !DILocation(line: 80, column: 21, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1708, file: !905, line: 80, column: 9)
!1749 = !DILocation(line: 80, column: 9, scope: !1708)
!1750 = !DILocation(line: 81, column: 7, scope: !1748)
!1751 = !DILocation(line: 83, column: 1, scope: !1700)
