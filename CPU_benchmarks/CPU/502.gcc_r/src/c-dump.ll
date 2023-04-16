; ModuleID = 'c-dump.bc'
source_filename = "c-dump.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.dump_info = type { %struct._IO_FILE*, %union.tree_node*, i32, i32, i32, %struct.dump_queue*, %struct.dump_queue*, %struct.dump_queue*, %struct.splay_tree_s* }
%struct.dump_queue = type { %struct.splay_tree_node_s*, %struct.dump_queue* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
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
%struct.expanded_location = type { i8*, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bitfield\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1004 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1017, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1018, metadata !DIExpression()), !dbg !1019
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1020
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !1021
  ret i32 %call, !dbg !1022
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1023 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1027
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !1028
  ret i32 %call, !dbg !1029
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1030 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1034, metadata !DIExpression()), !dbg !1035
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1036
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1036
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1036
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1036
  %cmp = icmp uge i8* %0, %1, !dbg !1036
  %conv1 = zext i1 %cmp to i64, !dbg !1036
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1036
  %tobool = icmp eq i64 %expval, 0, !dbg !1036
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1036

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1036
  br label %cond.end, !dbg !1036

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1036
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1036
  %2 = load i8, i8* %0, align 1, !dbg !1036
  %conv3 = zext i8 %2 to i32, !dbg !1036
  br label %cond.end, !dbg !1036

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1036
  ret i32 %cond, !dbg !1037
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1038 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1040, metadata !DIExpression()), !dbg !1041
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1042
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1042
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1042
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1042
  %cmp = icmp uge i8* %0, %1, !dbg !1042
  %conv1 = zext i1 %cmp to i64, !dbg !1042
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1042
  %tobool = icmp eq i64 %expval, 0, !dbg !1042
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1042

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1042
  br label %cond.end, !dbg !1042

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1042
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1042
  %2 = load i8, i8* %0, align 1, !dbg !1042
  %conv3 = zext i8 %2 to i32, !dbg !1042
  br label %cond.end, !dbg !1042

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1042
  ret i32 %cond, !dbg !1043
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1044 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1045
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1045
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1045
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1045
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1045
  %cmp = icmp uge i8* %1, %2, !dbg !1045
  %conv1 = zext i1 %cmp to i64, !dbg !1045
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1045
  %tobool = icmp eq i64 %expval, 0, !dbg !1045
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1045

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !1045
  br label %cond.end, !dbg !1045

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1045
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1045
  %3 = load i8, i8* %1, align 1, !dbg !1045
  %conv3 = zext i8 %3 to i32, !dbg !1045
  br label %cond.end, !dbg !1045

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1045
  ret i32 %cond, !dbg !1046
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1047 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1051, metadata !DIExpression()), !dbg !1052
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1053
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !1054
  ret i32 %call, !dbg !1055
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1056 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1060, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1061, metadata !DIExpression()), !dbg !1062
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1063
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1063
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1063
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1063
  %cmp = icmp uge i8* %0, %1, !dbg !1063
  %conv1 = zext i1 %cmp to i64, !dbg !1063
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1063
  %tobool = icmp eq i64 %expval, 0, !dbg !1063
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1063

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1063
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1063
  br label %cond.end, !dbg !1063

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1063
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1063
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1063
  store i8 %conv2, i8* %0, align 1, !dbg !1063
  %conv6 = and i32 %__c, 255, !dbg !1063
  br label %cond.end, !dbg !1063

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1063
  ret i32 %cond, !dbg !1064
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1065 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1067, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1068, metadata !DIExpression()), !dbg !1069
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1070
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1070
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1070
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1070
  %cmp = icmp uge i8* %0, %1, !dbg !1070
  %conv1 = zext i1 %cmp to i64, !dbg !1070
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1070
  %tobool = icmp eq i64 %expval, 0, !dbg !1070
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1070

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1070
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1070
  br label %cond.end, !dbg !1070

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1070
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1070
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1070
  store i8 %conv2, i8* %0, align 1, !dbg !1070
  %conv6 = and i32 %__c, 255, !dbg !1070
  br label %cond.end, !dbg !1070

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1070
  ret i32 %cond, !dbg !1071
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1072 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1074, metadata !DIExpression()), !dbg !1075
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1076
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1076
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1076
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1076
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1076
  %cmp = icmp uge i8* %1, %2, !dbg !1076
  %conv1 = zext i1 %cmp to i64, !dbg !1076
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1076
  %tobool = icmp eq i64 %expval, 0, !dbg !1076
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1076

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1076
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !1076
  br label %cond.end, !dbg !1076

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1076
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1076
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1076
  store i8 %conv4, i8* %1, align 1, !dbg !1076
  %conv6 = and i32 %__c, 255, !dbg !1076
  br label %cond.end, !dbg !1076

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1076
  ret i32 %cond, !dbg !1077
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1078 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1084, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1085, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1086, metadata !DIExpression()), !dbg !1087
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !1088
  ret i64 %call, !dbg !1089
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1090 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1092, metadata !DIExpression()), !dbg !1093
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1094
  %0 = load i32, i32* %_flags, align 8, !dbg !1094
  %and = lshr i32 %0, 4, !dbg !1094
  %and.lobit = and i32 %and, 1, !dbg !1094
  ret i32 %and.lobit, !dbg !1095
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1096 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1098, metadata !DIExpression()), !dbg !1099
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1100
  %0 = load i32, i32* %_flags, align 8, !dbg !1100
  %and = lshr i32 %0, 5, !dbg !1100
  %and.lobit = and i32 %and, 1, !dbg !1100
  ret i32 %and.lobit, !dbg !1101
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1102 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1105, metadata !DIExpression()), !dbg !1106
  %__c.off = add i32 %__c, 128, !dbg !1107
  %0 = icmp ult i32 %__c.off, 384, !dbg !1107
  br i1 %0, label %cond.true, label %cond.end, !dbg !1107

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !1108
  %1 = load i32*, i32** %call, align 8, !dbg !1109
  %idxprom = sext i32 %__c to i64, !dbg !1110
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1110
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1110
  br label %cond.end, !dbg !1111

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1111
  ret i32 %cond, !dbg !1112
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1113 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1115, metadata !DIExpression()), !dbg !1116
  %__c.off = add i32 %__c, 128, !dbg !1117
  %0 = icmp ult i32 %__c.off, 384, !dbg !1117
  br i1 %0, label %cond.true, label %cond.end, !dbg !1117

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !1118
  %1 = load i32*, i32** %call, align 8, !dbg !1119
  %idxprom = sext i32 %__c to i64, !dbg !1120
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1120
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1120
  br label %cond.end, !dbg !1121

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1121
  ret i32 %cond, !dbg !1122
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1123 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1128, metadata !DIExpression()), !dbg !1129
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1130
  %conv = trunc i64 %call to i32, !dbg !1131
  ret i32 %conv, !dbg !1132
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1133 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1137, metadata !DIExpression()), !dbg !1138
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1139
  ret i64 %call, !dbg !1140
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1141 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1146, metadata !DIExpression()), !dbg !1147
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !1148
  ret i64 %call, !dbg !1149
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1150 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1161, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1162, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1163, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1164, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1165, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 0, metadata !1166, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1167, metadata !DIExpression()), !dbg !1171
  br label %while.cond, !dbg !1172

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1173
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1171
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1167, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1166, metadata !DIExpression()), !dbg !1171
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1174
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1172

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1175
  %div = lshr i64 %add, 1, !dbg !1177
  call void @llvm.dbg.value(metadata i64 %div, metadata !1168, metadata !DIExpression()), !dbg !1171
  %mul = mul i64 %div, %__size, !dbg !1178
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1169, metadata !DIExpression()), !dbg !1171
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !1180
  call void @llvm.dbg.value(metadata i32 %call, metadata !1170, metadata !DIExpression()), !dbg !1171
  %cmp1 = icmp slt i32 %call, 0, !dbg !1181
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1183

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1184
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1186

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1166, metadata !DIExpression()), !dbg !1171
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1171
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1171
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1167, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1166, metadata !DIExpression()), !dbg !1171
  br label %while.cond, !dbg !1172, !llvm.loop !1188

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1171
  ret i8* %retval.0, !dbg !1190
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1191 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1197, metadata !DIExpression()), !dbg !1198
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !1199
  ret double %call, !dbg !1200
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1201 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1210, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1211, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 %base, metadata !1212, metadata !DIExpression()), !dbg !1213
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1214
  ret i64 %call, !dbg !1215
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1216 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1222, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1223, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i32 %base, metadata !1224, metadata !DIExpression()), !dbg !1225
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1226
  ret i64 %call, !dbg !1227
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1228 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1239, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1240, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %base, metadata !1241, metadata !DIExpression()), !dbg !1242
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1243
  ret i64 %call, !dbg !1244
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1245 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1249, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1250, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata i32 %base, metadata !1251, metadata !DIExpression()), !dbg !1252
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1253
  ret i64 %call, !dbg !1254
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1255 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1297, metadata !DIExpression()), !dbg !1299
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1298, metadata !DIExpression()), !dbg !1299
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1300
  ret i32 %call, !dbg !1301
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1302 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1304, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1305, metadata !DIExpression()), !dbg !1306
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1307
  ret i32 %call, !dbg !1308
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1309 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1313, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1314, metadata !DIExpression()), !dbg !1315
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !1316
  ret i32 %call, !dbg !1317
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1318 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1322, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1323, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1324, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1325, metadata !DIExpression()), !dbg !1326
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !1327
  ret i32 %call, !dbg !1328
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1329 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1333, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1334, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1335, metadata !DIExpression()), !dbg !1336
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1335, metadata !DIExpression(DW_OP_deref)), !dbg !1336
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1337
  ret i32 %call, !dbg !1338
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1339 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1343, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1344, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1345, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1346, metadata !DIExpression()), !dbg !1347
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1346, metadata !DIExpression(DW_OP_deref)), !dbg !1347
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1348
  ret i32 %call, !dbg !1349
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1350 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1374, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1375, metadata !DIExpression()), !dbg !1376
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1377
  ret i32 %call, !dbg !1378
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1379 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1381, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1382, metadata !DIExpression()), !dbg !1383
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1384
  ret i32 %call, !dbg !1385
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1386 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1390, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1391, metadata !DIExpression()), !dbg !1392
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !1393
  ret i32 %call, !dbg !1394
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1395 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1399, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1400, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1401, metadata !DIExpression()), !dbg !1403
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1402, metadata !DIExpression()), !dbg !1403
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !1404
  ret i32 %call, !dbg !1405
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_stmt(%struct.dump_info* %di, %union.tree_node* %t) local_unnamed_addr #3 !dbg !1406 {
entry:
  %tmp = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct.dump_info* %di, metadata !1410, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1411, metadata !DIExpression()), !dbg !1412
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1413
  %bf.load = load i64, i64* %0, align 8, !dbg !1413
  %bf.cast = and i64 %bf.load, 65535, !dbg !1413
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !1413
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1413
  %cmp = icmp ugt i32 %1, 3, !dbg !1413
  br i1 %cmp, label %land.lhs.true, label %cond.end, !dbg !1413

