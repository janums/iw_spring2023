; ModuleID = 'sdbout.bc'
source_filename = "sdbout.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void ()*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i8 (%union.tree_node*)*, void (i32, i8*, i32, i8)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)*, void (i32)*, void (%struct.rtx_def*)*, void ()*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void (i32)*, void (%union.tree_node*, %union.tree_node*)*, i32 }
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
%struct.varray_head_tag = type { i64, i64, i32, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x i64] }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@sdb_debug_hooks = dso_local local_unnamed_addr constant %struct.gcc_debug_hooks zeroinitializer, align 8, !dbg !0
@preinit_symbols = internal global %union.tree_node* null, align 8, !dbg !1008
@deferred_global_decls = internal global %struct.varray_head_tag* null, align 8, !dbg !940
@anonymous_types = internal global %union.tree_node* null, align 8, !dbg !297
@gt_ggc_r_gt_sdbout_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%union.tree_node** @preinit_symbols to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { i8* bitcast (%struct.varray_head_tag** @deferred_global_decls to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_varray_head_tag, void (i8*)* @gt_pch_nx_varray_head_tag }, %struct.ggc_root_tab { i8* bitcast (%union.tree_node** @anonymous_types to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !270
@sdbout_initialized = internal global i8 0, align 1, !dbg !1010
@unnamed_struct_number = internal global i32 0, align 4, !dbg !938
@gt_pch_rs_gt_sdbout_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* @sdbout_initialized, i64 1, i64 1, void (i8*)* null, void (i8*)* null }, %struct.ggc_root_tab { i8* bitcast (i32* @unnamed_struct_number to i8*), i64 1, i64 4, void (i8*)* null, void (i8*)* null }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !292

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1097 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1110, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1111, metadata !DIExpression()), !dbg !1112
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1113
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #4, !dbg !1114
  ret i32 %call, !dbg !1115
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1116 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1120
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #4, !dbg !1121
  ret i32 %call, !dbg !1122
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1123 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1177, metadata !DIExpression()), !dbg !1178
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1179
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1179
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1179
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1179
  %cmp = icmp uge i8* %0, %1, !dbg !1179
  %conv1 = zext i1 %cmp to i64, !dbg !1179
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1179
  %tobool = icmp eq i64 %expval, 0, !dbg !1179
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1179

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #4, !dbg !1179
  br label %cond.end, !dbg !1179

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1179
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1179
  %2 = load i8, i8* %0, align 1, !dbg !1179
  %conv3 = zext i8 %2 to i32, !dbg !1179
  br label %cond.end, !dbg !1179

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1179
  ret i32 %cond, !dbg !1180
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1181 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1183, metadata !DIExpression()), !dbg !1184
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1185
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1185
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1185
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1185
  %cmp = icmp uge i8* %0, %1, !dbg !1185
  %conv1 = zext i1 %cmp to i64, !dbg !1185
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1185
  %tobool = icmp eq i64 %expval, 0, !dbg !1185
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1185

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #4, !dbg !1185
  br label %cond.end, !dbg !1185

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1185
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1185
  %2 = load i8, i8* %0, align 1, !dbg !1185
  %conv3 = zext i8 %2 to i32, !dbg !1185
  br label %cond.end, !dbg !1185

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1185
  ret i32 %cond, !dbg !1186
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1187 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1188
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1188
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1188
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1188
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1188
  %cmp = icmp uge i8* %1, %2, !dbg !1188
  %conv1 = zext i1 %cmp to i64, !dbg !1188
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1188
  %tobool = icmp eq i64 %expval, 0, !dbg !1188
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1188

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #4, !dbg !1188
  br label %cond.end, !dbg !1188

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1188
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1188
  %3 = load i8, i8* %1, align 1, !dbg !1188
  %conv3 = zext i8 %3 to i32, !dbg !1188
  br label %cond.end, !dbg !1188

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1188
  ret i32 %cond, !dbg !1189
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1190 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1194, metadata !DIExpression()), !dbg !1195
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1196
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #4, !dbg !1197
  ret i32 %call, !dbg !1198
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1199 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1203, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1204, metadata !DIExpression()), !dbg !1205
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1206
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1206
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1206
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1206
  %cmp = icmp uge i8* %0, %1, !dbg !1206
  %conv1 = zext i1 %cmp to i64, !dbg !1206
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1206
  %tobool = icmp eq i64 %expval, 0, !dbg !1206
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1206

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1206
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #4, !dbg !1206
  br label %cond.end, !dbg !1206

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1206
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1206
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1206
  store i8 %conv2, i8* %0, align 1, !dbg !1206
  %conv6 = and i32 %__c, 255, !dbg !1206
  br label %cond.end, !dbg !1206

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1206
  ret i32 %cond, !dbg !1207
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1208 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1210, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1211, metadata !DIExpression()), !dbg !1212
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1213
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1213
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1213
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1213
  %cmp = icmp uge i8* %0, %1, !dbg !1213
  %conv1 = zext i1 %cmp to i64, !dbg !1213
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1213
  %tobool = icmp eq i64 %expval, 0, !dbg !1213
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1213

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1213
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #4, !dbg !1213
  br label %cond.end, !dbg !1213

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1213
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1213
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1213
  store i8 %conv2, i8* %0, align 1, !dbg !1213
  %conv6 = and i32 %__c, 255, !dbg !1213
  br label %cond.end, !dbg !1213

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1213
  ret i32 %cond, !dbg !1214
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1215 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1217, metadata !DIExpression()), !dbg !1218
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1219
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1219
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1219
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1219
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1219
  %cmp = icmp uge i8* %1, %2, !dbg !1219
  %conv1 = zext i1 %cmp to i64, !dbg !1219
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1219
  %tobool = icmp eq i64 %expval, 0, !dbg !1219
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1219

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1219
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #4, !dbg !1219
  br label %cond.end, !dbg !1219

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1219
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1219
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1219
  store i8 %conv4, i8* %1, align 1, !dbg !1219
  %conv6 = and i32 %__c, 255, !dbg !1219
  br label %cond.end, !dbg !1219

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1219
  ret i32 %cond, !dbg !1220
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1221 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1227, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1228, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1229, metadata !DIExpression()), !dbg !1230
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #4, !dbg !1231
  ret i64 %call, !dbg !1232
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1233 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1235, metadata !DIExpression()), !dbg !1236
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1237
  %0 = load i32, i32* %_flags, align 8, !dbg !1237
  %and = lshr i32 %0, 4, !dbg !1237
  %and.lobit = and i32 %and, 1, !dbg !1237
  ret i32 %and.lobit, !dbg !1238
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1239 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1241, metadata !DIExpression()), !dbg !1242
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1243
  %0 = load i32, i32* %_flags, align 8, !dbg !1243
  %and = lshr i32 %0, 5, !dbg !1243
  %and.lobit = and i32 %and, 1, !dbg !1243
  ret i32 %and.lobit, !dbg !1244
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1245 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1248, metadata !DIExpression()), !dbg !1249
  %__c.off = add i32 %__c, 128, !dbg !1250
  %0 = icmp ult i32 %__c.off, 384, !dbg !1250
  br i1 %0, label %cond.true, label %cond.end, !dbg !1250

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #4, !dbg !1251
  %1 = load i32*, i32** %call, align 8, !dbg !1252
  %idxprom = sext i32 %__c to i64, !dbg !1253
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1253
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1253
  br label %cond.end, !dbg !1254

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1254
  ret i32 %cond, !dbg !1255
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1256 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1258, metadata !DIExpression()), !dbg !1259
  %__c.off = add i32 %__c, 128, !dbg !1260
  %0 = icmp ult i32 %__c.off, 384, !dbg !1260
  br i1 %0, label %cond.true, label %cond.end, !dbg !1260

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #4, !dbg !1261
  %1 = load i32*, i32** %call, align 8, !dbg !1262
  %idxprom = sext i32 %__c to i64, !dbg !1263
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1263
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1263
  br label %cond.end, !dbg !1264

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1264
  ret i32 %cond, !dbg !1265
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1266 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1271, metadata !DIExpression()), !dbg !1272
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !1273
  %conv = trunc i64 %call to i32, !dbg !1274
  ret i32 %conv, !dbg !1275
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1276 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1280, metadata !DIExpression()), !dbg !1281
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !1282
  ret i64 %call, !dbg !1283
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1284 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1289, metadata !DIExpression()), !dbg !1290
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #4, !dbg !1291
  ret i64 %call, !dbg !1292
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1293 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1304, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1305, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1306, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1307, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1308, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 0, metadata !1309, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1310, metadata !DIExpression()), !dbg !1314
  br label %while.cond, !dbg !1315

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1316
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1314
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1310, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1309, metadata !DIExpression()), !dbg !1314
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1317
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1315

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1318
  %div = lshr i64 %add, 1, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %div, metadata !1311, metadata !DIExpression()), !dbg !1314
  %mul = mul i64 %div, %__size, !dbg !1321
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1312, metadata !DIExpression()), !dbg !1314
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #4, !dbg !1323
  call void @llvm.dbg.value(metadata i32 %call, metadata !1313, metadata !DIExpression()), !dbg !1314
  %cmp1 = icmp slt i32 %call, 0, !dbg !1324
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1326

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1327
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1329

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1309, metadata !DIExpression()), !dbg !1314
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1314
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1314
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1310, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1309, metadata !DIExpression()), !dbg !1314
  br label %while.cond, !dbg !1315, !llvm.loop !1331

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1314
  ret i8* %retval.0, !dbg !1333
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1334 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1340, metadata !DIExpression()), !dbg !1341
  %call = tail call double @strtod(i8* %__nptr, i8** null) #4, !dbg !1342
  ret double %call, !dbg !1343
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1344 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1354, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i32 %base, metadata !1355, metadata !DIExpression()), !dbg !1356
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #4, !dbg !1357
  ret i64 %call, !dbg !1358
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1359 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1365, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1366, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i32 %base, metadata !1367, metadata !DIExpression()), !dbg !1368
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #4, !dbg !1369
  ret i64 %call, !dbg !1370
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1371 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1382, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1383, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i32 %base, metadata !1384, metadata !DIExpression()), !dbg !1385
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #4, !dbg !1386
  ret i64 %call, !dbg !1387
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1388 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1392, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1393, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i32 %base, metadata !1394, metadata !DIExpression()), !dbg !1395
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #4, !dbg !1396
  ret i64 %call, !dbg !1397
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1398 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1438, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1439, metadata !DIExpression()), !dbg !1440
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #4, !dbg !1441
  ret i32 %call, !dbg !1442
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1443 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1445, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1446, metadata !DIExpression()), !dbg !1447
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #4, !dbg !1448
  ret i32 %call, !dbg !1449
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1450 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1454, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1455, metadata !DIExpression()), !dbg !1456
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #4, !dbg !1457
  ret i32 %call, !dbg !1458
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1459 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1463, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1464, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1465, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1466, metadata !DIExpression()), !dbg !1467
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #4, !dbg !1468
  ret i32 %call, !dbg !1469
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1470 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1474, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1475, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1476, metadata !DIExpression()), !dbg !1477
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1476, metadata !DIExpression(DW_OP_deref)), !dbg !1477
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #4, !dbg !1478
  ret i32 %call, !dbg !1479
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1480 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1484, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1485, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1486, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1487, metadata !DIExpression()), !dbg !1488
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1487, metadata !DIExpression(DW_OP_deref)), !dbg !1488
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #4, !dbg !1489
  ret i32 %call, !dbg !1490
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1491 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1515, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1516, metadata !DIExpression()), !dbg !1517
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #4, !dbg !1518
  ret i32 %call, !dbg !1519
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1520 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1522, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1523, metadata !DIExpression()), !dbg !1524
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #4, !dbg !1525
  ret i32 %call, !dbg !1526
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1527 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1531, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1532, metadata !DIExpression()), !dbg !1533
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #4, !dbg !1534
  ret i32 %call, !dbg !1535
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1536 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1540, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1541, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1542, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1543, metadata !DIExpression()), !dbg !1544
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #4, !dbg !1545
  ret i32 %call, !dbg !1546
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) #1

