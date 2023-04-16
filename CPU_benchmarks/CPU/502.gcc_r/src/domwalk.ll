; ModuleID = 'domwalk.bc'
source_filename = "domwalk.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type opaque
%struct.control_flow_graph = type { %struct.basic_block_def*, %struct.basic_block_def*, %struct.VEC_basic_block_gc*, i32, i32, i32, %struct.VEC_basic_block_gc*, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.loop = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
%struct.loops = type opaque
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.dom_walk_data = type { i8, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)*, {}*, {}*, i8*, %struct.VEC_void_p_heap*, i64, %struct.VEC_void_p_heap* }
%struct.VEC_void_p_heap = type { %struct.VEC_void_p_base }
%struct.VEC_void_p_base = type { i32, i32, [1 x i8*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1139 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1152, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1153, metadata !DIExpression()), !dbg !1154
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1155
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !1156
  ret i32 %call, !dbg !1157
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1158 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1162
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !1163
  ret i32 %call, !dbg !1164
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1165 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1220, metadata !DIExpression()), !dbg !1221
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1222
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1222
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1222
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1222
  %cmp = icmp uge i8* %0, %1, !dbg !1222
  %conv1 = zext i1 %cmp to i64, !dbg !1222
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1222
  %tobool = icmp eq i64 %expval, 0, !dbg !1222
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1222

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1222
  br label %cond.end, !dbg !1222

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1222
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1222
  %2 = load i8, i8* %0, align 1, !dbg !1222
  %conv3 = zext i8 %2 to i32, !dbg !1222
  br label %cond.end, !dbg !1222

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1222
  ret i32 %cond, !dbg !1223
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1224 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1226, metadata !DIExpression()), !dbg !1227
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1228
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1228
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1228
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1228
  %cmp = icmp uge i8* %0, %1, !dbg !1228
  %conv1 = zext i1 %cmp to i64, !dbg !1228
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1228
  %tobool = icmp eq i64 %expval, 0, !dbg !1228
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1228

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !1228
  br label %cond.end, !dbg !1228

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1228
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1228
  %2 = load i8, i8* %0, align 1, !dbg !1228
  %conv3 = zext i8 %2 to i32, !dbg !1228
  br label %cond.end, !dbg !1228

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1228
  ret i32 %cond, !dbg !1229
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1230 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1231
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1231
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1231
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1231
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1231
  %cmp = icmp uge i8* %1, %2, !dbg !1231
  %conv1 = zext i1 %cmp to i64, !dbg !1231
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1231
  %tobool = icmp eq i64 %expval, 0, !dbg !1231
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1231

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !1231
  br label %cond.end, !dbg !1231

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1231
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1231
  %3 = load i8, i8* %1, align 1, !dbg !1231
  %conv3 = zext i8 %3 to i32, !dbg !1231
  br label %cond.end, !dbg !1231

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1231
  ret i32 %cond, !dbg !1232
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1233 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1237, metadata !DIExpression()), !dbg !1238
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1239
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !1240
  ret i32 %call, !dbg !1241
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1242 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1246, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1247, metadata !DIExpression()), !dbg !1248
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1249
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1249
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1249
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1249
  %cmp = icmp uge i8* %0, %1, !dbg !1249
  %conv1 = zext i1 %cmp to i64, !dbg !1249
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1249
  %tobool = icmp eq i64 %expval, 0, !dbg !1249
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1249

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1249
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1249
  br label %cond.end, !dbg !1249

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1249
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1249
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1249
  store i8 %conv2, i8* %0, align 1, !dbg !1249
  %conv6 = and i32 %__c, 255, !dbg !1249
  br label %cond.end, !dbg !1249

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1249
  ret i32 %cond, !dbg !1250
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1251 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1253, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1254, metadata !DIExpression()), !dbg !1255
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1256
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1256
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1256
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1256
  %cmp = icmp uge i8* %0, %1, !dbg !1256
  %conv1 = zext i1 %cmp to i64, !dbg !1256
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1256
  %tobool = icmp eq i64 %expval, 0, !dbg !1256
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1256

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1256
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !1256
  br label %cond.end, !dbg !1256

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1256
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1256
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1256
  store i8 %conv2, i8* %0, align 1, !dbg !1256
  %conv6 = and i32 %__c, 255, !dbg !1256
  br label %cond.end, !dbg !1256

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1256
  ret i32 %cond, !dbg !1257
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1258 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1260, metadata !DIExpression()), !dbg !1261
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1262
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1262
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1262
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1262
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1262
  %cmp = icmp uge i8* %1, %2, !dbg !1262
  %conv1 = zext i1 %cmp to i64, !dbg !1262
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1262
  %tobool = icmp eq i64 %expval, 0, !dbg !1262
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1262

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1262
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !1262
  br label %cond.end, !dbg !1262

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1262
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1262
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1262
  store i8 %conv4, i8* %1, align 1, !dbg !1262
  %conv6 = and i32 %__c, 255, !dbg !1262
  br label %cond.end, !dbg !1262

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1262
  ret i32 %cond, !dbg !1263
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1264 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1270, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1271, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1272, metadata !DIExpression()), !dbg !1273
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !1274
  ret i64 %call, !dbg !1275
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1276 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1278, metadata !DIExpression()), !dbg !1279
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1280
  %0 = load i32, i32* %_flags, align 8, !dbg !1280
  %and = lshr i32 %0, 4, !dbg !1280
  %and.lobit = and i32 %and, 1, !dbg !1280
  ret i32 %and.lobit, !dbg !1281
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1282 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1284, metadata !DIExpression()), !dbg !1285
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1286
  %0 = load i32, i32* %_flags, align 8, !dbg !1286
  %and = lshr i32 %0, 5, !dbg !1286
  %and.lobit = and i32 %and, 1, !dbg !1286
  ret i32 %and.lobit, !dbg !1287
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1288 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1291, metadata !DIExpression()), !dbg !1292
  %__c.off = add i32 %__c, 128, !dbg !1293
  %0 = icmp ult i32 %__c.off, 384, !dbg !1293
  br i1 %0, label %cond.true, label %cond.end, !dbg !1293

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !1294
  %1 = load i32*, i32** %call, align 8, !dbg !1295
  %idxprom = sext i32 %__c to i64, !dbg !1296
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1296
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1296
  br label %cond.end, !dbg !1297

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1297
  ret i32 %cond, !dbg !1298
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1299 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1301, metadata !DIExpression()), !dbg !1302
  %__c.off = add i32 %__c, 128, !dbg !1303
  %0 = icmp ult i32 %__c.off, 384, !dbg !1303
  br i1 %0, label %cond.true, label %cond.end, !dbg !1303

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !1304
  %1 = load i32*, i32** %call, align 8, !dbg !1305
  %idxprom = sext i32 %__c to i64, !dbg !1306
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1306
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1306
  br label %cond.end, !dbg !1307

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1307
  ret i32 %cond, !dbg !1308
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1309 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1314, metadata !DIExpression()), !dbg !1315
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1316
  %conv = trunc i64 %call to i32, !dbg !1317
  ret i32 %conv, !dbg !1318
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1319 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1323, metadata !DIExpression()), !dbg !1324
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !1325
  ret i64 %call, !dbg !1326
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1327 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1332, metadata !DIExpression()), !dbg !1333
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !1334
  ret i64 %call, !dbg !1335
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1336 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1342, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1343, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1344, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1345, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1346, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 0, metadata !1347, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1348, metadata !DIExpression()), !dbg !1352
  br label %while.cond, !dbg !1353

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1354
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1352
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1348, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1347, metadata !DIExpression()), !dbg !1352
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1355
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1353

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1356
  %div = lshr i64 %add, 1, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %div, metadata !1349, metadata !DIExpression()), !dbg !1352
  %mul = mul i64 %div, %__size, !dbg !1359
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1350, metadata !DIExpression()), !dbg !1352
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %call, metadata !1351, metadata !DIExpression()), !dbg !1352
  %cmp1 = icmp slt i32 %call, 0, !dbg !1362
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1364

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1365
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1367

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1347, metadata !DIExpression()), !dbg !1352
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1352
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1352
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1348, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1347, metadata !DIExpression()), !dbg !1352
  br label %while.cond, !dbg !1353, !llvm.loop !1369

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1352
  ret i8* %retval.0, !dbg !1371
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1372 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1378, metadata !DIExpression()), !dbg !1379
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !1380
  ret double %call, !dbg !1381
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1382 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1391, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1392, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i32 %base, metadata !1393, metadata !DIExpression()), !dbg !1394
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1395
  ret i64 %call, !dbg !1396
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1397 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1403, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1404, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i32 %base, metadata !1405, metadata !DIExpression()), !dbg !1406
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !1407
  ret i64 %call, !dbg !1408
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1409 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1420, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1421, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %base, metadata !1422, metadata !DIExpression()), !dbg !1423
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1424
  ret i64 %call, !dbg !1425
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1426 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1430, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1431, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i32 %base, metadata !1432, metadata !DIExpression()), !dbg !1433
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !1434
  ret i64 %call, !dbg !1435
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1436 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1478, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1479, metadata !DIExpression()), !dbg !1480
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1481
  ret i32 %call, !dbg !1482
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1483 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1485, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1486, metadata !DIExpression()), !dbg !1487
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !1488
  ret i32 %call, !dbg !1489
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1490 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1494, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1495, metadata !DIExpression()), !dbg !1496
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !1497
  ret i32 %call, !dbg !1498
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1499 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1503, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1504, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1505, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1506, metadata !DIExpression()), !dbg !1507
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !1508
  ret i32 %call, !dbg !1509
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1510 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1514, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1515, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1516, metadata !DIExpression()), !dbg !1517
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1516, metadata !DIExpression(DW_OP_deref)), !dbg !1517
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1518
  ret i32 %call, !dbg !1519
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1520 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1524, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1525, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1526, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1527, metadata !DIExpression()), !dbg !1528
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1527, metadata !DIExpression(DW_OP_deref)), !dbg !1528
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !1529
  ret i32 %call, !dbg !1530
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1531 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1555, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1556, metadata !DIExpression()), !dbg !1557
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1558
  ret i32 %call, !dbg !1559
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1560 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1562, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1563, metadata !DIExpression()), !dbg !1564
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !1565
  ret i32 %call, !dbg !1566
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1567 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1571, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1572, metadata !DIExpression()), !dbg !1573
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !1574
  ret i32 %call, !dbg !1575
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1576 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1580, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1581, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1582, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1583, metadata !DIExpression()), !dbg !1584
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !1585
  ret i32 %call, !dbg !1586
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @walk_dominator_tree(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb) local_unnamed_addr #3 !dbg !1587 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !1606, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !1607, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8* null, metadata !1608, metadata !DIExpression()), !dbg !1618
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1619
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !1619
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !1619
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 3, !dbg !1619
  %2 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !1619
  %mul = shl nsw i32 %2, 1, !dbg !1619
  %conv = sext i32 %mul to i64, !dbg !1619
  %mul1 = shl nsw i64 %conv, 3, !dbg !1619
  %call = tail call i8* @xmalloc(i64 %mul1) #5, !dbg !1619
  %3 = bitcast i8* %call to %struct.basic_block_def**, !dbg !1619
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %3, metadata !1610, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i32 0, metadata !1611, metadata !DIExpression()), !dbg !1618
  %initialize_block_local_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 1, !dbg !1620
  %free_block_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 7, !dbg !1621
  %block_local_data_size = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 6, !dbg !1623
  %block_data_stack = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 5, !dbg !1625
  %before_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 2, !dbg !1626
  %before_dom_children40 = bitcast {}** %before_dom_children to void (%struct.dom_walk_data*, %struct.basic_block_def*)**, !dbg !1626
  %4 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 0, !dbg !1628
  %after_dom_children = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 3, !dbg !1630
  %after_dom_children69 = bitcast {}** %after_dom_children to void (%struct.dom_walk_data*, %struct.basic_block_def*)**, !dbg !1630
  br label %while.cond, !dbg !1633

while.cond:                                       ; preds = %if.then91, %entry
  %sp.0 = phi i32 [ 0, %entry ], [ %dec92, %if.then91 ], !dbg !1618
  %bb.addr.0 = phi %struct.basic_block_def* [ %bb, %entry ], [ %27, %if.then91 ]
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.addr.0, metadata !1607, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i32 %sp.0, metadata !1611, metadata !DIExpression()), !dbg !1618
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.addr.0, i64 0, i32 0, !dbg !1634
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !1634
  %tobool = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !1634
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1634

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !1634
  br label %cond.end, !dbg !1634

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !1634
  %call3 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #6, !dbg !1634
  %cmp = icmp eq i32 %call3, 0, !dbg !1635
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !1636

lor.lhs.false:                                    ; preds = %cond.end
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1637
  %cfg6 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !1637
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6, align 8, !dbg !1637
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 0, !dbg !1637
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !1637
  %cmp7 = icmp eq %struct.basic_block_def* %bb.addr.0, %8, !dbg !1638
  br i1 %cmp7, label %if.then, label %lor.lhs.false9, !dbg !1639

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !1640
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !1640
  %cmp12 = icmp eq %struct.basic_block_def* %bb.addr.0, %9, !dbg !1641
  br i1 %cmp12, label %if.then, label %if.end58, !dbg !1642

if.then:                                          ; preds = %cond.end, %lor.lhs.false9, %lor.lhs.false
  %10 = load void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)*, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)** %initialize_block_local_data, align 8, !dbg !1643
  %tobool14 = icmp eq void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)* %10, null, !dbg !1644
  br i1 %tobool14, label %if.end39, label %if.then15, !dbg !1645

if.then15:                                        ; preds = %if.then
  %11 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %free_block_data, align 8, !dbg !1646
  %tobool16 = icmp eq %struct.VEC_void_p_heap* %11, null, !dbg !1646
  br i1 %tobool16, label %cond.end21, label %cond.true17, !dbg !1646

cond.true17:                                      ; preds = %if.then15
  %base19 = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %11, i64 0, i32 0, !dbg !1646
  br label %cond.end21, !dbg !1646

cond.end21:                                       ; preds = %if.then15, %cond.true17
  %cond22 = phi %struct.VEC_void_p_base* [ %base19, %cond.true17 ], [ null, %if.then15 ], !dbg !1646
  %call23 = tail call fastcc i32 @VEC_void_p_base_length(%struct.VEC_void_p_base* %cond22) #6, !dbg !1646
  %cmp24 = icmp eq i32 %call23, 0, !dbg !1647
  br i1 %cmp24, label %if.else, label %if.then26, !dbg !1648

if.then26:                                        ; preds = %cond.end21
  %12 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %free_block_data, align 8, !dbg !1649
  %tobool28 = icmp eq %struct.VEC_void_p_heap* %12, null, !dbg !1649
  br i1 %tobool28, label %cond.end33, label %cond.true29, !dbg !1649

cond.true29:                                      ; preds = %if.then26
  %base31 = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %12, i64 0, i32 0, !dbg !1649
  br label %cond.end33, !dbg !1649