land.lhs.true:                                    ; preds = %entry
  %cmp7 = icmp ult i32 %1, 11, !dbg !1413
  br i1 %cmp7, label %cond.true, label %cond.end, !dbg !1413

cond.true:                                        ; preds = %land.lhs.true
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1413
  %3 = load i32, i32* %2, align 8, !dbg !1413
  %phitmp = icmp ne i32 %3, 0, !dbg !1413
  br label %cond.end, !dbg !1413

cond.end:                                         ; preds = %entry, %land.lhs.true, %cond.true
  %cond = phi i1 [ %phitmp, %cond.true ], [ false, %land.lhs.true ], [ false, %entry ]
  br i1 %cond, label %if.then, label %if.end, !dbg !1415

if.then:                                          ; preds = %cond.end
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1416
  %5 = load i32, i32* %4, align 8, !dbg !1416
  call void @expand_location(%struct.expanded_location* nonnull sret %tmp, i32 %5) #5, !dbg !1416
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %tmp, i64 0, i32 1, !dbg !1416
  %6 = load i32, i32* %line, align 8, !dbg !1416
  call void @dump_int(%struct.dump_info* %di, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %6) #5, !dbg !1417
  br label %if.end, !dbg !1417

if.end:                                           ; preds = %if.then, %cond.end
  ret void, !dbg !1418
}

declare dso_local void @dump_int(%struct.dump_info*, i8*, i32) local_unnamed_addr #1

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @c_dump_tree(i8* %dump_info, %union.tree_node* %t) local_unnamed_addr #3 !dbg !1419 {
entry:
  call void @llvm.dbg.value(metadata i8* %dump_info, metadata !1423, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !1424, metadata !DIExpression()), !dbg !1427
  %0 = bitcast i8* %dump_info to %struct.dump_info*, !dbg !1428
  call void @llvm.dbg.value(metadata %struct.dump_info* %0, metadata !1426, metadata !DIExpression()), !dbg !1427
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1429
  %bf.load = load i64, i64* %1, align 8, !dbg !1429
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !1430
  %cond = icmp eq i64 %bf.cast1, 31, !dbg !1430
  br i1 %cond, label %sw.bb, label %sw.epilog, !dbg !1430

sw.bb:                                            ; preds = %entry
  %lang_flag_4 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !1431
  %2 = bitcast i40* %lang_flag_4 to i64*, !dbg !1431
  %bf.load1 = load i64, i64* %2, align 8, !dbg !1431
  %bf.cast32 = and i64 %bf.load1, 524288, !dbg !1431
  %cmp = icmp eq i64 %bf.cast32, 0, !dbg !1431
  br i1 %cmp, label %sw.epilog, label %if.then, !dbg !1434

if.then:                                          ; preds = %sw.bb
  tail call void @dump_string(%struct.dump_info* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1435
  br label %sw.epilog, !dbg !1435

sw.epilog:                                        ; preds = %sw.bb, %entry, %if.then
  ret i8 0, !dbg !1436
}