declare dso_local void @gt_pch_nx_lang_tree_node(i8*) #1

declare dso_local void @gt_ggc_mx_varray_head_tag(i8*) #1

declare dso_local void @gt_pch_nx_varray_head_tag(i8*) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1093, !1094, !1095}
!llvm.ident = !{!1096}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sdb_debug_hooks", scope: !2, file: !3, line: 1706, type: !1012, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !259, globals: !269, nameTableKind: None)
!3 = !DIFile(filename: "sdbout.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !25, !32, !39, !233}
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
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "varray_data_enum", file: !234, line: 38, baseType: !7, size: 32, elements: !235)
!234 = !DIFile(filename: "./varray.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!236 = !DIEnumerator(name: "VARRAY_DATA_C", value: 0, isUnsigned: true)
!237 = !DIEnumerator(name: "VARRAY_DATA_UC", value: 1, isUnsigned: true)
!238 = !DIEnumerator(name: "VARRAY_DATA_S", value: 2, isUnsigned: true)
!239 = !DIEnumerator(name: "VARRAY_DATA_US", value: 3, isUnsigned: true)
!240 = !DIEnumerator(name: "VARRAY_DATA_I", value: 4, isUnsigned: true)
!241 = !DIEnumerator(name: "VARRAY_DATA_U", value: 5, isUnsigned: true)
!242 = !DIEnumerator(name: "VARRAY_DATA_L", value: 6, isUnsigned: true)
!243 = !DIEnumerator(name: "VARRAY_DATA_UL", value: 7, isUnsigned: true)
!244 = !DIEnumerator(name: "VARRAY_DATA_HINT", value: 8, isUnsigned: true)
!245 = !DIEnumerator(name: "VARRAY_DATA_UHINT", value: 9, isUnsigned: true)
!246 = !DIEnumerator(name: "VARRAY_DATA_GENERIC", value: 10, isUnsigned: true)
!247 = !DIEnumerator(name: "VARRAY_DATA_GENERIC_NOGC", value: 11, isUnsigned: true)
!248 = !DIEnumerator(name: "VARRAY_DATA_CPTR", value: 12, isUnsigned: true)
!249 = !DIEnumerator(name: "VARRAY_DATA_RTX", value: 13, isUnsigned: true)
!250 = !DIEnumerator(name: "VARRAY_DATA_RTVEC", value: 14, isUnsigned: true)
!251 = !DIEnumerator(name: "VARRAY_DATA_TREE", value: 15, isUnsigned: true)
!252 = !DIEnumerator(name: "VARRAY_DATA_BITMAP", value: 16, isUnsigned: true)
!253 = !DIEnumerator(name: "VARRAY_DATA_REG", value: 17, isUnsigned: true)
!254 = !DIEnumerator(name: "VARRAY_DATA_BB", value: 18, isUnsigned: true)
!255 = !DIEnumerator(name: "VARRAY_DATA_TE", value: 19, isUnsigned: true)
!256 = !DIEnumerator(name: "VARRAY_DATA_EDGE", value: 20, isUnsigned: true)
!257 = !DIEnumerator(name: "VARRAY_DATA_TREE_PTR", value: 21, isUnsigned: true)
!258 = !DIEnumerator(name: "NUM_VARRAY_DATA", value: 22, isUnsigned: true)
!259 = !{!260, !261, !262, !263, !266, !267}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!262 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!269 = !{!0, !270, !292, !297, !938, !940, !1008, !1010}
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_sdbout_h", scope: !2, file: !272, line: 24, type: !273, isLocal: false, isDefinition: true)
!272 = !DIFile(filename: "./gt-sdbout.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 1280, elements: !290)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !276, line: 69, size: 320, elements: !277)
!276 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!277 = !{!278, !279, !283, !284, !289}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !275, file: !276, line: 70, baseType: !266, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !275, file: !276, line: 71, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !281, line: 46, baseType: !282)
!281 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!282 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !275, file: !276, line: 72, baseType: !280, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !275, file: !276, line: 73, baseType: !285, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !276, line: 65, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !266}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !275, file: !276, line: 74, baseType: !285, size: 64, offset: 256)
!290 = !{!291}
!291 = !DISubrange(count: 4)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "gt_pch_rs_gt_sdbout_h", scope: !2, file: !272, line: 49, type: !294, isLocal: false, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 960, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 3)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "anonymous_types", scope: !2, file: !3, line: 53, type: !299, isLocal: true, isDefinition: true)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !300, line: 56, baseType: !301)
!300 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !6, line: 3371, size: 1792, elements: !303)
!303 = !{!304, !337, !343, !355, !362, !369, !374, !383, !389, !402, !414, !452, !460, !488, !496, !497, !502, !511, !517, !522, !526, !530, !559, !608, !614, !621, !628, !654, !679, !696, !708, !730, !748, !920}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !302, file: !6, line: 3372, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !6, line: 360, size: 64, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !305, file: !6, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !305, file: !6, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !305, file: !6, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !305, file: !6, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !305, file: !6, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !305, file: !6, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !305, file: !6, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !305, file: !6, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !305, file: !6, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !305, file: !6, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !305, file: !6, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !305, file: !6, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !305, file: !6, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !305, file: !6, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !305, file: !6, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !305, file: !6, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !305, file: !6, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !305, file: !6, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !305, file: !6, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !305, file: !6, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !305, file: !6, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !305, file: !6, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !305, file: !6, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !305, file: !6, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !305, file: !6, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !305, file: !6, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !305, file: !6, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !305, file: !6, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !305, file: !6, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !305, file: !6, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !302, file: !6, line: 3373, baseType: !338, size: 192)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !6, line: 402, size: 192, elements: !339)
!339 = !{!340, !341, !342}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !338, file: !6, line: 403, baseType: !305, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !338, file: !6, line: 404, baseType: !299, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !338, file: !6, line: 405, baseType: !299, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !302, file: !6, line: 3374, baseType: !344, size: 320)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !6, line: 1384, size: 320, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !344, file: !6, line: 1385, baseType: !338, size: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !344, file: !6, line: 1386, baseType: !348, size: 128, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !349, line: 58, baseType: !350)
!349 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !349, line: 54, size: 128, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !350, file: !349, line: 56, baseType: !282, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !350, file: !349, line: 57, baseType: !354, size: 64, offset: 64)
!354 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !302, file: !6, line: 3375, baseType: !356, size: 256)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !6, line: 1397, size: 256, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !356, file: !6, line: 1398, baseType: !338, size: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !356, file: !6, line: 1399, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !6, line: 1392, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !302, file: !6, line: 3376, baseType: !363, size: 256)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !6, line: 1408, size: 256, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !363, file: !6, line: 1409, baseType: !338, size: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !363, file: !6, line: 1410, baseType: !367, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !6, line: 1403, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !302, file: !6, line: 3377, baseType: !370, size: 256)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !6, line: 1437, size: 256, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !370, file: !6, line: 1438, baseType: !338, size: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !370, file: !6, line: 1439, baseType: !299, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !302, file: !6, line: 3378, baseType: !375, size: 256)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !6, line: 1418, size: 256, elements: !376)
!376 = !{!377, !378, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !375, file: !6, line: 1419, baseType: !338, size: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !375, file: !6, line: 1420, baseType: !262, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !375, file: !6, line: 1421, baseType: !380, size: 8, offset: 224)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 8, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 1)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !302, file: !6, line: 3379, baseType: !384, size: 320)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !6, line: 1428, size: 320, elements: !385)
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !384, file: !6, line: 1429, baseType: !338, size: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !384, file: !6, line: 1430, baseType: !299, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !384, file: !6, line: 1431, baseType: !299, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !302, file: !6, line: 3380, baseType: !390, size: 320)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !6, line: 1460, size: 320, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !390, file: !6, line: 1461, baseType: !338, size: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !390, file: !6, line: 1462, baseType: !394, size: 128, offset: 192)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !395, line: 31, size: 128, elements: !396)
!395 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!396 = !{!397, !400, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !394, file: !395, line: 32, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !394, file: !395, line: 33, baseType: !7, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !394, file: !395, line: 34, baseType: !7, size: 32, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !302, file: !6, line: 3381, baseType: !403, size: 384)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !6, line: 2507, size: 384, elements: !404)
!404 = !{!405, !406, !411, !412, !413}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !403, file: !6, line: 2508, baseType: !338, size: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !403, file: !6, line: 2509, baseType: !407, size: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !408, line: 58, baseType: !409)
!408 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !410, line: 44, baseType: !7)
!410 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !403, file: !6, line: 2510, baseType: !7, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !6, line: 2511, baseType: !299, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !403, file: !6, line: 2512, baseType: !299, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !302, file: !6, line: 3382, baseType: !415, size: 896)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !6, line: 2652, size: 896, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !415, file: !6, line: 2653, baseType: !403, size: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !415, file: !6, line: 2654, baseType: !299, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !415, file: !6, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !415, file: !6, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !415, file: !6, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !415, file: !6, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !415, file: !6, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !415, file: !6, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !415, file: !6, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !415, file: !6, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !415, file: !6, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !415, file: !6, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !415, file: !6, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !415, file: !6, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !415, file: !6, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !415, file: !6, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !415, file: !6, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !415, file: !6, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !415, file: !6, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !415, file: !6, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !415, file: !6, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !415, file: !6, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !415, file: !6, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !415, file: !6, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !415, file: !6, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !415, file: !6, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !415, file: !6, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !415, file: !6, line: 2703, baseType: !7, size: 32, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !415, file: !6, line: 2705, baseType: !299, size: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !415, file: !6, line: 2706, baseType: !299, size: 64, offset: 640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !415, file: !6, line: 2707, baseType: !299, size: 64, offset: 704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !415, file: !6, line: 2708, baseType: !299, size: 64, offset: 768)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !415, file: !6, line: 2711, baseType: !450, size: 64, offset: 832)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !6, line: 2711, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !302, file: !6, line: 3383, baseType: !453, size: 960)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !6, line: 2756, size: 960, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !453, file: !6, line: 2757, baseType: !415, size: 896)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !453, file: !6, line: 2758, baseType: !457, size: 64, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !300, line: 50, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !300, line: 49, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !302, file: !6, line: 3384, baseType: !461, size: 1472)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !6, line: 3114, size: 1472, elements: !462)
!462 = !{!463, !484, !485, !486, !487}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !461, file: !6, line: 3115, baseType: !464, size: 1216)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !6, line: 2984, size: 1216, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !464, file: !6, line: 2985, baseType: !453, size: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !464, file: !6, line: 2986, baseType: !299, size: 64, offset: 960)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !464, file: !6, line: 2987, baseType: !299, size: 64, offset: 1024)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !464, file: !6, line: 2988, baseType: !299, size: 64, offset: 1088)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !464, file: !6, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !464, file: !6, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !464, file: !6, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !464, file: !6, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !464, file: !6, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !464, file: !6, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !464, file: !6, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !464, file: !6, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !464, file: !6, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !464, file: !6, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !464, file: !6, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !464, file: !6, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !464, file: !6, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !464, file: !6, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !461, file: !6, line: 3117, baseType: !299, size: 64, offset: 1216)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !461, file: !6, line: 3119, baseType: !299, size: 64, offset: 1280)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !461, file: !6, line: 3121, baseType: !299, size: 64, offset: 1344)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !461, file: !6, line: 3123, baseType: !299, size: 64, offset: 1408)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !302, file: !6, line: 3385, baseType: !489, size: 1088)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !6, line: 2874, size: 1088, elements: !490)
!490 = !{!491, !492, !493}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !489, file: !6, line: 2875, baseType: !453, size: 960)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !489, file: !6, line: 2876, baseType: !457, size: 64, offset: 960)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !489, file: !6, line: 2877, baseType: !494, size: 64, offset: 1024)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !6, line: 2856, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !302, file: !6, line: 3386, baseType: !464, size: 1216)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !302, file: !6, line: 3387, baseType: !498, size: 1280)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !6, line: 3093, size: 1280, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !498, file: !6, line: 3094, baseType: !464, size: 1216)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !498, file: !6, line: 3095, baseType: !494, size: 64, offset: 1216)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !302, file: !6, line: 3388, baseType: !503, size: 1216)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !6, line: 2824, size: 1216, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !503, file: !6, line: 2825, baseType: !415, size: 896)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !503, file: !6, line: 2827, baseType: !299, size: 64, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !503, file: !6, line: 2828, baseType: !299, size: 64, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !503, file: !6, line: 2829, baseType: !299, size: 64, offset: 1024)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !503, file: !6, line: 2830, baseType: !299, size: 64, offset: 1088)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !503, file: !6, line: 2831, baseType: !299, size: 64, offset: 1152)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !302, file: !6, line: 3389, baseType: !512, size: 1024)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !6, line: 2850, size: 1024, elements: !513)
!513 = !{!514, !515, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !512, file: !6, line: 2851, baseType: !453, size: 960)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !512, file: !6, line: 2852, baseType: !262, size: 32, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !512, file: !6, line: 2853, baseType: !262, size: 32, offset: 992)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !302, file: !6, line: 3390, baseType: !518, size: 1024)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !6, line: 2857, size: 1024, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !518, file: !6, line: 2858, baseType: !453, size: 960)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !518, file: !6, line: 2859, baseType: !494, size: 64, offset: 960)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !302, file: !6, line: 3391, baseType: !523, size: 960)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !6, line: 2862, size: 960, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !523, file: !6, line: 2863, baseType: !453, size: 960)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !302, file: !6, line: 3392, baseType: !527, size: 1472)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !6, line: 3304, size: 1472, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !527, file: !6, line: 3305, baseType: !461, size: 1472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !302, file: !6, line: 3393, baseType: !531, size: 1792)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !6, line: 3248, size: 1792, elements: !532)
!532 = !{!533, !534, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !531, file: !6, line: 3249, baseType: !461, size: 1472)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !531, file: !6, line: 3251, baseType: !535, size: 64, offset: 1472)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !537, line: 41, flags: DIFlagFwdDecl)
!537 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!538 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !531, file: !6, line: 3254, baseType: !299, size: 64, offset: 1536)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !531, file: !6, line: 3257, baseType: !299, size: 64, offset: 1600)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !531, file: !6, line: 3258, baseType: !299, size: 64, offset: 1664)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !531, file: !6, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !531, file: !6, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !531, file: !6, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !531, file: !6, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !531, file: !6, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !531, file: !6, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !531, file: !6, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !531, file: !6, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !531, file: !6, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !531, file: !6, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !531, file: !6, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !531, file: !6, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !531, file: !6, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !531, file: !6, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !531, file: !6, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !531, file: !6, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !531, file: !6, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !531, file: !6, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !302, file: !6, line: 3394, baseType: !560, size: 1344)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !6, line: 2279, size: 1344, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !587, !588, !589, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !560, file: !6, line: 2280, baseType: !338, size: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !560, file: !6, line: 2281, baseType: !299, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !560, file: !6, line: 2282, baseType: !299, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !560, file: !6, line: 2283, baseType: !299, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !560, file: !6, line: 2284, baseType: !299, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !560, file: !6, line: 2285, baseType: !7, size: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !560, file: !6, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !560, file: !6, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !560, file: !6, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !560, file: !6, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !560, file: !6, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !560, file: !6, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !560, file: !6, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !560, file: !6, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !560, file: !6, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !560, file: !6, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !560, file: !6, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !560, file: !6, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !560, file: !6, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !560, file: !6, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !560, file: !6, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !560, file: !6, line: 2305, baseType: !7, size: 32, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !560, file: !6, line: 2306, baseType: !585, size: 32, offset: 544)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !586, line: 31, baseType: !262)
!586 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !560, file: !6, line: 2307, baseType: !299, size: 64, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !560, file: !6, line: 2308, baseType: !299, size: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !560, file: !6, line: 2314, baseType: !590, size: 64, offset: 704)
!590 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !6, line: 2309, size: 64, elements: !591)
!591 = !{!592, !593, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !590, file: !6, line: 2310, baseType: !262, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !590, file: !6, line: 2311, baseType: !267, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !590, file: !6, line: 2312, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !6, line: 2277, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !560, file: !6, line: 2315, baseType: !299, size: 64, offset: 768)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !560, file: !6, line: 2316, baseType: !299, size: 64, offset: 832)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !560, file: !6, line: 2317, baseType: !299, size: 64, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !560, file: !6, line: 2318, baseType: !299, size: 64, offset: 960)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !560, file: !6, line: 2319, baseType: !299, size: 64, offset: 1024)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !560, file: !6, line: 2320, baseType: !299, size: 64, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !560, file: !6, line: 2321, baseType: !299, size: 64, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !560, file: !6, line: 2322, baseType: !299, size: 64, offset: 1216)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !560, file: !6, line: 2324, baseType: !606, size: 64, offset: 1280)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !6, line: 2324, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !302, file: !6, line: 3395, baseType: !609, size: 320)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !6, line: 1469, size: 320, elements: !610)
!610 = !{!611, !612, !613}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !609, file: !6, line: 1470, baseType: !338, size: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !609, file: !6, line: 1471, baseType: !299, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !609, file: !6, line: 1472, baseType: !299, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !302, file: !6, line: 3396, baseType: !615, size: 320)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !6, line: 1482, size: 320, elements: !616)
!616 = !{!617, !618, !619}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !615, file: !6, line: 1483, baseType: !338, size: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !615, file: !6, line: 1484, baseType: !262, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !615, file: !6, line: 1485, baseType: !620, size: 64, offset: 256)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 64, elements: !381)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !302, file: !6, line: 3397, baseType: !622, size: 384)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !6, line: 1829, size: 384, elements: !623)
!623 = !{!624, !625, !626, !627}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !622, file: !6, line: 1830, baseType: !338, size: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !622, file: !6, line: 1831, baseType: !407, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !622, file: !6, line: 1832, baseType: !299, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !622, file: !6, line: 1835, baseType: !620, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !302, file: !6, line: 3398, baseType: !629, size: 704)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !6, line: 1898, size: 704, elements: !630)
!630 = !{!631, !632, !633, !637, !638, !641}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !629, file: !6, line: 1899, baseType: !338, size: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !629, file: !6, line: 1902, baseType: !299, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !629, file: !6, line: 1905, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !300, line: 58, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !300, line: 57, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !629, file: !6, line: 1908, baseType: !7, size: 32, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !629, file: !6, line: 1911, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !6, line: 1876, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !629, file: !6, line: 1914, baseType: !642, size: 256, offset: 448)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !6, line: 1883, size: 256, elements: !643)
!643 = !{!644, !646, !647, !652}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !642, file: !6, line: 1884, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !642, file: !6, line: 1885, baseType: !645, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !642, file: !6, line: 1891, baseType: !648, size: 64, offset: 128)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !6, line: 1891, size: 64, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !648, file: !6, line: 1891, baseType: !634, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !648, file: !6, line: 1891, baseType: !299, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !642, file: !6, line: 1892, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !302, file: !6, line: 3399, baseType: !655, size: 704)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !6, line: 2008, size: 704, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !674, !675, !676, !677, !678}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !655, file: !6, line: 2009, baseType: !338, size: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !655, file: !6, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !655, file: !6, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !655, file: !6, line: 2014, baseType: !407, size: 32, offset: 224)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !655, file: !6, line: 2016, baseType: !299, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !655, file: !6, line: 2017, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !6, line: 183, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !6, line: 183, size: 128, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !665, file: !6, line: 183, baseType: !668, size: 128)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !6, line: 182, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !6, line: 182, size: 128, elements: !670)
!670 = !{!671, !672, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !669, file: !6, line: 182, baseType: !7, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !669, file: !6, line: 182, baseType: !7, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !669, file: !6, line: 182, baseType: !620, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !655, file: !6, line: 2019, baseType: !299, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !655, file: !6, line: 2020, baseType: !299, size: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !655, file: !6, line: 2021, baseType: !299, size: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !655, file: !6, line: 2022, baseType: !299, size: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !655, file: !6, line: 2023, baseType: !299, size: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !302, file: !6, line: 3400, baseType: !680, size: 832)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !6, line: 2430, size: 832, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !680, file: !6, line: 2431, baseType: !338, size: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !680, file: !6, line: 2433, baseType: !299, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !680, file: !6, line: 2434, baseType: !299, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !680, file: !6, line: 2435, baseType: !299, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !680, file: !6, line: 2436, baseType: !299, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !680, file: !6, line: 2437, baseType: !663, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !680, file: !6, line: 2438, baseType: !299, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !680, file: !6, line: 2440, baseType: !299, size: 64, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !680, file: !6, line: 2441, baseType: !299, size: 64, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !680, file: !6, line: 2443, baseType: !692, size: 128, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !6, line: 182, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !6, line: 182, size: 128, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !693, file: !6, line: 182, baseType: !668, size: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !302, file: !6, line: 3401, baseType: !697, size: 320)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !6, line: 3327, size: 320, elements: !698)
!698 = !{!699, !700, !707}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !697, file: !6, line: 3329, baseType: !338, size: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !697, file: !6, line: 3330, baseType: !701, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !6, line: 3320, size: 192, elements: !703)
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !702, file: !6, line: 3322, baseType: !701, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !6, line: 3323, baseType: !701, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !702, file: !6, line: 3324, baseType: !299, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !697, file: !6, line: 3331, baseType: !701, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !302, file: !6, line: 3402, baseType: !709, size: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !6, line: 1540, size: 256, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !709, file: !6, line: 1541, baseType: !338, size: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !709, file: !6, line: 1542, baseType: !713, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !6, line: 1538, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !6, line: 1538, size: 192, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !715, file: !6, line: 1538, baseType: !718, size: 192)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !6, line: 1537, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !6, line: 1537, size: 192, elements: !720)
!720 = !{!721, !722, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !719, file: !6, line: 1537, baseType: !7, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !719, file: !6, line: 1537, baseType: !7, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !719, file: !6, line: 1537, baseType: !724, size: 128, offset: 64)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !725, size: 128, elements: !381)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !6, line: 1535, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !6, line: 1532, size: 128, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !726, file: !6, line: 1533, baseType: !299, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !726, file: !6, line: 1534, baseType: !299, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !302, file: !6, line: 3403, baseType: !731, size: 512)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !6, line: 1938, size: 512, elements: !732)
!732 = !{!733, !734, !735, !736, !742, !746, !747}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !731, file: !6, line: 1939, baseType: !338, size: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !731, file: !6, line: 1940, baseType: !407, size: 32, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !731, file: !6, line: 1941, baseType: !5, size: 32, offset: 224)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !731, file: !6, line: 1946, baseType: !737, size: 32, offset: 256)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !6, line: 1942, size: 32, elements: !738)
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !737, file: !6, line: 1943, baseType: !25, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !737, file: !6, line: 1944, baseType: !32, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !737, file: !6, line: 1945, baseType: !39, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !731, file: !6, line: 1950, baseType: !743, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !300, line: 66, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !300, line: 65, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !731, file: !6, line: 1951, baseType: !743, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !731, file: !6, line: 1953, baseType: !620, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !302, file: !6, line: 3404, baseType: !749, size: 1664)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !6, line: 3337, size: 1664, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !749, file: !6, line: 3338, baseType: !338, size: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !749, file: !6, line: 3341, baseType: !753, size: 1472, offset: 192)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !754, line: 410, size: 1472, elements: !755)
!754 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !753, file: !754, line: 412, baseType: !262, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !753, file: !754, line: 413, baseType: !262, size: 32, offset: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !753, file: !754, line: 414, baseType: !262, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !753, file: !754, line: 415, baseType: !262, size: 32, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !753, file: !754, line: 416, baseType: !262, size: 32, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !753, file: !754, line: 417, baseType: !262, size: 32, offset: 160)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !753, file: !754, line: 418, baseType: !261, size: 8, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !753, file: !754, line: 419, baseType: !261, size: 8, offset: 200)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !753, file: !754, line: 420, baseType: !765, size: 8, offset: 208)
!765 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !753, file: !754, line: 421, baseType: !765, size: 8, offset: 216)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !753, file: !754, line: 422, baseType: !765, size: 8, offset: 224)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !753, file: !754, line: 423, baseType: !765, size: 8, offset: 232)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !753, file: !754, line: 424, baseType: !765, size: 8, offset: 240)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !753, file: !754, line: 425, baseType: !765, size: 8, offset: 248)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !753, file: !754, line: 426, baseType: !765, size: 8, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !753, file: !754, line: 427, baseType: !765, size: 8, offset: 264)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !753, file: !754, line: 428, baseType: !765, size: 8, offset: 272)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !753, file: !754, line: 429, baseType: !765, size: 8, offset: 280)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !753, file: !754, line: 430, baseType: !765, size: 8, offset: 288)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !753, file: !754, line: 431, baseType: !765, size: 8, offset: 296)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !753, file: !754, line: 432, baseType: !765, size: 8, offset: 304)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !753, file: !754, line: 433, baseType: !765, size: 8, offset: 312)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !753, file: !754, line: 434, baseType: !765, size: 8, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !753, file: !754, line: 435, baseType: !765, size: 8, offset: 328)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !753, file: !754, line: 436, baseType: !765, size: 8, offset: 336)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !753, file: !754, line: 437, baseType: !765, size: 8, offset: 344)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !753, file: !754, line: 438, baseType: !765, size: 8, offset: 352)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !753, file: !754, line: 439, baseType: !765, size: 8, offset: 360)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !753, file: !754, line: 440, baseType: !765, size: 8, offset: 368)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !753, file: !754, line: 441, baseType: !765, size: 8, offset: 376)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !753, file: !754, line: 442, baseType: !765, size: 8, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !753, file: !754, line: 443, baseType: !765, size: 8, offset: 392)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !753, file: !754, line: 444, baseType: !765, size: 8, offset: 400)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !753, file: !754, line: 445, baseType: !765, size: 8, offset: 408)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !753, file: !754, line: 446, baseType: !765, size: 8, offset: 416)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !753, file: !754, line: 447, baseType: !765, size: 8, offset: 424)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !753, file: !754, line: 448, baseType: !765, size: 8, offset: 432)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !753, file: !754, line: 449, baseType: !765, size: 8, offset: 440)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !753, file: !754, line: 450, baseType: !765, size: 8, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !753, file: !754, line: 451, baseType: !765, size: 8, offset: 456)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !753, file: !754, line: 452, baseType: !765, size: 8, offset: 464)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !753, file: !754, line: 453, baseType: !765, size: 8, offset: 472)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !753, file: !754, line: 454, baseType: !765, size: 8, offset: 480)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !753, file: !754, line: 455, baseType: !765, size: 8, offset: 488)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !753, file: !754, line: 456, baseType: !765, size: 8, offset: 496)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !753, file: !754, line: 457, baseType: !765, size: 8, offset: 504)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !753, file: !754, line: 458, baseType: !765, size: 8, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !753, file: !754, line: 459, baseType: !765, size: 8, offset: 520)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !753, file: !754, line: 460, baseType: !765, size: 8, offset: 528)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !753, file: !754, line: 461, baseType: !765, size: 8, offset: 536)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !753, file: !754, line: 462, baseType: !765, size: 8, offset: 544)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !753, file: !754, line: 463, baseType: !765, size: 8, offset: 552)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !753, file: !754, line: 464, baseType: !765, size: 8, offset: 560)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !753, file: !754, line: 465, baseType: !765, size: 8, offset: 568)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !753, file: !754, line: 466, baseType: !765, size: 8, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !753, file: !754, line: 467, baseType: !765, size: 8, offset: 584)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !753, file: !754, line: 468, baseType: !765, size: 8, offset: 592)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !753, file: !754, line: 469, baseType: !765, size: 8, offset: 600)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !753, file: !754, line: 470, baseType: !765, size: 8, offset: 608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !753, file: !754, line: 471, baseType: !765, size: 8, offset: 616)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !753, file: !754, line: 472, baseType: !765, size: 8, offset: 624)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !753, file: !754, line: 473, baseType: !765, size: 8, offset: 632)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !753, file: !754, line: 474, baseType: !765, size: 8, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !753, file: !754, line: 475, baseType: !765, size: 8, offset: 648)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !753, file: !754, line: 476, baseType: !765, size: 8, offset: 656)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !753, file: !754, line: 477, baseType: !765, size: 8, offset: 664)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !753, file: !754, line: 478, baseType: !765, size: 8, offset: 672)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !753, file: !754, line: 479, baseType: !765, size: 8, offset: 680)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !753, file: !754, line: 480, baseType: !765, size: 8, offset: 688)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !753, file: !754, line: 481, baseType: !765, size: 8, offset: 696)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !753, file: !754, line: 482, baseType: !765, size: 8, offset: 704)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !753, file: !754, line: 483, baseType: !765, size: 8, offset: 712)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !753, file: !754, line: 484, baseType: !765, size: 8, offset: 720)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !753, file: !754, line: 485, baseType: !765, size: 8, offset: 728)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !753, file: !754, line: 486, baseType: !765, size: 8, offset: 736)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !753, file: !754, line: 487, baseType: !765, size: 8, offset: 744)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !753, file: !754, line: 488, baseType: !765, size: 8, offset: 752)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !753, file: !754, line: 489, baseType: !765, size: 8, offset: 760)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !753, file: !754, line: 490, baseType: !765, size: 8, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !753, file: !754, line: 491, baseType: !765, size: 8, offset: 776)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !753, file: !754, line: 492, baseType: !765, size: 8, offset: 784)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !753, file: !754, line: 493, baseType: !765, size: 8, offset: 792)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !753, file: !754, line: 494, baseType: !765, size: 8, offset: 800)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !753, file: !754, line: 495, baseType: !765, size: 8, offset: 808)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !753, file: !754, line: 496, baseType: !765, size: 8, offset: 816)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !753, file: !754, line: 497, baseType: !765, size: 8, offset: 824)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !753, file: !754, line: 498, baseType: !765, size: 8, offset: 832)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !753, file: !754, line: 499, baseType: !765, size: 8, offset: 840)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !753, file: !754, line: 500, baseType: !765, size: 8, offset: 848)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !753, file: !754, line: 501, baseType: !765, size: 8, offset: 856)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !753, file: !754, line: 502, baseType: !765, size: 8, offset: 864)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !753, file: !754, line: 503, baseType: !765, size: 8, offset: 872)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !753, file: !754, line: 504, baseType: !765, size: 8, offset: 880)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !753, file: !754, line: 505, baseType: !765, size: 8, offset: 888)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !753, file: !754, line: 506, baseType: !765, size: 8, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !753, file: !754, line: 507, baseType: !765, size: 8, offset: 904)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !753, file: !754, line: 508, baseType: !765, size: 8, offset: 912)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !753, file: !754, line: 509, baseType: !765, size: 8, offset: 920)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !753, file: !754, line: 510, baseType: !765, size: 8, offset: 928)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !753, file: !754, line: 511, baseType: !765, size: 8, offset: 936)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !753, file: !754, line: 512, baseType: !765, size: 8, offset: 944)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !753, file: !754, line: 513, baseType: !765, size: 8, offset: 952)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !753, file: !754, line: 514, baseType: !765, size: 8, offset: 960)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !753, file: !754, line: 515, baseType: !765, size: 8, offset: 968)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !753, file: !754, line: 516, baseType: !765, size: 8, offset: 976)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !753, file: !754, line: 517, baseType: !765, size: 8, offset: 984)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !753, file: !754, line: 518, baseType: !765, size: 8, offset: 992)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !753, file: !754, line: 519, baseType: !765, size: 8, offset: 1000)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !753, file: !754, line: 520, baseType: !765, size: 8, offset: 1008)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !753, file: !754, line: 521, baseType: !765, size: 8, offset: 1016)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !753, file: !754, line: 522, baseType: !765, size: 8, offset: 1024)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !753, file: !754, line: 523, baseType: !765, size: 8, offset: 1032)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !753, file: !754, line: 524, baseType: !765, size: 8, offset: 1040)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !753, file: !754, line: 525, baseType: !765, size: 8, offset: 1048)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !753, file: !754, line: 526, baseType: !765, size: 8, offset: 1056)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !753, file: !754, line: 527, baseType: !765, size: 8, offset: 1064)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !753, file: !754, line: 528, baseType: !765, size: 8, offset: 1072)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !753, file: !754, line: 529, baseType: !765, size: 8, offset: 1080)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !753, file: !754, line: 530, baseType: !765, size: 8, offset: 1088)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !753, file: !754, line: 531, baseType: !765, size: 8, offset: 1096)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !753, file: !754, line: 532, baseType: !765, size: 8, offset: 1104)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !753, file: !754, line: 533, baseType: !765, size: 8, offset: 1112)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !753, file: !754, line: 534, baseType: !765, size: 8, offset: 1120)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !753, file: !754, line: 535, baseType: !765, size: 8, offset: 1128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !753, file: !754, line: 536, baseType: !765, size: 8, offset: 1136)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !753, file: !754, line: 537, baseType: !765, size: 8, offset: 1144)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !753, file: !754, line: 538, baseType: !765, size: 8, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !753, file: !754, line: 539, baseType: !765, size: 8, offset: 1160)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !753, file: !754, line: 540, baseType: !765, size: 8, offset: 1168)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !753, file: !754, line: 541, baseType: !765, size: 8, offset: 1176)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !753, file: !754, line: 542, baseType: !765, size: 8, offset: 1184)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !753, file: !754, line: 543, baseType: !765, size: 8, offset: 1192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !753, file: !754, line: 544, baseType: !765, size: 8, offset: 1200)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !753, file: !754, line: 545, baseType: !765, size: 8, offset: 1208)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !753, file: !754, line: 546, baseType: !765, size: 8, offset: 1216)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !753, file: !754, line: 547, baseType: !765, size: 8, offset: 1224)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !753, file: !754, line: 548, baseType: !765, size: 8, offset: 1232)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !753, file: !754, line: 549, baseType: !765, size: 8, offset: 1240)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !753, file: !754, line: 550, baseType: !765, size: 8, offset: 1248)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !753, file: !754, line: 551, baseType: !765, size: 8, offset: 1256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !753, file: !754, line: 552, baseType: !765, size: 8, offset: 1264)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !753, file: !754, line: 553, baseType: !765, size: 8, offset: 1272)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !753, file: !754, line: 554, baseType: !765, size: 8, offset: 1280)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !753, file: !754, line: 555, baseType: !765, size: 8, offset: 1288)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !753, file: !754, line: 556, baseType: !765, size: 8, offset: 1296)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !753, file: !754, line: 557, baseType: !765, size: 8, offset: 1304)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !753, file: !754, line: 558, baseType: !765, size: 8, offset: 1312)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !753, file: !754, line: 559, baseType: !765, size: 8, offset: 1320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !753, file: !754, line: 560, baseType: !765, size: 8, offset: 1328)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !753, file: !754, line: 561, baseType: !765, size: 8, offset: 1336)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !753, file: !754, line: 562, baseType: !765, size: 8, offset: 1344)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !753, file: !754, line: 563, baseType: !765, size: 8, offset: 1352)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !753, file: !754, line: 564, baseType: !765, size: 8, offset: 1360)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !753, file: !754, line: 565, baseType: !765, size: 8, offset: 1368)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !753, file: !754, line: 566, baseType: !765, size: 8, offset: 1376)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !753, file: !754, line: 567, baseType: !765, size: 8, offset: 1384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !753, file: !754, line: 568, baseType: !765, size: 8, offset: 1392)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !753, file: !754, line: 569, baseType: !765, size: 8, offset: 1400)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !753, file: !754, line: 570, baseType: !765, size: 8, offset: 1408)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !753, file: !754, line: 571, baseType: !765, size: 8, offset: 1416)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !753, file: !754, line: 572, baseType: !765, size: 8, offset: 1424)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !753, file: !754, line: 573, baseType: !765, size: 8, offset: 1432)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !753, file: !754, line: 574, baseType: !765, size: 8, offset: 1440)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !302, file: !6, line: 3405, baseType: !921, size: 384)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !6, line: 3352, size: 384, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !921, file: !6, line: 3353, baseType: !338, size: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !921, file: !6, line: 3356, baseType: !925, size: 192, offset: 192)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !754, line: 578, size: 192, elements: !926)
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !925, file: !754, line: 580, baseType: !262, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !925, file: !754, line: 581, baseType: !262, size: 32, offset: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !925, file: !754, line: 582, baseType: !262, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !925, file: !754, line: 583, baseType: !262, size: 32, offset: 96)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !925, file: !754, line: 584, baseType: !261, size: 8, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !925, file: !754, line: 585, baseType: !261, size: 8, offset: 136)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !925, file: !754, line: 586, baseType: !261, size: 8, offset: 144)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !925, file: !754, line: 587, baseType: !261, size: 8, offset: 152)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !925, file: !754, line: 588, baseType: !261, size: 8, offset: 160)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !925, file: !754, line: 589, baseType: !261, size: 8, offset: 168)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !925, file: !754, line: 590, baseType: !261, size: 8, offset: 176)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(name: "unnamed_struct_number", scope: !2, file: !3, line: 57, type: !262, isLocal: true, isDefinition: true)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(name: "deferred_global_decls", scope: !2, file: !3, line: 61, type: !942, isLocal: true, isDefinition: true)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "varray_type", file: !234, line: 122, baseType: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "varray_head_tag", file: !234, line: 113, size: 320, elements: !945)
!945 = !{!946, !947, !948, !949, !950}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "num_elements", scope: !944, file: !234, line: 114, baseType: !280, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "elements_used", scope: !944, file: !234, line: 115, baseType: !280, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !944, file: !234, line: 117, baseType: !233, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !944, file: !234, line: 118, baseType: !267, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !944, file: !234, line: 119, baseType: !951, size: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "varray_data", file: !234, line: 110, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "varray_data_tag", file: !234, line: 65, size: 64, elements: !953)
!953 = !{!954, !955, !957, !960, !963, !965, !967, !969, !971, !972, !973, !975, !976, !978, !980, !985, !986, !990, !994, !998, !1002, !1006}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_c", scope: !952, file: !234, line: 67, baseType: !380, size: 8)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_uc", scope: !952, file: !234, line: 69, baseType: !956, size: 8)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 8, elements: !381)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_s", scope: !952, file: !234, line: 71, baseType: !958, size: 16)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 16, elements: !381)
!959 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_us", scope: !952, file: !234, line: 73, baseType: !961, size: 16)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, size: 16, elements: !381)
!962 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_i", scope: !952, file: !234, line: 75, baseType: !964, size: 32)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 32, elements: !381)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_u", scope: !952, file: !234, line: 77, baseType: !966, size: 32)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !381)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_l", scope: !952, file: !234, line: 79, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 64, elements: !381)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_ul", scope: !952, file: !234, line: 81, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 64, elements: !381)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_hint", scope: !952, file: !234, line: 83, baseType: !968, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_uhint", scope: !952, file: !234, line: 85, baseType: !970, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_generic", scope: !952, file: !234, line: 87, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !381)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_generic_nogc", scope: !952, file: !234, line: 89, baseType: !974, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_cptr", scope: !952, file: !234, line: 91, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 64, elements: !381)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_rtx", scope: !952, file: !234, line: 93, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 64, elements: !381)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_rtvec", scope: !952, file: !234, line: 95, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, size: 64, elements: !381)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !300, line: 53, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !300, line: 52, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_tree", scope: !952, file: !234, line: 97, baseType: !620, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_bitmap", scope: !952, file: !234, line: 99, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 64, elements: !381)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !300, line: 46, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_reg", scope: !952, file: !234, line: 101, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 64, elements: !381)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "reg_info_def", file: !234, line: 100, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_bb", scope: !952, file: !234, line: 103, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 64, elements: !381)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !300, line: 110, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_te", scope: !952, file: !234, line: 105, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 64, elements: !381)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "elt_list", file: !234, line: 104, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_e", scope: !952, file: !234, line: 107, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 64, elements: !381)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !300, line: 107, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "vdt_tp", scope: !952, file: !234, line: 109, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 64, elements: !381)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(name: "preinit_symbols", scope: !2, file: !3, line: 67, type: !299, isLocal: true, isDefinition: true)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(name: "sdbout_initialized", scope: !2, file: !3, line: 68, type: !261, isLocal: true, isDefinition: true)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcc_debug_hooks", file: !1014, line: 25, size: 2048, elements: !1015)
!1014 = !DIFile(filename: "./debug.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1015 = !{!1016, !1020, !1021, !1025, !1029, !1030, !1031, !1035, !1039, !1040, !1047, !1051, !1052, !1053, !1054, !1058, !1059, !1060, !1061, !1065, !1069, !1070, !1071, !1075, !1076, !1077, !1078, !1079, !1080, !1084, !1088, !1092}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1013, file: !1014, line: 29, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !267}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !1013, file: !1014, line: 32, baseType: !1017, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "assembly_start", scope: !1013, file: !1014, line: 36, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !1013, file: !1014, line: 39, baseType: !1026, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !7, !267}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !1013, file: !1014, line: 42, baseType: !1026, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "start_source_file", scope: !1013, file: !1014, line: 46, baseType: !1026, size: 64, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "end_source_file", scope: !1013, file: !1014, line: 50, baseType: !1032, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !7}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "begin_block", scope: !1013, file: !1014, line: 54, baseType: !1036, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !7, !7}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "end_block", scope: !1013, file: !1014, line: 57, baseType: !1036, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_block", scope: !1013, file: !1014, line: 64, baseType: !1041, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!261, !1044}
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !300, line: 59, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "source_line", scope: !1013, file: !1014, line: 67, baseType: !1048, size: 64, offset: 640)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !7, !267, !262, !261}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "begin_prologue", scope: !1013, file: !1014, line: 72, baseType: !1026, size: 64, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "end_prologue", scope: !1013, file: !1014, line: 76, baseType: !1026, size: 64, offset: 768)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "end_epilogue", scope: !1013, file: !1014, line: 79, baseType: !1026, size: 64, offset: 832)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "begin_function", scope: !1013, file: !1014, line: 82, baseType: !1055, size: 64, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !299}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "end_function", scope: !1013, file: !1014, line: 85, baseType: !1032, size: 64, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !1013, file: !1014, line: 91, baseType: !1055, size: 64, offset: 1024)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl", scope: !1013, file: !1014, line: 95, baseType: !1055, size: 64, offset: 1088)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !1013, file: !1014, line: 103, baseType: !1062, size: 64, offset: 1152)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !299, !262}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "imported_module_or_decl", scope: !1013, file: !1014, line: 106, baseType: !1066, size: 64, offset: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !299, !299, !299, !261}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_inline_function", scope: !1013, file: !1014, line: 111, baseType: !1055, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "outlining_inline_function", scope: !1013, file: !1014, line: 116, baseType: !1055, size: 64, offset: 1344)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1013, file: !1014, line: 120, baseType: !1072, size: 64, offset: 1408)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !457}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "handle_pch", scope: !1013, file: !1014, line: 124, baseType: !1032, size: 64, offset: 1472)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "var_location", scope: !1013, file: !1014, line: 127, baseType: !1072, size: 64, offset: 1536)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "switch_text_section", scope: !1013, file: !1014, line: 131, baseType: !1022, size: 64, offset: 1600)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "direct_call", scope: !1013, file: !1014, line: 136, baseType: !1055, size: 64, offset: 1664)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_call_token", scope: !1013, file: !1014, line: 144, baseType: !1062, size: 64, offset: 1728)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "copy_call_info", scope: !1013, file: !1014, line: 150, baseType: !1081, size: 64, offset: 1792)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !457, !457}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_call", scope: !1013, file: !1014, line: 156, baseType: !1085, size: 64, offset: 1856)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !262}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "set_name", scope: !1013, file: !1014, line: 160, baseType: !1089, size: 64, offset: 1920)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !299, !299}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "start_end_main_source_file", scope: !1013, file: !1014, line: 164, baseType: !262, size: 32, offset: 1984)
!1093 = !{i32 2, !"Dwarf Version", i32 4}
!1094 = !{i32 2, !"Debug Info Version", i32 3}
!1095 = !{i32 1, !"wchar_size", i32 4}
!1096 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1097 = distinct !DISubprogram(name: "vprintf", scope: !1098, file: !1098, line: 39, type: !1099, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1109)
!1098 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!262, !1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !267)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1103, file: !3, baseType: !7, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1103, file: !3, baseType: !7, size: 32, offset: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1103, file: !3, baseType: !266, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1103, file: !3, baseType: !266, size: 64, offset: 128)
!1109 = !{!1110, !1111}
!1110 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1097, file: !1098, line: 39, type: !1101)
!1111 = !DILocalVariable(name: "__arg", arg: 2, scope: !1097, file: !1098, line: 39, type: !1102)
!1112 = !DILocation(line: 0, scope: !1097)
!1113 = !DILocation(line: 41, column: 20, scope: !1097)
!1114 = !DILocation(line: 41, column: 10, scope: !1097)
!1115 = !DILocation(line: 41, column: 3, scope: !1097)
!1116 = distinct !DISubprogram(name: "getchar", scope: !1098, file: !1098, line: 47, type: !1117, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1119)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!262}
!1119 = !{}
!1120 = !DILocation(line: 49, column: 16, scope: !1116)
!1121 = !DILocation(line: 49, column: 10, scope: !1116)
!1122 = !DILocation(line: 49, column: 3, scope: !1116)
!1123 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1098, file: !1098, line: 56, type: !1124, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1176)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!262, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1128, line: 7, baseType: !1129)
!1128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1130, line: 49, size: 1728, elements: !1131)
!1130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1147, !1149, !1150, !1151, !1154, !1155, !1156, !1157, !1160, !1162, !1165, !1168, !1169, !1170, !1171, !1172}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1129, file: !1130, line: 51, baseType: !262, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1129, file: !1130, line: 54, baseType: !264, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1129, file: !1130, line: 55, baseType: !264, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1129, file: !1130, line: 56, baseType: !264, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1129, file: !1130, line: 57, baseType: !264, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1129, file: !1130, line: 58, baseType: !264, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1129, file: !1130, line: 59, baseType: !264, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1129, file: !1130, line: 60, baseType: !264, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1129, file: !1130, line: 61, baseType: !264, size: 64, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1129, file: !1130, line: 64, baseType: !264, size: 64, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1129, file: !1130, line: 65, baseType: !264, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1129, file: !1130, line: 66, baseType: !264, size: 64, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1129, file: !1130, line: 68, baseType: !1145, size: 64, offset: 768)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1130, line: 36, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1129, file: !1130, line: 70, baseType: !1148, size: 64, offset: 832)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1129, file: !1130, line: 72, baseType: !262, size: 32, offset: 896)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1129, file: !1130, line: 73, baseType: !262, size: 32, offset: 928)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1129, file: !1130, line: 74, baseType: !1152, size: 64, offset: 960)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1153, line: 152, baseType: !354)
!1153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1129, file: !1130, line: 77, baseType: !962, size: 16, offset: 1024)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1129, file: !1130, line: 78, baseType: !765, size: 8, offset: 1040)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1129, file: !1130, line: 79, baseType: !380, size: 8, offset: 1048)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1129, file: !1130, line: 81, baseType: !1158, size: 64, offset: 1088)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1130, line: 43, baseType: null)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1129, file: !1130, line: 89, baseType: !1161, size: 64, offset: 1152)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1153, line: 153, baseType: !354)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1129, file: !1130, line: 91, baseType: !1163, size: 64, offset: 1216)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1130, line: 37, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1129, file: !1130, line: 92, baseType: !1166, size: 64, offset: 1280)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1130, line: 38, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1129, file: !1130, line: 93, baseType: !1148, size: 64, offset: 1344)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1129, file: !1130, line: 94, baseType: !266, size: 64, offset: 1408)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1129, file: !1130, line: 95, baseType: !280, size: 64, offset: 1472)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1129, file: !1130, line: 96, baseType: !262, size: 32, offset: 1536)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1129, file: !1130, line: 98, baseType: !1173, size: 160, offset: 1568)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 160, elements: !1174)
!1174 = !{!1175}
!1175 = !DISubrange(count: 20)
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "__fp", arg: 1, scope: !1123, file: !1098, line: 56, type: !1126)
!1178 = !DILocation(line: 0, scope: !1123)
!1179 = !DILocation(line: 58, column: 10, scope: !1123)
!1180 = !DILocation(line: 58, column: 3, scope: !1123)
!1181 = distinct !DISubprogram(name: "getc_unlocked", scope: !1098, file: !1098, line: 66, type: !1124, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1182)
!1182 = !{!1183}
!1183 = !DILocalVariable(name: "__fp", arg: 1, scope: !1181, file: !1098, line: 66, type: !1126)
!1184 = !DILocation(line: 0, scope: !1181)
!1185 = !DILocation(line: 68, column: 10, scope: !1181)
!1186 = !DILocation(line: 68, column: 3, scope: !1181)
!1187 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1098, file: !1098, line: 73, type: !1117, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1119)
!1188 = !DILocation(line: 75, column: 10, scope: !1187)
!1189 = !DILocation(line: 75, column: 3, scope: !1187)
!1190 = distinct !DISubprogram(name: "putchar", scope: !1098, file: !1098, line: 82, type: !1191, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1193)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!262, !262}
!1193 = !{!1194}
!1194 = !DILocalVariable(name: "__c", arg: 1, scope: !1190, file: !1098, line: 82, type: !262)
!1195 = !DILocation(line: 0, scope: !1190)
!1196 = !DILocation(line: 84, column: 21, scope: !1190)
!1197 = !DILocation(line: 84, column: 10, scope: !1190)
!1198 = !DILocation(line: 84, column: 3, scope: !1190)
!1199 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1098, file: !1098, line: 91, type: !1200, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1202)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!262, !262, !1126}
!1202 = !{!1203, !1204}
!1203 = !DILocalVariable(name: "__c", arg: 1, scope: !1199, file: !1098, line: 91, type: !262)
!1204 = !DILocalVariable(name: "__stream", arg: 2, scope: !1199, file: !1098, line: 91, type: !1126)
!1205 = !DILocation(line: 0, scope: !1199)
!1206 = !DILocation(line: 93, column: 10, scope: !1199)
!1207 = !DILocation(line: 93, column: 3, scope: !1199)
!1208 = distinct !DISubprogram(name: "putc_unlocked", scope: !1098, file: !1098, line: 101, type: !1200, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1209)
!1209 = !{!1210, !1211}
!1210 = !DILocalVariable(name: "__c", arg: 1, scope: !1208, file: !1098, line: 101, type: !262)
!1211 = !DILocalVariable(name: "__stream", arg: 2, scope: !1208, file: !1098, line: 101, type: !1126)
!1212 = !DILocation(line: 0, scope: !1208)
!1213 = !DILocation(line: 103, column: 10, scope: !1208)
!1214 = !DILocation(line: 103, column: 3, scope: !1208)
!1215 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1098, file: !1098, line: 108, type: !1191, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1216)
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "__c", arg: 1, scope: !1215, file: !1098, line: 108, type: !262)
!1218 = !DILocation(line: 0, scope: !1215)
!1219 = !DILocation(line: 110, column: 10, scope: !1215)
!1220 = !DILocation(line: 110, column: 3, scope: !1215)
!1221 = distinct !DISubprogram(name: "getline", scope: !1098, file: !1098, line: 118, type: !1222, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1226)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!1224, !263, !1225, !1126}
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1153, line: 193, baseType: !354)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!1226 = !{!1227, !1228, !1229}
!1227 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1221, file: !1098, line: 118, type: !263)
!1228 = !DILocalVariable(name: "__n", arg: 2, scope: !1221, file: !1098, line: 118, type: !1225)
!1229 = !DILocalVariable(name: "__stream", arg: 3, scope: !1221, file: !1098, line: 118, type: !1126)
!1230 = !DILocation(line: 0, scope: !1221)
!1231 = !DILocation(line: 120, column: 10, scope: !1221)
!1232 = !DILocation(line: 120, column: 3, scope: !1221)
!1233 = distinct !DISubprogram(name: "feof_unlocked", scope: !1098, file: !1098, line: 128, type: !1124, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1234)
!1234 = !{!1235}
!1235 = !DILocalVariable(name: "__stream", arg: 1, scope: !1233, file: !1098, line: 128, type: !1126)
!1236 = !DILocation(line: 0, scope: !1233)
!1237 = !DILocation(line: 130, column: 10, scope: !1233)
!1238 = !DILocation(line: 130, column: 3, scope: !1233)
!1239 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1098, file: !1098, line: 135, type: !1124, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1240)
!1240 = !{!1241}
!1241 = !DILocalVariable(name: "__stream", arg: 1, scope: !1239, file: !1098, line: 135, type: !1126)
!1242 = !DILocation(line: 0, scope: !1239)
!1243 = !DILocation(line: 137, column: 10, scope: !1239)
!1244 = !DILocation(line: 137, column: 3, scope: !1239)
!1245 = distinct !DISubprogram(name: "tolower", scope: !1246, file: !1246, line: 207, type: !1191, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1247)
!1246 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1247 = !{!1248}
!1248 = !DILocalVariable(name: "__c", arg: 1, scope: !1245, file: !1246, line: 207, type: !262)
!1249 = !DILocation(line: 0, scope: !1245)
!1250 = !DILocation(line: 209, column: 22, scope: !1245)
!1251 = !DILocation(line: 209, column: 39, scope: !1245)
!1252 = !DILocation(line: 209, column: 38, scope: !1245)
!1253 = !DILocation(line: 209, column: 37, scope: !1245)
!1254 = !DILocation(line: 209, column: 10, scope: !1245)
!1255 = !DILocation(line: 209, column: 3, scope: !1245)
!1256 = distinct !DISubprogram(name: "toupper", scope: !1246, file: !1246, line: 213, type: !1191, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1257 = !{!1258}
!1258 = !DILocalVariable(name: "__c", arg: 1, scope: !1256, file: !1246, line: 213, type: !262)
!1259 = !DILocation(line: 0, scope: !1256)
!1260 = !DILocation(line: 215, column: 22, scope: !1256)
!1261 = !DILocation(line: 215, column: 39, scope: !1256)
!1262 = !DILocation(line: 215, column: 38, scope: !1256)
!1263 = !DILocation(line: 215, column: 37, scope: !1256)
!1264 = !DILocation(line: 215, column: 10, scope: !1256)
!1265 = !DILocation(line: 215, column: 3, scope: !1256)
!1266 = distinct !DISubprogram(name: "atoi", scope: !1267, file: !1267, line: 361, type: !1268, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1270)
!1267 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!262, !267}
!1270 = !{!1271}
!1271 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1266, file: !1267, line: 361, type: !267)
!1272 = !DILocation(line: 0, scope: !1266)
!1273 = !DILocation(line: 363, column: 16, scope: !1266)
!1274 = !DILocation(line: 363, column: 10, scope: !1266)
!1275 = !DILocation(line: 363, column: 3, scope: !1266)
!1276 = distinct !DISubprogram(name: "atol", scope: !1267, file: !1267, line: 366, type: !1277, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!354, !267}
!1279 = !{!1280}
!1280 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1276, file: !1267, line: 366, type: !267)
!1281 = !DILocation(line: 0, scope: !1276)
!1282 = !DILocation(line: 368, column: 10, scope: !1276)
!1283 = !DILocation(line: 368, column: 3, scope: !1276)
!1284 = distinct !DISubprogram(name: "atoll", scope: !1267, file: !1267, line: 373, type: !1285, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1288)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!1287, !267}
!1287 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1288 = !{!1289}
!1289 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1284, file: !1267, line: 373, type: !267)
!1290 = !DILocation(line: 0, scope: !1284)
!1291 = !DILocation(line: 375, column: 10, scope: !1284)
!1292 = !DILocation(line: 375, column: 3, scope: !1284)
!1293 = distinct !DISubprogram(name: "bsearch", scope: !1294, file: !1294, line: 20, type: !1295, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1303)
!1294 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!266, !1297, !1297, !280, !280, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1267, line: 808, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!262, !1297, !1297}
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313}
!1304 = !DILocalVariable(name: "__key", arg: 1, scope: !1293, file: !1294, line: 20, type: !1297)
!1305 = !DILocalVariable(name: "__base", arg: 2, scope: !1293, file: !1294, line: 20, type: !1297)
!1306 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1293, file: !1294, line: 20, type: !280)
!1307 = !DILocalVariable(name: "__size", arg: 4, scope: !1293, file: !1294, line: 20, type: !280)
!1308 = !DILocalVariable(name: "__compar", arg: 5, scope: !1293, file: !1294, line: 21, type: !1299)
!1309 = !DILocalVariable(name: "__l", scope: !1293, file: !1294, line: 23, type: !280)
!1310 = !DILocalVariable(name: "__u", scope: !1293, file: !1294, line: 23, type: !280)
!1311 = !DILocalVariable(name: "__idx", scope: !1293, file: !1294, line: 23, type: !280)
!1312 = !DILocalVariable(name: "__p", scope: !1293, file: !1294, line: 24, type: !1297)
!1313 = !DILocalVariable(name: "__comparison", scope: !1293, file: !1294, line: 25, type: !262)
!1314 = !DILocation(line: 0, scope: !1293)
!1315 = !DILocation(line: 29, column: 3, scope: !1293)
!1316 = !DILocation(line: 27, column: 7, scope: !1293)
!1317 = !DILocation(line: 29, column: 14, scope: !1293)
!1318 = !DILocation(line: 31, column: 20, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1293, file: !1294, line: 30, column: 5)
!1320 = !DILocation(line: 31, column: 27, scope: !1319)
!1321 = !DILocation(line: 32, column: 56, scope: !1319)
!1322 = !DILocation(line: 32, column: 47, scope: !1319)
!1323 = !DILocation(line: 33, column: 22, scope: !1319)
!1324 = !DILocation(line: 34, column: 24, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1319, file: !1294, line: 34, column: 11)
!1326 = !DILocation(line: 34, column: 11, scope: !1319)
!1327 = !DILocation(line: 36, column: 29, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !1294, line: 36, column: 16)
!1329 = !DILocation(line: 36, column: 16, scope: !1325)
!1330 = !DILocation(line: 37, column: 14, scope: !1328)
!1331 = distinct !{!1331, !1315, !1332}
!1332 = !DILocation(line: 40, column: 5, scope: !1293)
!1333 = !DILocation(line: 43, column: 1, scope: !1293)
!1334 = distinct !DISubprogram(name: "atof", scope: !1335, file: !1335, line: 25, type: !1336, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1338, !267}
!1338 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1339 = !{!1340}
!1340 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1334, file: !1335, line: 25, type: !267)
!1341 = !DILocation(line: 0, scope: !1334)
!1342 = !DILocation(line: 27, column: 10, scope: !1334)
!1343 = !DILocation(line: 27, column: 3, scope: !1334)
!1344 = distinct !DISubprogram(name: "strtoimax", scope: !1345, file: !1345, line: 324, type: !1346, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1345 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1348, !1101, !1351, !262}
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1349, line: 101, baseType: !1350)
!1349 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1153, line: 72, baseType: !354)
!1351 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !263)
!1352 = !{!1353, !1354, !1355}
!1353 = !DILocalVariable(name: "nptr", arg: 1, scope: !1344, file: !1345, line: 324, type: !1101)
!1354 = !DILocalVariable(name: "endptr", arg: 2, scope: !1344, file: !1345, line: 324, type: !1351)
!1355 = !DILocalVariable(name: "base", arg: 3, scope: !1344, file: !1345, line: 324, type: !262)
!1356 = !DILocation(line: 0, scope: !1344)
!1357 = !DILocation(line: 327, column: 10, scope: !1344)
!1358 = !DILocation(line: 327, column: 3, scope: !1344)
!1359 = distinct !DISubprogram(name: "strtoumax", scope: !1345, file: !1345, line: 336, type: !1360, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1364)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1362, !1101, !1351, !262}
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1349, line: 102, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1153, line: 73, baseType: !282)
!1364 = !{!1365, !1366, !1367}
!1365 = !DILocalVariable(name: "nptr", arg: 1, scope: !1359, file: !1345, line: 336, type: !1101)
!1366 = !DILocalVariable(name: "endptr", arg: 2, scope: !1359, file: !1345, line: 336, type: !1351)
!1367 = !DILocalVariable(name: "base", arg: 3, scope: !1359, file: !1345, line: 336, type: !262)
!1368 = !DILocation(line: 0, scope: !1359)
!1369 = !DILocation(line: 339, column: 10, scope: !1359)
!1370 = !DILocation(line: 339, column: 3, scope: !1359)
!1371 = distinct !DISubprogram(name: "wcstoimax", scope: !1345, file: !1345, line: 348, type: !1372, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1381)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!1348, !1374, !1378, !262}
!1374 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1345, line: 34, baseType: !262)
!1378 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1381 = !{!1382, !1383, !1384}
!1382 = !DILocalVariable(name: "nptr", arg: 1, scope: !1371, file: !1345, line: 348, type: !1374)
!1383 = !DILocalVariable(name: "endptr", arg: 2, scope: !1371, file: !1345, line: 348, type: !1378)
!1384 = !DILocalVariable(name: "base", arg: 3, scope: !1371, file: !1345, line: 348, type: !262)
!1385 = !DILocation(line: 0, scope: !1371)
!1386 = !DILocation(line: 351, column: 10, scope: !1371)
!1387 = !DILocation(line: 351, column: 3, scope: !1371)
!1388 = distinct !DISubprogram(name: "wcstoumax", scope: !1345, file: !1345, line: 362, type: !1389, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!1362, !1374, !1378, !262}
!1391 = !{!1392, !1393, !1394}
!1392 = !DILocalVariable(name: "nptr", arg: 1, scope: !1388, file: !1345, line: 362, type: !1374)
!1393 = !DILocalVariable(name: "endptr", arg: 2, scope: !1388, file: !1345, line: 362, type: !1378)
!1394 = !DILocalVariable(name: "base", arg: 3, scope: !1388, file: !1345, line: 362, type: !262)
!1395 = !DILocation(line: 0, scope: !1388)
!1396 = !DILocation(line: 365, column: 10, scope: !1388)
!1397 = !DILocation(line: 365, column: 3, scope: !1388)
!1398 = distinct !DISubprogram(name: "stat", scope: !1399, file: !1399, line: 453, type: !1400, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1437)
!1399 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!262, !267, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1404, line: 46, size: 1152, elements: !1405)
!1404 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1405 = !{!1406, !1408, !1410, !1412, !1414, !1416, !1418, !1419, !1420, !1421, !1423, !1425, !1433, !1434, !1435}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1403, file: !1404, line: 48, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1153, line: 145, baseType: !282)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1403, file: !1404, line: 53, baseType: !1409, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1153, line: 148, baseType: !282)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1403, file: !1404, line: 61, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1153, line: 151, baseType: !282)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1403, file: !1404, line: 62, baseType: !1413, size: 32, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1153, line: 150, baseType: !7)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1403, file: !1404, line: 64, baseType: !1415, size: 32, offset: 224)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1153, line: 146, baseType: !7)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1403, file: !1404, line: 65, baseType: !1417, size: 32, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1153, line: 147, baseType: !7)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1403, file: !1404, line: 67, baseType: !262, size: 32, offset: 288)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1403, file: !1404, line: 69, baseType: !1407, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1403, file: !1404, line: 74, baseType: !1152, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1403, file: !1404, line: 78, baseType: !1422, size: 64, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1153, line: 174, baseType: !354)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1403, file: !1404, line: 80, baseType: !1424, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1153, line: 179, baseType: !354)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1403, file: !1404, line: 91, baseType: !1426, size: 128, offset: 576)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1427, line: 10, size: 128, elements: !1428)
!1427 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1428 = !{!1429, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1426, file: !1427, line: 12, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1153, line: 160, baseType: !354)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1426, file: !1427, line: 16, baseType: !1432, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1153, line: 196, baseType: !354)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1403, file: !1404, line: 92, baseType: !1426, size: 128, offset: 704)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1403, file: !1404, line: 93, baseType: !1426, size: 128, offset: 832)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1403, file: !1404, line: 106, baseType: !1436, size: 192, offset: 960)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1432, size: 192, elements: !295)
!1437 = !{!1438, !1439}
!1438 = !DILocalVariable(name: "__path", arg: 1, scope: !1398, file: !1399, line: 453, type: !267)
!1439 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1398, file: !1399, line: 453, type: !1402)
!1440 = !DILocation(line: 0, scope: !1398)
!1441 = !DILocation(line: 455, column: 10, scope: !1398)
!1442 = !DILocation(line: 455, column: 3, scope: !1398)
!1443 = distinct !DISubprogram(name: "lstat", scope: !1399, file: !1399, line: 460, type: !1400, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1444)
!1444 = !{!1445, !1446}
!1445 = !DILocalVariable(name: "__path", arg: 1, scope: !1443, file: !1399, line: 460, type: !267)
!1446 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1443, file: !1399, line: 460, type: !1402)
!1447 = !DILocation(line: 0, scope: !1443)
!1448 = !DILocation(line: 462, column: 10, scope: !1443)
!1449 = !DILocation(line: 462, column: 3, scope: !1443)
!1450 = distinct !DISubprogram(name: "fstat", scope: !1399, file: !1399, line: 467, type: !1451, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!262, !262, !1402}
!1453 = !{!1454, !1455}
!1454 = !DILocalVariable(name: "__fd", arg: 1, scope: !1450, file: !1399, line: 467, type: !262)
!1455 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1450, file: !1399, line: 467, type: !1402)
!1456 = !DILocation(line: 0, scope: !1450)
!1457 = !DILocation(line: 469, column: 10, scope: !1450)
!1458 = !DILocation(line: 469, column: 3, scope: !1450)
!1459 = distinct !DISubprogram(name: "fstatat", scope: !1399, file: !1399, line: 474, type: !1460, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1462)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!262, !262, !267, !1402, !262}
!1462 = !{!1463, !1464, !1465, !1466}
!1463 = !DILocalVariable(name: "__fd", arg: 1, scope: !1459, file: !1399, line: 474, type: !262)
!1464 = !DILocalVariable(name: "__filename", arg: 2, scope: !1459, file: !1399, line: 474, type: !267)
!1465 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1459, file: !1399, line: 474, type: !1402)
!1466 = !DILocalVariable(name: "__flag", arg: 4, scope: !1459, file: !1399, line: 474, type: !262)
!1467 = !DILocation(line: 0, scope: !1459)
!1468 = !DILocation(line: 477, column: 10, scope: !1459)
!1469 = !DILocation(line: 477, column: 3, scope: !1459)
!1470 = distinct !DISubprogram(name: "mknod", scope: !1399, file: !1399, line: 483, type: !1471, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1473)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!262, !267, !1413, !1407}
!1473 = !{!1474, !1475, !1476}
!1474 = !DILocalVariable(name: "__path", arg: 1, scope: !1470, file: !1399, line: 483, type: !267)
!1475 = !DILocalVariable(name: "__mode", arg: 2, scope: !1470, file: !1399, line: 483, type: !1413)
!1476 = !DILocalVariable(name: "__dev", arg: 3, scope: !1470, file: !1399, line: 483, type: !1407)
!1477 = !DILocation(line: 0, scope: !1470)
!1478 = !DILocation(line: 485, column: 10, scope: !1470)
!1479 = !DILocation(line: 485, column: 3, scope: !1470)
!1480 = distinct !DISubprogram(name: "mknodat", scope: !1399, file: !1399, line: 491, type: !1481, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!262, !262, !267, !1413, !1407}
!1483 = !{!1484, !1485, !1486, !1487}
!1484 = !DILocalVariable(name: "__fd", arg: 1, scope: !1480, file: !1399, line: 491, type: !262)
!1485 = !DILocalVariable(name: "__path", arg: 2, scope: !1480, file: !1399, line: 491, type: !267)
!1486 = !DILocalVariable(name: "__mode", arg: 3, scope: !1480, file: !1399, line: 491, type: !1413)
!1487 = !DILocalVariable(name: "__dev", arg: 4, scope: !1480, file: !1399, line: 491, type: !1407)
!1488 = !DILocation(line: 0, scope: !1480)
!1489 = !DILocation(line: 494, column: 10, scope: !1480)
!1490 = !DILocation(line: 494, column: 3, scope: !1480)
!1491 = distinct !DISubprogram(name: "stat64", scope: !1399, file: !1399, line: 502, type: !1492, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1514)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!262, !267, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1404, line: 119, size: 1152, elements: !1496)
!1496 = !{!1497, !1498, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1510, !1511, !1512, !1513}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1495, file: !1404, line: 121, baseType: !1407, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1495, file: !1404, line: 123, baseType: !1499, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1153, line: 149, baseType: !282)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1495, file: !1404, line: 124, baseType: !1411, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1495, file: !1404, line: 125, baseType: !1413, size: 32, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1495, file: !1404, line: 132, baseType: !1415, size: 32, offset: 224)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1495, file: !1404, line: 133, baseType: !1417, size: 32, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1495, file: !1404, line: 135, baseType: !262, size: 32, offset: 288)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1495, file: !1404, line: 136, baseType: !1407, size: 64, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1495, file: !1404, line: 137, baseType: !1152, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1495, file: !1404, line: 143, baseType: !1422, size: 64, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1495, file: !1404, line: 144, baseType: !1509, size: 64, offset: 512)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1153, line: 180, baseType: !354)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1495, file: !1404, line: 152, baseType: !1426, size: 128, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1495, file: !1404, line: 153, baseType: !1426, size: 128, offset: 704)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1495, file: !1404, line: 154, baseType: !1426, size: 128, offset: 832)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1495, file: !1404, line: 164, baseType: !1436, size: 192, offset: 960)
!1514 = !{!1515, !1516}
!1515 = !DILocalVariable(name: "__path", arg: 1, scope: !1491, file: !1399, line: 502, type: !267)
!1516 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1491, file: !1399, line: 502, type: !1494)
!1517 = !DILocation(line: 0, scope: !1491)
!1518 = !DILocation(line: 504, column: 10, scope: !1491)
!1519 = !DILocation(line: 504, column: 3, scope: !1491)
!1520 = distinct !DISubprogram(name: "lstat64", scope: !1399, file: !1399, line: 509, type: !1492, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1521)
!1521 = !{!1522, !1523}
!1522 = !DILocalVariable(name: "__path", arg: 1, scope: !1520, file: !1399, line: 509, type: !267)
!1523 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1520, file: !1399, line: 509, type: !1494)
!1524 = !DILocation(line: 0, scope: !1520)
!1525 = !DILocation(line: 511, column: 10, scope: !1520)
!1526 = !DILocation(line: 511, column: 3, scope: !1520)
!1527 = distinct !DISubprogram(name: "fstat64", scope: !1399, file: !1399, line: 516, type: !1528, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!262, !262, !1494}
!1530 = !{!1531, !1532}
!1531 = !DILocalVariable(name: "__fd", arg: 1, scope: !1527, file: !1399, line: 516, type: !262)
!1532 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1527, file: !1399, line: 516, type: !1494)
!1533 = !DILocation(line: 0, scope: !1527)
!1534 = !DILocation(line: 518, column: 10, scope: !1527)
!1535 = !DILocation(line: 518, column: 3, scope: !1527)
!1536 = distinct !DISubprogram(name: "fstatat64", scope: !1399, file: !1399, line: 523, type: !1537, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1539)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!262, !262, !267, !1494, !262}
!1539 = !{!1540, !1541, !1542, !1543}
!1540 = !DILocalVariable(name: "__fd", arg: 1, scope: !1536, file: !1399, line: 523, type: !262)
!1541 = !DILocalVariable(name: "__filename", arg: 2, scope: !1536, file: !1399, line: 523, type: !267)
!1542 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1536, file: !1399, line: 523, type: !1494)
!1543 = !DILocalVariable(name: "__flag", arg: 4, scope: !1536, file: !1399, line: 523, type: !262)
!1544 = !DILocation(line: 0, scope: !1536)
!1545 = !DILocation(line: 526, column: 10, scope: !1536)
!1546 = !DILocation(line: 526, column: 3, scope: !1536)