cond.end33:                                       ; preds = %if.then26, %cond.true29
  %cond34 = phi %struct.VEC_void_p_base* [ %base31, %cond.true29 ], [ null, %if.then26 ], !dbg !1649
  %call35 = tail call fastcc i8* @VEC_void_p_base_pop(%struct.VEC_void_p_base* %cond34) #6, !dbg !1649
  call void @llvm.dbg.value(metadata i8* %call35, metadata !1608, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1625
  br label %if.end, !dbg !1651

if.else:                                          ; preds = %cond.end21
  %13 = load i64, i64* %block_local_data_size, align 8, !dbg !1652
  %call36 = tail call i8* @xcalloc(i64 1, i64 %13) #5, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %call36, metadata !1608, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1625
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end33
  %bd.0 = phi i8* [ %call35, %cond.end33 ], [ %call36, %if.else ], !dbg !1621
  %recycled.0 = phi i8 [ 1, %cond.end33 ], [ 0, %if.else ], !dbg !1621
  call void @llvm.dbg.value(metadata i8 %recycled.0, metadata !1612, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8* %bd.0, metadata !1608, metadata !DIExpression()), !dbg !1618
  %call37 = tail call fastcc i8** @VEC_void_p_heap_safe_push(%struct.VEC_void_p_heap** nonnull %block_data_stack, i8* %bd.0) #6, !dbg !1654
  %14 = load void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)*, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)** %initialize_block_local_data, align 8, !dbg !1655
  tail call void %14(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb.addr.0, i8 zeroext %recycled.0) #5, !dbg !1656
  br label %if.end39, !dbg !1657

if.end39:                                         ; preds = %if.then, %if.end
  %15 = load void (%struct.dom_walk_data*, %struct.basic_block_def*)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %before_dom_children40, align 8, !dbg !1658
  %tobool41 = icmp eq void (%struct.dom_walk_data*, %struct.basic_block_def*)* %15, null, !dbg !1659
  br i1 %tobool41, label %if.end45, label %if.then42, !dbg !1660

if.then42:                                        ; preds = %if.end39
  tail call void %15(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %bb.addr.0) #5, !dbg !1661
  br label %if.end45, !dbg !1661

if.end45:                                         ; preds = %if.end39, %if.then42
  %inc = add nsw i32 %sp.0, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1611, metadata !DIExpression()), !dbg !1618
  %idxprom = sext i32 %sp.0 to i64, !dbg !1663
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %3, i64 %idxprom, !dbg !1663
  store %struct.basic_block_def* %bb.addr.0, %struct.basic_block_def** %arrayidx, align 8, !dbg !1664
  call void @llvm.dbg.value(metadata i32 %sp.0, metadata !1611, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1618
  %idxprom47 = sext i32 %inc to i64, !dbg !1665
  %arrayidx48 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %3, i64 %idxprom47, !dbg !1665
  store %struct.basic_block_def* null, %struct.basic_block_def** %arrayidx48, align 8, !dbg !1666
  %bf.load = load i8, i8* %4, align 8, !dbg !1667
  %bf.clear = and i8 %bf.load, 3, !dbg !1667
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1667
  %call49 = tail call %struct.basic_block_def* @first_dom_son(i32 %bf.cast, %struct.basic_block_def* %bb.addr.0) #5, !dbg !1668
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call49, metadata !1609, metadata !DIExpression()), !dbg !1618
  %16 = add i32 %sp.0, 2, !dbg !1669
  %17 = sext i32 %16 to i64, !dbg !1669
  br label %for.cond, !dbg !1669

for.cond:                                         ; preds = %for.body, %if.end45
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %17, %if.end45 ], !dbg !1670
  %dest.0 = phi %struct.basic_block_def* [ %call57, %for.body ], [ %call49, %if.end45 ], !dbg !1628
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest.0, metadata !1609, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1611, metadata !DIExpression()), !dbg !1618
  %tobool50 = icmp eq %struct.basic_block_def* %dest.0, null, !dbg !1671
  br i1 %tobool50, label %if.end58.loopexit, label %for.body, !dbg !1671

for.body:                                         ; preds = %for.cond
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1672
  call void @llvm.dbg.value(metadata i32 undef, metadata !1611, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1618
  %arrayidx53 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %3, i64 %indvars.iv, !dbg !1674
  store %struct.basic_block_def* %dest.0, %struct.basic_block_def** %arrayidx53, align 8, !dbg !1675
  %bf.load54 = load i8, i8* %4, align 8, !dbg !1676
  %bf.clear55 = and i8 %bf.load54, 3, !dbg !1676
  %bf.cast56 = zext i8 %bf.clear55 to i32, !dbg !1676
  %call57 = tail call %struct.basic_block_def* @next_dom_son(i32 %bf.cast56, %struct.basic_block_def* nonnull %dest.0) #5, !dbg !1677
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call57, metadata !1609, metadata !DIExpression()), !dbg !1618
  br label %for.cond, !dbg !1678, !llvm.loop !1679

if.end58.loopexit:                                ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !1670
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !1611, metadata !DIExpression()), !dbg !1618
  %18 = trunc i64 %indvars.iv.lcssa to i32, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %18, metadata !1611, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i32 %18, metadata !1611, metadata !DIExpression()), !dbg !1618
  br label %if.end58, !dbg !1681

if.end58:                                         ; preds = %if.end58.loopexit, %lor.lhs.false9
  %sp.2 = phi i32 [ %sp.0, %lor.lhs.false9 ], [ %18, %if.end58.loopexit ], !dbg !1618
  call void @llvm.dbg.value(metadata i32 %sp.2, metadata !1611, metadata !DIExpression()), !dbg !1618
  %19 = sext i32 %sp.2 to i64, !dbg !1681
  br label %while.cond59, !dbg !1681

while.cond59:                                     ; preds = %if.end89, %if.end58
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %if.end89 ], [ %19, %if.end58 ], !dbg !1682
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !1611, metadata !DIExpression()), !dbg !1618
  %cmp60 = icmp sgt i64 %indvars.iv1, 0, !dbg !1683
  %20 = trunc i64 %indvars.iv1 to i32, !dbg !1684
  br i1 %cmp60, label %land.rhs, label %while.end, !dbg !1684

land.rhs:                                         ; preds = %while.cond59
  %21 = add nsw i64 %indvars.iv1, -1, !dbg !1685
  %arrayidx63 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %3, i64 %21, !dbg !1686
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx63, align 8, !dbg !1686
  %tobool64 = icmp eq %struct.basic_block_def* %22, null, !dbg !1687
  br i1 %tobool64, label %while.body65, label %while.end, !dbg !1681

while.body65:                                     ; preds = %land.rhs
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !1611, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1618
  %indvars.iv.next2 = add nsw i64 %indvars.iv1, -2, !dbg !1688
  call void @llvm.dbg.value(metadata i32 undef, metadata !1611, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1618
  call void @llvm.dbg.value(metadata %struct.basic_block_def* undef, metadata !1607, metadata !DIExpression()), !dbg !1618
  %23 = load void (%struct.dom_walk_data*, %struct.basic_block_def*)*, void (%struct.dom_walk_data*, %struct.basic_block_def*)** %after_dom_children69, align 8, !dbg !1689
  %tobool70 = icmp eq void (%struct.dom_walk_data*, %struct.basic_block_def*)* %23, null, !dbg !1690
  br i1 %tobool70, label %if.end74, label %if.then71, !dbg !1691

if.then71:                                        ; preds = %while.body65
  %arrayidx68 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %3, i64 %indvars.iv.next2, !dbg !1692
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx68, align 8, !dbg !1692
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %24, metadata !1607, metadata !DIExpression()), !dbg !1618
  tail call void %23(%struct.dom_walk_data* %walk_data, %struct.basic_block_def* %24) #5, !dbg !1693
  br label %if.end74, !dbg !1693

if.end74:                                         ; preds = %while.body65, %if.then71
  %25 = load void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)*, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)** %initialize_block_local_data, align 8, !dbg !1694
  %tobool76 = icmp eq void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)* %25, null, !dbg !1696
  br i1 %tobool76, label %if.end89, label %if.then77, !dbg !1697

if.then77:                                        ; preds = %if.end74
  %26 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %block_data_stack, align 8, !dbg !1698
  %tobool79 = icmp eq %struct.VEC_void_p_heap* %26, null, !dbg !1698
  br i1 %tobool79, label %cond.end84, label %cond.true80, !dbg !1698

cond.true80:                                      ; preds = %if.then77
  %base82 = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %26, i64 0, i32 0, !dbg !1698
  br label %cond.end84, !dbg !1698

cond.end84:                                       ; preds = %if.then77, %cond.true80
  %cond85 = phi %struct.VEC_void_p_base* [ %base82, %cond.true80 ], [ null, %if.then77 ], !dbg !1698
  %call86 = tail call fastcc i8* @VEC_void_p_base_pop(%struct.VEC_void_p_base* %cond85) #6, !dbg !1698
  call void @llvm.dbg.value(metadata i8* %call86, metadata !1608, metadata !DIExpression()), !dbg !1618
  %call88 = tail call fastcc i8** @VEC_void_p_heap_safe_push(%struct.VEC_void_p_heap** nonnull %free_block_data, i8* %call86) #6, !dbg !1700
  br label %if.end89, !dbg !1701

if.end89:                                         ; preds = %if.end74, %cond.end84
  br label %while.cond59, !dbg !1681, !llvm.loop !1702

while.end:                                        ; preds = %while.cond59, %land.rhs
  %.lcssa = phi i32 [ %20, %while.cond59 ], [ %20, %land.rhs ], !dbg !1684
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !1611, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !1611, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !1611, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !1611, metadata !DIExpression()), !dbg !1618
  %tobool90 = icmp eq i32 %.lcssa, 0, !dbg !1704
  br i1 %tobool90, label %while.end97, label %if.then91, !dbg !1706

if.then91:                                        ; preds = %while.end
  %dec92 = add nsw i32 %.lcssa, -1, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %dec92, metadata !1611, metadata !DIExpression()), !dbg !1618
  %idxprom93 = sext i32 %dec92 to i64, !dbg !1708
  %arrayidx94 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %3, i64 %idxprom93, !dbg !1708
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx94, align 8, !dbg !1708
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %27, metadata !1607, metadata !DIExpression()), !dbg !1618
  br label %while.cond, !dbg !1633, !llvm.loop !1709

while.end97:                                      ; preds = %while.end
  tail call void @free(i8* %call) #5, !dbg !1711
  ret void, !dbg !1712
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !1713 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !1719, metadata !DIExpression()), !dbg !1720
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !1721
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1721

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !1721
  %0 = load i32, i32* %num, align 8, !dbg !1721
  br label %cond.end, !dbg !1721

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !1721
  ret i32 %cond, !dbg !1721
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_void_p_base_length(%struct.VEC_void_p_base* %vec_) unnamed_addr #0 !dbg !1722 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !1728, metadata !DIExpression()), !dbg !1729
  %tobool = icmp eq %struct.VEC_void_p_base* %vec_, null, !dbg !1730
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1730

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 0, !dbg !1730
  %0 = load i32, i32* %num, align 8, !dbg !1730
  br label %cond.end, !dbg !1730

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !1730
  ret i32 %cond, !dbg !1730
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @VEC_void_p_base_pop(%struct.VEC_void_p_base* %vec_) unnamed_addr #0 !dbg !1731 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !1736, metadata !DIExpression()), !dbg !1738
  %num1 = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 0, !dbg !1739
  %0 = load i32, i32* %num1, align 8, !dbg !1739
  %dec = add i32 %0, -1, !dbg !1739
  store i32 %dec, i32* %num1, align 8, !dbg !1739
  %idxprom = zext i32 %dec to i64, !dbg !1739
  %arrayidx = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !1739
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %1, metadata !1737, metadata !DIExpression()), !dbg !1738
  ret i8* %1, !dbg !1739
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8** @VEC_void_p_heap_safe_push(%struct.VEC_void_p_heap** %vec_, i8* %obj_) unnamed_addr #0 !dbg !1740 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_heap** %vec_, metadata !1746, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8* %obj_, metadata !1747, metadata !DIExpression()), !dbg !1748
  %call = tail call fastcc i32 @VEC_void_p_heap_reserve(%struct.VEC_void_p_heap** %vec_, i32 1) #6, !dbg !1749
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %vec_, align 8, !dbg !1749
  %tobool = icmp eq %struct.VEC_void_p_heap* %0, null, !dbg !1749
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1749

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %0, i64 0, i32 0, !dbg !1749
  br label %cond.end, !dbg !1749

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_void_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !1749
  %call1 = tail call fastcc i8** @VEC_void_p_base_quick_push(%struct.VEC_void_p_base* %cond, i8* %obj_) #6, !dbg !1749
  ret i8** %call1, !dbg !1749
}

declare dso_local %struct.basic_block_def* @first_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def* @next_dom_son(i32, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_walk_dominator_tree(%struct.dom_walk_data* %walk_data) local_unnamed_addr #3 !dbg !1750 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !1754, metadata !DIExpression()), !dbg !1755
  %free_block_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 7, !dbg !1756
  store %struct.VEC_void_p_heap* null, %struct.VEC_void_p_heap** %free_block_data, align 8, !dbg !1757
  %block_data_stack = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 5, !dbg !1758
  store %struct.VEC_void_p_heap* null, %struct.VEC_void_p_heap** %block_data_stack, align 8, !dbg !1759
  ret void, !dbg !1760
}

; Function Attrs: nounwind uwtable
define dso_local void @fini_walk_dominator_tree(%struct.dom_walk_data* %walk_data) local_unnamed_addr #3 !dbg !1761 {
entry:
  call void @llvm.dbg.value(metadata %struct.dom_walk_data* %walk_data, metadata !1763, metadata !DIExpression()), !dbg !1764
  %initialize_block_local_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 1, !dbg !1765
  %0 = load void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)*, void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)** %initialize_block_local_data, align 8, !dbg !1765
  %tobool = icmp eq void (%struct.dom_walk_data*, %struct.basic_block_def*, i8)* %0, null, !dbg !1767
  br i1 %tobool, label %if.end, label %while.cond.preheader, !dbg !1768

while.cond.preheader:                             ; preds = %entry
  %free_block_data = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 7, !dbg !1769
  br label %while.cond, !dbg !1771

while.cond:                                       ; preds = %while.cond.preheader, %cond.end9
  %1 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %free_block_data, align 8, !dbg !1772
  %tobool1 = icmp eq %struct.VEC_void_p_heap* %1, null, !dbg !1772
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !1772

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %1, i64 0, i32 0, !dbg !1772
  br label %cond.end, !dbg !1772

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_void_p_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !1772
  %call = tail call fastcc i32 @VEC_void_p_base_length(%struct.VEC_void_p_base* %cond) #6, !dbg !1772
  %cmp = icmp eq i32 %call, 0, !dbg !1773
  br i1 %cmp, label %if.end.loopexit, label %while.body, !dbg !1771

while.body:                                       ; preds = %cond.end
  %2 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %free_block_data, align 8, !dbg !1774
  %tobool4 = icmp eq %struct.VEC_void_p_heap* %2, null, !dbg !1774
  br i1 %tobool4, label %cond.end9, label %cond.true5, !dbg !1774

cond.true5:                                       ; preds = %while.body
  %base7 = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %2, i64 0, i32 0, !dbg !1774
  br label %cond.end9, !dbg !1774

cond.end9:                                        ; preds = %while.body, %cond.true5
  %cond10 = phi %struct.VEC_void_p_base* [ %base7, %cond.true5 ], [ null, %while.body ], !dbg !1774
  %call11 = tail call fastcc i8* @VEC_void_p_base_pop(%struct.VEC_void_p_base* %cond10) #6, !dbg !1774
  tail call void @free(i8* %call11) #5, !dbg !1775
  br label %while.cond, !dbg !1771, !llvm.loop !1776