declare dso_local void @dump_string(%struct.dump_info*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1000, !1001, !1002}
!llvm.ident = !{!1003}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !231, nameTableKind: None)
!1 = !DIFile(filename: "c-dump.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!231 = !{!232, !233, !234, !235, !238, !239, !37, !241, !243}
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
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "dump_info_p", file: !244, line: 28, baseType: !245)
!244 = !DIFile(filename: "./tree-dump.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dump_info", file: !244, line: 57, size: 512, elements: !247)
!247 = !{!248, !308, !944, !945, !946, !947, !966, !967, !968}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !246, file: !244, line: 60, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !251, line: 7, baseType: !252)
!251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !253, line: 49, size: 1728, elements: !254)
!253 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !270, !272, !273, !274, !278, !280, !282, !286, !289, !291, !294, !297, !298, !299, !303, !304}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !252, file: !253, line: 51, baseType: !234, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !252, file: !253, line: 54, baseType: !236, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !252, file: !253, line: 55, baseType: !236, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !252, file: !253, line: 56, baseType: !236, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !252, file: !253, line: 57, baseType: !236, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !252, file: !253, line: 58, baseType: !236, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !252, file: !253, line: 59, baseType: !236, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !252, file: !253, line: 60, baseType: !236, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !252, file: !253, line: 61, baseType: !236, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !252, file: !253, line: 64, baseType: !236, size: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !252, file: !253, line: 65, baseType: !236, size: 64, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !252, file: !253, line: 66, baseType: !236, size: 64, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !252, file: !253, line: 68, baseType: !268, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !253, line: 36, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !252, file: !253, line: 70, baseType: !271, size: 64, offset: 832)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !252, file: !253, line: 72, baseType: !234, size: 32, offset: 896)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !252, file: !253, line: 73, baseType: !234, size: 32, offset: 928)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !252, file: !253, line: 74, baseType: !275, size: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !276, line: 152, baseType: !277)
!276 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!277 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !252, file: !253, line: 77, baseType: !279, size: 16, offset: 1024)
!279 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !252, file: !253, line: 78, baseType: !281, size: 8, offset: 1040)
!281 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !252, file: !253, line: 79, baseType: !283, size: 8, offset: 1048)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 8, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 1)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !252, file: !253, line: 81, baseType: !287, size: 64, offset: 1088)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !253, line: 43, baseType: null)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !252, file: !253, line: 89, baseType: !290, size: 64, offset: 1152)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !276, line: 153, baseType: !277)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !252, file: !253, line: 91, baseType: !292, size: 64, offset: 1216)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !253, line: 37, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !252, file: !253, line: 92, baseType: !295, size: 64, offset: 1280)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !253, line: 38, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !252, file: !253, line: 93, baseType: !271, size: 64, offset: 1344)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !252, file: !253, line: 94, baseType: !238, size: 64, offset: 1408)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !252, file: !253, line: 95, baseType: !300, size: 64, offset: 1472)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !301, line: 46, baseType: !302)
!301 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!302 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !252, file: !253, line: 96, baseType: !234, size: 32, offset: 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !252, file: !253, line: 98, baseType: !305, size: 160, offset: 1568)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 160, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 20)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !246, file: !244, line: 62, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !310, line: 59, baseType: !311)
!310 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !4, line: 3371, size: 1792, elements: !314)
!314 = !{!315, !348, !356, !367, !374, !381, !386, !392, !398, !411, !421, !459, !467, !495, !503, !504, !509, !518, !524, !529, !533, !537, !566, !615, !621, !628, !635, !661, !686, !703, !715, !737, !755, !926}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !313, file: !4, line: 3372, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !4, line: 360, size: 64, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !316, file: !4, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !316, file: !4, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !316, file: !4, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !316, file: !4, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !316, file: !4, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !316, file: !4, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !316, file: !4, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !316, file: !4, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !316, file: !4, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !316, file: !4, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !316, file: !4, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !316, file: !4, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !316, file: !4, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !316, file: !4, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !316, file: !4, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !316, file: !4, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !316, file: !4, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !316, file: !4, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !316, file: !4, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !316, file: !4, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !316, file: !4, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !316, file: !4, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !316, file: !4, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !316, file: !4, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !316, file: !4, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !316, file: !4, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !316, file: !4, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !316, file: !4, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !316, file: !4, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !316, file: !4, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !313, file: !4, line: 3373, baseType: !349, size: 192)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !4, line: 402, size: 192, elements: !350)
!350 = !{!351, !352, !355}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !349, file: !4, line: 403, baseType: !316, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !349, file: !4, line: 404, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !310, line: 56, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !4, line: 405, baseType: !353, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !313, file: !4, line: 3374, baseType: !357, size: 320)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !4, line: 1384, size: 320, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !357, file: !4, line: 1385, baseType: !349, size: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !357, file: !4, line: 1386, baseType: !361, size: 128, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !362, line: 58, baseType: !363)
!362 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 54, size: 128, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !363, file: !362, line: 56, baseType: !302, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !363, file: !362, line: 57, baseType: !277, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !313, file: !4, line: 3375, baseType: !368, size: 256)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !4, line: 1397, size: 256, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !368, file: !4, line: 1398, baseType: !349, size: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !368, file: !4, line: 1399, baseType: !372, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !4, line: 1392, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !313, file: !4, line: 3376, baseType: !375, size: 256)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !4, line: 1408, size: 256, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !375, file: !4, line: 1409, baseType: !349, size: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !375, file: !4, line: 1410, baseType: !379, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !4, line: 1403, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !313, file: !4, line: 3377, baseType: !382, size: 256)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !4, line: 1437, size: 256, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !382, file: !4, line: 1438, baseType: !349, size: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !382, file: !4, line: 1439, baseType: !353, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !313, file: !4, line: 3378, baseType: !387, size: 256)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !4, line: 1418, size: 256, elements: !388)
!388 = !{!389, !390, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !387, file: !4, line: 1419, baseType: !349, size: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !387, file: !4, line: 1420, baseType: !234, size: 32, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !387, file: !4, line: 1421, baseType: !283, size: 8, offset: 224)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !313, file: !4, line: 3379, baseType: !393, size: 320)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !4, line: 1428, size: 320, elements: !394)
!394 = !{!395, !396, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !393, file: !4, line: 1429, baseType: !349, size: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !393, file: !4, line: 1430, baseType: !353, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !393, file: !4, line: 1431, baseType: !353, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !313, file: !4, line: 3380, baseType: !399, size: 320)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !4, line: 1460, size: 320, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !399, file: !4, line: 1461, baseType: !349, size: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !399, file: !4, line: 1462, baseType: !403, size: 128, offset: 192)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !404, line: 31, size: 128, elements: !405)
!404 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!405 = !{!406, !409, !410}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !403, file: !404, line: 32, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !403, file: !404, line: 33, baseType: !5, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !403, file: !404, line: 34, baseType: !5, size: 32, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !313, file: !4, line: 3381, baseType: !412, size: 384)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !4, line: 2507, size: 384, elements: !413)
!413 = !{!414, !415, !418, !419, !420}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !412, file: !4, line: 2508, baseType: !349, size: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !412, file: !4, line: 2509, baseType: !416, size: 32, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !417, line: 58, baseType: !241)
!417 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!418 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !412, file: !4, line: 2510, baseType: !5, size: 32, offset: 224)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !412, file: !4, line: 2511, baseType: !353, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !412, file: !4, line: 2512, baseType: !353, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !313, file: !4, line: 3382, baseType: !422, size: 896)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !4, line: 2652, size: 896, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !422, file: !4, line: 2653, baseType: !412, size: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !422, file: !4, line: 2654, baseType: !353, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !422, file: !4, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !422, file: !4, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !422, file: !4, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !422, file: !4, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !422, file: !4, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !422, file: !4, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !422, file: !4, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !422, file: !4, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !422, file: !4, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !422, file: !4, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !422, file: !4, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !422, file: !4, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !422, file: !4, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !422, file: !4, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !422, file: !4, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !422, file: !4, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !422, file: !4, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !422, file: !4, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !422, file: !4, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !422, file: !4, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !422, file: !4, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !422, file: !4, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !422, file: !4, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !422, file: !4, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !422, file: !4, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !422, file: !4, line: 2703, baseType: !5, size: 32, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !422, file: !4, line: 2705, baseType: !353, size: 64, offset: 576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !422, file: !4, line: 2706, baseType: !353, size: 64, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !422, file: !4, line: 2707, baseType: !353, size: 64, offset: 704)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !422, file: !4, line: 2708, baseType: !353, size: 64, offset: 768)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !422, file: !4, line: 2711, baseType: !457, size: 64, offset: 832)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !4, line: 2711, flags: DIFlagFwdDecl)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !313, file: !4, line: 3383, baseType: !460, size: 960)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !4, line: 2756, size: 960, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !460, file: !4, line: 2757, baseType: !422, size: 896)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !460, file: !4, line: 2758, baseType: !464, size: 64, offset: 896)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !310, line: 50, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !310, line: 49, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !313, file: !4, line: 3384, baseType: !468, size: 1472)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !4, line: 3114, size: 1472, elements: !469)
!469 = !{!470, !491, !492, !493, !494}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !468, file: !4, line: 3115, baseType: !471, size: 1216)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !4, line: 2984, size: 1216, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !471, file: !4, line: 2985, baseType: !460, size: 960)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !471, file: !4, line: 2986, baseType: !353, size: 64, offset: 960)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !471, file: !4, line: 2987, baseType: !353, size: 64, offset: 1024)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !471, file: !4, line: 2988, baseType: !353, size: 64, offset: 1088)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !471, file: !4, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !471, file: !4, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !471, file: !4, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !471, file: !4, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !471, file: !4, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !471, file: !4, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !471, file: !4, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !471, file: !4, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !471, file: !4, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !471, file: !4, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !471, file: !4, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !471, file: !4, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !471, file: !4, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !471, file: !4, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !468, file: !4, line: 3117, baseType: !353, size: 64, offset: 1216)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !468, file: !4, line: 3119, baseType: !353, size: 64, offset: 1280)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !468, file: !4, line: 3121, baseType: !353, size: 64, offset: 1344)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !468, file: !4, line: 3123, baseType: !353, size: 64, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !313, file: !4, line: 3385, baseType: !496, size: 1088)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !4, line: 2874, size: 1088, elements: !497)
!497 = !{!498, !499, !500}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !496, file: !4, line: 2875, baseType: !460, size: 960)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !496, file: !4, line: 2876, baseType: !464, size: 64, offset: 960)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !496, file: !4, line: 2877, baseType: !501, size: 64, offset: 1024)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !4, line: 2856, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !313, file: !4, line: 3386, baseType: !471, size: 1216)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !313, file: !4, line: 3387, baseType: !505, size: 1280)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !4, line: 3093, size: 1280, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !505, file: !4, line: 3094, baseType: !471, size: 1216)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !505, file: !4, line: 3095, baseType: !501, size: 64, offset: 1216)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !313, file: !4, line: 3388, baseType: !510, size: 1216)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !4, line: 2824, size: 1216, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !510, file: !4, line: 2825, baseType: !422, size: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !510, file: !4, line: 2827, baseType: !353, size: 64, offset: 896)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !510, file: !4, line: 2828, baseType: !353, size: 64, offset: 960)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !510, file: !4, line: 2829, baseType: !353, size: 64, offset: 1024)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !510, file: !4, line: 2830, baseType: !353, size: 64, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !510, file: !4, line: 2831, baseType: !353, size: 64, offset: 1152)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !313, file: !4, line: 3389, baseType: !519, size: 1024)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !4, line: 2850, size: 1024, elements: !520)
!520 = !{!521, !522, !523}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !519, file: !4, line: 2851, baseType: !460, size: 960)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !519, file: !4, line: 2852, baseType: !234, size: 32, offset: 960)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !519, file: !4, line: 2853, baseType: !234, size: 32, offset: 992)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !313, file: !4, line: 3390, baseType: !525, size: 1024)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !4, line: 2857, size: 1024, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !525, file: !4, line: 2858, baseType: !460, size: 960)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !525, file: !4, line: 2859, baseType: !501, size: 64, offset: 960)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !313, file: !4, line: 3391, baseType: !530, size: 960)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !4, line: 2862, size: 960, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !530, file: !4, line: 2863, baseType: !460, size: 960)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !313, file: !4, line: 3392, baseType: !534, size: 1472)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !4, line: 3304, size: 1472, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !534, file: !4, line: 3305, baseType: !468, size: 1472)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !313, file: !4, line: 3393, baseType: !538, size: 1792)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !4, line: 3248, size: 1792, elements: !539)
!539 = !{!540, !541, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !538, file: !4, line: 3249, baseType: !468, size: 1472)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !538, file: !4, line: 3251, baseType: !542, size: 64, offset: 1472)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !544, line: 41, flags: DIFlagFwdDecl)
!544 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!545 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !538, file: !4, line: 3254, baseType: !353, size: 64, offset: 1536)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !538, file: !4, line: 3257, baseType: !353, size: 64, offset: 1600)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !538, file: !4, line: 3258, baseType: !353, size: 64, offset: 1664)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !538, file: !4, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !538, file: !4, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !538, file: !4, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !538, file: !4, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !538, file: !4, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !538, file: !4, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !538, file: !4, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !538, file: !4, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !538, file: !4, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !538, file: !4, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !538, file: !4, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !538, file: !4, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !538, file: !4, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !538, file: !4, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !538, file: !4, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !538, file: !4, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !538, file: !4, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !538, file: !4, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !313, file: !4, line: 3394, baseType: !567, size: 1344)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !4, line: 2279, size: 1344, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !594, !595, !596, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !567, file: !4, line: 2280, baseType: !349, size: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !567, file: !4, line: 2281, baseType: !353, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !567, file: !4, line: 2282, baseType: !353, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !567, file: !4, line: 2283, baseType: !353, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !567, file: !4, line: 2284, baseType: !353, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !567, file: !4, line: 2285, baseType: !5, size: 32, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !567, file: !4, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !567, file: !4, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !567, file: !4, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !567, file: !4, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !567, file: !4, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !567, file: !4, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !567, file: !4, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !567, file: !4, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !567, file: !4, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !567, file: !4, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !567, file: !4, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !567, file: !4, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !567, file: !4, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !567, file: !4, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !567, file: !4, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !567, file: !4, line: 2305, baseType: !5, size: 32, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !567, file: !4, line: 2306, baseType: !592, size: 32, offset: 544)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !593, line: 31, baseType: !234)
!593 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !567, file: !4, line: 2307, baseType: !353, size: 64, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !567, file: !4, line: 2308, baseType: !353, size: 64, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !567, file: !4, line: 2314, baseType: !597, size: 64, offset: 704)
!597 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !4, line: 2309, size: 64, elements: !598)
!598 = !{!599, !600, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !597, file: !4, line: 2310, baseType: !234, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !597, file: !4, line: 2311, baseType: !239, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !597, file: !4, line: 2312, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !4, line: 2277, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !567, file: !4, line: 2315, baseType: !353, size: 64, offset: 768)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !567, file: !4, line: 2316, baseType: !353, size: 64, offset: 832)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !567, file: !4, line: 2317, baseType: !353, size: 64, offset: 896)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !567, file: !4, line: 2318, baseType: !353, size: 64, offset: 960)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !567, file: !4, line: 2319, baseType: !353, size: 64, offset: 1024)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !567, file: !4, line: 2320, baseType: !353, size: 64, offset: 1088)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !567, file: !4, line: 2321, baseType: !353, size: 64, offset: 1152)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !567, file: !4, line: 2322, baseType: !353, size: 64, offset: 1216)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !567, file: !4, line: 2324, baseType: !613, size: 64, offset: 1280)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !4, line: 2324, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !313, file: !4, line: 3395, baseType: !616, size: 320)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !4, line: 1469, size: 320, elements: !617)
!617 = !{!618, !619, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !616, file: !4, line: 1470, baseType: !349, size: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !616, file: !4, line: 1471, baseType: !353, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !616, file: !4, line: 1472, baseType: !353, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !313, file: !4, line: 3396, baseType: !622, size: 320)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !4, line: 1482, size: 320, elements: !623)
!623 = !{!624, !625, !626}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !622, file: !4, line: 1483, baseType: !349, size: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !622, file: !4, line: 1484, baseType: !234, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !622, file: !4, line: 1485, baseType: !627, size: 64, offset: 256)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 64, elements: !284)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !313, file: !4, line: 3397, baseType: !629, size: 384)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !4, line: 1829, size: 384, elements: !630)
!630 = !{!631, !632, !633, !634}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !629, file: !4, line: 1830, baseType: !349, size: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !629, file: !4, line: 1831, baseType: !416, size: 32, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !629, file: !4, line: 1832, baseType: !353, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !629, file: !4, line: 1835, baseType: !627, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !313, file: !4, line: 3398, baseType: !636, size: 704)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !4, line: 1898, size: 704, elements: !637)
!637 = !{!638, !639, !640, !644, !645, !648}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !636, file: !4, line: 1899, baseType: !349, size: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !636, file: !4, line: 1902, baseType: !353, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !636, file: !4, line: 1905, baseType: !641, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !310, line: 58, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !310, line: 57, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !636, file: !4, line: 1908, baseType: !5, size: 32, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !636, file: !4, line: 1911, baseType: !646, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !4, line: 1876, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !636, file: !4, line: 1914, baseType: !649, size: 256, offset: 448)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !4, line: 1883, size: 256, elements: !650)
!650 = !{!651, !653, !654, !659}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !649, file: !4, line: 1884, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !649, file: !4, line: 1885, baseType: !652, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !649, file: !4, line: 1891, baseType: !655, size: 64, offset: 128)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !649, file: !4, line: 1891, size: 64, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !655, file: !4, line: 1891, baseType: !641, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !655, file: !4, line: 1891, baseType: !353, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !649, file: !4, line: 1892, baseType: !660, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !313, file: !4, line: 3399, baseType: !662, size: 704)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !4, line: 2008, size: 704, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !681, !682, !683, !684, !685}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !662, file: !4, line: 2009, baseType: !349, size: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !662, file: !4, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !662, file: !4, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !662, file: !4, line: 2014, baseType: !416, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !662, file: !4, line: 2016, baseType: !353, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !662, file: !4, line: 2017, baseType: !670, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !4, line: 183, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !4, line: 183, size: 128, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !672, file: !4, line: 183, baseType: !675, size: 128)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !4, line: 182, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !4, line: 182, size: 128, elements: !677)
!677 = !{!678, !679, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !676, file: !4, line: 182, baseType: !5, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !676, file: !4, line: 182, baseType: !5, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !676, file: !4, line: 182, baseType: !627, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !662, file: !4, line: 2019, baseType: !353, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !662, file: !4, line: 2020, baseType: !353, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !662, file: !4, line: 2021, baseType: !353, size: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !662, file: !4, line: 2022, baseType: !353, size: 64, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !662, file: !4, line: 2023, baseType: !353, size: 64, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !313, file: !4, line: 3400, baseType: !687, size: 832)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !4, line: 2430, size: 832, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !687, file: !4, line: 2431, baseType: !349, size: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !687, file: !4, line: 2433, baseType: !353, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !687, file: !4, line: 2434, baseType: !353, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !687, file: !4, line: 2435, baseType: !353, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !687, file: !4, line: 2436, baseType: !353, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !687, file: !4, line: 2437, baseType: !670, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !687, file: !4, line: 2438, baseType: !353, size: 64, offset: 512)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !687, file: !4, line: 2440, baseType: !353, size: 64, offset: 576)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !687, file: !4, line: 2441, baseType: !353, size: 64, offset: 640)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !687, file: !4, line: 2443, baseType: !699, size: 128, offset: 704)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !4, line: 182, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !4, line: 182, size: 128, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !700, file: !4, line: 182, baseType: !675, size: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !313, file: !4, line: 3401, baseType: !704, size: 320)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !4, line: 3327, size: 320, elements: !705)
!705 = !{!706, !707, !714}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !704, file: !4, line: 3329, baseType: !349, size: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !704, file: !4, line: 3330, baseType: !708, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !4, line: 3320, size: 192, elements: !710)
!710 = !{!711, !712, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !709, file: !4, line: 3322, baseType: !708, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !4, line: 3323, baseType: !708, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !709, file: !4, line: 3324, baseType: !353, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !704, file: !4, line: 3331, baseType: !708, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !313, file: !4, line: 3402, baseType: !716, size: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !4, line: 1540, size: 256, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !716, file: !4, line: 1541, baseType: !349, size: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !716, file: !4, line: 1542, baseType: !720, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !4, line: 1538, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !4, line: 1538, size: 192, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !722, file: !4, line: 1538, baseType: !725, size: 192)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !4, line: 1537, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !4, line: 1537, size: 192, elements: !727)
!727 = !{!728, !729, !730}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !726, file: !4, line: 1537, baseType: !5, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !726, file: !4, line: 1537, baseType: !5, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !726, file: !4, line: 1537, baseType: !731, size: 128, offset: 64)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 128, elements: !284)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !4, line: 1535, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !4, line: 1532, size: 128, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !733, file: !4, line: 1533, baseType: !353, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !733, file: !4, line: 1534, baseType: !353, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !313, file: !4, line: 3403, baseType: !738, size: 512)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !4, line: 1938, size: 512, elements: !739)
!739 = !{!740, !741, !742, !743, !749, !753, !754}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !738, file: !4, line: 1939, baseType: !349, size: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !738, file: !4, line: 1940, baseType: !416, size: 32, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !738, file: !4, line: 1941, baseType: !3, size: 32, offset: 224)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !738, file: !4, line: 1946, baseType: !744, size: 32, offset: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !4, line: 1942, size: 32, elements: !745)
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !744, file: !4, line: 1943, baseType: !23, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !744, file: !4, line: 1944, baseType: !30, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !744, file: !4, line: 1945, baseType: !37, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !738, file: !4, line: 1950, baseType: !750, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !310, line: 66, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !310, line: 65, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !738, file: !4, line: 1951, baseType: !750, size: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !738, file: !4, line: 1953, baseType: !627, size: 64, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !313, file: !4, line: 3404, baseType: !756, size: 1664)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !4, line: 3337, size: 1664, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !756, file: !4, line: 3338, baseType: !349, size: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !756, file: !4, line: 3341, baseType: !760, size: 1472, offset: 192)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !761, line: 410, size: 1472, elements: !762)
!761 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !760, file: !761, line: 412, baseType: !234, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !760, file: !761, line: 413, baseType: !234, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !760, file: !761, line: 414, baseType: !234, size: 32, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !760, file: !761, line: 415, baseType: !234, size: 32, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !760, file: !761, line: 416, baseType: !234, size: 32, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !760, file: !761, line: 417, baseType: !234, size: 32, offset: 160)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !760, file: !761, line: 418, baseType: !233, size: 8, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !760, file: !761, line: 419, baseType: !233, size: 8, offset: 200)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !760, file: !761, line: 420, baseType: !281, size: 8, offset: 208)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !760, file: !761, line: 421, baseType: !281, size: 8, offset: 216)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !760, file: !761, line: 422, baseType: !281, size: 8, offset: 224)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !760, file: !761, line: 423, baseType: !281, size: 8, offset: 232)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !760, file: !761, line: 424, baseType: !281, size: 8, offset: 240)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !760, file: !761, line: 425, baseType: !281, size: 8, offset: 248)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !760, file: !761, line: 426, baseType: !281, size: 8, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !760, file: !761, line: 427, baseType: !281, size: 8, offset: 264)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !760, file: !761, line: 428, baseType: !281, size: 8, offset: 272)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !760, file: !761, line: 429, baseType: !281, size: 8, offset: 280)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !760, file: !761, line: 430, baseType: !281, size: 8, offset: 288)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !760, file: !761, line: 431, baseType: !281, size: 8, offset: 296)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !760, file: !761, line: 432, baseType: !281, size: 8, offset: 304)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !760, file: !761, line: 433, baseType: !281, size: 8, offset: 312)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !760, file: !761, line: 434, baseType: !281, size: 8, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !760, file: !761, line: 435, baseType: !281, size: 8, offset: 328)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !760, file: !761, line: 436, baseType: !281, size: 8, offset: 336)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !760, file: !761, line: 437, baseType: !281, size: 8, offset: 344)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !760, file: !761, line: 438, baseType: !281, size: 8, offset: 352)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !760, file: !761, line: 439, baseType: !281, size: 8, offset: 360)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !760, file: !761, line: 440, baseType: !281, size: 8, offset: 368)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !760, file: !761, line: 441, baseType: !281, size: 8, offset: 376)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !760, file: !761, line: 442, baseType: !281, size: 8, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !760, file: !761, line: 443, baseType: !281, size: 8, offset: 392)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !760, file: !761, line: 444, baseType: !281, size: 8, offset: 400)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !760, file: !761, line: 445, baseType: !281, size: 8, offset: 408)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !760, file: !761, line: 446, baseType: !281, size: 8, offset: 416)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !760, file: !761, line: 447, baseType: !281, size: 8, offset: 424)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !760, file: !761, line: 448, baseType: !281, size: 8, offset: 432)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !760, file: !761, line: 449, baseType: !281, size: 8, offset: 440)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !760, file: !761, line: 450, baseType: !281, size: 8, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !760, file: !761, line: 451, baseType: !281, size: 8, offset: 456)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !760, file: !761, line: 452, baseType: !281, size: 8, offset: 464)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !760, file: !761, line: 453, baseType: !281, size: 8, offset: 472)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !760, file: !761, line: 454, baseType: !281, size: 8, offset: 480)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !760, file: !761, line: 455, baseType: !281, size: 8, offset: 488)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !760, file: !761, line: 456, baseType: !281, size: 8, offset: 496)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !760, file: !761, line: 457, baseType: !281, size: 8, offset: 504)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !760, file: !761, line: 458, baseType: !281, size: 8, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !760, file: !761, line: 459, baseType: !281, size: 8, offset: 520)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !760, file: !761, line: 460, baseType: !281, size: 8, offset: 528)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !760, file: !761, line: 461, baseType: !281, size: 8, offset: 536)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !760, file: !761, line: 462, baseType: !281, size: 8, offset: 544)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !760, file: !761, line: 463, baseType: !281, size: 8, offset: 552)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !760, file: !761, line: 464, baseType: !281, size: 8, offset: 560)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !760, file: !761, line: 465, baseType: !281, size: 8, offset: 568)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !760, file: !761, line: 466, baseType: !281, size: 8, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !760, file: !761, line: 467, baseType: !281, size: 8, offset: 584)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !760, file: !761, line: 468, baseType: !281, size: 8, offset: 592)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !760, file: !761, line: 469, baseType: !281, size: 8, offset: 600)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !760, file: !761, line: 470, baseType: !281, size: 8, offset: 608)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !760, file: !761, line: 471, baseType: !281, size: 8, offset: 616)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !760, file: !761, line: 472, baseType: !281, size: 8, offset: 624)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !760, file: !761, line: 473, baseType: !281, size: 8, offset: 632)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !760, file: !761, line: 474, baseType: !281, size: 8, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !760, file: !761, line: 475, baseType: !281, size: 8, offset: 648)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !760, file: !761, line: 476, baseType: !281, size: 8, offset: 656)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !760, file: !761, line: 477, baseType: !281, size: 8, offset: 664)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !760, file: !761, line: 478, baseType: !281, size: 8, offset: 672)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !760, file: !761, line: 479, baseType: !281, size: 8, offset: 680)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !760, file: !761, line: 480, baseType: !281, size: 8, offset: 688)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !760, file: !761, line: 481, baseType: !281, size: 8, offset: 696)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !760, file: !761, line: 482, baseType: !281, size: 8, offset: 704)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !760, file: !761, line: 483, baseType: !281, size: 8, offset: 712)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !760, file: !761, line: 484, baseType: !281, size: 8, offset: 720)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !760, file: !761, line: 485, baseType: !281, size: 8, offset: 728)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !760, file: !761, line: 486, baseType: !281, size: 8, offset: 736)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !760, file: !761, line: 487, baseType: !281, size: 8, offset: 744)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !760, file: !761, line: 488, baseType: !281, size: 8, offset: 752)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !760, file: !761, line: 489, baseType: !281, size: 8, offset: 760)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !760, file: !761, line: 490, baseType: !281, size: 8, offset: 768)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !760, file: !761, line: 491, baseType: !281, size: 8, offset: 776)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !760, file: !761, line: 492, baseType: !281, size: 8, offset: 784)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !760, file: !761, line: 493, baseType: !281, size: 8, offset: 792)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !760, file: !761, line: 494, baseType: !281, size: 8, offset: 800)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !760, file: !761, line: 495, baseType: !281, size: 8, offset: 808)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !760, file: !761, line: 496, baseType: !281, size: 8, offset: 816)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !760, file: !761, line: 497, baseType: !281, size: 8, offset: 824)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !760, file: !761, line: 498, baseType: !281, size: 8, offset: 832)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !760, file: !761, line: 499, baseType: !281, size: 8, offset: 840)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !760, file: !761, line: 500, baseType: !281, size: 8, offset: 848)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !760, file: !761, line: 501, baseType: !281, size: 8, offset: 856)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !760, file: !761, line: 502, baseType: !281, size: 8, offset: 864)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !760, file: !761, line: 503, baseType: !281, size: 8, offset: 872)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !760, file: !761, line: 504, baseType: !281, size: 8, offset: 880)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !760, file: !761, line: 505, baseType: !281, size: 8, offset: 888)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !760, file: !761, line: 506, baseType: !281, size: 8, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !760, file: !761, line: 507, baseType: !281, size: 8, offset: 904)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !760, file: !761, line: 508, baseType: !281, size: 8, offset: 912)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !760, file: !761, line: 509, baseType: !281, size: 8, offset: 920)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !760, file: !761, line: 510, baseType: !281, size: 8, offset: 928)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !760, file: !761, line: 511, baseType: !281, size: 8, offset: 936)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !760, file: !761, line: 512, baseType: !281, size: 8, offset: 944)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !760, file: !761, line: 513, baseType: !281, size: 8, offset: 952)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !760, file: !761, line: 514, baseType: !281, size: 8, offset: 960)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !760, file: !761, line: 515, baseType: !281, size: 8, offset: 968)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !760, file: !761, line: 516, baseType: !281, size: 8, offset: 976)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !760, file: !761, line: 517, baseType: !281, size: 8, offset: 984)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !760, file: !761, line: 518, baseType: !281, size: 8, offset: 992)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !760, file: !761, line: 519, baseType: !281, size: 8, offset: 1000)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !760, file: !761, line: 520, baseType: !281, size: 8, offset: 1008)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !760, file: !761, line: 521, baseType: !281, size: 8, offset: 1016)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !760, file: !761, line: 522, baseType: !281, size: 8, offset: 1024)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !760, file: !761, line: 523, baseType: !281, size: 8, offset: 1032)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !760, file: !761, line: 524, baseType: !281, size: 8, offset: 1040)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !760, file: !761, line: 525, baseType: !281, size: 8, offset: 1048)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !760, file: !761, line: 526, baseType: !281, size: 8, offset: 1056)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !760, file: !761, line: 527, baseType: !281, size: 8, offset: 1064)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !760, file: !761, line: 528, baseType: !281, size: 8, offset: 1072)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !760, file: !761, line: 529, baseType: !281, size: 8, offset: 1080)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !760, file: !761, line: 530, baseType: !281, size: 8, offset: 1088)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !760, file: !761, line: 531, baseType: !281, size: 8, offset: 1096)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !760, file: !761, line: 532, baseType: !281, size: 8, offset: 1104)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !760, file: !761, line: 533, baseType: !281, size: 8, offset: 1112)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !760, file: !761, line: 534, baseType: !281, size: 8, offset: 1120)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !760, file: !761, line: 535, baseType: !281, size: 8, offset: 1128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !760, file: !761, line: 536, baseType: !281, size: 8, offset: 1136)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !760, file: !761, line: 537, baseType: !281, size: 8, offset: 1144)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !760, file: !761, line: 538, baseType: !281, size: 8, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !760, file: !761, line: 539, baseType: !281, size: 8, offset: 1160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !760, file: !761, line: 540, baseType: !281, size: 8, offset: 1168)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !760, file: !761, line: 541, baseType: !281, size: 8, offset: 1176)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !760, file: !761, line: 542, baseType: !281, size: 8, offset: 1184)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !760, file: !761, line: 543, baseType: !281, size: 8, offset: 1192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !760, file: !761, line: 544, baseType: !281, size: 8, offset: 1200)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !760, file: !761, line: 545, baseType: !281, size: 8, offset: 1208)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !760, file: !761, line: 546, baseType: !281, size: 8, offset: 1216)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !760, file: !761, line: 547, baseType: !281, size: 8, offset: 1224)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !760, file: !761, line: 548, baseType: !281, size: 8, offset: 1232)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !760, file: !761, line: 549, baseType: !281, size: 8, offset: 1240)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !760, file: !761, line: 550, baseType: !281, size: 8, offset: 1248)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !760, file: !761, line: 551, baseType: !281, size: 8, offset: 1256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !760, file: !761, line: 552, baseType: !281, size: 8, offset: 1264)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !760, file: !761, line: 553, baseType: !281, size: 8, offset: 1272)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !760, file: !761, line: 554, baseType: !281, size: 8, offset: 1280)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !760, file: !761, line: 555, baseType: !281, size: 8, offset: 1288)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !760, file: !761, line: 556, baseType: !281, size: 8, offset: 1296)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !760, file: !761, line: 557, baseType: !281, size: 8, offset: 1304)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !760, file: !761, line: 558, baseType: !281, size: 8, offset: 1312)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !760, file: !761, line: 559, baseType: !281, size: 8, offset: 1320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !760, file: !761, line: 560, baseType: !281, size: 8, offset: 1328)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !760, file: !761, line: 561, baseType: !281, size: 8, offset: 1336)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !760, file: !761, line: 562, baseType: !281, size: 8, offset: 1344)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !760, file: !761, line: 563, baseType: !281, size: 8, offset: 1352)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !760, file: !761, line: 564, baseType: !281, size: 8, offset: 1360)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !760, file: !761, line: 565, baseType: !281, size: 8, offset: 1368)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !760, file: !761, line: 566, baseType: !281, size: 8, offset: 1376)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !760, file: !761, line: 567, baseType: !281, size: 8, offset: 1384)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !760, file: !761, line: 568, baseType: !281, size: 8, offset: 1392)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !760, file: !761, line: 569, baseType: !281, size: 8, offset: 1400)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !760, file: !761, line: 570, baseType: !281, size: 8, offset: 1408)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !760, file: !761, line: 571, baseType: !281, size: 8, offset: 1416)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !760, file: !761, line: 572, baseType: !281, size: 8, offset: 1424)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !760, file: !761, line: 573, baseType: !281, size: 8, offset: 1432)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !760, file: !761, line: 574, baseType: !281, size: 8, offset: 1440)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !313, file: !4, line: 3405, baseType: !927, size: 384)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !4, line: 3352, size: 384, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !927, file: !4, line: 3353, baseType: !349, size: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !927, file: !4, line: 3356, baseType: !931, size: 192, offset: 192)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !761, line: 578, size: 192, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !931, file: !761, line: 580, baseType: !234, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !931, file: !761, line: 581, baseType: !234, size: 32, offset: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !931, file: !761, line: 582, baseType: !234, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !931, file: !761, line: 583, baseType: !234, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !931, file: !761, line: 584, baseType: !233, size: 8, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !931, file: !761, line: 585, baseType: !233, size: 8, offset: 136)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !931, file: !761, line: 586, baseType: !233, size: 8, offset: 144)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !931, file: !761, line: 587, baseType: !233, size: 8, offset: 152)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !931, file: !761, line: 588, baseType: !233, size: 8, offset: 160)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !931, file: !761, line: 589, baseType: !233, size: 8, offset: 168)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !931, file: !761, line: 590, baseType: !233, size: 8, offset: 176)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !244, line: 64, baseType: !234, size: 32, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !246, file: !244, line: 66, baseType: !5, size: 32, offset: 160)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !246, file: !244, line: 68, baseType: !5, size: 32, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !246, file: !244, line: 70, baseType: !948, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "dump_queue_p", file: !244, line: 52, baseType: !949)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dump_queue", file: !244, line: 46, size: 128, elements: !951)
!951 = !{!952, !965}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !950, file: !244, line: 49, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_node", file: !954, line: 66, baseType: !955)
!954 = !DIFile(filename: "./include/splay-tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_node_s", file: !954, line: 96, size: 256, elements: !957)
!957 = !{!958, !961, !963, !964}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !956, file: !954, line: 98, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_key", file: !954, line: 62, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "libi_uhostptr_t", file: !954, line: 41, baseType: !302)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !956, file: !954, line: 101, baseType: !962, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_value", file: !954, line: 63, baseType: !960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !956, file: !954, line: 104, baseType: !953, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !956, file: !954, line: 105, baseType: !953, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !950, file: !244, line: 51, baseType: !949, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "queue_end", scope: !246, file: !244, line: 72, baseType: !948, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !246, file: !244, line: 74, baseType: !948, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !246, file: !244, line: 78, baseType: !969, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree", file: !954, line: 128, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "splay_tree_s", file: !954, line: 109, size: 448, elements: !972)
!972 = !{!973, !974, !979, !984, !989, !994, !999}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !971, file: !954, line: 111, baseType: !953, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !971, file: !954, line: 114, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_compare_fn", file: !954, line: 70, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!234, !959, !959}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "delete_key", scope: !971, file: !954, line: 117, baseType: !980, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_key_fn", file: !954, line: 74, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !959}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "delete_value", scope: !971, file: !954, line: 120, baseType: !985, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_delete_value_fn", file: !954, line: 78, baseType: !986)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !962}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "allocate", scope: !971, file: !954, line: 123, baseType: !990, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_allocate_fn", file: !954, line: 87, baseType: !991)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!238, !234, !238}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate", scope: !971, file: !954, line: 124, baseType: !995, size: 64, offset: 320)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "splay_tree_deallocate_fn", file: !954, line: 93, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !238, !238}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_data", scope: !971, file: !954, line: 125, baseType: !238, size: 64, offset: 384)
!1000 = !{i32 2, !"Dwarf Version", i32 4}
!1001 = !{i32 2, !"Debug Info Version", i32 3}
!1002 = !{i32 1, !"wchar_size", i32 4}
!1003 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1004 = distinct !DISubprogram(name: "vprintf", scope: !1005, file: !1005, line: 39, type: !1006, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1016)
!1005 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!234, !1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1010, file: !1, baseType: !5, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1010, file: !1, baseType: !5, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1010, file: !1, baseType: !238, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1010, file: !1, baseType: !238, size: 64, offset: 128)
!1016 = !{!1017, !1018}
!1017 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1004, file: !1005, line: 39, type: !1008)
!1018 = !DILocalVariable(name: "__arg", arg: 2, scope: !1004, file: !1005, line: 39, type: !1009)
!1019 = !DILocation(line: 0, scope: !1004)
!1020 = !DILocation(line: 41, column: 20, scope: !1004)
!1021 = !DILocation(line: 41, column: 10, scope: !1004)
!1022 = !DILocation(line: 41, column: 3, scope: !1004)
!1023 = distinct !DISubprogram(name: "getchar", scope: !1005, file: !1005, line: 47, type: !1024, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!234}
!1026 = !{}
!1027 = !DILocation(line: 49, column: 16, scope: !1023)
!1028 = !DILocation(line: 49, column: 10, scope: !1023)
!1029 = !DILocation(line: 49, column: 3, scope: !1023)
!1030 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1005, file: !1005, line: 56, type: !1031, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!234, !249}
!1033 = !{!1034}
!1034 = !DILocalVariable(name: "__fp", arg: 1, scope: !1030, file: !1005, line: 56, type: !249)
!1035 = !DILocation(line: 0, scope: !1030)
!1036 = !DILocation(line: 58, column: 10, scope: !1030)
!1037 = !DILocation(line: 58, column: 3, scope: !1030)
!1038 = distinct !DISubprogram(name: "getc_unlocked", scope: !1005, file: !1005, line: 66, type: !1031, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1039)
!1039 = !{!1040}
!1040 = !DILocalVariable(name: "__fp", arg: 1, scope: !1038, file: !1005, line: 66, type: !249)
!1041 = !DILocation(line: 0, scope: !1038)
!1042 = !DILocation(line: 68, column: 10, scope: !1038)
!1043 = !DILocation(line: 68, column: 3, scope: !1038)
!1044 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1005, file: !1005, line: 73, type: !1024, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1026)
!1045 = !DILocation(line: 75, column: 10, scope: !1044)
!1046 = !DILocation(line: 75, column: 3, scope: !1044)
!1047 = distinct !DISubprogram(name: "putchar", scope: !1005, file: !1005, line: 82, type: !1048, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!234, !234}
!1050 = !{!1051}
!1051 = !DILocalVariable(name: "__c", arg: 1, scope: !1047, file: !1005, line: 82, type: !234)
!1052 = !DILocation(line: 0, scope: !1047)
!1053 = !DILocation(line: 84, column: 21, scope: !1047)
!1054 = !DILocation(line: 84, column: 10, scope: !1047)
!1055 = !DILocation(line: 84, column: 3, scope: !1047)
!1056 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1005, file: !1005, line: 91, type: !1057, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!234, !234, !249}
!1059 = !{!1060, !1061}
!1060 = !DILocalVariable(name: "__c", arg: 1, scope: !1056, file: !1005, line: 91, type: !234)
!1061 = !DILocalVariable(name: "__stream", arg: 2, scope: !1056, file: !1005, line: 91, type: !249)
!1062 = !DILocation(line: 0, scope: !1056)
!1063 = !DILocation(line: 93, column: 10, scope: !1056)
!1064 = !DILocation(line: 93, column: 3, scope: !1056)
!1065 = distinct !DISubprogram(name: "putc_unlocked", scope: !1005, file: !1005, line: 101, type: !1057, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1066)
!1066 = !{!1067, !1068}
!1067 = !DILocalVariable(name: "__c", arg: 1, scope: !1065, file: !1005, line: 101, type: !234)
!1068 = !DILocalVariable(name: "__stream", arg: 2, scope: !1065, file: !1005, line: 101, type: !249)
!1069 = !DILocation(line: 0, scope: !1065)
!1070 = !DILocation(line: 103, column: 10, scope: !1065)
!1071 = !DILocation(line: 103, column: 3, scope: !1065)
!1072 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1005, file: !1005, line: 108, type: !1048, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1073)
!1073 = !{!1074}
!1074 = !DILocalVariable(name: "__c", arg: 1, scope: !1072, file: !1005, line: 108, type: !234)
!1075 = !DILocation(line: 0, scope: !1072)
!1076 = !DILocation(line: 110, column: 10, scope: !1072)
!1077 = !DILocation(line: 110, column: 3, scope: !1072)
!1078 = distinct !DISubprogram(name: "getline", scope: !1005, file: !1005, line: 118, type: !1079, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1083)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1081, !235, !1082, !249}
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !276, line: 193, baseType: !277)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1083 = !{!1084, !1085, !1086}
!1084 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1078, file: !1005, line: 118, type: !235)
!1085 = !DILocalVariable(name: "__n", arg: 2, scope: !1078, file: !1005, line: 118, type: !1082)
!1086 = !DILocalVariable(name: "__stream", arg: 3, scope: !1078, file: !1005, line: 118, type: !249)
!1087 = !DILocation(line: 0, scope: !1078)
!1088 = !DILocation(line: 120, column: 10, scope: !1078)
!1089 = !DILocation(line: 120, column: 3, scope: !1078)
!1090 = distinct !DISubprogram(name: "feof_unlocked", scope: !1005, file: !1005, line: 128, type: !1031, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1091)
!1091 = !{!1092}
!1092 = !DILocalVariable(name: "__stream", arg: 1, scope: !1090, file: !1005, line: 128, type: !249)
!1093 = !DILocation(line: 0, scope: !1090)
!1094 = !DILocation(line: 130, column: 10, scope: !1090)
!1095 = !DILocation(line: 130, column: 3, scope: !1090)
!1096 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1005, file: !1005, line: 135, type: !1031, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1097)
!1097 = !{!1098}
!1098 = !DILocalVariable(name: "__stream", arg: 1, scope: !1096, file: !1005, line: 135, type: !249)
!1099 = !DILocation(line: 0, scope: !1096)
!1100 = !DILocation(line: 137, column: 10, scope: !1096)
!1101 = !DILocation(line: 137, column: 3, scope: !1096)
!1102 = distinct !DISubprogram(name: "tolower", scope: !1103, file: !1103, line: 207, type: !1048, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1104)
!1103 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1104 = !{!1105}
!1105 = !DILocalVariable(name: "__c", arg: 1, scope: !1102, file: !1103, line: 207, type: !234)
!1106 = !DILocation(line: 0, scope: !1102)
!1107 = !DILocation(line: 209, column: 22, scope: !1102)
!1108 = !DILocation(line: 209, column: 39, scope: !1102)
!1109 = !DILocation(line: 209, column: 38, scope: !1102)
!1110 = !DILocation(line: 209, column: 37, scope: !1102)
!1111 = !DILocation(line: 209, column: 10, scope: !1102)
!1112 = !DILocation(line: 209, column: 3, scope: !1102)
!1113 = distinct !DISubprogram(name: "toupper", scope: !1103, file: !1103, line: 213, type: !1048, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1114)
!1114 = !{!1115}
!1115 = !DILocalVariable(name: "__c", arg: 1, scope: !1113, file: !1103, line: 213, type: !234)
!1116 = !DILocation(line: 0, scope: !1113)
!1117 = !DILocation(line: 215, column: 22, scope: !1113)
!1118 = !DILocation(line: 215, column: 39, scope: !1113)
!1119 = !DILocation(line: 215, column: 38, scope: !1113)
!1120 = !DILocation(line: 215, column: 37, scope: !1113)
!1121 = !DILocation(line: 215, column: 10, scope: !1113)
!1122 = !DILocation(line: 215, column: 3, scope: !1113)
!1123 = distinct !DISubprogram(name: "atoi", scope: !1124, file: !1124, line: 361, type: !1125, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1127)
!1124 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!234, !239}
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1123, file: !1124, line: 361, type: !239)
!1129 = !DILocation(line: 0, scope: !1123)
!1130 = !DILocation(line: 363, column: 16, scope: !1123)
!1131 = !DILocation(line: 363, column: 10, scope: !1123)
!1132 = !DILocation(line: 363, column: 3, scope: !1123)
!1133 = distinct !DISubprogram(name: "atol", scope: !1124, file: !1124, line: 366, type: !1134, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!277, !239}
!1136 = !{!1137}
!1137 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1133, file: !1124, line: 366, type: !239)
!1138 = !DILocation(line: 0, scope: !1133)
!1139 = !DILocation(line: 368, column: 10, scope: !1133)
!1140 = !DILocation(line: 368, column: 3, scope: !1133)
!1141 = distinct !DISubprogram(name: "atoll", scope: !1124, file: !1124, line: 373, type: !1142, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1145)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!1144, !239}
!1144 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1145 = !{!1146}
!1146 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1141, file: !1124, line: 373, type: !239)
!1147 = !DILocation(line: 0, scope: !1141)
!1148 = !DILocation(line: 375, column: 10, scope: !1141)
!1149 = !DILocation(line: 375, column: 3, scope: !1141)
!1150 = distinct !DISubprogram(name: "bsearch", scope: !1151, file: !1151, line: 20, type: !1152, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1160)
!1151 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!238, !1154, !1154, !300, !300, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1124, line: 808, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!234, !1154, !1154}
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1161 = !DILocalVariable(name: "__key", arg: 1, scope: !1150, file: !1151, line: 20, type: !1154)
!1162 = !DILocalVariable(name: "__base", arg: 2, scope: !1150, file: !1151, line: 20, type: !1154)
!1163 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1150, file: !1151, line: 20, type: !300)
!1164 = !DILocalVariable(name: "__size", arg: 4, scope: !1150, file: !1151, line: 20, type: !300)
!1165 = !DILocalVariable(name: "__compar", arg: 5, scope: !1150, file: !1151, line: 21, type: !1156)
!1166 = !DILocalVariable(name: "__l", scope: !1150, file: !1151, line: 23, type: !300)
!1167 = !DILocalVariable(name: "__u", scope: !1150, file: !1151, line: 23, type: !300)
!1168 = !DILocalVariable(name: "__idx", scope: !1150, file: !1151, line: 23, type: !300)
!1169 = !DILocalVariable(name: "__p", scope: !1150, file: !1151, line: 24, type: !1154)
!1170 = !DILocalVariable(name: "__comparison", scope: !1150, file: !1151, line: 25, type: !234)
!1171 = !DILocation(line: 0, scope: !1150)
!1172 = !DILocation(line: 29, column: 3, scope: !1150)
!1173 = !DILocation(line: 27, column: 7, scope: !1150)
!1174 = !DILocation(line: 29, column: 14, scope: !1150)
!1175 = !DILocation(line: 31, column: 20, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1150, file: !1151, line: 30, column: 5)
!1177 = !DILocation(line: 31, column: 27, scope: !1176)
!1178 = !DILocation(line: 32, column: 56, scope: !1176)
!1179 = !DILocation(line: 32, column: 47, scope: !1176)
!1180 = !DILocation(line: 33, column: 22, scope: !1176)
!1181 = !DILocation(line: 34, column: 24, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1176, file: !1151, line: 34, column: 11)
!1183 = !DILocation(line: 34, column: 11, scope: !1176)
!1184 = !DILocation(line: 36, column: 29, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !1151, line: 36, column: 16)
!1186 = !DILocation(line: 36, column: 16, scope: !1182)
!1187 = !DILocation(line: 37, column: 14, scope: !1185)
!1188 = distinct !{!1188, !1172, !1189}
!1189 = !DILocation(line: 40, column: 5, scope: !1150)
!1190 = !DILocation(line: 43, column: 1, scope: !1150)
!1191 = distinct !DISubprogram(name: "atof", scope: !1192, file: !1192, line: 25, type: !1193, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1196)
!1192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!1195, !239}
!1195 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1196 = !{!1197}
!1197 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1191, file: !1192, line: 25, type: !239)
!1198 = !DILocation(line: 0, scope: !1191)
!1199 = !DILocation(line: 27, column: 10, scope: !1191)
!1200 = !DILocation(line: 27, column: 3, scope: !1191)
!1201 = distinct !DISubprogram(name: "strtoimax", scope: !1202, file: !1202, line: 324, type: !1203, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1209)
!1202 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1205, !1008, !1208, !234}
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1206, line: 101, baseType: !1207)
!1206 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !276, line: 72, baseType: !277)
!1208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!1209 = !{!1210, !1211, !1212}
!1210 = !DILocalVariable(name: "nptr", arg: 1, scope: !1201, file: !1202, line: 324, type: !1008)
!1211 = !DILocalVariable(name: "endptr", arg: 2, scope: !1201, file: !1202, line: 324, type: !1208)
!1212 = !DILocalVariable(name: "base", arg: 3, scope: !1201, file: !1202, line: 324, type: !234)
!1213 = !DILocation(line: 0, scope: !1201)
!1214 = !DILocation(line: 327, column: 10, scope: !1201)
!1215 = !DILocation(line: 327, column: 3, scope: !1201)
!1216 = distinct !DISubprogram(name: "strtoumax", scope: !1202, file: !1202, line: 336, type: !1217, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1221)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1219, !1008, !1208, !234}
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1206, line: 102, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !276, line: 73, baseType: !302)
!1221 = !{!1222, !1223, !1224}
!1222 = !DILocalVariable(name: "nptr", arg: 1, scope: !1216, file: !1202, line: 336, type: !1008)
!1223 = !DILocalVariable(name: "endptr", arg: 2, scope: !1216, file: !1202, line: 336, type: !1208)
!1224 = !DILocalVariable(name: "base", arg: 3, scope: !1216, file: !1202, line: 336, type: !234)
!1225 = !DILocation(line: 0, scope: !1216)
!1226 = !DILocation(line: 339, column: 10, scope: !1216)
!1227 = !DILocation(line: 339, column: 3, scope: !1216)
!1228 = distinct !DISubprogram(name: "wcstoimax", scope: !1202, file: !1202, line: 348, type: !1229, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1238)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1205, !1231, !1235, !234}
!1231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1202, line: 34, baseType: !234)
!1235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1238 = !{!1239, !1240, !1241}
!1239 = !DILocalVariable(name: "nptr", arg: 1, scope: !1228, file: !1202, line: 348, type: !1231)
!1240 = !DILocalVariable(name: "endptr", arg: 2, scope: !1228, file: !1202, line: 348, type: !1235)
!1241 = !DILocalVariable(name: "base", arg: 3, scope: !1228, file: !1202, line: 348, type: !234)
!1242 = !DILocation(line: 0, scope: !1228)
!1243 = !DILocation(line: 351, column: 10, scope: !1228)
!1244 = !DILocation(line: 351, column: 3, scope: !1228)
!1245 = distinct !DISubprogram(name: "wcstoumax", scope: !1202, file: !1202, line: 362, type: !1246, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1248)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1219, !1231, !1235, !234}
!1248 = !{!1249, !1250, !1251}
!1249 = !DILocalVariable(name: "nptr", arg: 1, scope: !1245, file: !1202, line: 362, type: !1231)
!1250 = !DILocalVariable(name: "endptr", arg: 2, scope: !1245, file: !1202, line: 362, type: !1235)
!1251 = !DILocalVariable(name: "base", arg: 3, scope: !1245, file: !1202, line: 362, type: !234)
!1252 = !DILocation(line: 0, scope: !1245)
!1253 = !DILocation(line: 365, column: 10, scope: !1245)
!1254 = !DILocation(line: 365, column: 3, scope: !1245)
!1255 = distinct !DISubprogram(name: "stat", scope: !1256, file: !1256, line: 453, type: !1257, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1296)
!1256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!234, !239, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1261, line: 46, size: 1152, elements: !1262)
!1261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1262 = !{!1263, !1265, !1267, !1269, !1271, !1273, !1275, !1276, !1277, !1278, !1280, !1282, !1290, !1291, !1292}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1260, file: !1261, line: 48, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !276, line: 145, baseType: !302)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1260, file: !1261, line: 53, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !276, line: 148, baseType: !302)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1260, file: !1261, line: 61, baseType: !1268, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !276, line: 151, baseType: !302)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1260, file: !1261, line: 62, baseType: !1270, size: 32, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !276, line: 150, baseType: !5)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1260, file: !1261, line: 64, baseType: !1272, size: 32, offset: 224)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !276, line: 146, baseType: !5)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1260, file: !1261, line: 65, baseType: !1274, size: 32, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !276, line: 147, baseType: !5)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1260, file: !1261, line: 67, baseType: !234, size: 32, offset: 288)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1260, file: !1261, line: 69, baseType: !1264, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1260, file: !1261, line: 74, baseType: !275, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1260, file: !1261, line: 78, baseType: !1279, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !276, line: 174, baseType: !277)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1260, file: !1261, line: 80, baseType: !1281, size: 64, offset: 512)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !276, line: 179, baseType: !277)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1260, file: !1261, line: 91, baseType: !1283, size: 128, offset: 576)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1284, line: 10, size: 128, elements: !1285)
!1284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1285 = !{!1286, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1283, file: !1284, line: 12, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !276, line: 160, baseType: !277)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1283, file: !1284, line: 16, baseType: !1289, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !276, line: 196, baseType: !277)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1260, file: !1261, line: 92, baseType: !1283, size: 128, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1260, file: !1261, line: 93, baseType: !1283, size: 128, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1260, file: !1261, line: 106, baseType: !1293, size: 192, offset: 960)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 192, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 3)
!1296 = !{!1297, !1298}
!1297 = !DILocalVariable(name: "__path", arg: 1, scope: !1255, file: !1256, line: 453, type: !239)
!1298 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1255, file: !1256, line: 453, type: !1259)
!1299 = !DILocation(line: 0, scope: !1255)
!1300 = !DILocation(line: 455, column: 10, scope: !1255)
!1301 = !DILocation(line: 455, column: 3, scope: !1255)
!1302 = distinct !DISubprogram(name: "lstat", scope: !1256, file: !1256, line: 460, type: !1257, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1303)
!1303 = !{!1304, !1305}
!1304 = !DILocalVariable(name: "__path", arg: 1, scope: !1302, file: !1256, line: 460, type: !239)
!1305 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1302, file: !1256, line: 460, type: !1259)
!1306 = !DILocation(line: 0, scope: !1302)
!1307 = !DILocation(line: 462, column: 10, scope: !1302)
!1308 = !DILocation(line: 462, column: 3, scope: !1302)
!1309 = distinct !DISubprogram(name: "fstat", scope: !1256, file: !1256, line: 467, type: !1310, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!234, !234, !1259}
!1312 = !{!1313, !1314}
!1313 = !DILocalVariable(name: "__fd", arg: 1, scope: !1309, file: !1256, line: 467, type: !234)
!1314 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1309, file: !1256, line: 467, type: !1259)
!1315 = !DILocation(line: 0, scope: !1309)
!1316 = !DILocation(line: 469, column: 10, scope: !1309)
!1317 = !DILocation(line: 469, column: 3, scope: !1309)
!1318 = distinct !DISubprogram(name: "fstatat", scope: !1256, file: !1256, line: 474, type: !1319, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1321)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!234, !234, !239, !1259, !234}
!1321 = !{!1322, !1323, !1324, !1325}
!1322 = !DILocalVariable(name: "__fd", arg: 1, scope: !1318, file: !1256, line: 474, type: !234)
!1323 = !DILocalVariable(name: "__filename", arg: 2, scope: !1318, file: !1256, line: 474, type: !239)
!1324 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1318, file: !1256, line: 474, type: !1259)
!1325 = !DILocalVariable(name: "__flag", arg: 4, scope: !1318, file: !1256, line: 474, type: !234)
!1326 = !DILocation(line: 0, scope: !1318)
!1327 = !DILocation(line: 477, column: 10, scope: !1318)
!1328 = !DILocation(line: 477, column: 3, scope: !1318)
!1329 = distinct !DISubprogram(name: "mknod", scope: !1256, file: !1256, line: 483, type: !1330, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1332)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!234, !239, !1270, !1264}
!1332 = !{!1333, !1334, !1335}
!1333 = !DILocalVariable(name: "__path", arg: 1, scope: !1329, file: !1256, line: 483, type: !239)
!1334 = !DILocalVariable(name: "__mode", arg: 2, scope: !1329, file: !1256, line: 483, type: !1270)
!1335 = !DILocalVariable(name: "__dev", arg: 3, scope: !1329, file: !1256, line: 483, type: !1264)
!1336 = !DILocation(line: 0, scope: !1329)
!1337 = !DILocation(line: 485, column: 10, scope: !1329)
!1338 = !DILocation(line: 485, column: 3, scope: !1329)
!1339 = distinct !DISubprogram(name: "mknodat", scope: !1256, file: !1256, line: 491, type: !1340, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!234, !234, !239, !1270, !1264}
!1342 = !{!1343, !1344, !1345, !1346}
!1343 = !DILocalVariable(name: "__fd", arg: 1, scope: !1339, file: !1256, line: 491, type: !234)
!1344 = !DILocalVariable(name: "__path", arg: 2, scope: !1339, file: !1256, line: 491, type: !239)
!1345 = !DILocalVariable(name: "__mode", arg: 3, scope: !1339, file: !1256, line: 491, type: !1270)
!1346 = !DILocalVariable(name: "__dev", arg: 4, scope: !1339, file: !1256, line: 491, type: !1264)
!1347 = !DILocation(line: 0, scope: !1339)
!1348 = !DILocation(line: 494, column: 10, scope: !1339)
!1349 = !DILocation(line: 494, column: 3, scope: !1339)
!1350 = distinct !DISubprogram(name: "stat64", scope: !1256, file: !1256, line: 502, type: !1351, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1373)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!234, !239, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1261, line: 119, size: 1152, elements: !1355)
!1355 = !{!1356, !1357, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1369, !1370, !1371, !1372}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1354, file: !1261, line: 121, baseType: !1264, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1354, file: !1261, line: 123, baseType: !1358, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !276, line: 149, baseType: !302)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1354, file: !1261, line: 124, baseType: !1268, size: 64, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1354, file: !1261, line: 125, baseType: !1270, size: 32, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1354, file: !1261, line: 132, baseType: !1272, size: 32, offset: 224)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1354, file: !1261, line: 133, baseType: !1274, size: 32, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1354, file: !1261, line: 135, baseType: !234, size: 32, offset: 288)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1354, file: !1261, line: 136, baseType: !1264, size: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1354, file: !1261, line: 137, baseType: !275, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1354, file: !1261, line: 143, baseType: !1279, size: 64, offset: 448)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1354, file: !1261, line: 144, baseType: !1368, size: 64, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !276, line: 180, baseType: !277)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1354, file: !1261, line: 152, baseType: !1283, size: 128, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1354, file: !1261, line: 153, baseType: !1283, size: 128, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1354, file: !1261, line: 154, baseType: !1283, size: 128, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1354, file: !1261, line: 164, baseType: !1293, size: 192, offset: 960)
!1373 = !{!1374, !1375}
!1374 = !DILocalVariable(name: "__path", arg: 1, scope: !1350, file: !1256, line: 502, type: !239)
!1375 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1350, file: !1256, line: 502, type: !1353)
!1376 = !DILocation(line: 0, scope: !1350)
!1377 = !DILocation(line: 504, column: 10, scope: !1350)
!1378 = !DILocation(line: 504, column: 3, scope: !1350)
!1379 = distinct !DISubprogram(name: "lstat64", scope: !1256, file: !1256, line: 509, type: !1351, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1380)
!1380 = !{!1381, !1382}
!1381 = !DILocalVariable(name: "__path", arg: 1, scope: !1379, file: !1256, line: 509, type: !239)
!1382 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1379, file: !1256, line: 509, type: !1353)
!1383 = !DILocation(line: 0, scope: !1379)
!1384 = !DILocation(line: 511, column: 10, scope: !1379)
!1385 = !DILocation(line: 511, column: 3, scope: !1379)
!1386 = distinct !DISubprogram(name: "fstat64", scope: !1256, file: !1256, line: 516, type: !1387, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!234, !234, !1353}
!1389 = !{!1390, !1391}
!1390 = !DILocalVariable(name: "__fd", arg: 1, scope: !1386, file: !1256, line: 516, type: !234)
!1391 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1386, file: !1256, line: 516, type: !1353)
!1392 = !DILocation(line: 0, scope: !1386)
!1393 = !DILocation(line: 518, column: 10, scope: !1386)
!1394 = !DILocation(line: 518, column: 3, scope: !1386)
!1395 = distinct !DISubprogram(name: "fstatat64", scope: !1256, file: !1256, line: 523, type: !1396, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!234, !234, !239, !1353, !234}
!1398 = !{!1399, !1400, !1401, !1402}
!1399 = !DILocalVariable(name: "__fd", arg: 1, scope: !1395, file: !1256, line: 523, type: !234)
!1400 = !DILocalVariable(name: "__filename", arg: 2, scope: !1395, file: !1256, line: 523, type: !239)
!1401 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1395, file: !1256, line: 523, type: !1353)
!1402 = !DILocalVariable(name: "__flag", arg: 4, scope: !1395, file: !1256, line: 523, type: !234)
!1403 = !DILocation(line: 0, scope: !1395)
!1404 = !DILocation(line: 526, column: 10, scope: !1395)
!1405 = !DILocation(line: 526, column: 3, scope: !1395)
!1406 = distinct !DISubprogram(name: "dump_stmt", scope: !1, file: !1, line: 32, type: !1407, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !243, !309}
!1409 = !{!1410, !1411}
!1410 = !DILocalVariable(name: "di", arg: 1, scope: !1406, file: !1, line: 32, type: !243)
!1411 = !DILocalVariable(name: "t", arg: 2, scope: !1406, file: !1, line: 32, type: !309)
!1412 = !DILocation(line: 0, scope: !1406)
!1413 = !DILocation(line: 34, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 34, column: 7)
!1415 = !DILocation(line: 34, column: 7, scope: !1406)
!1416 = !DILocation(line: 35, column: 27, scope: !1414)
!1417 = !DILocation(line: 35, column: 5, scope: !1414)
!1418 = !DILocation(line: 36, column: 1, scope: !1406)
!1419 = distinct !DISubprogram(name: "c_dump_tree", scope: !1, file: !1, line: 41, type: !1420, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1422)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!233, !238, !353}
!1422 = !{!1423, !1424, !1425, !1426}
!1423 = !DILocalVariable(name: "dump_info", arg: 1, scope: !1419, file: !1, line: 41, type: !238)
!1424 = !DILocalVariable(name: "t", arg: 2, scope: !1419, file: !1, line: 41, type: !353)
!1425 = !DILocalVariable(name: "code", scope: !1419, file: !1, line: 43, type: !37)
!1426 = !DILocalVariable(name: "di", scope: !1419, file: !1, line: 44, type: !243)
!1427 = !DILocation(line: 0, scope: !1419)
!1428 = !DILocation(line: 44, column: 20, scope: !1419)
!1429 = !DILocation(line: 47, column: 10, scope: !1419)
!1430 = !DILocation(line: 49, column: 3, scope: !1419)
!1431 = !DILocation(line: 52, column: 11, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 52, column: 11)
!1433 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 50, column: 5)
!1434 = !DILocation(line: 52, column: 11, scope: !1433)
!1435 = !DILocation(line: 53, column: 2, scope: !1432)
!1436 = !DILocation(line: 60, column: 3, scope: !1419)
