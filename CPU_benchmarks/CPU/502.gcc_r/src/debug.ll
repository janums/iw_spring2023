; ModuleID = 'debug.bc'
source_filename = "debug.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void ()*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i8 (%union.tree_node*)*, void (i32, i8*, i32, i8)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)*, void (i32)*, void (%struct.rtx_def*)*, void ()*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void (i32)*, void (%union.tree_node*, %union.tree_node*)*, i32 }
%union.tree_node = type opaque
%struct.rtx_def = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@do_nothing_debug_hooks = dso_local local_unnamed_addr constant %struct.gcc_debug_hooks { void (i8*)* @debug_nothing_charstar, void (i8*)* @debug_nothing_charstar, void ()* @debug_nothing_void, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (i32)* @debug_nothing_int, void (i32, i32)* @debug_nothing_int_int, void (i32, i32)* @debug_nothing_int_int, i8 (%union.tree_node*)* @debug_true_const_tree, void (i32, i8*, i32, i8)* @debug_nothing_int_charstar_int_bool, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (%union.tree_node*)* @debug_nothing_tree, void (i32)* @debug_nothing_int, void (%union.tree_node*)* @debug_nothing_tree, void (%union.tree_node*)* @debug_nothing_tree, void (%union.tree_node*, i32)* @debug_nothing_tree_int, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)* @debug_nothing_tree_tree_tree_bool, void (%union.tree_node*)* @debug_nothing_tree, void (%union.tree_node*)* @debug_nothing_tree, void (%struct.rtx_def*)* @debug_nothing_rtx, void (i32)* @debug_nothing_int, void (%struct.rtx_def*)* @debug_nothing_rtx, void ()* @debug_nothing_void, void (%union.tree_node*)* @debug_nothing_tree, void (%union.tree_node*, i32)* @debug_nothing_tree_int, void (%struct.rtx_def*, %struct.rtx_def*)* @debug_nothing_rtx_rtx, void (i32)* @debug_nothing_uid, void (%union.tree_node*, %union.tree_node*)* @debug_nothing_tree_tree, i32 0 }, align 8, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !122, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !125
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !126
  ret i32 %call, !dbg !127
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !128 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !131
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !132
  ret i32 %call, !dbg !133
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !134 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !197, metadata !DIExpression()), !dbg !198
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !199
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !199
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !199
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !199
  %cmp = icmp uge i8* %0, %1, !dbg !199
  %conv1 = zext i1 %cmp to i64, !dbg !199
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !199
  %tobool = icmp eq i64 %expval, 0, !dbg !199
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !199

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !199
  br label %cond.end, !dbg !199

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !199
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !199
  %2 = load i8, i8* %0, align 1, !dbg !199
  %conv3 = zext i8 %2 to i32, !dbg !199
  br label %cond.end, !dbg !199

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !199
  ret i32 %cond, !dbg !200
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !201 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !203, metadata !DIExpression()), !dbg !204
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !205
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !205
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !205
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !205
  %cmp = icmp uge i8* %0, %1, !dbg !205
  %conv1 = zext i1 %cmp to i64, !dbg !205
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !205
  %tobool = icmp eq i64 %expval, 0, !dbg !205
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !205

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !205
  br label %cond.end, !dbg !205

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !205
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !205
  %2 = load i8, i8* %0, align 1, !dbg !205
  %conv3 = zext i8 %2 to i32, !dbg !205
  br label %cond.end, !dbg !205

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !205
  ret i32 %cond, !dbg !206
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !207 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !208
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !208
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !208
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !208
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !208
  %cmp = icmp uge i8* %1, %2, !dbg !208
  %conv1 = zext i1 %cmp to i64, !dbg !208
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !208
  %tobool = icmp eq i64 %expval, 0, !dbg !208
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !208

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !208
  br label %cond.end, !dbg !208

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !208
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !208
  %3 = load i8, i8* %1, align 1, !dbg !208
  %conv3 = zext i8 %3 to i32, !dbg !208
  br label %cond.end, !dbg !208

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !208
  ret i32 %cond, !dbg !209
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !210 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !214, metadata !DIExpression()), !dbg !215
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !216
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !217
  ret i32 %call, !dbg !218
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !219 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !224, metadata !DIExpression()), !dbg !225
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !226
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !226
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !226
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !226
  %cmp = icmp uge i8* %0, %1, !dbg !226
  %conv1 = zext i1 %cmp to i64, !dbg !226
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !226
  %tobool = icmp eq i64 %expval, 0, !dbg !226
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !226

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !226
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !226
  br label %cond.end, !dbg !226

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !226
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !226
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !226
  store i8 %conv2, i8* %0, align 1, !dbg !226
  %conv6 = and i32 %__c, 255, !dbg !226
  br label %cond.end, !dbg !226

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !226
  ret i32 %cond, !dbg !227
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !228 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !230, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !231, metadata !DIExpression()), !dbg !232
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !233
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !233
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !233
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !233
  %cmp = icmp uge i8* %0, %1, !dbg !233
  %conv1 = zext i1 %cmp to i64, !dbg !233
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !233
  %tobool = icmp eq i64 %expval, 0, !dbg !233
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !233

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !233
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !233
  br label %cond.end, !dbg !233

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !233
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !233
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !233
  store i8 %conv2, i8* %0, align 1, !dbg !233
  %conv6 = and i32 %__c, 255, !dbg !233
  br label %cond.end, !dbg !233

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !233
  ret i32 %cond, !dbg !234
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !235 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !239
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !239
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !239
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !239
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !239
  %cmp = icmp uge i8* %1, %2, !dbg !239
  %conv1 = zext i1 %cmp to i64, !dbg !239
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !239
  %tobool = icmp eq i64 %expval, 0, !dbg !239
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !239

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !239
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !239
  br label %cond.end, !dbg !239

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !239
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !239
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !239
  store i8 %conv4, i8* %1, align 1, !dbg !239
  %conv6 = and i32 %__c, 255, !dbg !239
  br label %cond.end, !dbg !239

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !239
  ret i32 %cond, !dbg !240
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !241 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !247, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64* %__n, metadata !248, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !249, metadata !DIExpression()), !dbg !250
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !251
  ret i64 %call, !dbg !252
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !253 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !255, metadata !DIExpression()), !dbg !256
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !257
  %0 = load i32, i32* %_flags, align 8, !dbg !257
  %and = lshr i32 %0, 4, !dbg !257
  %and.lobit = and i32 %and, 1, !dbg !257
  ret i32 %and.lobit, !dbg !258
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !259 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !261, metadata !DIExpression()), !dbg !262
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !263
  %0 = load i32, i32* %_flags, align 8, !dbg !263
  %and = lshr i32 %0, 5, !dbg !263
  %and.lobit = and i32 %and, 1, !dbg !263
  ret i32 %and.lobit, !dbg !264
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !265 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !268, metadata !DIExpression()), !dbg !269
  %__c.off = add i32 %__c, 128, !dbg !270
  %0 = icmp ult i32 %__c.off, 384, !dbg !270
  br i1 %0, label %cond.true, label %cond.end, !dbg !270

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !271
  %1 = load i32*, i32** %call, align 8, !dbg !272
  %idxprom = sext i32 %__c to i64, !dbg !273
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !273
  %2 = load i32, i32* %arrayidx, align 4, !dbg !273
  br label %cond.end, !dbg !274

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !274
  ret i32 %cond, !dbg !275
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !276 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !278, metadata !DIExpression()), !dbg !279
  %__c.off = add i32 %__c, 128, !dbg !280
  %0 = icmp ult i32 %__c.off, 384, !dbg !280
  br i1 %0, label %cond.true, label %cond.end, !dbg !280

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !281
  %1 = load i32*, i32** %call, align 8, !dbg !282
  %idxprom = sext i32 %__c to i64, !dbg !283
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !283
  %2 = load i32, i32* %arrayidx, align 4, !dbg !283
  br label %cond.end, !dbg !284

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !284
  ret i32 %cond, !dbg !285
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !286 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !291, metadata !DIExpression()), !dbg !292
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !293
  %conv = trunc i64 %call to i32, !dbg !294
  ret i32 %conv, !dbg !295
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !296 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !300, metadata !DIExpression()), !dbg !301
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !302
  ret i64 %call, !dbg !303
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !304 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !309, metadata !DIExpression()), !dbg !310
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !311
  ret i64 %call, !dbg !312
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !313 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !324, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i8* %__base, metadata !325, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !326, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i64 %__size, metadata !327, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !328, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i64 0, metadata !329, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !330, metadata !DIExpression()), !dbg !334
  br label %while.cond, !dbg !335

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !336
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !334
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !330, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !329, metadata !DIExpression()), !dbg !334
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !337
  br i1 %cmp, label %while.body, label %cleanup, !dbg !335

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !338
  %div = lshr i64 %add, 1, !dbg !340
  call void @llvm.dbg.value(metadata i64 %div, metadata !331, metadata !DIExpression()), !dbg !334
  %mul = mul i64 %div, %__size, !dbg !341
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !342
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !332, metadata !DIExpression()), !dbg !334
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !343
  call void @llvm.dbg.value(metadata i32 %call, metadata !333, metadata !DIExpression()), !dbg !334
  %cmp1 = icmp slt i32 %call, 0, !dbg !344
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !346

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !347
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !349

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !350
  call void @llvm.dbg.value(metadata i64 %add4, metadata !329, metadata !DIExpression()), !dbg !334
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !334
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !334
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !330, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !329, metadata !DIExpression()), !dbg !334
  br label %while.cond, !dbg !335, !llvm.loop !351

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !334
  ret i8* %retval.0, !dbg !353
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !354 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !360, metadata !DIExpression()), !dbg !361
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !362
  ret double %call, !dbg !363
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !364 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !373, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !374, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32 %base, metadata !375, metadata !DIExpression()), !dbg !376
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !377
  ret i64 %call, !dbg !378
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !379 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !385, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !386, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i32 %base, metadata !387, metadata !DIExpression()), !dbg !388
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !389
  ret i64 %call, !dbg !390
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !402, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !403, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata i32 %base, metadata !404, metadata !DIExpression()), !dbg !405
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !406
  ret i64 %call, !dbg !407
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !408 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !412, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !413, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i32 %base, metadata !414, metadata !DIExpression()), !dbg !415
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !416
  ret i64 %call, !dbg !417
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !418 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !460, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !461, metadata !DIExpression()), !dbg !462
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !463
  ret i32 %call, !dbg !464
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !465 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !467, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !468, metadata !DIExpression()), !dbg !469
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !470
  ret i32 %call, !dbg !471
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !472 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !476, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !477, metadata !DIExpression()), !dbg !478
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !479
  ret i32 %call, !dbg !480
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !481 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !485, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !486, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !487, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !488, metadata !DIExpression()), !dbg !489
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !490
  ret i32 %call, !dbg !491
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !492 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !496, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !497, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !498, metadata !DIExpression()), !dbg !499
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !498, metadata !DIExpression(DW_OP_deref)), !dbg !499
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !500
  ret i32 %call, !dbg !501
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !502 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !506, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i8* %__path, metadata !507, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !508, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !509, metadata !DIExpression()), !dbg !510
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !509, metadata !DIExpression(DW_OP_deref)), !dbg !510
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !511
  ret i32 %call, !dbg !512
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !513 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !537, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !538, metadata !DIExpression()), !dbg !539
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !540
  ret i32 %call, !dbg !541
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !542 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !544, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !545, metadata !DIExpression()), !dbg !546
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !547
  ret i32 %call, !dbg !548
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !549 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !553, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !554, metadata !DIExpression()), !dbg !555
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !556
  ret i32 %call, !dbg !557
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !558 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !562, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !563, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !564, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !565, metadata !DIExpression()), !dbg !566
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !567
  ret i32 %call, !dbg !568
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_charstar(i8* %main_filename) #3 !dbg !569 {
entry:
  call void @llvm.dbg.value(metadata i8* %main_filename, metadata !571, metadata !DIExpression()), !dbg !572
  ret void, !dbg !573
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_void() #3 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_int_charstar(i32 %line, i8* %text) #3 !dbg !576 {
entry:
  call void @llvm.dbg.value(metadata i32 %line, metadata !578, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i8* %text, metadata !579, metadata !DIExpression()), !dbg !580
  ret void, !dbg !581
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_int(i32 %line) #3 !dbg !582 {
entry:
  call void @llvm.dbg.value(metadata i32 %line, metadata !584, metadata !DIExpression()), !dbg !585
  ret void, !dbg !586
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_int_int(i32 %line, i32 %n) #3 !dbg !587 {
entry:
  call void @llvm.dbg.value(metadata i32 %line, metadata !589, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata i32 %n, metadata !590, metadata !DIExpression()), !dbg !591
  ret void, !dbg !592
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @debug_true_const_tree(%union.tree_node* %block) #3 !dbg !593 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %block, metadata !595, metadata !DIExpression()), !dbg !596
  ret i8 1, !dbg !597
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_int_charstar_int_bool(i32 %line, i8* %text, i32 %discriminator, i8 zeroext %is_stmt) #3 !dbg !598 {
entry:
  call void @llvm.dbg.value(metadata i32 %line, metadata !600, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i8* %text, metadata !601, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i32 %discriminator, metadata !602, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i8 %is_stmt, metadata !603, metadata !DIExpression()), !dbg !604
  ret void, !dbg !605
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_tree(%union.tree_node* %decl) #3 !dbg !606 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !608, metadata !DIExpression()), !dbg !609
  ret void, !dbg !610
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_tree_int(%union.tree_node* %decl, i32 %local) #3 !dbg !611 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !613, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i32 %local, metadata !614, metadata !DIExpression()), !dbg !615
  ret void, !dbg !616
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_tree_tree_tree_bool(%union.tree_node* %t1, %union.tree_node* %t2, %union.tree_node* %t3, i8 zeroext %b1) #3 !dbg !617 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t1, metadata !619, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata %union.tree_node* %t2, metadata !620, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata %union.tree_node* %t3, metadata !621, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i8 %b1, metadata !622, metadata !DIExpression()), !dbg !623
  ret void, !dbg !624
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_rtx(%struct.rtx_def* %insn) #3 !dbg !625 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !627, metadata !DIExpression()), !dbg !628
  ret void, !dbg !629
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_rtx_rtx(%struct.rtx_def* %insn, %struct.rtx_def* %new_insn) #3 !dbg !630 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !632, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_insn, metadata !633, metadata !DIExpression()), !dbg !634
  ret void, !dbg !635
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_uid(i32 %uid) #3 !dbg !636 {
entry:
  call void @llvm.dbg.value(metadata i32 %uid, metadata !638, metadata !DIExpression()), !dbg !639
  ret void, !dbg !640
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_nothing_tree_tree(%union.tree_node* %t1, %union.tree_node* %t2) #3 !dbg !641 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t1, metadata !643, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata %union.tree_node* %t2, metadata !644, metadata !DIExpression()), !dbg !645
  ret void, !dbg !646
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "do_nothing_debug_hooks", scope: !2, file: !3, line: 26, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, nameTableKind: None)
!3 = !DIFile(filename: "debug.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!15 = !{!0}
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcc_debug_hooks", file: !18, line: 25, size: 2048, elements: !19)
!18 = !DIFile(filename: "./debug.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!19 = !{!20, !24, !25, !29, !34, !35, !36, !40, !44, !45, !54, !58, !59, !60, !61, !67, !68, !69, !70, !74, !78, !79, !80, !87, !88, !89, !90, !91, !92, !96, !100, !104}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !17, file: !18, line: 29, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !13}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !17, file: !18, line: 32, baseType: !21, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "assembly_start", scope: !17, file: !18, line: 36, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{null}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !17, file: !18, line: 39, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !13}
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !17, file: !18, line: 42, baseType: !30, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "start_source_file", scope: !17, file: !18, line: 46, baseType: !30, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "end_source_file", scope: !17, file: !18, line: 50, baseType: !37, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !33}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "begin_block", scope: !17, file: !18, line: 54, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !33, !33}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "end_block", scope: !17, file: !18, line: 57, baseType: !41, size: 64, offset: 512)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_block", scope: !17, file: !18, line: 64, baseType: !46, size: 64, offset: 576)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!7, !49}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !50, line: 59, baseType: !51)
!50 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !50, line: 55, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "source_line", scope: !17, file: !18, line: 67, baseType: !55, size: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !33, !13, !8, !7}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "begin_prologue", scope: !17, file: !18, line: 72, baseType: !30, size: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "end_prologue", scope: !17, file: !18, line: 76, baseType: !30, size: 64, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "end_epilogue", scope: !17, file: !18, line: 79, baseType: !30, size: 64, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "begin_function", scope: !17, file: !18, line: 82, baseType: !62, size: 64, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !50, line: 56, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "end_function", scope: !17, file: !18, line: 85, baseType: !37, size: 64, offset: 960)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !17, file: !18, line: 91, baseType: !62, size: 64, offset: 1024)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "global_decl", scope: !17, file: !18, line: 95, baseType: !62, size: 64, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !17, file: !18, line: 103, baseType: !71, size: 64, offset: 1152)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !65, !8}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "imported_module_or_decl", scope: !17, file: !18, line: 106, baseType: !75, size: 64, offset: 1216)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !65, !65, !65, !7}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_inline_function", scope: !17, file: !18, line: 111, baseType: !62, size: 64, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "outlining_inline_function", scope: !17, file: !18, line: 116, baseType: !62, size: 64, offset: 1344)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !17, file: !18, line: 120, baseType: !81, size: 64, offset: 1408)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !50, line: 50, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !50, line: 49, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "handle_pch", scope: !17, file: !18, line: 124, baseType: !37, size: 64, offset: 1472)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "var_location", scope: !17, file: !18, line: 127, baseType: !81, size: 64, offset: 1536)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "switch_text_section", scope: !17, file: !18, line: 131, baseType: !26, size: 64, offset: 1600)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "direct_call", scope: !17, file: !18, line: 136, baseType: !62, size: 64, offset: 1664)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_call_token", scope: !17, file: !18, line: 144, baseType: !71, size: 64, offset: 1728)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "copy_call_info", scope: !17, file: !18, line: 150, baseType: !93, size: 64, offset: 1792)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !84, !84}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_call", scope: !17, file: !18, line: 156, baseType: !97, size: 64, offset: 1856)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !8}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "set_name", scope: !17, file: !18, line: 160, baseType: !101, size: 64, offset: 1920)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !65, !65}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "start_end_main_source_file", scope: !17, file: !18, line: 164, baseType: !8, size: 32, offset: 1984)
!105 = !{i32 2, !"Dwarf Version", i32 4}
!106 = !{i32 2, !"Debug Info Version", i32 3}
!107 = !{i32 1, !"wchar_size", i32 4}
!108 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!109 = distinct !DISubprogram(name: "vprintf", scope: !110, file: !110, line: 39, type: !111, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!111 = !DISubroutineType(types: !112)
!112 = !{!8, !113, !114}
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !115, file: !3, baseType: !33, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !115, file: !3, baseType: !33, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !115, file: !3, baseType: !12, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !115, file: !3, baseType: !12, size: 64, offset: 128)
!121 = !{!122, !123}
!122 = !DILocalVariable(name: "__fmt", arg: 1, scope: !109, file: !110, line: 39, type: !113)
!123 = !DILocalVariable(name: "__arg", arg: 2, scope: !109, file: !110, line: 39, type: !114)
!124 = !DILocation(line: 0, scope: !109)
!125 = !DILocation(line: 41, column: 20, scope: !109)
!126 = !DILocation(line: 41, column: 10, scope: !109)
!127 = !DILocation(line: 41, column: 3, scope: !109)
!128 = distinct !DISubprogram(name: "getchar", scope: !110, file: !110, line: 47, type: !129, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!129 = !DISubroutineType(types: !130)
!130 = !{!8}
!131 = !DILocation(line: 49, column: 16, scope: !128)
!132 = !DILocation(line: 49, column: 10, scope: !128)
!133 = !DILocation(line: 49, column: 3, scope: !128)
!134 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !110, file: !110, line: 56, type: !135, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !196)
!135 = !DISubroutineType(types: !136)
!136 = !{!8, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !139, line: 7, baseType: !140)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !141, line: 49, size: 1728, elements: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !158, !160, !161, !162, !166, !168, !170, !174, !177, !179, !182, !185, !186, !187, !191, !192}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !140, file: !141, line: 51, baseType: !8, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !140, file: !141, line: 54, baseType: !10, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !140, file: !141, line: 55, baseType: !10, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !140, file: !141, line: 56, baseType: !10, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !140, file: !141, line: 57, baseType: !10, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !140, file: !141, line: 58, baseType: !10, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !140, file: !141, line: 59, baseType: !10, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !140, file: !141, line: 60, baseType: !10, size: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !140, file: !141, line: 61, baseType: !10, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !140, file: !141, line: 64, baseType: !10, size: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !140, file: !141, line: 65, baseType: !10, size: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !140, file: !141, line: 66, baseType: !10, size: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !140, file: !141, line: 68, baseType: !156, size: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !141, line: 36, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !140, file: !141, line: 70, baseType: !159, size: 64, offset: 832)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !140, file: !141, line: 72, baseType: !8, size: 32, offset: 896)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !140, file: !141, line: 73, baseType: !8, size: 32, offset: 928)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !140, file: !141, line: 74, baseType: !163, size: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !164, line: 152, baseType: !165)
!164 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!165 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !140, file: !141, line: 77, baseType: !167, size: 16, offset: 1024)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !140, file: !141, line: 78, baseType: !169, size: 8, offset: 1040)
!169 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !140, file: !141, line: 79, baseType: !171, size: 8, offset: 1048)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 1)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !140, file: !141, line: 81, baseType: !175, size: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !141, line: 43, baseType: null)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !140, file: !141, line: 89, baseType: !178, size: 64, offset: 1152)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !164, line: 153, baseType: !165)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !140, file: !141, line: 91, baseType: !180, size: 64, offset: 1216)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !141, line: 37, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !140, file: !141, line: 92, baseType: !183, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !141, line: 38, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !140, file: !141, line: 93, baseType: !159, size: 64, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !140, file: !141, line: 94, baseType: !12, size: 64, offset: 1408)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !140, file: !141, line: 95, baseType: !188, size: 64, offset: 1472)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 46, baseType: !190)
!189 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!190 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !140, file: !141, line: 96, baseType: !8, size: 32, offset: 1536)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !140, file: !141, line: 98, baseType: !193, size: 160, offset: 1568)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 20)
!196 = !{!197}
!197 = !DILocalVariable(name: "__fp", arg: 1, scope: !134, file: !110, line: 56, type: !137)
!198 = !DILocation(line: 0, scope: !134)
!199 = !DILocation(line: 58, column: 10, scope: !134)
!200 = !DILocation(line: 58, column: 3, scope: !134)
!201 = distinct !DISubprogram(name: "getc_unlocked", scope: !110, file: !110, line: 66, type: !135, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!202 = !{!203}
!203 = !DILocalVariable(name: "__fp", arg: 1, scope: !201, file: !110, line: 66, type: !137)
!204 = !DILocation(line: 0, scope: !201)
!205 = !DILocation(line: 68, column: 10, scope: !201)
!206 = !DILocation(line: 68, column: 3, scope: !201)
!207 = distinct !DISubprogram(name: "getchar_unlocked", scope: !110, file: !110, line: 73, type: !129, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!208 = !DILocation(line: 75, column: 10, scope: !207)
!209 = !DILocation(line: 75, column: 3, scope: !207)
!210 = distinct !DISubprogram(name: "putchar", scope: !110, file: !110, line: 82, type: !211, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{!8, !8}
!213 = !{!214}
!214 = !DILocalVariable(name: "__c", arg: 1, scope: !210, file: !110, line: 82, type: !8)
!215 = !DILocation(line: 0, scope: !210)
!216 = !DILocation(line: 84, column: 21, scope: !210)
!217 = !DILocation(line: 84, column: 10, scope: !210)
!218 = !DILocation(line: 84, column: 3, scope: !210)
!219 = distinct !DISubprogram(name: "fputc_unlocked", scope: !110, file: !110, line: 91, type: !220, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!8, !8, !137}
!222 = !{!223, !224}
!223 = !DILocalVariable(name: "__c", arg: 1, scope: !219, file: !110, line: 91, type: !8)
!224 = !DILocalVariable(name: "__stream", arg: 2, scope: !219, file: !110, line: 91, type: !137)
!225 = !DILocation(line: 0, scope: !219)
!226 = !DILocation(line: 93, column: 10, scope: !219)
!227 = !DILocation(line: 93, column: 3, scope: !219)
!228 = distinct !DISubprogram(name: "putc_unlocked", scope: !110, file: !110, line: 101, type: !220, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!229 = !{!230, !231}
!230 = !DILocalVariable(name: "__c", arg: 1, scope: !228, file: !110, line: 101, type: !8)
!231 = !DILocalVariable(name: "__stream", arg: 2, scope: !228, file: !110, line: 101, type: !137)
!232 = !DILocation(line: 0, scope: !228)
!233 = !DILocation(line: 103, column: 10, scope: !228)
!234 = !DILocation(line: 103, column: 3, scope: !228)
!235 = distinct !DISubprogram(name: "putchar_unlocked", scope: !110, file: !110, line: 108, type: !211, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!236 = !{!237}
!237 = !DILocalVariable(name: "__c", arg: 1, scope: !235, file: !110, line: 108, type: !8)
!238 = !DILocation(line: 0, scope: !235)
!239 = !DILocation(line: 110, column: 10, scope: !235)
!240 = !DILocation(line: 110, column: 3, scope: !235)
!241 = distinct !DISubprogram(name: "getline", scope: !110, file: !110, line: 118, type: !242, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!242 = !DISubroutineType(types: !243)
!243 = !{!244, !9, !245, !137}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !164, line: 193, baseType: !165)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!246 = !{!247, !248, !249}
!247 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !241, file: !110, line: 118, type: !9)
!248 = !DILocalVariable(name: "__n", arg: 2, scope: !241, file: !110, line: 118, type: !245)
!249 = !DILocalVariable(name: "__stream", arg: 3, scope: !241, file: !110, line: 118, type: !137)
!250 = !DILocation(line: 0, scope: !241)
!251 = !DILocation(line: 120, column: 10, scope: !241)
!252 = !DILocation(line: 120, column: 3, scope: !241)
!253 = distinct !DISubprogram(name: "feof_unlocked", scope: !110, file: !110, line: 128, type: !135, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!254 = !{!255}
!255 = !DILocalVariable(name: "__stream", arg: 1, scope: !253, file: !110, line: 128, type: !137)
!256 = !DILocation(line: 0, scope: !253)
!257 = !DILocation(line: 130, column: 10, scope: !253)
!258 = !DILocation(line: 130, column: 3, scope: !253)
!259 = distinct !DISubprogram(name: "ferror_unlocked", scope: !110, file: !110, line: 135, type: !135, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!260 = !{!261}
!261 = !DILocalVariable(name: "__stream", arg: 1, scope: !259, file: !110, line: 135, type: !137)
!262 = !DILocation(line: 0, scope: !259)
!263 = !DILocation(line: 137, column: 10, scope: !259)
!264 = !DILocation(line: 137, column: 3, scope: !259)
!265 = distinct !DISubprogram(name: "tolower", scope: !266, file: !266, line: 207, type: !211, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!266 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!267 = !{!268}
!268 = !DILocalVariable(name: "__c", arg: 1, scope: !265, file: !266, line: 207, type: !8)
!269 = !DILocation(line: 0, scope: !265)
!270 = !DILocation(line: 209, column: 22, scope: !265)
!271 = !DILocation(line: 209, column: 39, scope: !265)
!272 = !DILocation(line: 209, column: 38, scope: !265)
!273 = !DILocation(line: 209, column: 37, scope: !265)
!274 = !DILocation(line: 209, column: 10, scope: !265)
!275 = !DILocation(line: 209, column: 3, scope: !265)
!276 = distinct !DISubprogram(name: "toupper", scope: !266, file: !266, line: 213, type: !211, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!277 = !{!278}
!278 = !DILocalVariable(name: "__c", arg: 1, scope: !276, file: !266, line: 213, type: !8)
!279 = !DILocation(line: 0, scope: !276)
!280 = !DILocation(line: 215, column: 22, scope: !276)
!281 = !DILocation(line: 215, column: 39, scope: !276)
!282 = !DILocation(line: 215, column: 38, scope: !276)
!283 = !DILocation(line: 215, column: 37, scope: !276)
!284 = !DILocation(line: 215, column: 10, scope: !276)
!285 = !DILocation(line: 215, column: 3, scope: !276)
!286 = distinct !DISubprogram(name: "atoi", scope: !287, file: !287, line: 361, type: !288, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!287 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!288 = !DISubroutineType(types: !289)
!289 = !{!8, !13}
!290 = !{!291}
!291 = !DILocalVariable(name: "__nptr", arg: 1, scope: !286, file: !287, line: 361, type: !13)
!292 = !DILocation(line: 0, scope: !286)
!293 = !DILocation(line: 363, column: 16, scope: !286)
!294 = !DILocation(line: 363, column: 10, scope: !286)
!295 = !DILocation(line: 363, column: 3, scope: !286)
!296 = distinct !DISubprogram(name: "atol", scope: !287, file: !287, line: 366, type: !297, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{!165, !13}
!299 = !{!300}
!300 = !DILocalVariable(name: "__nptr", arg: 1, scope: !296, file: !287, line: 366, type: !13)
!301 = !DILocation(line: 0, scope: !296)
!302 = !DILocation(line: 368, column: 10, scope: !296)
!303 = !DILocation(line: 368, column: 3, scope: !296)
!304 = distinct !DISubprogram(name: "atoll", scope: !287, file: !287, line: 373, type: !305, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !13}
!307 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!308 = !{!309}
!309 = !DILocalVariable(name: "__nptr", arg: 1, scope: !304, file: !287, line: 373, type: !13)
!310 = !DILocation(line: 0, scope: !304)
!311 = !DILocation(line: 375, column: 10, scope: !304)
!312 = !DILocation(line: 375, column: 3, scope: !304)
!313 = distinct !DISubprogram(name: "bsearch", scope: !314, file: !314, line: 20, type: !315, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!315 = !DISubroutineType(types: !316)
!316 = !{!12, !317, !317, !188, !188, !319}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !287, line: 808, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!8, !317, !317}
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!324 = !DILocalVariable(name: "__key", arg: 1, scope: !313, file: !314, line: 20, type: !317)
!325 = !DILocalVariable(name: "__base", arg: 2, scope: !313, file: !314, line: 20, type: !317)
!326 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !313, file: !314, line: 20, type: !188)
!327 = !DILocalVariable(name: "__size", arg: 4, scope: !313, file: !314, line: 20, type: !188)
!328 = !DILocalVariable(name: "__compar", arg: 5, scope: !313, file: !314, line: 21, type: !319)
!329 = !DILocalVariable(name: "__l", scope: !313, file: !314, line: 23, type: !188)
!330 = !DILocalVariable(name: "__u", scope: !313, file: !314, line: 23, type: !188)
!331 = !DILocalVariable(name: "__idx", scope: !313, file: !314, line: 23, type: !188)
!332 = !DILocalVariable(name: "__p", scope: !313, file: !314, line: 24, type: !317)
!333 = !DILocalVariable(name: "__comparison", scope: !313, file: !314, line: 25, type: !8)
!334 = !DILocation(line: 0, scope: !313)
!335 = !DILocation(line: 29, column: 3, scope: !313)
!336 = !DILocation(line: 27, column: 7, scope: !313)
!337 = !DILocation(line: 29, column: 14, scope: !313)
!338 = !DILocation(line: 31, column: 20, scope: !339)
!339 = distinct !DILexicalBlock(scope: !313, file: !314, line: 30, column: 5)
!340 = !DILocation(line: 31, column: 27, scope: !339)
!341 = !DILocation(line: 32, column: 56, scope: !339)
!342 = !DILocation(line: 32, column: 47, scope: !339)
!343 = !DILocation(line: 33, column: 22, scope: !339)
!344 = !DILocation(line: 34, column: 24, scope: !345)
!345 = distinct !DILexicalBlock(scope: !339, file: !314, line: 34, column: 11)
!346 = !DILocation(line: 34, column: 11, scope: !339)
!347 = !DILocation(line: 36, column: 29, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !314, line: 36, column: 16)
!349 = !DILocation(line: 36, column: 16, scope: !345)
!350 = !DILocation(line: 37, column: 14, scope: !348)
!351 = distinct !{!351, !335, !352}
!352 = !DILocation(line: 40, column: 5, scope: !313)
!353 = !DILocation(line: 43, column: 1, scope: !313)
!354 = distinct !DISubprogram(name: "atof", scope: !355, file: !355, line: 25, type: !356, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !13}
!358 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!359 = !{!360}
!360 = !DILocalVariable(name: "__nptr", arg: 1, scope: !354, file: !355, line: 25, type: !13)
!361 = !DILocation(line: 0, scope: !354)
!362 = !DILocation(line: 27, column: 10, scope: !354)
!363 = !DILocation(line: 27, column: 3, scope: !354)
!364 = distinct !DISubprogram(name: "strtoimax", scope: !365, file: !365, line: 324, type: !366, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !372)
!365 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !113, !371, !8}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !369, line: 101, baseType: !370)
!369 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !164, line: 72, baseType: !165)
!371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!372 = !{!373, !374, !375}
!373 = !DILocalVariable(name: "nptr", arg: 1, scope: !364, file: !365, line: 324, type: !113)
!374 = !DILocalVariable(name: "endptr", arg: 2, scope: !364, file: !365, line: 324, type: !371)
!375 = !DILocalVariable(name: "base", arg: 3, scope: !364, file: !365, line: 324, type: !8)
!376 = !DILocation(line: 0, scope: !364)
!377 = !DILocation(line: 327, column: 10, scope: !364)
!378 = !DILocation(line: 327, column: 3, scope: !364)
!379 = distinct !DISubprogram(name: "strtoumax", scope: !365, file: !365, line: 336, type: !380, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !113, !371, !8}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !369, line: 102, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !164, line: 73, baseType: !190)
!384 = !{!385, !386, !387}
!385 = !DILocalVariable(name: "nptr", arg: 1, scope: !379, file: !365, line: 336, type: !113)
!386 = !DILocalVariable(name: "endptr", arg: 2, scope: !379, file: !365, line: 336, type: !371)
!387 = !DILocalVariable(name: "base", arg: 3, scope: !379, file: !365, line: 336, type: !8)
!388 = !DILocation(line: 0, scope: !379)
!389 = !DILocation(line: 339, column: 10, scope: !379)
!390 = !DILocation(line: 339, column: 3, scope: !379)
!391 = distinct !DISubprogram(name: "wcstoimax", scope: !365, file: !365, line: 348, type: !392, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!392 = !DISubroutineType(types: !393)
!393 = !{!368, !394, !398, !8}
!394 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !365, line: 34, baseType: !8)
!398 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!401 = !{!402, !403, !404}
!402 = !DILocalVariable(name: "nptr", arg: 1, scope: !391, file: !365, line: 348, type: !394)
!403 = !DILocalVariable(name: "endptr", arg: 2, scope: !391, file: !365, line: 348, type: !398)
!404 = !DILocalVariable(name: "base", arg: 3, scope: !391, file: !365, line: 348, type: !8)
!405 = !DILocation(line: 0, scope: !391)
!406 = !DILocation(line: 351, column: 10, scope: !391)
!407 = !DILocation(line: 351, column: 3, scope: !391)
!408 = distinct !DISubprogram(name: "wcstoumax", scope: !365, file: !365, line: 362, type: !409, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!382, !394, !398, !8}
!411 = !{!412, !413, !414}
!412 = !DILocalVariable(name: "nptr", arg: 1, scope: !408, file: !365, line: 362, type: !394)
!413 = !DILocalVariable(name: "endptr", arg: 2, scope: !408, file: !365, line: 362, type: !398)
!414 = !DILocalVariable(name: "base", arg: 3, scope: !408, file: !365, line: 362, type: !8)
!415 = !DILocation(line: 0, scope: !408)
!416 = !DILocation(line: 365, column: 10, scope: !408)
!417 = !DILocation(line: 365, column: 3, scope: !408)
!418 = distinct !DISubprogram(name: "stat", scope: !419, file: !419, line: 453, type: !420, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !459)
!419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!420 = !DISubroutineType(types: !421)
!421 = !{!8, !13, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !424, line: 46, size: 1152, elements: !425)
!424 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!425 = !{!426, !428, !430, !432, !434, !436, !438, !439, !440, !441, !443, !445, !453, !454, !455}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !423, file: !424, line: 48, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !164, line: 145, baseType: !190)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !423, file: !424, line: 53, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !164, line: 148, baseType: !190)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !423, file: !424, line: 61, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !164, line: 151, baseType: !190)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !423, file: !424, line: 62, baseType: !433, size: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !164, line: 150, baseType: !33)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !423, file: !424, line: 64, baseType: !435, size: 32, offset: 224)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !164, line: 146, baseType: !33)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !423, file: !424, line: 65, baseType: !437, size: 32, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !164, line: 147, baseType: !33)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !423, file: !424, line: 67, baseType: !8, size: 32, offset: 288)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !423, file: !424, line: 69, baseType: !427, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !423, file: !424, line: 74, baseType: !163, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !423, file: !424, line: 78, baseType: !442, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !164, line: 174, baseType: !165)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !423, file: !424, line: 80, baseType: !444, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !164, line: 179, baseType: !165)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !423, file: !424, line: 91, baseType: !446, size: 128, offset: 576)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !447, line: 10, size: 128, elements: !448)
!447 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!448 = !{!449, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !446, file: !447, line: 12, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !164, line: 160, baseType: !165)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !446, file: !447, line: 16, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !164, line: 196, baseType: !165)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !423, file: !424, line: 92, baseType: !446, size: 128, offset: 704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !423, file: !424, line: 93, baseType: !446, size: 128, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !423, file: !424, line: 106, baseType: !456, size: 192, offset: 960)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 192, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 3)
!459 = !{!460, !461}
!460 = !DILocalVariable(name: "__path", arg: 1, scope: !418, file: !419, line: 453, type: !13)
!461 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !418, file: !419, line: 453, type: !422)
!462 = !DILocation(line: 0, scope: !418)
!463 = !DILocation(line: 455, column: 10, scope: !418)
!464 = !DILocation(line: 455, column: 3, scope: !418)
!465 = distinct !DISubprogram(name: "lstat", scope: !419, file: !419, line: 460, type: !420, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !466)
!466 = !{!467, !468}
!467 = !DILocalVariable(name: "__path", arg: 1, scope: !465, file: !419, line: 460, type: !13)
!468 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !465, file: !419, line: 460, type: !422)
!469 = !DILocation(line: 0, scope: !465)
!470 = !DILocation(line: 462, column: 10, scope: !465)
!471 = !DILocation(line: 462, column: 3, scope: !465)
!472 = distinct !DISubprogram(name: "fstat", scope: !419, file: !419, line: 467, type: !473, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!8, !8, !422}
!475 = !{!476, !477}
!476 = !DILocalVariable(name: "__fd", arg: 1, scope: !472, file: !419, line: 467, type: !8)
!477 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !472, file: !419, line: 467, type: !422)
!478 = !DILocation(line: 0, scope: !472)
!479 = !DILocation(line: 469, column: 10, scope: !472)
!480 = !DILocation(line: 469, column: 3, scope: !472)
!481 = distinct !DISubprogram(name: "fstatat", scope: !419, file: !419, line: 474, type: !482, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!8, !8, !13, !422, !8}
!484 = !{!485, !486, !487, !488}
!485 = !DILocalVariable(name: "__fd", arg: 1, scope: !481, file: !419, line: 474, type: !8)
!486 = !DILocalVariable(name: "__filename", arg: 2, scope: !481, file: !419, line: 474, type: !13)
!487 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !481, file: !419, line: 474, type: !422)
!488 = !DILocalVariable(name: "__flag", arg: 4, scope: !481, file: !419, line: 474, type: !8)
!489 = !DILocation(line: 0, scope: !481)
!490 = !DILocation(line: 477, column: 10, scope: !481)
!491 = !DILocation(line: 477, column: 3, scope: !481)
!492 = distinct !DISubprogram(name: "mknod", scope: !419, file: !419, line: 483, type: !493, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{!8, !13, !433, !427}
!495 = !{!496, !497, !498}
!496 = !DILocalVariable(name: "__path", arg: 1, scope: !492, file: !419, line: 483, type: !13)
!497 = !DILocalVariable(name: "__mode", arg: 2, scope: !492, file: !419, line: 483, type: !433)
!498 = !DILocalVariable(name: "__dev", arg: 3, scope: !492, file: !419, line: 483, type: !427)
!499 = !DILocation(line: 0, scope: !492)
!500 = !DILocation(line: 485, column: 10, scope: !492)
!501 = !DILocation(line: 485, column: 3, scope: !492)
!502 = distinct !DISubprogram(name: "mknodat", scope: !419, file: !419, line: 491, type: !503, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!8, !8, !13, !433, !427}
!505 = !{!506, !507, !508, !509}
!506 = !DILocalVariable(name: "__fd", arg: 1, scope: !502, file: !419, line: 491, type: !8)
!507 = !DILocalVariable(name: "__path", arg: 2, scope: !502, file: !419, line: 491, type: !13)
!508 = !DILocalVariable(name: "__mode", arg: 3, scope: !502, file: !419, line: 491, type: !433)
!509 = !DILocalVariable(name: "__dev", arg: 4, scope: !502, file: !419, line: 491, type: !427)
!510 = !DILocation(line: 0, scope: !502)
!511 = !DILocation(line: 494, column: 10, scope: !502)
!512 = !DILocation(line: 494, column: 3, scope: !502)
!513 = distinct !DISubprogram(name: "stat64", scope: !419, file: !419, line: 502, type: !514, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!514 = !DISubroutineType(types: !515)
!515 = !{!8, !13, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !424, line: 119, size: 1152, elements: !518)
!518 = !{!519, !520, !522, !523, !524, !525, !526, !527, !528, !529, !530, !532, !533, !534, !535}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !517, file: !424, line: 121, baseType: !427, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !517, file: !424, line: 123, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !164, line: 149, baseType: !190)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !517, file: !424, line: 124, baseType: !431, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !517, file: !424, line: 125, baseType: !433, size: 32, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !517, file: !424, line: 132, baseType: !435, size: 32, offset: 224)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !517, file: !424, line: 133, baseType: !437, size: 32, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !517, file: !424, line: 135, baseType: !8, size: 32, offset: 288)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !517, file: !424, line: 136, baseType: !427, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !517, file: !424, line: 137, baseType: !163, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !517, file: !424, line: 143, baseType: !442, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !517, file: !424, line: 144, baseType: !531, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !164, line: 180, baseType: !165)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !517, file: !424, line: 152, baseType: !446, size: 128, offset: 576)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !517, file: !424, line: 153, baseType: !446, size: 128, offset: 704)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !517, file: !424, line: 154, baseType: !446, size: 128, offset: 832)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !517, file: !424, line: 164, baseType: !456, size: 192, offset: 960)
!536 = !{!537, !538}
!537 = !DILocalVariable(name: "__path", arg: 1, scope: !513, file: !419, line: 502, type: !13)
!538 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !513, file: !419, line: 502, type: !516)
!539 = !DILocation(line: 0, scope: !513)
!540 = !DILocation(line: 504, column: 10, scope: !513)
!541 = !DILocation(line: 504, column: 3, scope: !513)
!542 = distinct !DISubprogram(name: "lstat64", scope: !419, file: !419, line: 509, type: !514, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!543 = !{!544, !545}
!544 = !DILocalVariable(name: "__path", arg: 1, scope: !542, file: !419, line: 509, type: !13)
!545 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !542, file: !419, line: 509, type: !516)
!546 = !DILocation(line: 0, scope: !542)
!547 = !DILocation(line: 511, column: 10, scope: !542)
!548 = !DILocation(line: 511, column: 3, scope: !542)
!549 = distinct !DISubprogram(name: "fstat64", scope: !419, file: !419, line: 516, type: !550, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!8, !8, !516}
!552 = !{!553, !554}
!553 = !DILocalVariable(name: "__fd", arg: 1, scope: !549, file: !419, line: 516, type: !8)
!554 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !549, file: !419, line: 516, type: !516)
!555 = !DILocation(line: 0, scope: !549)
!556 = !DILocation(line: 518, column: 10, scope: !549)
!557 = !DILocation(line: 518, column: 3, scope: !549)
!558 = distinct !DISubprogram(name: "fstatat64", scope: !419, file: !419, line: 523, type: !559, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !561)
!559 = !DISubroutineType(types: !560)
!560 = !{!8, !8, !13, !516, !8}
!561 = !{!562, !563, !564, !565}
!562 = !DILocalVariable(name: "__fd", arg: 1, scope: !558, file: !419, line: 523, type: !8)
!563 = !DILocalVariable(name: "__filename", arg: 2, scope: !558, file: !419, line: 523, type: !13)
!564 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !558, file: !419, line: 523, type: !516)
!565 = !DILocalVariable(name: "__flag", arg: 4, scope: !558, file: !419, line: 523, type: !8)
!566 = !DILocation(line: 0, scope: !558)
!567 = !DILocation(line: 526, column: 10, scope: !558)
!568 = !DILocation(line: 526, column: 3, scope: !558)
!569 = distinct !DISubprogram(name: "debug_nothing_charstar", scope: !3, file: !3, line: 107, type: !22, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !570)
!570 = !{!571}
!571 = !DILocalVariable(name: "main_filename", arg: 1, scope: !569, file: !3, line: 107, type: !13)
!572 = !DILocation(line: 0, scope: !569)
!573 = !DILocation(line: 109, column: 1, scope: !569)
!574 = distinct !DISubprogram(name: "debug_nothing_void", scope: !3, file: !3, line: 66, type: !27, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!575 = !DILocation(line: 68, column: 1, scope: !574)
!576 = distinct !DISubprogram(name: "debug_nothing_int_charstar", scope: !3, file: !3, line: 112, type: !31, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !577)
!577 = !{!578, !579}
!578 = !DILocalVariable(name: "line", arg: 1, scope: !576, file: !3, line: 112, type: !33)
!579 = !DILocalVariable(name: "text", arg: 2, scope: !576, file: !3, line: 113, type: !13)
!580 = !DILocation(line: 0, scope: !576)
!581 = !DILocation(line: 115, column: 1, scope: !576)
!582 = distinct !DISubprogram(name: "debug_nothing_int", scope: !3, file: !3, line: 126, type: !38, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!583 = !{!584}
!584 = !DILocalVariable(name: "line", arg: 1, scope: !582, file: !3, line: 126, type: !33)
!585 = !DILocation(line: 0, scope: !582)
!586 = !DILocation(line: 128, column: 1, scope: !582)
!587 = distinct !DISubprogram(name: "debug_nothing_int_int", scope: !3, file: !3, line: 131, type: !42, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!588 = !{!589, !590}
!589 = !DILocalVariable(name: "line", arg: 1, scope: !587, file: !3, line: 131, type: !33)
!590 = !DILocalVariable(name: "n", arg: 2, scope: !587, file: !3, line: 132, type: !33)
!591 = !DILocation(line: 0, scope: !587)
!592 = !DILocation(line: 134, column: 1, scope: !587)
!593 = distinct !DISubprogram(name: "debug_true_const_tree", scope: !3, file: !3, line: 90, type: !47, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!594 = !{!595}
!595 = !DILocalVariable(name: "block", arg: 1, scope: !593, file: !3, line: 90, type: !49)
!596 = !DILocation(line: 0, scope: !593)
!597 = !DILocation(line: 92, column: 3, scope: !593)
!598 = distinct !DISubprogram(name: "debug_nothing_int_charstar_int_bool", scope: !3, file: !3, line: 118, type: !56, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DILocalVariable(name: "line", arg: 1, scope: !598, file: !3, line: 118, type: !33)
!601 = !DILocalVariable(name: "text", arg: 2, scope: !598, file: !3, line: 119, type: !13)
!602 = !DILocalVariable(name: "discriminator", arg: 3, scope: !598, file: !3, line: 120, type: !8)
!603 = !DILocalVariable(name: "is_stmt", arg: 4, scope: !598, file: !3, line: 121, type: !7)
!604 = !DILocation(line: 0, scope: !598)
!605 = !DILocation(line: 123, column: 1, scope: !598)
!606 = distinct !DISubprogram(name: "debug_nothing_tree", scope: !3, file: !3, line: 71, type: !63, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !607)
!607 = !{!608}
!608 = !DILocalVariable(name: "decl", arg: 1, scope: !606, file: !3, line: 71, type: !65)
!609 = !DILocation(line: 0, scope: !606)
!610 = !DILocation(line: 73, column: 1, scope: !606)
!611 = distinct !DISubprogram(name: "debug_nothing_tree_int", scope: !3, file: !3, line: 137, type: !72, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!612 = !{!613, !614}
!613 = !DILocalVariable(name: "decl", arg: 1, scope: !611, file: !3, line: 137, type: !65)
!614 = !DILocalVariable(name: "local", arg: 2, scope: !611, file: !3, line: 138, type: !8)
!615 = !DILocation(line: 0, scope: !611)
!616 = !DILocation(line: 140, column: 1, scope: !611)
!617 = distinct !DISubprogram(name: "debug_nothing_tree_tree_tree_bool", scope: !3, file: !3, line: 82, type: !76, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!618 = !{!619, !620, !621, !622}
!619 = !DILocalVariable(name: "t1", arg: 1, scope: !617, file: !3, line: 82, type: !65)
!620 = !DILocalVariable(name: "t2", arg: 2, scope: !617, file: !3, line: 83, type: !65)
!621 = !DILocalVariable(name: "t3", arg: 3, scope: !617, file: !3, line: 84, type: !65)
!622 = !DILocalVariable(name: "b1", arg: 4, scope: !617, file: !3, line: 85, type: !7)
!623 = !DILocation(line: 0, scope: !617)
!624 = !DILocation(line: 87, column: 1, scope: !617)
!625 = distinct !DISubprogram(name: "debug_nothing_rtx", scope: !3, file: !3, line: 96, type: !82, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !626)
!626 = !{!627}
!627 = !DILocalVariable(name: "insn", arg: 1, scope: !625, file: !3, line: 96, type: !84)
!628 = !DILocation(line: 0, scope: !625)
!629 = !DILocation(line: 98, column: 1, scope: !625)
!630 = distinct !DISubprogram(name: "debug_nothing_rtx_rtx", scope: !3, file: !3, line: 101, type: !94, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!631 = !{!632, !633}
!632 = !DILocalVariable(name: "insn", arg: 1, scope: !630, file: !3, line: 101, type: !84)
!633 = !DILocalVariable(name: "new_insn", arg: 2, scope: !630, file: !3, line: 102, type: !84)
!634 = !DILocation(line: 0, scope: !630)
!635 = !DILocation(line: 104, column: 1, scope: !630)
!636 = distinct !DISubprogram(name: "debug_nothing_uid", scope: !3, file: !3, line: 143, type: !98, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !637)
!637 = !{!638}
!638 = !DILocalVariable(name: "uid", arg: 1, scope: !636, file: !3, line: 143, type: !8)
!639 = !DILocation(line: 0, scope: !636)
!640 = !DILocation(line: 145, column: 1, scope: !636)
!641 = distinct !DISubprogram(name: "debug_nothing_tree_tree", scope: !3, file: !3, line: 76, type: !102, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!642 = !{!643, !644}
!643 = !DILocalVariable(name: "t1", arg: 1, scope: !641, file: !3, line: 76, type: !65)
!644 = !DILocalVariable(name: "t2", arg: 2, scope: !641, file: !3, line: 77, type: !65)
!645 = !DILocation(line: 0, scope: !641)
!646 = !DILocation(line: 79, column: 1, scope: !641)