if.end.loopexit:                                  ; preds = %cond.end
  br label %if.end, !dbg !1778

if.end:                                           ; preds = %if.end.loopexit, %entry
  %free_block_data12 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 7, !dbg !1778
  tail call fastcc void @VEC_void_p_heap_free(%struct.VEC_void_p_heap** nonnull %free_block_data12) #6, !dbg !1778
  %block_data_stack = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %walk_data, i64 0, i32 5, !dbg !1779
  tail call fastcc void @VEC_void_p_heap_free(%struct.VEC_void_p_heap** nonnull %block_data_stack) #6, !dbg !1779
  ret void, !dbg !1780
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_void_p_heap_free(%struct.VEC_void_p_heap** %vec_) unnamed_addr #0 !dbg !1781 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_heap** %vec_, metadata !1785, metadata !DIExpression()), !dbg !1786
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %vec_, align 8, !dbg !1787
  %tobool = icmp eq %struct.VEC_void_p_heap* %0, null, !dbg !1787
  br i1 %tobool, label %if.end, label %if.then, !dbg !1789

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_void_p_heap* %0 to i8*, !dbg !1789
  tail call void @free(i8* nonnull %1) #5, !dbg !1787
  br label %if.end, !dbg !1787

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_void_p_heap* null, %struct.VEC_void_p_heap** %vec_, align 8, !dbg !1789
  ret void, !dbg !1789
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_void_p_heap_reserve(%struct.VEC_void_p_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !1790 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_heap** %vec_, metadata !1794, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i32 1, metadata !1795, metadata !DIExpression()), !dbg !1797
  %0 = load %struct.VEC_void_p_heap*, %struct.VEC_void_p_heap** %vec_, align 8, !dbg !1798
  %tobool = icmp eq %struct.VEC_void_p_heap* %0, null, !dbg !1798
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1798

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_void_p_heap, %struct.VEC_void_p_heap* %0, i64 0, i32 0, !dbg !1798
  br label %cond.end, !dbg !1798

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_void_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !1798
  %call = tail call fastcc i32 @VEC_void_p_base_space(%struct.VEC_void_p_base* %cond, i32 1) #6, !dbg !1798
  %tobool1 = icmp eq i32 %call, 0, !dbg !1798
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !1796, metadata !DIExpression()), !dbg !1797
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1798

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_void_p_heap** %vec_ to i8**, !dbg !1799
  %2 = load i8*, i8** %1, align 8, !dbg !1799
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #5, !dbg !1799
  store i8* %call3, i8** %1, align 8, !dbg !1799
  br label %if.end, !dbg !1799

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !1798
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8** @VEC_void_p_base_quick_push(%struct.VEC_void_p_base* %vec_, i8* %obj_) unnamed_addr #0 !dbg !1801 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !1805, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8* %obj_, metadata !1806, metadata !DIExpression()), !dbg !1808
  %num1 = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 0, !dbg !1809
  %0 = load i32, i32* %num1, align 8, !dbg !1809
  %inc = add i32 %0, 1, !dbg !1809
  store i32 %inc, i32* %num1, align 8, !dbg !1809
  %idxprom = zext i32 %0 to i64, !dbg !1809
  %arrayidx = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !1809
  call void @llvm.dbg.value(metadata i8** %arrayidx, metadata !1807, metadata !DIExpression()), !dbg !1808
  store i8* %obj_, i8** %arrayidx, align 8, !dbg !1809
  ret i8** %arrayidx, !dbg !1809
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_void_p_base_space(%struct.VEC_void_p_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !1810 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_void_p_base* %vec_, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 1, metadata !1815, metadata !DIExpression()), !dbg !1816
  %tobool = icmp eq %struct.VEC_void_p_base* %vec_, null, !dbg !1817
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1817

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 1, !dbg !1817
  %0 = load i32, i32* %alloc, align 4, !dbg !1817
  %num = getelementptr inbounds %struct.VEC_void_p_base, %struct.VEC_void_p_base* %vec_, i64 0, i32 0, !dbg !1817
  %1 = load i32, i32* %num, align 8, !dbg !1817
  %cmp1 = icmp ne i32 %0, %1, !dbg !1817
  %phitmp = zext i1 %cmp1 to i32, !dbg !1817
  br label %cond.end, !dbg !1817

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1817

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !1817
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

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
!llvm.module.flags = !{!1135, !1136, !1137}
!llvm.ident = !{!1138}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !247, nameTableKind: None)
!1 = !DIFile(filename: "domwalk.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !10, !15, !20, !39, !46, !53}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !4, line: 363, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !4, line: 355, baseType: !5, size: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !16, line: 474, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !21, line: 280, baseType: !5, size: 32, elements: !22)
!21 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!23 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!31 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!32 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!33 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!34 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!36 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!37 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!38 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !21, line: 1817, baseType: !5, size: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !21, line: 1805, baseType: !5, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!52 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !21, line: 39, baseType: !5, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!55 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!60 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!61 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!62 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!63 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!64 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!65 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!66 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!67 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!68 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!69 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!70 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!71 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!72 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!73 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!74 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!75 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!76 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!77 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!78 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!79 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!80 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!81 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!82 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!83 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!84 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!85 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!86 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!87 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!88 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!89 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!90 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!91 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!92 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!93 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!94 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!95 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!96 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!98 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!99 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!100 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!101 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!102 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!103 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!104 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!105 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!106 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!107 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!108 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!109 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!110 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!111 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!112 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!113 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!114 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!115 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!116 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!117 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!118 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!119 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!120 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!121 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!122 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!123 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!124 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!125 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!126 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!127 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!128 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!129 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!130 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!131 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!132 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!133 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!134 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!135 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!136 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!137 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!138 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!139 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!140 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!141 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!142 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!143 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!144 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!145 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!146 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!147 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!148 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!149 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!150 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!151 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!152 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!153 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!154 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!155 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!156 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!157 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!158 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!159 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!160 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!161 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!162 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!163 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!164 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!165 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!166 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!167 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!168 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!169 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!170 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!171 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!172 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!173 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!174 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!175 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!176 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!177 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!178 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!179 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!180 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!181 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!182 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!183 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!184 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!185 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!186 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!187 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!188 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!189 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!190 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!191 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!192 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!193 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!194 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!195 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!196 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!197 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!198 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!199 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!200 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!201 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!202 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!203 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!204 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!205 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!206 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!207 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!208 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!214 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!216 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!217 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!219 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!220 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!221 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!222 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!223 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!224 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!225 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!226 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!227 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!228 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!229 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!230 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!231 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!232 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!233 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!234 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!235 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!236 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!237 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!238 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!239 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!240 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!241 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!242 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!243 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!244 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!245 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!246 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!247 = !{!248, !249, !250, !251, !254, !255, !257, !1121, !5}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!250 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !259, line: 111, baseType: !260)
!259 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !4, line: 217, size: 832, elements: !262)
!262 = !{!263, !1086, !1087, !1088, !1091, !1095, !1096, !1097, !1115, !1116, !1117, !1118, !1119, !1120}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !261, file: !4, line: 219, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !4, line: 151, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !4, line: 151, size: 128, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !266, file: !4, line: 151, baseType: !269, size: 128)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !4, line: 150, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !4, line: 150, size: 128, elements: !271)
!271 = !{!272, !273, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !270, file: !4, line: 150, baseType: !5, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !270, file: !4, line: 150, baseType: !5, size: 32, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !270, file: !4, line: 150, baseType: !275, size: 64, offset: 64)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 64, elements: !377)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !259, line: 108, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !4, line: 122, size: 512, elements: !279)
!279 = !{!280, !281, !282, !293, !294, !1080, !1081, !1082, !1083, !1084}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !278, file: !4, line: 124, baseType: !260, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !278, file: !4, line: 125, baseType: !260, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !278, file: !4, line: 131, baseType: !283, size: 64, offset: 128)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !4, line: 128, size: 64, elements: !284)
!284 = !{!285, !289}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !283, file: !4, line: 129, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !259, line: 66, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !259, line: 65, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !283, file: !4, line: 130, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !259, line: 50, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !259, line: 49, flags: DIFlagFwdDecl)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !278, file: !4, line: 134, baseType: !254, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !278, file: !4, line: 137, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !259, line: 56, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !21, line: 3371, size: 1792, elements: !298)
!298 = !{!299, !332, !338, !351, !358, !365, !370, !379, !385, !398, !410, !448, !453, !481, !489, !490, !495, !504, !510, !515, !519, !523, !704, !753, !759, !766, !773, !799, !824, !841, !853, !875, !890, !1062}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !297, file: !21, line: 3372, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !21, line: 360, size: 64, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !300, file: !21, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !300, file: !21, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !300, file: !21, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !300, file: !21, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !300, file: !21, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !300, file: !21, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !300, file: !21, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !300, file: !21, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !300, file: !21, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !300, file: !21, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !300, file: !21, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !300, file: !21, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !300, file: !21, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !300, file: !21, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !300, file: !21, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !300, file: !21, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !300, file: !21, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !300, file: !21, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !300, file: !21, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !300, file: !21, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !300, file: !21, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !300, file: !21, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !300, file: !21, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !300, file: !21, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !300, file: !21, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !300, file: !21, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !300, file: !21, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !300, file: !21, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !300, file: !21, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !300, file: !21, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !297, file: !21, line: 3373, baseType: !333, size: 192)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !21, line: 402, size: 192, elements: !334)
!334 = !{!335, !336, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !333, file: !21, line: 403, baseType: !300, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !333, file: !21, line: 404, baseType: !295, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !333, file: !21, line: 405, baseType: !295, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !297, file: !21, line: 3374, baseType: !339, size: 320)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !21, line: 1384, size: 320, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !339, file: !21, line: 1385, baseType: !333, size: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !339, file: !21, line: 1386, baseType: !343, size: 128, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !344, line: 58, baseType: !345)
!344 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 54, size: 128, elements: !346)
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !345, file: !344, line: 56, baseType: !348, size: 64)
!348 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !345, file: !344, line: 57, baseType: !350, size: 64, offset: 64)
!350 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !297, file: !21, line: 3375, baseType: !352, size: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !21, line: 1397, size: 256, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !352, file: !21, line: 1398, baseType: !333, size: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !352, file: !21, line: 1399, baseType: !356, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !21, line: 1392, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !297, file: !21, line: 3376, baseType: !359, size: 256)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !21, line: 1408, size: 256, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !359, file: !21, line: 1409, baseType: !333, size: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !359, file: !21, line: 1410, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !21, line: 1403, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !297, file: !21, line: 3377, baseType: !366, size: 256)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !21, line: 1437, size: 256, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !366, file: !21, line: 1438, baseType: !333, size: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !366, file: !21, line: 1439, baseType: !295, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !297, file: !21, line: 3378, baseType: !371, size: 256)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !21, line: 1418, size: 256, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !371, file: !21, line: 1419, baseType: !333, size: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !371, file: !21, line: 1420, baseType: !250, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !371, file: !21, line: 1421, baseType: !376, size: 8, offset: 224)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 8, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 1)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !297, file: !21, line: 3379, baseType: !380, size: 320)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !21, line: 1428, size: 320, elements: !381)
!381 = !{!382, !383, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !380, file: !21, line: 1429, baseType: !333, size: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !380, file: !21, line: 1430, baseType: !295, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !380, file: !21, line: 1431, baseType: !295, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !297, file: !21, line: 3380, baseType: !386, size: 320)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !21, line: 1460, size: 320, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !386, file: !21, line: 1461, baseType: !333, size: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !386, file: !21, line: 1462, baseType: !390, size: 128, offset: 192)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !391, line: 31, size: 128, elements: !392)
!391 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !396, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !390, file: !391, line: 32, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !390, file: !391, line: 33, baseType: !5, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !390, file: !391, line: 34, baseType: !5, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !297, file: !21, line: 3381, baseType: !399, size: 384)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !21, line: 2507, size: 384, elements: !400)
!400 = !{!401, !402, !407, !408, !409}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !399, file: !21, line: 2508, baseType: !333, size: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !399, file: !21, line: 2509, baseType: !403, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !404, line: 58, baseType: !405)
!404 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !406, line: 44, baseType: !5)
!406 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!407 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !399, file: !21, line: 2510, baseType: !5, size: 32, offset: 224)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !21, line: 2511, baseType: !295, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !399, file: !21, line: 2512, baseType: !295, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !297, file: !21, line: 3382, baseType: !411, size: 896)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !21, line: 2652, size: 896, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !411, file: !21, line: 2653, baseType: !399, size: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !411, file: !21, line: 2654, baseType: !295, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !411, file: !21, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !411, file: !21, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !411, file: !21, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !411, file: !21, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !411, file: !21, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !411, file: !21, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !411, file: !21, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !411, file: !21, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !411, file: !21, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !411, file: !21, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !411, file: !21, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !411, file: !21, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !411, file: !21, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !411, file: !21, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !411, file: !21, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !411, file: !21, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !411, file: !21, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !411, file: !21, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !411, file: !21, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !411, file: !21, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !411, file: !21, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !411, file: !21, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !411, file: !21, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !411, file: !21, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !411, file: !21, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !411, file: !21, line: 2703, baseType: !5, size: 32, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !411, file: !21, line: 2705, baseType: !295, size: 64, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !411, file: !21, line: 2706, baseType: !295, size: 64, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !411, file: !21, line: 2707, baseType: !295, size: 64, offset: 704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !411, file: !21, line: 2708, baseType: !295, size: 64, offset: 768)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !411, file: !21, line: 2711, baseType: !446, size: 64, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !21, line: 2711, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !297, file: !21, line: 3383, baseType: !449, size: 960)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !21, line: 2756, size: 960, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !449, file: !21, line: 2757, baseType: !411, size: 896)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !449, file: !21, line: 2758, baseType: !290, size: 64, offset: 896)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !297, file: !21, line: 3384, baseType: !454, size: 1472)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !21, line: 3114, size: 1472, elements: !455)
!455 = !{!456, !477, !478, !479, !480}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !454, file: !21, line: 3115, baseType: !457, size: 1216)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !21, line: 2984, size: 1216, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !457, file: !21, line: 2985, baseType: !449, size: 960)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !457, file: !21, line: 2986, baseType: !295, size: 64, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !457, file: !21, line: 2987, baseType: !295, size: 64, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !457, file: !21, line: 2988, baseType: !295, size: 64, offset: 1088)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !457, file: !21, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !457, file: !21, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !457, file: !21, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !457, file: !21, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !457, file: !21, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !457, file: !21, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !457, file: !21, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !457, file: !21, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !457, file: !21, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !457, file: !21, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !457, file: !21, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !457, file: !21, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !457, file: !21, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !457, file: !21, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !454, file: !21, line: 3117, baseType: !295, size: 64, offset: 1216)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !454, file: !21, line: 3119, baseType: !295, size: 64, offset: 1280)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !454, file: !21, line: 3121, baseType: !295, size: 64, offset: 1344)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !454, file: !21, line: 3123, baseType: !295, size: 64, offset: 1408)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !297, file: !21, line: 3385, baseType: !482, size: 1088)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !21, line: 2874, size: 1088, elements: !483)
!483 = !{!484, !485, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !482, file: !21, line: 2875, baseType: !449, size: 960)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !482, file: !21, line: 2876, baseType: !290, size: 64, offset: 960)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !482, file: !21, line: 2877, baseType: !487, size: 64, offset: 1024)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !21, line: 2856, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !297, file: !21, line: 3386, baseType: !457, size: 1216)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !297, file: !21, line: 3387, baseType: !491, size: 1280)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !21, line: 3093, size: 1280, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !491, file: !21, line: 3094, baseType: !457, size: 1216)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !491, file: !21, line: 3095, baseType: !487, size: 64, offset: 1216)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !297, file: !21, line: 3388, baseType: !496, size: 1216)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !21, line: 2824, size: 1216, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !496, file: !21, line: 2825, baseType: !411, size: 896)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !496, file: !21, line: 2827, baseType: !295, size: 64, offset: 896)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !496, file: !21, line: 2828, baseType: !295, size: 64, offset: 960)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !496, file: !21, line: 2829, baseType: !295, size: 64, offset: 1024)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !496, file: !21, line: 2830, baseType: !295, size: 64, offset: 1088)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !496, file: !21, line: 2831, baseType: !295, size: 64, offset: 1152)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !297, file: !21, line: 3389, baseType: !505, size: 1024)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !21, line: 2850, size: 1024, elements: !506)
!506 = !{!507, !508, !509}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !505, file: !21, line: 2851, baseType: !449, size: 960)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !505, file: !21, line: 2852, baseType: !250, size: 32, offset: 960)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !505, file: !21, line: 2853, baseType: !250, size: 32, offset: 992)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !297, file: !21, line: 3390, baseType: !511, size: 1024)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !21, line: 2857, size: 1024, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !511, file: !21, line: 2858, baseType: !449, size: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !511, file: !21, line: 2859, baseType: !487, size: 64, offset: 960)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !297, file: !21, line: 3391, baseType: !516, size: 960)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !21, line: 2862, size: 960, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !516, file: !21, line: 2863, baseType: !449, size: 960)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !297, file: !21, line: 3392, baseType: !520, size: 1472)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !21, line: 3304, size: 1472, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !520, file: !21, line: 3305, baseType: !454, size: 1472)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !297, file: !21, line: 3393, baseType: !524, size: 1792)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !21, line: 3248, size: 1792, elements: !525)
!525 = !{!526, !527, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !524, file: !21, line: 3249, baseType: !454, size: 1472)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !524, file: !21, line: 3251, baseType: !528, size: 64, offset: 1472)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !530, line: 463, size: 1152, elements: !531)
!530 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!531 = !{!532, !535, !567, !568, !571, !574, !626, !627, !628, !629, !630, !656, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !529, file: !530, line: 464, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !530, line: 464, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !529, file: !530, line: 467, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !4, line: 374, size: 640, elements: !538)
!538 = !{!539, !540, !541, !554, !555, !556, !557, !558, !559, !563, !565, !566}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !537, file: !4, line: 377, baseType: !258, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !537, file: !4, line: 378, baseType: !258, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !537, file: !4, line: 381, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !4, line: 282, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !4, line: 282, size: 128, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !544, file: !4, line: 282, baseType: !547, size: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !4, line: 281, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !4, line: 281, size: 128, elements: !549)
!549 = !{!550, !551, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !548, file: !4, line: 281, baseType: !5, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !548, file: !4, line: 281, baseType: !5, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !548, file: !4, line: 281, baseType: !553, size: 64, offset: 64)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 64, elements: !377)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !537, file: !4, line: 384, baseType: !250, size: 32, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !537, file: !4, line: 387, baseType: !250, size: 32, offset: 224)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !537, file: !4, line: 390, baseType: !250, size: 32, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !537, file: !4, line: 394, baseType: !542, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !537, file: !4, line: 396, baseType: !3, size: 32, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !537, file: !4, line: 399, baseType: !560, size: 64, offset: 416)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 2)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !537, file: !4, line: 402, baseType: !564, size: 64, offset: 480)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !561)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !537, file: !4, line: 406, baseType: !250, size: 32, offset: 544)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !537, file: !4, line: 409, baseType: !250, size: 32, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !529, file: !530, line: 470, baseType: !287, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !529, file: !530, line: 473, baseType: !569, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !530, line: 166, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !529, file: !530, line: 476, baseType: !572, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !530, line: 476, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !529, file: !530, line: 479, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !576, line: 144, baseType: !577)
!576 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !576, line: 100, size: 896, elements: !579)
!579 = !{!580, !588, !593, !598, !600, !603, !604, !605, !606, !607, !612, !614, !615, !620, !625}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !578, file: !576, line: 102, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !576, line: 52, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !576, line: 47, baseType: !5)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !578, file: !576, line: 105, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !576, line: 59, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!250, !586, !586}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !578, file: !576, line: 108, baseType: !594, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !576, line: 63, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !254}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !578, file: !576, line: 111, baseType: !599, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !578, file: !576, line: 114, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !602, line: 46, baseType: !348)
!602 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!603 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !578, file: !576, line: 117, baseType: !601, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !578, file: !576, line: 120, baseType: !601, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !578, file: !576, line: 124, baseType: !5, size: 32, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !578, file: !576, line: 128, baseType: !5, size: 32, offset: 480)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !578, file: !576, line: 131, baseType: !608, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !576, line: 75, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!254, !601, !601}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !578, file: !576, line: 132, baseType: !613, size: 64, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !576, line: 78, baseType: !595)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !578, file: !576, line: 135, baseType: !254, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !578, file: !576, line: 136, baseType: !616, size: 64, offset: 704)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !576, line: 82, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!254, !254, !601, !601}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !578, file: !576, line: 137, baseType: !621, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !576, line: 83, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !254, !254}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !578, file: !576, line: 141, baseType: !5, size: 32, offset: 832)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !529, file: !530, line: 484, baseType: !295, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !529, file: !530, line: 488, baseType: !295, size: 64, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !529, file: !530, line: 493, baseType: !295, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !529, file: !530, line: 496, baseType: !295, size: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !529, file: !530, line: 501, baseType: !631, size: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !16, line: 2355, size: 576, elements: !633)
!633 = !{!634, !637, !638, !639, !640, !644, !645, !650, !651, !652, !653, !654, !655}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !632, file: !16, line: 2356, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !16, line: 2356, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !632, file: !16, line: 2357, baseType: !255, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !632, file: !16, line: 2358, baseType: !250, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !632, file: !16, line: 2359, baseType: !250, size: 32, offset: 160)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !632, file: !16, line: 2360, baseType: !641, size: 128, offset: 192)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 128, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 4)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !632, file: !16, line: 2364, baseType: !250, size: 32, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !632, file: !16, line: 2367, baseType: !646, size: 128, offset: 384)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !16, line: 2349, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !646, file: !16, line: 2351, baseType: !290, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !646, file: !16, line: 2352, baseType: !350, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !632, file: !16, line: 2371, baseType: !15, size: 32, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !632, file: !16, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !632, file: !16, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !632, file: !16, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !632, file: !16, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !632, file: !16, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !529, file: !530, line: 504, baseType: !657, size: 64, offset: 704)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !530, line: 504, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !529, file: !530, line: 507, baseType: !575, size: 64, offset: 768)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !529, file: !530, line: 510, baseType: !250, size: 32, offset: 832)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !529, file: !530, line: 513, baseType: !250, size: 32, offset: 864)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !529, file: !530, line: 516, baseType: !403, size: 32, offset: 896)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !529, file: !530, line: 519, baseType: !403, size: 32, offset: 928)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !529, file: !530, line: 522, baseType: !5, size: 32, offset: 960)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !529, file: !530, line: 523, baseType: !5, size: 32, offset: 992)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !529, file: !530, line: 528, baseType: !255, size: 64, offset: 1024)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !529, file: !530, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !529, file: !530, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !529, file: !530, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !529, file: !530, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !529, file: !530, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !529, file: !530, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !529, file: !530, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !529, file: !530, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !529, file: !530, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !529, file: !530, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !529, file: !530, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !529, file: !530, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !529, file: !530, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !529, file: !530, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !529, file: !530, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !529, file: !530, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !524, file: !21, line: 3254, baseType: !295, size: 64, offset: 1536)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !524, file: !21, line: 3257, baseType: !295, size: 64, offset: 1600)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !524, file: !21, line: 3258, baseType: !295, size: 64, offset: 1664)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !524, file: !21, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !524, file: !21, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !524, file: !21, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !524, file: !21, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !524, file: !21, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !524, file: !21, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !524, file: !21, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !524, file: !21, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !524, file: !21, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !524, file: !21, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !524, file: !21, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !524, file: !21, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !524, file: !21, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !524, file: !21, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !524, file: !21, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !524, file: !21, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !524, file: !21, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !524, file: !21, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !297, file: !21, line: 3394, baseType: !705, size: 1344)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !21, line: 2279, size: 1344, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !732, !733, !734, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !705, file: !21, line: 2280, baseType: !333, size: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !705, file: !21, line: 2281, baseType: !295, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !705, file: !21, line: 2282, baseType: !295, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !705, file: !21, line: 2283, baseType: !295, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !705, file: !21, line: 2284, baseType: !295, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !705, file: !21, line: 2285, baseType: !5, size: 32, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !705, file: !21, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !705, file: !21, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !705, file: !21, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !705, file: !21, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !705, file: !21, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !705, file: !21, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !705, file: !21, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !705, file: !21, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !705, file: !21, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !705, file: !21, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !705, file: !21, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !705, file: !21, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !705, file: !21, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !705, file: !21, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !705, file: !21, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !705, file: !21, line: 2305, baseType: !5, size: 32, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !705, file: !21, line: 2306, baseType: !730, size: 32, offset: 544)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !731, line: 31, baseType: !250)
!731 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !705, file: !21, line: 2307, baseType: !295, size: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !705, file: !21, line: 2308, baseType: !295, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !705, file: !21, line: 2314, baseType: !735, size: 64, offset: 704)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !21, line: 2309, size: 64, elements: !736)
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !735, file: !21, line: 2310, baseType: !250, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !735, file: !21, line: 2311, baseType: !255, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !735, file: !21, line: 2312, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !21, line: 2277, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !705, file: !21, line: 2315, baseType: !295, size: 64, offset: 768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !705, file: !21, line: 2316, baseType: !295, size: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !705, file: !21, line: 2317, baseType: !295, size: 64, offset: 896)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !705, file: !21, line: 2318, baseType: !295, size: 64, offset: 960)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !705, file: !21, line: 2319, baseType: !295, size: 64, offset: 1024)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !705, file: !21, line: 2320, baseType: !295, size: 64, offset: 1088)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !705, file: !21, line: 2321, baseType: !295, size: 64, offset: 1152)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !705, file: !21, line: 2322, baseType: !295, size: 64, offset: 1216)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !705, file: !21, line: 2324, baseType: !751, size: 64, offset: 1280)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !21, line: 2324, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !297, file: !21, line: 3395, baseType: !754, size: 320)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !21, line: 1469, size: 320, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !754, file: !21, line: 1470, baseType: !333, size: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !754, file: !21, line: 1471, baseType: !295, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !754, file: !21, line: 1472, baseType: !295, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !297, file: !21, line: 3396, baseType: !760, size: 320)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !21, line: 1482, size: 320, elements: !761)
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !760, file: !21, line: 1483, baseType: !333, size: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !760, file: !21, line: 1484, baseType: !250, size: 32, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !760, file: !21, line: 1485, baseType: !765, size: 64, offset: 256)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 64, elements: !377)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !297, file: !21, line: 3397, baseType: !767, size: 384)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !21, line: 1829, size: 384, elements: !768)
!768 = !{!769, !770, !771, !772}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !767, file: !21, line: 1830, baseType: !333, size: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !767, file: !21, line: 1831, baseType: !403, size: 32, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !767, file: !21, line: 1832, baseType: !295, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !767, file: !21, line: 1835, baseType: !765, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !297, file: !21, line: 3398, baseType: !774, size: 704)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !21, line: 1898, size: 704, elements: !775)
!775 = !{!776, !777, !778, !782, !783, !786}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !774, file: !21, line: 1899, baseType: !333, size: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !774, file: !21, line: 1902, baseType: !295, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !774, file: !21, line: 1905, baseType: !779, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !259, line: 58, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !259, line: 57, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !774, file: !21, line: 1908, baseType: !5, size: 32, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !774, file: !21, line: 1911, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !21, line: 1876, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !774, file: !21, line: 1914, baseType: !787, size: 256, offset: 448)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !21, line: 1883, size: 256, elements: !788)
!788 = !{!789, !791, !792, !797}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !787, file: !21, line: 1884, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !787, file: !21, line: 1885, baseType: !790, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !787, file: !21, line: 1891, baseType: !793, size: 64, offset: 128)
!793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !21, line: 1891, size: 64, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !793, file: !21, line: 1891, baseType: !779, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !793, file: !21, line: 1891, baseType: !295, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !787, file: !21, line: 1892, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !297, file: !21, line: 3399, baseType: !800, size: 704)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !21, line: 2008, size: 704, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !819, !820, !821, !822, !823}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !800, file: !21, line: 2009, baseType: !333, size: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !800, file: !21, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !800, file: !21, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !800, file: !21, line: 2014, baseType: !403, size: 32, offset: 224)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !800, file: !21, line: 2016, baseType: !295, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !800, file: !21, line: 2017, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !21, line: 183, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !21, line: 183, size: 128, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !810, file: !21, line: 183, baseType: !813, size: 128)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !21, line: 182, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !21, line: 182, size: 128, elements: !815)
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !814, file: !21, line: 182, baseType: !5, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !814, file: !21, line: 182, baseType: !5, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !814, file: !21, line: 182, baseType: !765, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !800, file: !21, line: 2019, baseType: !295, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !800, file: !21, line: 2020, baseType: !295, size: 64, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !800, file: !21, line: 2021, baseType: !295, size: 64, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !800, file: !21, line: 2022, baseType: !295, size: 64, offset: 576)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !800, file: !21, line: 2023, baseType: !295, size: 64, offset: 640)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !297, file: !21, line: 3400, baseType: !825, size: 832)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !21, line: 2430, size: 832, elements: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !825, file: !21, line: 2431, baseType: !333, size: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !825, file: !21, line: 2433, baseType: !295, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !825, file: !21, line: 2434, baseType: !295, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !825, file: !21, line: 2435, baseType: !295, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !825, file: !21, line: 2436, baseType: !295, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !825, file: !21, line: 2437, baseType: !808, size: 64, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !825, file: !21, line: 2438, baseType: !295, size: 64, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !825, file: !21, line: 2440, baseType: !295, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !825, file: !21, line: 2441, baseType: !295, size: 64, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !825, file: !21, line: 2443, baseType: !837, size: 128, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !21, line: 182, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !21, line: 182, size: 128, elements: !839)
!839 = !{!840}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !838, file: !21, line: 182, baseType: !813, size: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !297, file: !21, line: 3401, baseType: !842, size: 320)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !21, line: 3327, size: 320, elements: !843)
!843 = !{!844, !845, !852}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !842, file: !21, line: 3329, baseType: !333, size: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !842, file: !21, line: 3330, baseType: !846, size: 64, offset: 192)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !21, line: 3320, size: 192, elements: !848)
!848 = !{!849, !850, !851}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !847, file: !21, line: 3322, baseType: !846, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !847, file: !21, line: 3323, baseType: !846, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !847, file: !21, line: 3324, baseType: !295, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !842, file: !21, line: 3331, baseType: !846, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !297, file: !21, line: 3402, baseType: !854, size: 256)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !21, line: 1540, size: 256, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !854, file: !21, line: 1541, baseType: !333, size: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !854, file: !21, line: 1542, baseType: !858, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !21, line: 1538, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !21, line: 1538, size: 192, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !860, file: !21, line: 1538, baseType: !863, size: 192)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !21, line: 1537, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !21, line: 1537, size: 192, elements: !865)
!865 = !{!866, !867, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !864, file: !21, line: 1537, baseType: !5, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !864, file: !21, line: 1537, baseType: !5, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !864, file: !21, line: 1537, baseType: !869, size: 128, offset: 64)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 128, elements: !377)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !21, line: 1535, baseType: !871)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !21, line: 1532, size: 128, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !871, file: !21, line: 1533, baseType: !295, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !871, file: !21, line: 1534, baseType: !295, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !297, file: !21, line: 3403, baseType: !876, size: 512)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !21, line: 1938, size: 512, elements: !877)
!877 = !{!878, !879, !880, !881, !887, !888, !889}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !876, file: !21, line: 1939, baseType: !333, size: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !876, file: !21, line: 1940, baseType: !403, size: 32, offset: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !876, file: !21, line: 1941, baseType: !20, size: 32, offset: 224)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !876, file: !21, line: 1946, baseType: !882, size: 32, offset: 256)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !21, line: 1942, size: 32, elements: !883)
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !882, file: !21, line: 1943, baseType: !39, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !882, file: !21, line: 1944, baseType: !46, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !882, file: !21, line: 1945, baseType: !53, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !876, file: !21, line: 1950, baseType: !286, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !876, file: !21, line: 1951, baseType: !286, size: 64, offset: 384)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !876, file: !21, line: 1953, baseType: !765, size: 64, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !297, file: !21, line: 3404, baseType: !891, size: 1664)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !21, line: 3337, size: 1664, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !891, file: !21, line: 3338, baseType: !333, size: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !891, file: !21, line: 3341, baseType: !895, size: 1472, offset: 192)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !896, line: 410, size: 1472, elements: !897)
!896 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!897 = !{!898, !899, !900, !901, !902, !903, !904, !905, !906, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !895, file: !896, line: 412, baseType: !250, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !895, file: !896, line: 413, baseType: !250, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !895, file: !896, line: 414, baseType: !250, size: 32, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !895, file: !896, line: 415, baseType: !250, size: 32, offset: 96)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !895, file: !896, line: 416, baseType: !250, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !895, file: !896, line: 417, baseType: !250, size: 32, offset: 160)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !895, file: !896, line: 418, baseType: !249, size: 8, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !895, file: !896, line: 419, baseType: !249, size: 8, offset: 200)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !895, file: !896, line: 420, baseType: !907, size: 8, offset: 208)
!907 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !895, file: !896, line: 421, baseType: !907, size: 8, offset: 216)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !895, file: !896, line: 422, baseType: !907, size: 8, offset: 224)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !895, file: !896, line: 423, baseType: !907, size: 8, offset: 232)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !895, file: !896, line: 424, baseType: !907, size: 8, offset: 240)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !895, file: !896, line: 425, baseType: !907, size: 8, offset: 248)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !895, file: !896, line: 426, baseType: !907, size: 8, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !895, file: !896, line: 427, baseType: !907, size: 8, offset: 264)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !895, file: !896, line: 428, baseType: !907, size: 8, offset: 272)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !895, file: !896, line: 429, baseType: !907, size: 8, offset: 280)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !895, file: !896, line: 430, baseType: !907, size: 8, offset: 288)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !895, file: !896, line: 431, baseType: !907, size: 8, offset: 296)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !895, file: !896, line: 432, baseType: !907, size: 8, offset: 304)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !895, file: !896, line: 433, baseType: !907, size: 8, offset: 312)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !895, file: !896, line: 434, baseType: !907, size: 8, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !895, file: !896, line: 435, baseType: !907, size: 8, offset: 328)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !895, file: !896, line: 436, baseType: !907, size: 8, offset: 336)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !895, file: !896, line: 437, baseType: !907, size: 8, offset: 344)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !895, file: !896, line: 438, baseType: !907, size: 8, offset: 352)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !895, file: !896, line: 439, baseType: !907, size: 8, offset: 360)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !895, file: !896, line: 440, baseType: !907, size: 8, offset: 368)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !895, file: !896, line: 441, baseType: !907, size: 8, offset: 376)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !895, file: !896, line: 442, baseType: !907, size: 8, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !895, file: !896, line: 443, baseType: !907, size: 8, offset: 392)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !895, file: !896, line: 444, baseType: !907, size: 8, offset: 400)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !895, file: !896, line: 445, baseType: !907, size: 8, offset: 408)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !895, file: !896, line: 446, baseType: !907, size: 8, offset: 416)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !895, file: !896, line: 447, baseType: !907, size: 8, offset: 424)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !895, file: !896, line: 448, baseType: !907, size: 8, offset: 432)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !895, file: !896, line: 449, baseType: !907, size: 8, offset: 440)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !895, file: !896, line: 450, baseType: !907, size: 8, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !895, file: !896, line: 451, baseType: !907, size: 8, offset: 456)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !895, file: !896, line: 452, baseType: !907, size: 8, offset: 464)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !895, file: !896, line: 453, baseType: !907, size: 8, offset: 472)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !895, file: !896, line: 454, baseType: !907, size: 8, offset: 480)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !895, file: !896, line: 455, baseType: !907, size: 8, offset: 488)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !895, file: !896, line: 456, baseType: !907, size: 8, offset: 496)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !895, file: !896, line: 457, baseType: !907, size: 8, offset: 504)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !895, file: !896, line: 458, baseType: !907, size: 8, offset: 512)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !895, file: !896, line: 459, baseType: !907, size: 8, offset: 520)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !895, file: !896, line: 460, baseType: !907, size: 8, offset: 528)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !895, file: !896, line: 461, baseType: !907, size: 8, offset: 536)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !895, file: !896, line: 462, baseType: !907, size: 8, offset: 544)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !895, file: !896, line: 463, baseType: !907, size: 8, offset: 552)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !895, file: !896, line: 464, baseType: !907, size: 8, offset: 560)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !895, file: !896, line: 465, baseType: !907, size: 8, offset: 568)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !895, file: !896, line: 466, baseType: !907, size: 8, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !895, file: !896, line: 467, baseType: !907, size: 8, offset: 584)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !895, file: !896, line: 468, baseType: !907, size: 8, offset: 592)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !895, file: !896, line: 469, baseType: !907, size: 8, offset: 600)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !895, file: !896, line: 470, baseType: !907, size: 8, offset: 608)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !895, file: !896, line: 471, baseType: !907, size: 8, offset: 616)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !895, file: !896, line: 472, baseType: !907, size: 8, offset: 624)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !895, file: !896, line: 473, baseType: !907, size: 8, offset: 632)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !895, file: !896, line: 474, baseType: !907, size: 8, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !895, file: !896, line: 475, baseType: !907, size: 8, offset: 648)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !895, file: !896, line: 476, baseType: !907, size: 8, offset: 656)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !895, file: !896, line: 477, baseType: !907, size: 8, offset: 664)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !895, file: !896, line: 478, baseType: !907, size: 8, offset: 672)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !895, file: !896, line: 479, baseType: !907, size: 8, offset: 680)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !895, file: !896, line: 480, baseType: !907, size: 8, offset: 688)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !895, file: !896, line: 481, baseType: !907, size: 8, offset: 696)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !895, file: !896, line: 482, baseType: !907, size: 8, offset: 704)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !895, file: !896, line: 483, baseType: !907, size: 8, offset: 712)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !895, file: !896, line: 484, baseType: !907, size: 8, offset: 720)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !895, file: !896, line: 485, baseType: !907, size: 8, offset: 728)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !895, file: !896, line: 486, baseType: !907, size: 8, offset: 736)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !895, file: !896, line: 487, baseType: !907, size: 8, offset: 744)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !895, file: !896, line: 488, baseType: !907, size: 8, offset: 752)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !895, file: !896, line: 489, baseType: !907, size: 8, offset: 760)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !895, file: !896, line: 490, baseType: !907, size: 8, offset: 768)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !895, file: !896, line: 491, baseType: !907, size: 8, offset: 776)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !895, file: !896, line: 492, baseType: !907, size: 8, offset: 784)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !895, file: !896, line: 493, baseType: !907, size: 8, offset: 792)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !895, file: !896, line: 494, baseType: !907, size: 8, offset: 800)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !895, file: !896, line: 495, baseType: !907, size: 8, offset: 808)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !895, file: !896, line: 496, baseType: !907, size: 8, offset: 816)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !895, file: !896, line: 497, baseType: !907, size: 8, offset: 824)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !895, file: !896, line: 498, baseType: !907, size: 8, offset: 832)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !895, file: !896, line: 499, baseType: !907, size: 8, offset: 840)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !895, file: !896, line: 500, baseType: !907, size: 8, offset: 848)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !895, file: !896, line: 501, baseType: !907, size: 8, offset: 856)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !895, file: !896, line: 502, baseType: !907, size: 8, offset: 864)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !895, file: !896, line: 503, baseType: !907, size: 8, offset: 872)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !895, file: !896, line: 504, baseType: !907, size: 8, offset: 880)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !895, file: !896, line: 505, baseType: !907, size: 8, offset: 888)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !895, file: !896, line: 506, baseType: !907, size: 8, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !895, file: !896, line: 507, baseType: !907, size: 8, offset: 904)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !895, file: !896, line: 508, baseType: !907, size: 8, offset: 912)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !895, file: !896, line: 509, baseType: !907, size: 8, offset: 920)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !895, file: !896, line: 510, baseType: !907, size: 8, offset: 928)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !895, file: !896, line: 511, baseType: !907, size: 8, offset: 936)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !895, file: !896, line: 512, baseType: !907, size: 8, offset: 944)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !895, file: !896, line: 513, baseType: !907, size: 8, offset: 952)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !895, file: !896, line: 514, baseType: !907, size: 8, offset: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !895, file: !896, line: 515, baseType: !907, size: 8, offset: 968)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !895, file: !896, line: 516, baseType: !907, size: 8, offset: 976)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !895, file: !896, line: 517, baseType: !907, size: 8, offset: 984)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !895, file: !896, line: 518, baseType: !907, size: 8, offset: 992)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !895, file: !896, line: 519, baseType: !907, size: 8, offset: 1000)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !895, file: !896, line: 520, baseType: !907, size: 8, offset: 1008)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !895, file: !896, line: 521, baseType: !907, size: 8, offset: 1016)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !895, file: !896, line: 522, baseType: !907, size: 8, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !895, file: !896, line: 523, baseType: !907, size: 8, offset: 1032)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !895, file: !896, line: 524, baseType: !907, size: 8, offset: 1040)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !895, file: !896, line: 525, baseType: !907, size: 8, offset: 1048)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !895, file: !896, line: 526, baseType: !907, size: 8, offset: 1056)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !895, file: !896, line: 527, baseType: !907, size: 8, offset: 1064)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !895, file: !896, line: 528, baseType: !907, size: 8, offset: 1072)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !895, file: !896, line: 529, baseType: !907, size: 8, offset: 1080)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !895, file: !896, line: 530, baseType: !907, size: 8, offset: 1088)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !895, file: !896, line: 531, baseType: !907, size: 8, offset: 1096)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !895, file: !896, line: 532, baseType: !907, size: 8, offset: 1104)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !895, file: !896, line: 533, baseType: !907, size: 8, offset: 1112)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !895, file: !896, line: 534, baseType: !907, size: 8, offset: 1120)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !895, file: !896, line: 535, baseType: !907, size: 8, offset: 1128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !895, file: !896, line: 536, baseType: !907, size: 8, offset: 1136)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !895, file: !896, line: 537, baseType: !907, size: 8, offset: 1144)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !895, file: !896, line: 538, baseType: !907, size: 8, offset: 1152)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !895, file: !896, line: 539, baseType: !907, size: 8, offset: 1160)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !895, file: !896, line: 540, baseType: !907, size: 8, offset: 1168)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !895, file: !896, line: 541, baseType: !907, size: 8, offset: 1176)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !895, file: !896, line: 542, baseType: !907, size: 8, offset: 1184)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !895, file: !896, line: 543, baseType: !907, size: 8, offset: 1192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !895, file: !896, line: 544, baseType: !907, size: 8, offset: 1200)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !895, file: !896, line: 545, baseType: !907, size: 8, offset: 1208)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !895, file: !896, line: 546, baseType: !907, size: 8, offset: 1216)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !895, file: !896, line: 547, baseType: !907, size: 8, offset: 1224)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !895, file: !896, line: 548, baseType: !907, size: 8, offset: 1232)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !895, file: !896, line: 549, baseType: !907, size: 8, offset: 1240)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !895, file: !896, line: 550, baseType: !907, size: 8, offset: 1248)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !895, file: !896, line: 551, baseType: !907, size: 8, offset: 1256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !895, file: !896, line: 552, baseType: !907, size: 8, offset: 1264)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !895, file: !896, line: 553, baseType: !907, size: 8, offset: 1272)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !895, file: !896, line: 554, baseType: !907, size: 8, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !895, file: !896, line: 555, baseType: !907, size: 8, offset: 1288)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !895, file: !896, line: 556, baseType: !907, size: 8, offset: 1296)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !895, file: !896, line: 557, baseType: !907, size: 8, offset: 1304)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !895, file: !896, line: 558, baseType: !907, size: 8, offset: 1312)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !895, file: !896, line: 559, baseType: !907, size: 8, offset: 1320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !895, file: !896, line: 560, baseType: !907, size: 8, offset: 1328)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !895, file: !896, line: 561, baseType: !907, size: 8, offset: 1336)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !895, file: !896, line: 562, baseType: !907, size: 8, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !895, file: !896, line: 563, baseType: !907, size: 8, offset: 1352)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !895, file: !896, line: 564, baseType: !907, size: 8, offset: 1360)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !895, file: !896, line: 565, baseType: !907, size: 8, offset: 1368)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !895, file: !896, line: 566, baseType: !907, size: 8, offset: 1376)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !895, file: !896, line: 567, baseType: !907, size: 8, offset: 1384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !895, file: !896, line: 568, baseType: !907, size: 8, offset: 1392)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !895, file: !896, line: 569, baseType: !907, size: 8, offset: 1400)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !895, file: !896, line: 570, baseType: !907, size: 8, offset: 1408)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !895, file: !896, line: 571, baseType: !907, size: 8, offset: 1416)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !895, file: !896, line: 572, baseType: !907, size: 8, offset: 1424)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !895, file: !896, line: 573, baseType: !907, size: 8, offset: 1432)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !895, file: !896, line: 574, baseType: !907, size: 8, offset: 1440)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !297, file: !21, line: 3405, baseType: !1063, size: 384)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !21, line: 3352, size: 384, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1063, file: !21, line: 3353, baseType: !333, size: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1063, file: !21, line: 3356, baseType: !1067, size: 192, offset: 192)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !896, line: 578, size: 192, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1067, file: !896, line: 580, baseType: !250, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1067, file: !896, line: 581, baseType: !250, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1067, file: !896, line: 582, baseType: !250, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1067, file: !896, line: 583, baseType: !250, size: 32, offset: 96)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1067, file: !896, line: 584, baseType: !249, size: 8, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1067, file: !896, line: 585, baseType: !249, size: 8, offset: 136)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1067, file: !896, line: 586, baseType: !249, size: 8, offset: 144)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1067, file: !896, line: 587, baseType: !249, size: 8, offset: 152)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1067, file: !896, line: 588, baseType: !249, size: 8, offset: 160)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1067, file: !896, line: 589, baseType: !249, size: 8, offset: 168)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1067, file: !896, line: 590, baseType: !249, size: 8, offset: 176)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !278, file: !4, line: 138, baseType: !403, size: 32, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !278, file: !4, line: 142, baseType: !5, size: 32, offset: 352)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !278, file: !4, line: 144, baseType: !250, size: 32, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !278, file: !4, line: 145, baseType: !250, size: 32, offset: 416)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !278, file: !4, line: 146, baseType: !1085, size: 64, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !4, line: 119, baseType: !350)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !261, file: !4, line: 220, baseType: !264, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !261, file: !4, line: 223, baseType: !254, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !261, file: !4, line: 226, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !4, line: 185, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !261, file: !4, line: 229, baseType: !1092, size: 128, offset: 256)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 128, elements: !561)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !4, line: 229, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !261, file: !4, line: 232, baseType: !260, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !261, file: !4, line: 233, baseType: !260, size: 64, offset: 448)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !261, file: !4, line: 238, baseType: !1098, size: 64, offset: 512)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !4, line: 235, size: 64, elements: !1099)
!1099 = !{!1100, !1106}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1098, file: !4, line: 236, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !4, line: 273, size: 128, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1102, file: !4, line: 275, baseType: !286, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1102, file: !4, line: 278, baseType: !286, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1098, file: !4, line: 237, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !4, line: 259, size: 320, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1108, file: !4, line: 261, baseType: !290, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1108, file: !4, line: 262, baseType: !290, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1108, file: !4, line: 266, baseType: !290, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1108, file: !4, line: 267, baseType: !290, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1108, file: !4, line: 270, baseType: !250, size: 32, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !261, file: !4, line: 241, baseType: !1085, size: 64, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !261, file: !4, line: 244, baseType: !250, size: 32, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !261, file: !4, line: 247, baseType: !250, size: 32, offset: 672)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !261, file: !4, line: 250, baseType: !250, size: 32, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !261, file: !4, line: 253, baseType: !250, size: 32, offset: 736)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !4, line: 256, baseType: !250, size: 32, offset: 768)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_heap", file: !1123, line: 23, baseType: !1124)
!1123 = !DIFile(filename: "./domwalk.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_heap", file: !1123, line: 23, size: 128, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1124, file: !1123, line: 23, baseType: !1127, size: 128)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_void_p_base", file: !1123, line: 22, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_void_p_base", file: !1123, line: 22, size: 128, elements: !1129)
!1129 = !{!1130, !1131, !1132}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1128, file: !1123, line: 22, baseType: !5, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1128, file: !1123, line: 22, baseType: !5, size: 32, offset: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1128, file: !1123, line: 22, baseType: !1133, size: 64, offset: 64)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 64, elements: !377)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "void_p", file: !1123, line: 21, baseType: !254)
!1135 = !{i32 2, !"Dwarf Version", i32 4}
!1136 = !{i32 2, !"Debug Info Version", i32 3}
!1137 = !{i32 1, !"wchar_size", i32 4}
!1138 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1139 = distinct !DISubprogram(name: "vprintf", scope: !1140, file: !1140, line: 39, type: !1141, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1151)
!1140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!250, !1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !255)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1145, file: !1, baseType: !5, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1145, file: !1, baseType: !5, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1145, file: !1, baseType: !254, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1145, file: !1, baseType: !254, size: 64, offset: 128)
!1151 = !{!1152, !1153}
!1152 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1139, file: !1140, line: 39, type: !1143)
!1153 = !DILocalVariable(name: "__arg", arg: 2, scope: !1139, file: !1140, line: 39, type: !1144)
!1154 = !DILocation(line: 0, scope: !1139)
!1155 = !DILocation(line: 41, column: 20, scope: !1139)
!1156 = !DILocation(line: 41, column: 10, scope: !1139)
!1157 = !DILocation(line: 41, column: 3, scope: !1139)
!1158 = distinct !DISubprogram(name: "getchar", scope: !1140, file: !1140, line: 47, type: !1159, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1161)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!250}
!1161 = !{}
!1162 = !DILocation(line: 49, column: 16, scope: !1158)
!1163 = !DILocation(line: 49, column: 10, scope: !1158)
!1164 = !DILocation(line: 49, column: 3, scope: !1158)
!1165 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1140, file: !1140, line: 56, type: !1166, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1219)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!250, !1168}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1170, line: 7, baseType: !1171)
!1170 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1172, line: 49, size: 1728, elements: !1173)
!1172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1189, !1191, !1192, !1193, !1196, !1198, !1199, !1200, !1203, !1205, !1208, !1211, !1212, !1213, !1214, !1215}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1171, file: !1172, line: 51, baseType: !250, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1171, file: !1172, line: 54, baseType: !252, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1171, file: !1172, line: 55, baseType: !252, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1171, file: !1172, line: 56, baseType: !252, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1171, file: !1172, line: 57, baseType: !252, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1171, file: !1172, line: 58, baseType: !252, size: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1171, file: !1172, line: 59, baseType: !252, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1171, file: !1172, line: 60, baseType: !252, size: 64, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1171, file: !1172, line: 61, baseType: !252, size: 64, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1171, file: !1172, line: 64, baseType: !252, size: 64, offset: 576)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1171, file: !1172, line: 65, baseType: !252, size: 64, offset: 640)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1171, file: !1172, line: 66, baseType: !252, size: 64, offset: 704)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1171, file: !1172, line: 68, baseType: !1187, size: 64, offset: 768)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1172, line: 36, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1171, file: !1172, line: 70, baseType: !1190, size: 64, offset: 832)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1171, file: !1172, line: 72, baseType: !250, size: 32, offset: 896)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1171, file: !1172, line: 73, baseType: !250, size: 32, offset: 928)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1171, file: !1172, line: 74, baseType: !1194, size: 64, offset: 960)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1195, line: 152, baseType: !350)
!1195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1171, file: !1172, line: 77, baseType: !1197, size: 16, offset: 1024)
!1197 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1171, file: !1172, line: 78, baseType: !907, size: 8, offset: 1040)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1171, file: !1172, line: 79, baseType: !376, size: 8, offset: 1048)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1171, file: !1172, line: 81, baseType: !1201, size: 64, offset: 1088)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1172, line: 43, baseType: null)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1171, file: !1172, line: 89, baseType: !1204, size: 64, offset: 1152)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1195, line: 153, baseType: !350)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1171, file: !1172, line: 91, baseType: !1206, size: 64, offset: 1216)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1172, line: 37, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1171, file: !1172, line: 92, baseType: !1209, size: 64, offset: 1280)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1172, line: 38, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1171, file: !1172, line: 93, baseType: !1190, size: 64, offset: 1344)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1171, file: !1172, line: 94, baseType: !254, size: 64, offset: 1408)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1171, file: !1172, line: 95, baseType: !601, size: 64, offset: 1472)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1171, file: !1172, line: 96, baseType: !250, size: 32, offset: 1536)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1171, file: !1172, line: 98, baseType: !1216, size: 160, offset: 1568)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 160, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 20)
!1219 = !{!1220}
!1220 = !DILocalVariable(name: "__fp", arg: 1, scope: !1165, file: !1140, line: 56, type: !1168)
!1221 = !DILocation(line: 0, scope: !1165)
!1222 = !DILocation(line: 58, column: 10, scope: !1165)
!1223 = !DILocation(line: 58, column: 3, scope: !1165)
!1224 = distinct !DISubprogram(name: "getc_unlocked", scope: !1140, file: !1140, line: 66, type: !1166, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1225)
!1225 = !{!1226}
!1226 = !DILocalVariable(name: "__fp", arg: 1, scope: !1224, file: !1140, line: 66, type: !1168)
!1227 = !DILocation(line: 0, scope: !1224)
!1228 = !DILocation(line: 68, column: 10, scope: !1224)
!1229 = !DILocation(line: 68, column: 3, scope: !1224)
!1230 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1140, file: !1140, line: 73, type: !1159, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1161)
!1231 = !DILocation(line: 75, column: 10, scope: !1230)
!1232 = !DILocation(line: 75, column: 3, scope: !1230)
!1233 = distinct !DISubprogram(name: "putchar", scope: !1140, file: !1140, line: 82, type: !1234, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!250, !250}
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "__c", arg: 1, scope: !1233, file: !1140, line: 82, type: !250)
!1238 = !DILocation(line: 0, scope: !1233)
!1239 = !DILocation(line: 84, column: 21, scope: !1233)
!1240 = !DILocation(line: 84, column: 10, scope: !1233)
!1241 = !DILocation(line: 84, column: 3, scope: !1233)
!1242 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1140, file: !1140, line: 91, type: !1243, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1245)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!250, !250, !1168}
!1245 = !{!1246, !1247}
!1246 = !DILocalVariable(name: "__c", arg: 1, scope: !1242, file: !1140, line: 91, type: !250)
!1247 = !DILocalVariable(name: "__stream", arg: 2, scope: !1242, file: !1140, line: 91, type: !1168)
!1248 = !DILocation(line: 0, scope: !1242)
!1249 = !DILocation(line: 93, column: 10, scope: !1242)
!1250 = !DILocation(line: 93, column: 3, scope: !1242)
!1251 = distinct !DISubprogram(name: "putc_unlocked", scope: !1140, file: !1140, line: 101, type: !1243, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1252)
!1252 = !{!1253, !1254}
!1253 = !DILocalVariable(name: "__c", arg: 1, scope: !1251, file: !1140, line: 101, type: !250)
!1254 = !DILocalVariable(name: "__stream", arg: 2, scope: !1251, file: !1140, line: 101, type: !1168)
!1255 = !DILocation(line: 0, scope: !1251)
!1256 = !DILocation(line: 103, column: 10, scope: !1251)
!1257 = !DILocation(line: 103, column: 3, scope: !1251)
!1258 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1140, file: !1140, line: 108, type: !1234, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1259)
!1259 = !{!1260}
!1260 = !DILocalVariable(name: "__c", arg: 1, scope: !1258, file: !1140, line: 108, type: !250)
!1261 = !DILocation(line: 0, scope: !1258)
!1262 = !DILocation(line: 110, column: 10, scope: !1258)
!1263 = !DILocation(line: 110, column: 3, scope: !1258)
!1264 = distinct !DISubprogram(name: "getline", scope: !1140, file: !1140, line: 118, type: !1265, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1269)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!1267, !251, !1268, !1168}
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1195, line: 193, baseType: !350)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1269 = !{!1270, !1271, !1272}
!1270 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1264, file: !1140, line: 118, type: !251)
!1271 = !DILocalVariable(name: "__n", arg: 2, scope: !1264, file: !1140, line: 118, type: !1268)
!1272 = !DILocalVariable(name: "__stream", arg: 3, scope: !1264, file: !1140, line: 118, type: !1168)
!1273 = !DILocation(line: 0, scope: !1264)
!1274 = !DILocation(line: 120, column: 10, scope: !1264)
!1275 = !DILocation(line: 120, column: 3, scope: !1264)
!1276 = distinct !DISubprogram(name: "feof_unlocked", scope: !1140, file: !1140, line: 128, type: !1166, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1277)
!1277 = !{!1278}
!1278 = !DILocalVariable(name: "__stream", arg: 1, scope: !1276, file: !1140, line: 128, type: !1168)
!1279 = !DILocation(line: 0, scope: !1276)
!1280 = !DILocation(line: 130, column: 10, scope: !1276)
!1281 = !DILocation(line: 130, column: 3, scope: !1276)
!1282 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1140, file: !1140, line: 135, type: !1166, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1283)
!1283 = !{!1284}
!1284 = !DILocalVariable(name: "__stream", arg: 1, scope: !1282, file: !1140, line: 135, type: !1168)
!1285 = !DILocation(line: 0, scope: !1282)
!1286 = !DILocation(line: 137, column: 10, scope: !1282)
!1287 = !DILocation(line: 137, column: 3, scope: !1282)
!1288 = distinct !DISubprogram(name: "tolower", scope: !1289, file: !1289, line: 207, type: !1234, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1290)
!1289 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1290 = !{!1291}
!1291 = !DILocalVariable(name: "__c", arg: 1, scope: !1288, file: !1289, line: 207, type: !250)
!1292 = !DILocation(line: 0, scope: !1288)
!1293 = !DILocation(line: 209, column: 22, scope: !1288)
!1294 = !DILocation(line: 209, column: 39, scope: !1288)
!1295 = !DILocation(line: 209, column: 38, scope: !1288)
!1296 = !DILocation(line: 209, column: 37, scope: !1288)
!1297 = !DILocation(line: 209, column: 10, scope: !1288)
!1298 = !DILocation(line: 209, column: 3, scope: !1288)
!1299 = distinct !DISubprogram(name: "toupper", scope: !1289, file: !1289, line: 213, type: !1234, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1300)
!1300 = !{!1301}
!1301 = !DILocalVariable(name: "__c", arg: 1, scope: !1299, file: !1289, line: 213, type: !250)
!1302 = !DILocation(line: 0, scope: !1299)
!1303 = !DILocation(line: 215, column: 22, scope: !1299)
!1304 = !DILocation(line: 215, column: 39, scope: !1299)
!1305 = !DILocation(line: 215, column: 38, scope: !1299)
!1306 = !DILocation(line: 215, column: 37, scope: !1299)
!1307 = !DILocation(line: 215, column: 10, scope: !1299)
!1308 = !DILocation(line: 215, column: 3, scope: !1299)
!1309 = distinct !DISubprogram(name: "atoi", scope: !1310, file: !1310, line: 361, type: !1311, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1313)
!1310 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!250, !255}
!1313 = !{!1314}
!1314 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1309, file: !1310, line: 361, type: !255)
!1315 = !DILocation(line: 0, scope: !1309)
!1316 = !DILocation(line: 363, column: 16, scope: !1309)
!1317 = !DILocation(line: 363, column: 10, scope: !1309)
!1318 = !DILocation(line: 363, column: 3, scope: !1309)
!1319 = distinct !DISubprogram(name: "atol", scope: !1310, file: !1310, line: 366, type: !1320, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!350, !255}
!1322 = !{!1323}
!1323 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1319, file: !1310, line: 366, type: !255)
!1324 = !DILocation(line: 0, scope: !1319)
!1325 = !DILocation(line: 368, column: 10, scope: !1319)
!1326 = !DILocation(line: 368, column: 3, scope: !1319)
!1327 = distinct !DISubprogram(name: "atoll", scope: !1310, file: !1310, line: 373, type: !1328, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1331)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!1330, !255}
!1330 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1331 = !{!1332}
!1332 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1327, file: !1310, line: 373, type: !255)
!1333 = !DILocation(line: 0, scope: !1327)
!1334 = !DILocation(line: 375, column: 10, scope: !1327)
!1335 = !DILocation(line: 375, column: 3, scope: !1327)
!1336 = distinct !DISubprogram(name: "bsearch", scope: !1337, file: !1337, line: 20, type: !1338, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1341)
!1337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!254, !586, !586, !601, !601, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1310, line: 808, baseType: !590)
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1342 = !DILocalVariable(name: "__key", arg: 1, scope: !1336, file: !1337, line: 20, type: !586)
!1343 = !DILocalVariable(name: "__base", arg: 2, scope: !1336, file: !1337, line: 20, type: !586)
!1344 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1336, file: !1337, line: 20, type: !601)
!1345 = !DILocalVariable(name: "__size", arg: 4, scope: !1336, file: !1337, line: 20, type: !601)
!1346 = !DILocalVariable(name: "__compar", arg: 5, scope: !1336, file: !1337, line: 21, type: !1340)
!1347 = !DILocalVariable(name: "__l", scope: !1336, file: !1337, line: 23, type: !601)
!1348 = !DILocalVariable(name: "__u", scope: !1336, file: !1337, line: 23, type: !601)
!1349 = !DILocalVariable(name: "__idx", scope: !1336, file: !1337, line: 23, type: !601)
!1350 = !DILocalVariable(name: "__p", scope: !1336, file: !1337, line: 24, type: !586)
!1351 = !DILocalVariable(name: "__comparison", scope: !1336, file: !1337, line: 25, type: !250)
!1352 = !DILocation(line: 0, scope: !1336)
!1353 = !DILocation(line: 29, column: 3, scope: !1336)
!1354 = !DILocation(line: 27, column: 7, scope: !1336)
!1355 = !DILocation(line: 29, column: 14, scope: !1336)
!1356 = !DILocation(line: 31, column: 20, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1336, file: !1337, line: 30, column: 5)
!1358 = !DILocation(line: 31, column: 27, scope: !1357)
!1359 = !DILocation(line: 32, column: 56, scope: !1357)
!1360 = !DILocation(line: 32, column: 47, scope: !1357)
!1361 = !DILocation(line: 33, column: 22, scope: !1357)
!1362 = !DILocation(line: 34, column: 24, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1357, file: !1337, line: 34, column: 11)
!1364 = !DILocation(line: 34, column: 11, scope: !1357)
!1365 = !DILocation(line: 36, column: 29, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !1337, line: 36, column: 16)
!1367 = !DILocation(line: 36, column: 16, scope: !1363)
!1368 = !DILocation(line: 37, column: 14, scope: !1366)
!1369 = distinct !{!1369, !1353, !1370}
!1370 = !DILocation(line: 40, column: 5, scope: !1336)
!1371 = !DILocation(line: 43, column: 1, scope: !1336)
!1372 = distinct !DISubprogram(name: "atof", scope: !1373, file: !1373, line: 25, type: !1374, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1377)
!1373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1376, !255}
!1376 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1377 = !{!1378}
!1378 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1372, file: !1373, line: 25, type: !255)
!1379 = !DILocation(line: 0, scope: !1372)
!1380 = !DILocation(line: 27, column: 10, scope: !1372)
!1381 = !DILocation(line: 27, column: 3, scope: !1372)
!1382 = distinct !DISubprogram(name: "strtoimax", scope: !1383, file: !1383, line: 324, type: !1384, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1390)
!1383 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !1143, !1389, !250}
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1387, line: 101, baseType: !1388)
!1387 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1195, line: 72, baseType: !350)
!1389 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !251)
!1390 = !{!1391, !1392, !1393}
!1391 = !DILocalVariable(name: "nptr", arg: 1, scope: !1382, file: !1383, line: 324, type: !1143)
!1392 = !DILocalVariable(name: "endptr", arg: 2, scope: !1382, file: !1383, line: 324, type: !1389)
!1393 = !DILocalVariable(name: "base", arg: 3, scope: !1382, file: !1383, line: 324, type: !250)
!1394 = !DILocation(line: 0, scope: !1382)
!1395 = !DILocation(line: 327, column: 10, scope: !1382)
!1396 = !DILocation(line: 327, column: 3, scope: !1382)
!1397 = distinct !DISubprogram(name: "strtoumax", scope: !1383, file: !1383, line: 336, type: !1398, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1402)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!1400, !1143, !1389, !250}
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1387, line: 102, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1195, line: 73, baseType: !348)
!1402 = !{!1403, !1404, !1405}
!1403 = !DILocalVariable(name: "nptr", arg: 1, scope: !1397, file: !1383, line: 336, type: !1143)
!1404 = !DILocalVariable(name: "endptr", arg: 2, scope: !1397, file: !1383, line: 336, type: !1389)
!1405 = !DILocalVariable(name: "base", arg: 3, scope: !1397, file: !1383, line: 336, type: !250)
!1406 = !DILocation(line: 0, scope: !1397)
!1407 = !DILocation(line: 339, column: 10, scope: !1397)
!1408 = !DILocation(line: 339, column: 3, scope: !1397)
!1409 = distinct !DISubprogram(name: "wcstoimax", scope: !1383, file: !1383, line: 348, type: !1410, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1419)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!1386, !1412, !1416, !250}
!1412 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1383, line: 34, baseType: !250)
!1416 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1419 = !{!1420, !1421, !1422}
!1420 = !DILocalVariable(name: "nptr", arg: 1, scope: !1409, file: !1383, line: 348, type: !1412)
!1421 = !DILocalVariable(name: "endptr", arg: 2, scope: !1409, file: !1383, line: 348, type: !1416)
!1422 = !DILocalVariable(name: "base", arg: 3, scope: !1409, file: !1383, line: 348, type: !250)
!1423 = !DILocation(line: 0, scope: !1409)
!1424 = !DILocation(line: 351, column: 10, scope: !1409)
!1425 = !DILocation(line: 351, column: 3, scope: !1409)
!1426 = distinct !DISubprogram(name: "wcstoumax", scope: !1383, file: !1383, line: 362, type: !1427, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1429)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!1400, !1412, !1416, !250}
!1429 = !{!1430, !1431, !1432}
!1430 = !DILocalVariable(name: "nptr", arg: 1, scope: !1426, file: !1383, line: 362, type: !1412)
!1431 = !DILocalVariable(name: "endptr", arg: 2, scope: !1426, file: !1383, line: 362, type: !1416)
!1432 = !DILocalVariable(name: "base", arg: 3, scope: !1426, file: !1383, line: 362, type: !250)
!1433 = !DILocation(line: 0, scope: !1426)
!1434 = !DILocation(line: 365, column: 10, scope: !1426)
!1435 = !DILocation(line: 365, column: 3, scope: !1426)
!1436 = distinct !DISubprogram(name: "stat", scope: !1437, file: !1437, line: 453, type: !1438, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1477)
!1437 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!250, !255, !1440}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1442, line: 46, size: 1152, elements: !1443)
!1442 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1443 = !{!1444, !1446, !1448, !1450, !1452, !1454, !1456, !1457, !1458, !1459, !1461, !1463, !1471, !1472, !1473}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1441, file: !1442, line: 48, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1195, line: 145, baseType: !348)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1441, file: !1442, line: 53, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1195, line: 148, baseType: !348)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1441, file: !1442, line: 61, baseType: !1449, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1195, line: 151, baseType: !348)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1441, file: !1442, line: 62, baseType: !1451, size: 32, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1195, line: 150, baseType: !5)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1441, file: !1442, line: 64, baseType: !1453, size: 32, offset: 224)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1195, line: 146, baseType: !5)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1441, file: !1442, line: 65, baseType: !1455, size: 32, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1195, line: 147, baseType: !5)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1441, file: !1442, line: 67, baseType: !250, size: 32, offset: 288)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1441, file: !1442, line: 69, baseType: !1445, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1441, file: !1442, line: 74, baseType: !1194, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1441, file: !1442, line: 78, baseType: !1460, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1195, line: 174, baseType: !350)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1441, file: !1442, line: 80, baseType: !1462, size: 64, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1195, line: 179, baseType: !350)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1441, file: !1442, line: 91, baseType: !1464, size: 128, offset: 576)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1465, line: 10, size: 128, elements: !1466)
!1465 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1466 = !{!1467, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1464, file: !1465, line: 12, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1195, line: 160, baseType: !350)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1464, file: !1465, line: 16, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1195, line: 196, baseType: !350)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1441, file: !1442, line: 92, baseType: !1464, size: 128, offset: 704)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1441, file: !1442, line: 93, baseType: !1464, size: 128, offset: 832)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1441, file: !1442, line: 106, baseType: !1474, size: 192, offset: 960)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 192, elements: !1475)
!1475 = !{!1476}
!1476 = !DISubrange(count: 3)
!1477 = !{!1478, !1479}
!1478 = !DILocalVariable(name: "__path", arg: 1, scope: !1436, file: !1437, line: 453, type: !255)
!1479 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1436, file: !1437, line: 453, type: !1440)
!1480 = !DILocation(line: 0, scope: !1436)
!1481 = !DILocation(line: 455, column: 10, scope: !1436)
!1482 = !DILocation(line: 455, column: 3, scope: !1436)
!1483 = distinct !DISubprogram(name: "lstat", scope: !1437, file: !1437, line: 460, type: !1438, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1484)
!1484 = !{!1485, !1486}
!1485 = !DILocalVariable(name: "__path", arg: 1, scope: !1483, file: !1437, line: 460, type: !255)
!1486 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1483, file: !1437, line: 460, type: !1440)
!1487 = !DILocation(line: 0, scope: !1483)
!1488 = !DILocation(line: 462, column: 10, scope: !1483)
!1489 = !DILocation(line: 462, column: 3, scope: !1483)
!1490 = distinct !DISubprogram(name: "fstat", scope: !1437, file: !1437, line: 467, type: !1491, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!250, !250, !1440}
!1493 = !{!1494, !1495}
!1494 = !DILocalVariable(name: "__fd", arg: 1, scope: !1490, file: !1437, line: 467, type: !250)
!1495 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1490, file: !1437, line: 467, type: !1440)
!1496 = !DILocation(line: 0, scope: !1490)
!1497 = !DILocation(line: 469, column: 10, scope: !1490)
!1498 = !DILocation(line: 469, column: 3, scope: !1490)
!1499 = distinct !DISubprogram(name: "fstatat", scope: !1437, file: !1437, line: 474, type: !1500, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!250, !250, !255, !1440, !250}
!1502 = !{!1503, !1504, !1505, !1506}
!1503 = !DILocalVariable(name: "__fd", arg: 1, scope: !1499, file: !1437, line: 474, type: !250)
!1504 = !DILocalVariable(name: "__filename", arg: 2, scope: !1499, file: !1437, line: 474, type: !255)
!1505 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1499, file: !1437, line: 474, type: !1440)
!1506 = !DILocalVariable(name: "__flag", arg: 4, scope: !1499, file: !1437, line: 474, type: !250)
!1507 = !DILocation(line: 0, scope: !1499)
!1508 = !DILocation(line: 477, column: 10, scope: !1499)
!1509 = !DILocation(line: 477, column: 3, scope: !1499)
!1510 = distinct !DISubprogram(name: "mknod", scope: !1437, file: !1437, line: 483, type: !1511, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!250, !255, !1451, !1445}
!1513 = !{!1514, !1515, !1516}
!1514 = !DILocalVariable(name: "__path", arg: 1, scope: !1510, file: !1437, line: 483, type: !255)
!1515 = !DILocalVariable(name: "__mode", arg: 2, scope: !1510, file: !1437, line: 483, type: !1451)
!1516 = !DILocalVariable(name: "__dev", arg: 3, scope: !1510, file: !1437, line: 483, type: !1445)
!1517 = !DILocation(line: 0, scope: !1510)
!1518 = !DILocation(line: 485, column: 10, scope: !1510)
!1519 = !DILocation(line: 485, column: 3, scope: !1510)
!1520 = distinct !DISubprogram(name: "mknodat", scope: !1437, file: !1437, line: 491, type: !1521, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!250, !250, !255, !1451, !1445}
!1523 = !{!1524, !1525, !1526, !1527}
!1524 = !DILocalVariable(name: "__fd", arg: 1, scope: !1520, file: !1437, line: 491, type: !250)
!1525 = !DILocalVariable(name: "__path", arg: 2, scope: !1520, file: !1437, line: 491, type: !255)
!1526 = !DILocalVariable(name: "__mode", arg: 3, scope: !1520, file: !1437, line: 491, type: !1451)
!1527 = !DILocalVariable(name: "__dev", arg: 4, scope: !1520, file: !1437, line: 491, type: !1445)
!1528 = !DILocation(line: 0, scope: !1520)
!1529 = !DILocation(line: 494, column: 10, scope: !1520)
!1530 = !DILocation(line: 494, column: 3, scope: !1520)
!1531 = distinct !DISubprogram(name: "stat64", scope: !1437, file: !1437, line: 502, type: !1532, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1554)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!250, !255, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1442, line: 119, size: 1152, elements: !1536)
!1536 = !{!1537, !1538, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1550, !1551, !1552, !1553}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1535, file: !1442, line: 121, baseType: !1445, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1535, file: !1442, line: 123, baseType: !1539, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1195, line: 149, baseType: !348)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1535, file: !1442, line: 124, baseType: !1449, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1535, file: !1442, line: 125, baseType: !1451, size: 32, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1535, file: !1442, line: 132, baseType: !1453, size: 32, offset: 224)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1535, file: !1442, line: 133, baseType: !1455, size: 32, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1535, file: !1442, line: 135, baseType: !250, size: 32, offset: 288)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1535, file: !1442, line: 136, baseType: !1445, size: 64, offset: 320)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1535, file: !1442, line: 137, baseType: !1194, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1535, file: !1442, line: 143, baseType: !1460, size: 64, offset: 448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1535, file: !1442, line: 144, baseType: !1549, size: 64, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1195, line: 180, baseType: !350)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1535, file: !1442, line: 152, baseType: !1464, size: 128, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1535, file: !1442, line: 153, baseType: !1464, size: 128, offset: 704)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1535, file: !1442, line: 154, baseType: !1464, size: 128, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1535, file: !1442, line: 164, baseType: !1474, size: 192, offset: 960)
!1554 = !{!1555, !1556}
!1555 = !DILocalVariable(name: "__path", arg: 1, scope: !1531, file: !1437, line: 502, type: !255)
!1556 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1531, file: !1437, line: 502, type: !1534)
!1557 = !DILocation(line: 0, scope: !1531)
!1558 = !DILocation(line: 504, column: 10, scope: !1531)
!1559 = !DILocation(line: 504, column: 3, scope: !1531)
!1560 = distinct !DISubprogram(name: "lstat64", scope: !1437, file: !1437, line: 509, type: !1532, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1561)
!1561 = !{!1562, !1563}
!1562 = !DILocalVariable(name: "__path", arg: 1, scope: !1560, file: !1437, line: 509, type: !255)
!1563 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1560, file: !1437, line: 509, type: !1534)
!1564 = !DILocation(line: 0, scope: !1560)
!1565 = !DILocation(line: 511, column: 10, scope: !1560)
!1566 = !DILocation(line: 511, column: 3, scope: !1560)
!1567 = distinct !DISubprogram(name: "fstat64", scope: !1437, file: !1437, line: 516, type: !1568, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!250, !250, !1534}
!1570 = !{!1571, !1572}
!1571 = !DILocalVariable(name: "__fd", arg: 1, scope: !1567, file: !1437, line: 516, type: !250)
!1572 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1567, file: !1437, line: 516, type: !1534)
!1573 = !DILocation(line: 0, scope: !1567)
!1574 = !DILocation(line: 518, column: 10, scope: !1567)
!1575 = !DILocation(line: 518, column: 3, scope: !1567)
!1576 = distinct !DISubprogram(name: "fstatat64", scope: !1437, file: !1437, line: 523, type: !1577, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!250, !250, !255, !1534, !250}
!1579 = !{!1580, !1581, !1582, !1583}
!1580 = !DILocalVariable(name: "__fd", arg: 1, scope: !1576, file: !1437, line: 523, type: !250)
!1581 = !DILocalVariable(name: "__filename", arg: 2, scope: !1576, file: !1437, line: 523, type: !255)
!1582 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1576, file: !1437, line: 523, type: !1534)
!1583 = !DILocalVariable(name: "__flag", arg: 4, scope: !1576, file: !1437, line: 523, type: !250)
!1584 = !DILocation(line: 0, scope: !1576)
!1585 = !DILocation(line: 526, column: 10, scope: !1576)
!1586 = !DILocation(line: 526, column: 3, scope: !1576)
!1587 = distinct !DISubprogram(name: "walk_dominator_tree", scope: !1, file: !1, line: 141, type: !1588, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1605)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1590, !258}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dom_walk_data", file: !1123, line: 29, size: 512, elements: !1592)
!1592 = !{!1593, !1594, !1598, !1600, !1601, !1602, !1603, !1604}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dom_direction", scope: !1591, file: !1123, line: 35, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "initialize_block_local_data", scope: !1591, file: !1123, line: 46, baseType: !1595, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1590, !258, !249}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "before_dom_children", scope: !1591, file: !1123, line: 50, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "after_dom_children", scope: !1591, file: !1123, line: 53, baseType: !1599, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "global_data", scope: !1591, file: !1123, line: 56, baseType: !254, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "block_data_stack", scope: !1591, file: !1123, line: 61, baseType: !1121, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "block_local_data_size", scope: !1591, file: !1123, line: 65, baseType: !601, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "free_block_data", scope: !1591, file: !1123, line: 71, baseType: !1121, size: 64, offset: 448)
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1606 = !DILocalVariable(name: "walk_data", arg: 1, scope: !1587, file: !1, line: 141, type: !1590)
!1607 = !DILocalVariable(name: "bb", arg: 2, scope: !1587, file: !1, line: 141, type: !258)
!1608 = !DILocalVariable(name: "bd", scope: !1587, file: !1, line: 143, type: !254)
!1609 = !DILocalVariable(name: "dest", scope: !1587, file: !1, line: 144, type: !258)
!1610 = !DILocalVariable(name: "worklist", scope: !1587, file: !1, line: 145, type: !257)
!1611 = !DILocalVariable(name: "sp", scope: !1587, file: !1, line: 146, type: !250)
!1612 = !DILocalVariable(name: "recycled", scope: !1613, file: !1, line: 158, type: !249)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 157, column: 6)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 156, column: 8)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 154, column: 2)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 151, column: 11)
!1617 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 149, column: 5)
!1618 = !DILocation(line: 0, scope: !1587)
!1619 = !DILocation(line: 145, column: 27, scope: !1587)
!1620 = !DILocation(line: 0, scope: !1614)
!1621 = !DILocation(line: 0, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 162, column: 12)
!1623 = !DILocation(line: 0, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 168, column: 3)
!1625 = !DILocation(line: 0, scope: !1613)
!1626 = !DILocation(line: 0, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 184, column: 8)
!1628 = !DILocation(line: 0, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 192, column: 4)
!1630 = !DILocation(line: 0, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !1, line: 204, column: 8)
!1632 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 198, column: 2)
!1633 = !DILocation(line: 148, column: 3, scope: !1587)
!1634 = !DILocation(line: 151, column: 11, scope: !1616)
!1635 = !DILocation(line: 151, column: 34, scope: !1616)
!1636 = !DILocation(line: 152, column: 4, scope: !1616)
!1637 = !DILocation(line: 152, column: 13, scope: !1616)
!1638 = !DILocation(line: 152, column: 10, scope: !1616)
!1639 = !DILocation(line: 153, column: 4, scope: !1616)
!1640 = !DILocation(line: 153, column: 13, scope: !1616)
!1641 = !DILocation(line: 153, column: 10, scope: !1616)
!1642 = !DILocation(line: 151, column: 11, scope: !1617)
!1643 = !DILocation(line: 156, column: 19, scope: !1614)
!1644 = !DILocation(line: 156, column: 8, scope: !1614)
!1645 = !DILocation(line: 156, column: 8, scope: !1615)
!1646 = !DILocation(line: 162, column: 12, scope: !1622)
!1647 = !DILocation(line: 162, column: 60, scope: !1622)
!1648 = !DILocation(line: 162, column: 12, scope: !1613)
!1649 = !DILocation(line: 164, column: 10, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 163, column: 3)
!1651 = !DILocation(line: 166, column: 3, scope: !1650)
!1652 = !DILocation(line: 169, column: 33, scope: !1624)
!1653 = !DILocation(line: 169, column: 10, scope: !1624)
!1654 = !DILocation(line: 174, column: 8, scope: !1613)
!1655 = !DILocation(line: 177, column: 19, scope: !1613)
!1656 = !DILocation(line: 177, column: 8, scope: !1613)
!1657 = !DILocation(line: 180, column: 6, scope: !1613)
!1658 = !DILocation(line: 184, column: 19, scope: !1627)
!1659 = !DILocation(line: 184, column: 8, scope: !1627)
!1660 = !DILocation(line: 184, column: 8, scope: !1615)
!1661 = !DILocation(line: 185, column: 6, scope: !1627)
!1662 = !DILocation(line: 189, column: 15, scope: !1615)
!1663 = !DILocation(line: 189, column: 4, scope: !1615)
!1664 = !DILocation(line: 189, column: 19, scope: !1615)
!1665 = !DILocation(line: 190, column: 4, scope: !1615)
!1666 = !DILocation(line: 190, column: 19, scope: !1615)
!1667 = !DILocation(line: 192, column: 42, scope: !1629)
!1668 = !DILocation(line: 192, column: 16, scope: !1629)
!1669 = !DILocation(line: 192, column: 9, scope: !1629)
!1670 = !DILocation(line: 0, scope: !1615)
!1671 = !DILocation(line: 192, column: 4, scope: !1629)
!1672 = !DILocation(line: 194, column: 17, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1629, file: !1, line: 192, column: 4)
!1674 = !DILocation(line: 194, column: 6, scope: !1673)
!1675 = !DILocation(line: 194, column: 21, scope: !1673)
!1676 = !DILocation(line: 193, column: 47, scope: !1673)
!1677 = !DILocation(line: 193, column: 22, scope: !1673)
!1678 = !DILocation(line: 192, column: 4, scope: !1673)
!1679 = distinct !{!1679, !1671, !1680}
!1680 = !DILocation(line: 194, column: 23, scope: !1629)
!1681 = !DILocation(line: 197, column: 7, scope: !1617)
!1682 = !DILocation(line: 0, scope: !1617)
!1683 = !DILocation(line: 197, column: 17, scope: !1617)
!1684 = !DILocation(line: 197, column: 21, scope: !1617)
!1685 = !DILocation(line: 197, column: 37, scope: !1617)
!1686 = !DILocation(line: 197, column: 25, scope: !1617)
!1687 = !DILocation(line: 197, column: 24, scope: !1617)
!1688 = !DILocation(line: 200, column: 18, scope: !1632)
!1689 = !DILocation(line: 204, column: 19, scope: !1631)
!1690 = !DILocation(line: 204, column: 8, scope: !1631)
!1691 = !DILocation(line: 204, column: 8, scope: !1632)
!1692 = !DILocation(line: 200, column: 9, scope: !1632)
!1693 = !DILocation(line: 205, column: 6, scope: !1631)
!1694 = !DILocation(line: 207, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1632, file: !1, line: 207, column: 8)
!1696 = !DILocation(line: 207, column: 8, scope: !1695)
!1697 = !DILocation(line: 207, column: 8, scope: !1632)
!1698 = !DILocation(line: 210, column: 13, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !1, line: 208, column: 6)
!1700 = !DILocation(line: 212, column: 8, scope: !1699)
!1701 = !DILocation(line: 213, column: 6, scope: !1699)
!1702 = distinct !{!1702, !1681, !1703}
!1703 = !DILocation(line: 214, column: 2, scope: !1617)
!1704 = !DILocation(line: 215, column: 11, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 215, column: 11)
!1706 = !DILocation(line: 215, column: 11, scope: !1617)
!1707 = !DILocation(line: 216, column: 16, scope: !1705)
!1708 = !DILocation(line: 216, column: 7, scope: !1705)
!1709 = distinct !{!1709, !1633, !1710}
!1710 = !DILocation(line: 219, column: 5, scope: !1587)
!1711 = !DILocation(line: 220, column: 3, scope: !1587)
!1712 = !DILocation(line: 221, column: 1, scope: !1587)
!1713 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !4, file: !4, line: 150, type: !1714, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1718)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!5, !1716}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!1718 = !{!1719}
!1719 = !DILocalVariable(name: "vec_", arg: 1, scope: !1713, file: !4, line: 150, type: !1716)
!1720 = !DILocation(line: 0, scope: !1713)
!1721 = !DILocation(line: 150, column: 1, scope: !1713)
!1722 = distinct !DISubprogram(name: "VEC_void_p_base_length", scope: !1123, file: !1123, line: 22, type: !1723, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1727)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!5, !1725}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1127)
!1727 = !{!1728}
!1728 = !DILocalVariable(name: "vec_", arg: 1, scope: !1722, file: !1123, line: 22, type: !1725)
!1729 = !DILocation(line: 0, scope: !1722)
!1730 = !DILocation(line: 22, column: 1, scope: !1722)
!1731 = distinct !DISubprogram(name: "VEC_void_p_base_pop", scope: !1123, file: !1123, line: 22, type: !1732, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1735)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!1134, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1735 = !{!1736, !1737}
!1736 = !DILocalVariable(name: "vec_", arg: 1, scope: !1731, file: !1123, line: 22, type: !1734)
!1737 = !DILocalVariable(name: "obj_", scope: !1731, file: !1123, line: 22, type: !1134)
!1738 = !DILocation(line: 0, scope: !1731)
!1739 = !DILocation(line: 22, column: 1, scope: !1731)
!1740 = distinct !DISubprogram(name: "VEC_void_p_heap_safe_push", scope: !1123, file: !1123, line: 23, type: !1741, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1745)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!1743, !1744, !1134}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1745 = !{!1746, !1747}
!1746 = !DILocalVariable(name: "vec_", arg: 1, scope: !1740, file: !1123, line: 23, type: !1744)
!1747 = !DILocalVariable(name: "obj_", arg: 2, scope: !1740, file: !1123, line: 23, type: !1134)
!1748 = !DILocation(line: 0, scope: !1740)
!1749 = !DILocation(line: 23, column: 1, scope: !1740)
!1750 = distinct !DISubprogram(name: "init_walk_dominator_tree", scope: !1, file: !1, line: 224, type: !1751, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1590}
!1753 = !{!1754}
!1754 = !DILocalVariable(name: "walk_data", arg: 1, scope: !1750, file: !1, line: 224, type: !1590)
!1755 = !DILocation(line: 0, scope: !1750)
!1756 = !DILocation(line: 226, column: 14, scope: !1750)
!1757 = !DILocation(line: 226, column: 30, scope: !1750)
!1758 = !DILocation(line: 227, column: 14, scope: !1750)
!1759 = !DILocation(line: 227, column: 31, scope: !1750)
!1760 = !DILocation(line: 228, column: 1, scope: !1750)
!1761 = distinct !DISubprogram(name: "fini_walk_dominator_tree", scope: !1, file: !1, line: 231, type: !1751, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1762)
!1762 = !{!1763}
!1763 = !DILocalVariable(name: "walk_data", arg: 1, scope: !1761, file: !1, line: 231, type: !1590)
!1764 = !DILocation(line: 0, scope: !1761)
!1765 = !DILocation(line: 233, column: 18, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1761, file: !1, line: 233, column: 7)
!1767 = !DILocation(line: 233, column: 7, scope: !1766)
!1768 = !DILocation(line: 233, column: 7, scope: !1761)
!1769 = !DILocation(line: 0, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !1, line: 234, column: 5)
!1771 = !DILocation(line: 235, column: 7, scope: !1770)
!1772 = !DILocation(line: 235, column: 14, scope: !1770)
!1773 = !DILocation(line: 235, column: 62, scope: !1770)
!1774 = !DILocation(line: 236, column: 8, scope: !1770)
!1775 = !DILocation(line: 236, column: 2, scope: !1770)
!1776 = distinct !{!1776, !1771, !1777}
!1777 = !DILocation(line: 236, column: 52, scope: !1770)
!1778 = !DILocation(line: 239, column: 3, scope: !1761)
!1779 = !DILocation(line: 240, column: 3, scope: !1761)
!1780 = !DILocation(line: 241, column: 1, scope: !1761)
!1781 = distinct !DISubprogram(name: "VEC_void_p_heap_free", scope: !1123, file: !1123, line: 23, type: !1782, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1744}
!1784 = !{!1785}
!1785 = !DILocalVariable(name: "vec_", arg: 1, scope: !1781, file: !1123, line: 23, type: !1744)
!1786 = !DILocation(line: 0, scope: !1781)
!1787 = !DILocation(line: 23, column: 1, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !1123, line: 23, column: 1)
!1789 = !DILocation(line: 23, column: 1, scope: !1781)
!1790 = distinct !DISubprogram(name: "VEC_void_p_heap_reserve", scope: !1123, file: !1123, line: 23, type: !1791, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!250, !1744, !250}
!1793 = !{!1794, !1795, !1796}
!1794 = !DILocalVariable(name: "vec_", arg: 1, scope: !1790, file: !1123, line: 23, type: !1744)
!1795 = !DILocalVariable(name: "alloc_", arg: 2, scope: !1790, file: !1123, line: 23, type: !250)
!1796 = !DILocalVariable(name: "extend", scope: !1790, file: !1123, line: 23, type: !250)
!1797 = !DILocation(line: 0, scope: !1790)
!1798 = !DILocation(line: 23, column: 1, scope: !1790)
!1799 = !DILocation(line: 23, column: 1, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1790, file: !1123, line: 23, column: 1)
!1801 = distinct !DISubprogram(name: "VEC_void_p_base_quick_push", scope: !1123, file: !1123, line: 22, type: !1802, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1743, !1734, !1134}
!1804 = !{!1805, !1806, !1807}
!1805 = !DILocalVariable(name: "vec_", arg: 1, scope: !1801, file: !1123, line: 22, type: !1734)
!1806 = !DILocalVariable(name: "obj_", arg: 2, scope: !1801, file: !1123, line: 22, type: !1134)
!1807 = !DILocalVariable(name: "slot_", scope: !1801, file: !1123, line: 22, type: !1743)
!1808 = !DILocation(line: 0, scope: !1801)
!1809 = !DILocation(line: 22, column: 1, scope: !1801)
!1810 = distinct !DISubprogram(name: "VEC_void_p_base_space", scope: !1123, file: !1123, line: 22, type: !1811, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!250, !1734, !250}
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "vec_", arg: 1, scope: !1810, file: !1123, line: 22, type: !1734)
!1815 = !DILocalVariable(name: "alloc_", arg: 2, scope: !1810, file: !1123, line: 22, type: !250)
!1816 = !DILocation(line: 0, scope: !1810)
!1817 = !DILocation(line: 22, column: 1, scope: !1810)
